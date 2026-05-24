// wsecho2 — same WS echo, but lifts SHA1 + base64 to native C via
// c_sha1 / c_base64_enc. Compare against wsecho.b (pure BCPL) for
// the cost of doing crypto in interpreted Cintcode vs the C shim.
//
// Functionally identical to wsecho. Listens on 127.0.0.1:8080,
// single client, text frames, single fragment, ≤ 64 KiB payload.
//
//   Browser:    ws = new WebSocket("ws://127.0.0.1:8080/")
//   Shell:      websocat ws://127.0.0.1:8080/

SECTION "WSECHO2"

GET "libhdr"

MANIFEST {
  PORT      = 8080
  LOOPBK    = #x7F000001
  BUFW      = 4096
  BUF_BYTES = 16384

  OP_TEXT  = 1
  OP_BIN   = 2
  OP_CLOSE = 8
  OP_PING  = 9
  OP_PONG  = 10
}

// ---------- byte helpers --------------------------------------------

LET byte_copy(dst, doff, src, soff, n) BE
  FOR i = 0 TO n - 1 DO dst%(doff + i) := src%(soff + i)

LET write_bstr(buf, off, bstr) = VALOF
{ LET n = bstr%0
  FOR i = 1 TO n DO buf%(off + i - 1) := bstr%i
  RESULTIS off + n
}

// ---------- HTTP / handshake (calls into C for crypto) ---------------

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

// Build the 60-byte (key + magic) input, call c_sha1, call c_base64_enc.
// `accept_chars` receives 28 bytes (no NUL).
LET ws_accept_native(key_buf, key_off, accept_chars) BE
{ LET combined = VEC 16            // 60 bytes
  LET digest   = VEC 5             // 20 bytes
  LET magic    = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
  byte_copy(combined, 0, key_buf, key_off, 24)
  write_bstr(combined, 24, magic)
  sys(Sys_callc, c_sha1,       combined, 60, digest)
  sys(Sys_callc, c_base64_enc, digest,   20, accept_chars)
}

LET read_http_headers(fd, buf, max_bytes) = VALOF
{ LET total = 0
  WHILE total < max_bytes DO
  { LET n = sys(Sys_callc, c_read, fd,
                buf + total / bytesperword,
                max_bytes - total)
    IF n <= 0 RESULTIS -1
    total := total + n
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
  LET accept_chars = VEC 8         // 28 bytes
  LET resp  = VEC 256
  LET ro    = 0
  LET ln1 = "HTTP/1.1 101 Switching Protocols*c*n"
  LET ln2 = "Upgrade: websocket*c*n"
  LET ln3 = "Connection: Upgrade*c*n"
  LET ln4 = "Sec-WebSocket-Accept: "
  LET ln5 = "*c*n*c*n"
  IF n < 0 RESULTIS FALSE
  key_pos := find_str(buf, n, key_hdr)
  IF key_pos < 0 RESULTIS FALSE
  ws_accept_native(buf, key_pos + key_hdr%0, accept_chars)
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

// ---------- frame I/O (identical to wsecho) --------------------------

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

LET ws_recv_frame(fd, payload, max_len, op_ptr, len_ptr) = VALOF
{ LET hdr  = VEC 4
  LET op   = 0
  LET masked = 0
  LET len7   = 0
  LET plen   = 0
  LET mask   = VEC 1
  IF NOT read_full(fd, hdr, 0, 2) RESULTIS FALSE
  op     := hdr%0 & #xF
  masked := (hdr%1 >> 7) & 1
  len7   := hdr%1 & #x7F
  TEST len7 < 126
  THEN plen := len7
  ELSE TEST len7 = 126
       THEN { IF NOT read_full(fd, hdr, 2, 2) RESULTIS FALSE
              plen := (hdr%2 << 8) | hdr%3 }
       ELSE RESULTIS FALSE
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

LET ws_send_frame(fd, op, payload, len) = VALOF
{ LET hdr = VEC 1
  LET hl  = 0
  hdr%0 := #x80 | (op & #xF)
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

// ---------- main -----------------------------------------------------

LET serve_client(fd, buf) BE
{ UNLESS do_handshake(fd, buf) DO
  { writes("wsecho2: handshake failed*n"); RETURN }
  writes("wsecho2: handshake ok (C-side sha1+base64)*n")
  WHILE TRUE DO
  { LET op  = 0
    LET len = 0
    UNLESS ws_recv_frame(fd, buf, BUF_BYTES, @op, @len) BREAK
    writef("wsecho2: frame op=%n len=%n*n", op, len)
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
  sys(Sys_callc, c_reuseaddr, srv, 1)
  IF sys(Sys_callc, c_tcpbind, srv, LOOPBK, PORT) < 0 DO
  { writef("bind to 127.0.0.1:%n failed*n", PORT)
    sys(Sys_callc, c_tcpclose, srv); RESULTIS 1 }
  sys(Sys_callc, c_tcplisten, srv, 4)
  writef("wsecho2: listening on 127.0.0.1:%n  (Ctrl-C to stop)*n", PORT)
  WHILE TRUE DO
  { LET cli = sys(Sys_callc, c_tcpaccept, srv)
    IF cli < 0 LOOP
    writes("wsecho2: client connected*n")
    serve_client(cli, buf)
    sys(Sys_callc, c_tcpclose, cli)
    writes("wsecho2: client disconnected*n")
  }
  freevec(buf)
  sys(Sys_callc, c_tcpclose, srv)
  RESULTIS 0
}
