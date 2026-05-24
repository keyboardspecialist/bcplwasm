// wsecho — pure-BCPL single-client WebSocket echo server.
//
//   Listens on 127.0.0.1:8080. Speaks RFC 6455 well enough for a
//   browser to connect, send text frames, and see them bounced back.
//   No native deps — SHA1 + base64 + frame parsing all in BCPL on
//   top of the existing Sys_callc socket shim (see g/libhdr.h).
//
//   Limits (Tier 1 scope, see README):
//     - one client at a time (serial accept)
//     - text frames only (binary opcode is fine to echo too)
//     - no fragmentation (assumes single-frame messages)
//     - payload ≤ 64 KiB (16-bit extended length, no 64-bit)
//     - no ping/pong, no close handshake (just drops the conn)
//
//   Browser test:
//     ws = new WebSocket("ws://127.0.0.1:8080/")
//     ws.onmessage = e => console.log("echo:", e.data)
//     ws.onopen    = () => ws.send("hello bcpl")
//
//   Or from a shell with websocat:
//     echo hi | websocat ws://127.0.0.1:8080/

SECTION "WSECHO"

GET "libhdr"

MANIFEST {
  PORT      = 8080
  LOOPBK    = #x7F000001
  BUFW      = 4096                  // 16 KiB of word buffer
  BUF_BYTES = 16384

  // WebSocket opcodes (low nibble of frame byte 0).
  OP_CONT  = 0
  OP_TEXT  = 1
  OP_BIN   = 2
  OP_CLOSE = 8
  OP_PING  = 9
  OP_PONG  = 10
}

// ---------- byte buffer helpers --------------------------------------
//
// In BCPL, `buf%i` is the byte at byte-address (buf*4 + i). The shim
// hands raw bytes into our buffers at that layout, so we read and
// write through `%` directly. The two helpers below add length-aware
// copy + compare that's missing from blib.

LET byte_copy(dst, doff, src, soff, n) BE
  FOR i = 0 TO n - 1 DO dst%(doff + i) := src%(soff + i)

LET bytes_equal(a, ao, b, bo, n) = VALOF
{ FOR i = 0 TO n - 1 DO
    IF a%(ao + i) ~= b%(bo + i) RESULTIS FALSE
  RESULTIS TRUE
}

// Write the BCPL string `bstr` (length byte at slot 0) into `buf`
// starting at byte offset `off`. Returns new offset.
LET write_bstr(buf, off, bstr) = VALOF
{ LET n = bstr%0
  FOR i = 1 TO n DO buf%(off + i - 1) := bstr%i
  RESULTIS off + n
}

// ---------- SHA1 -----------------------------------------------------
//
// One-shot SHA1: writes 20 bytes of digest to out_bytes. Supports
// arbitrary message length but the WS handshake never exceeds one
// block (key 24 + magic 36 = 60 bytes), so we keep the padded buffer
// to a single VEC.

MANIFEST {
  W32_MASK = #xFFFFFFFF
}

LET rotl32(x, n) =
  (((x << n) | ((x >> (32 - n)) & ((1 << n) - 1))) & W32_MASK)

LET sha1_block(state, msg_bytes, base_off) BE
{ LET w  = VEC 80
  LET a  = state!0
  LET b  = state!1
  LET c  = state!2
  LET d  = state!3
  LET e  = state!4

  // Pack 16 big-endian 32-bit words from the block.
  FOR i = 0 TO 15 DO
    w!i := ((msg_bytes%(base_off + 4*i    )) << 24) |
           ((msg_bytes%(base_off + 4*i + 1)) << 16) |
           ((msg_bytes%(base_off + 4*i + 2)) <<  8) |
            (msg_bytes%(base_off + 4*i + 3))

  // Expand to 80 words.
  FOR i = 16 TO 79 DO
  { LET x = w!(i-3) XOR w!(i-8) XOR w!(i-14) XOR w!(i-16)
    w!i := rotl32(x & W32_MASK, 1)
  }

  FOR i = 0 TO 79 DO
  { LET f = 0
    LET k = 0
    LET t = 0
    TEST i < 20
    THEN { f := (b & c) | ((~b) & d) & W32_MASK
           k := #x5A827999 }
    ELSE TEST i < 40
         THEN { f := b XOR c XOR d
                k := #x6ED9EBA1 }
         ELSE TEST i < 60
              THEN { f := (b & c) | (b & d) | (c & d)
                     k := #x8F1BBCDC }
              ELSE { f := b XOR c XOR d
                     k := #xCA62C1D6 }
    t := (rotl32(a, 5) + f + e + k + w!i) & W32_MASK
    e := d
    d := c
    c := rotl32(b, 30)
    b := a
    a := t
  }

  state!0 := (state!0 + a) & W32_MASK
  state!1 := (state!1 + b) & W32_MASK
  state!2 := (state!2 + c) & W32_MASK
  state!3 := (state!3 + d) & W32_MASK
  state!4 := (state!4 + e) & W32_MASK
}

// sha1(msg, msg_len, out) — out must be 20 bytes (5 words).
LET sha1(msg, msg_len, out) BE
{ LET state = VEC 4
  // Padded buffer big enough for one block beyond the input.
  // wsecho only ever hashes the 60-byte WS string, so this is plenty.
  LET pad   = VEC 64                          // 256 bytes
  LET total = msg_len + 1                     // 0x80 byte
  LET need  = 0
  LET nbits = msg_len * 8

  state!0 := #x67452301
  state!1 := #xEFCDAB89
  state!2 := #x98BADCFE
  state!3 := #x10325476
  state!4 := #xC3D2E1F0

  // Pad to multiple of 64 with 8 extra bytes for length.
  need := ((total + 8 + 63) / 64) * 64
  FOR i = 0 TO need - 1 DO pad%i := 0
  FOR i = 0 TO msg_len - 1 DO pad%i := msg%i
  pad%msg_len := #x80
  // Append big-endian 64-bit bit length (top 4 bytes always 0 for us).
  pad%(need - 4) := (nbits >> 24) & 255
  pad%(need - 3) := (nbits >> 16) & 255
  pad%(need - 2) := (nbits >>  8) & 255
  pad%(need - 1) :=  nbits        & 255

  { LET off = 0
    UNTIL off >= need DO
    { sha1_block(state, pad, off)
      off := off + 64
    }
  }

  // Unpack 5 BE 32-bit words into out[0..19].
  FOR i = 0 TO 4 DO
  { LET v = state!i
    out%(i*4    ) := (v >> 24) & 255
    out%(i*4 + 1) := (v >> 16) & 255
    out%(i*4 + 2) := (v >>  8) & 255
    out%(i*4 + 3) :=  v        & 255
  }
}

// ---------- base64 ---------------------------------------------------
//
// Encode `nin` bytes from `in` to `out`. Caller sizes `out` for
// 4*((nin+2)/3) bytes. Padding with '=' applied as needed.

STATIC { b64_alpha = 0 }

LET b64_init() BE
{ LET s = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
  b64_alpha := getvec(64 / bytesperword + 1)
  FOR i = 0 TO 63 DO b64_alpha%i := s%(i + 1)
}

LET b64_char(v) = b64_alpha%v

LET base64_enc(in, nin, out) = VALOF
{ LET o = 0
  LET i = 0
  UNTIL i >= nin DO
  { LET a = in%i
    LET b = i + 1 < nin -> in%(i + 1), 0
    LET c = i + 2 < nin -> in%(i + 2), 0
    LET triple = (a << 16) | (b << 8) | c
    out%o     := b64_char((triple >> 18) & 63)
    out%(o+1) := b64_char((triple >> 12) & 63)
    out%(o+2) := i + 1 < nin -> b64_char((triple >> 6) & 63), '='
    out%(o+3) := i + 2 < nin -> b64_char( triple       & 63), '='
    o := o + 4
    i := i + 3
  }
  RESULTIS o
}

// ---------- HTTP / handshake ----------------------------------------

// Find needle (BCPL string) inside hay[0..hay_len-1]. Returns byte
// offset or -1. Linear scan is fine — request headers are small.
LET find_str(hay, hay_len, needle) = VALOF
{ LET nlen = needle%0
  IF nlen > hay_len RESULTIS -1
  FOR i = 0 TO hay_len - nlen DO
  { LET ok = TRUE
    FOR j = 1 TO nlen DO
      UNLESS hay%(i + j - 1) = needle%j DO { ok := FALSE; BREAK }
    IF ok RESULTIS i
  }
  RESULTIS -1
}

// Compute Sec-WebSocket-Accept for a 24-char client key. out_chars
// receives 28 bytes (no NUL).
LET ws_accept(key, key_off, out_chars) BE
{ LET combined  = VEC 16              // 60 bytes (24 key + 36 magic)
  LET digest    = VEC 5               // 20 bytes
  LET magic     = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
  // Copy 24-byte key + magic UUID into one contiguous buffer.
  byte_copy(combined, 0, key, key_off, 24)
  write_bstr(combined, 24, magic)
  sha1(combined, 60, digest)
  base64_enc(digest, 20, out_chars)
}

// Read until "\r\n\r\n" arrives or buffer fills. Returns bytes read,
// or -1 on error / EOF before end of headers.
LET read_http_headers(fd, buf, max_bytes) = VALOF
{ LET total = 0
  WHILE total < max_bytes DO
  { LET n = sys(Sys_callc, c_read, fd,
                buf + total / bytesperword,
                max_bytes - total)
    IF n <= 0 RESULTIS -1
    total := total + n
    // Look for end-of-headers in the buffer so far.
    IF total >= 4 DO
      FOR i = 0 TO total - 4 DO
        IF buf%i      = '*c' & buf%(i+1) = '*n' &
           buf%(i+2)  = '*c' & buf%(i+3) = '*n'
        DO RESULTIS total
  }
  RESULTIS -1
}

LET do_handshake(fd, buf) = VALOF
{ LET n     = read_http_headers(fd, buf, BUF_BYTES)
  LET key_hdr = "Sec-WebSocket-Key: "
  LET key_pos = 0
  LET accept_chars = VEC 8            // 28 bytes
  LET resp  = VEC 256
  LET ro    = 0
  // Build response header line-by-line (BCPL string literals can't
  // span a source line).
  LET ln1 = "HTTP/1.1 101 Switching Protocols*c*n"
  LET ln2 = "Upgrade: websocket*c*n"
  LET ln3 = "Connection: Upgrade*c*n"
  LET ln4 = "Sec-WebSocket-Accept: "
  LET ln5 = "*c*n*c*n"

  IF n < 0 RESULTIS FALSE
  key_pos := find_str(buf, n, key_hdr)
  IF key_pos < 0 RESULTIS FALSE
  // Key sits at key_pos + len(header label).
  ws_accept(buf, key_pos + key_hdr%0, accept_chars)

  ro := write_bstr(resp, 0,  ln1)
  ro := write_bstr(resp, ro, ln2)
  ro := write_bstr(resp, ro, ln3)
  ro := write_bstr(resp, ro, ln4)
  byte_copy(resp, ro, accept_chars, 0, 28)
  ro := ro + 28
  ro := write_bstr(resp, ro, ln5)
  sys(Sys_callc, c_write, fd, resp, ro)
  RESULTIS TRUE
}

// ---------- frame I/O ------------------------------------------------

// Read exactly `n` bytes into buf starting at byte offset `off`.
// Returns TRUE / FALSE.
LET read_full(fd, buf, off, n) = VALOF
{ LET got = 0
  UNTIL got = n DO
  { LET r = sys(Sys_callc, c_read, fd,
                buf + (off + got) / bytesperword,
                n - got)
    IF r <= 0 RESULTIS FALSE
    got := got + r
  }
  RESULTIS TRUE
}

// Pull one frame off `fd`. Writes opcode to op_ptr, payload length to
// len_ptr, payload bytes into payload. Returns TRUE on success.
LET ws_recv_frame(fd, payload, max_len, op_ptr, len_ptr) = VALOF
{ LET hdr  = VEC 4                    // 16 bytes
  LET op   = 0
  LET masked = 0
  LET len7   = 0
  LET plen   = 0
  LET mask   = VEC 1                  // 4 bytes
  IF NOT read_full(fd, hdr, 0, 2) RESULTIS FALSE
  op     := hdr%0 & #xF
  masked := (hdr%1 >> 7) & 1
  len7   := hdr%1 & #x7F
  TEST len7 < 126
  THEN plen := len7
  ELSE TEST len7 = 126
       THEN { IF NOT read_full(fd, hdr, 2, 2) RESULTIS FALSE
              plen := (hdr%2 << 8) | hdr%3 }
       ELSE RESULTIS FALSE            // 64-bit length not supported
  IF plen > max_len RESULTIS FALSE
  IF masked DO
    UNLESS read_full(fd, mask, 0, 4) RESULTIS FALSE
  IF plen > 0 DO
    UNLESS read_full(fd, payload, 0, plen) RESULTIS FALSE
  IF masked DO
    FOR i = 0 TO plen - 1 DO
      payload%i := payload%i XOR mask%(i & 3)
  !op_ptr  := op
  !len_ptr := plen
  RESULTIS TRUE
}

// Send a server frame (no mask) carrying `op` with `len` bytes from
// `payload`. Returns TRUE on success.
LET ws_send_frame(fd, op, payload, len) = VALOF
{ LET hdr = VEC 1                     // 4 bytes
  LET hl  = 0
  hdr%0 := #x80 | (op & #xF)          // FIN | op
  TEST len < 126
  THEN { hdr%1 := len; hl := 2 }
  ELSE TEST len < 65536
       THEN { hdr%1 := 126
              hdr%2 := (len >> 8) & 255
              hdr%3 :=  len       & 255
              hl := 4 }
       ELSE RESULTIS FALSE
  IF sys(Sys_callc, c_write, fd, hdr, hl) < 0 RESULTIS FALSE
  IF len > 0 DO
    IF sys(Sys_callc, c_write, fd, payload, len) < 0 RESULTIS FALSE
  RESULTIS TRUE
}

// ---------- main loop ------------------------------------------------

LET serve_client(fd, buf) BE
{ UNLESS do_handshake(fd, buf) DO
  { writes("wsecho: handshake failed*n"); RETURN }
  writes("wsecho: handshake ok*n")
  WHILE TRUE DO
  { LET op  = 0
    LET len = 0
    UNLESS ws_recv_frame(fd, buf, BUF_BYTES, @op, @len) BREAK
    writef("wsecho: frame op=%n len=%n*n", op, len)
    IF op = OP_CLOSE BREAK
    IF op = OP_TEXT | op = OP_BIN DO
      UNLESS ws_send_frame(fd, op, buf, len) BREAK
    IF op = OP_PING DO
      UNLESS ws_send_frame(fd, OP_PONG, buf, len) BREAK
  }
}

LET start() = VALOF
{ LET srv = sys(Sys_callc, c_newsocket)
  LET buf = getvec(BUFW)

  IF srv < 0 DO { writes("socket failed*n"); RESULTIS 1 }
  b64_init()
  sys(Sys_callc, c_reuseaddr, srv, 1)
  IF sys(Sys_callc, c_tcpbind, srv, LOOPBK, PORT) < 0 DO
  { writef("bind to 127.0.0.1:%n failed*n", PORT)
    sys(Sys_callc, c_tcpclose, srv); RESULTIS 1 }
  sys(Sys_callc, c_tcplisten, srv, 4)
  writef("wsecho: listening on 127.0.0.1:%n  (Ctrl-C to stop)*n", PORT)

  WHILE TRUE DO
  { LET cli = sys(Sys_callc, c_tcpaccept, srv)
    IF cli < 0 LOOP
    writes("wsecho: client connected*n")
    serve_client(cli, buf)
    sys(Sys_callc, c_tcpclose, cli)
    writes("wsecho: client disconnected*n")
  }
  freevec(buf)
  sys(Sys_callc, c_tcpclose, srv)
  RESULTIS 0
}
