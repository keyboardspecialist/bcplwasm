// BCPL-wasm runtime: host-provided stdlib + loader.
//
// Each generated .wasm module imports a small fixed stdlib from "env"
// (see bcplcgwasm.b emit_mod_header). All imports share the type
// (func (result i32)) — no parameters. Callers pass arguments through
// BCPL's stack-frame memory following the same convention as
// generated code:
//   - before call_indirect: store args at P!(k+3..), save (old_P, 0,
//     tidx) at P!(k..k+2), advance P by k.
//   - callee: read args at P!3.., compute, restore P from P!0,
//     return result as i32.
//
// Host stdlib follows the same convention: read args from memory
// relative to the current P, restore P, return result.

// Browser storage shim. Uses localStorage when available (browser),
// otherwise an in-memory Map (Node tests). Keys namespaced under
// "bcpl:" so other app data isn't touched.
export const storageBackend = (() => {
  try {
    if (typeof localStorage !== "undefined") {
      return {
        get: (k) => localStorage.getItem("bcpl:" + k),
        set: (k, v) => localStorage.setItem("bcpl:" + k, v),
        del: (k) => localStorage.removeItem("bcpl:" + k),
      };
    }
  } catch { /* fallthrough */ }
  const mem = new Map();
  return {
    get: (k) => mem.has(k) ? mem.get(k) : null,
    set: (k, v) => mem.set(k, v),
    del: (k) => mem.delete(k),
  };
})();

export class BcplRuntime {
  constructor(writeOut, input = "") {
    this.writeOut = writeOut;   // (string) => void — UI sink for stdout
    this.input = input;         // stdin buffer — consumed by rdch
    this.inputIdx = 0;
    this.instance = null;
    this.mem = null;
    this.memView = null;
    this.finished = false;
    // Heap grows downward from top of linear memory.
    this.heapTop = 0;
    this.freeList = 0;
    // Stream table. Handle 0 reserved. 1 = stdout (routed to UI
    // callback), 2 = stdin (routed to input buffer). User streams
    // start at 3.
    this.streams = [
      null,
      { kind: "stdout" },
      { kind: "stdin" },
    ];
    this.curOut = 1;
    this.curIn  = 2;
  }

  // Byte view; refresh after memory.grow (we never grow, but keep
  // pattern correct).
  refresh() {
    this.memView = new DataView(this.mem.buffer);
    // Init heap pointer once on first refresh after load.
    if (this.heapTop === 0) {
      this.heapTop = (this.mem.buffer.byteLength >> 2);  // total words
    }
  }

  loadWord(wordAddr) {
    return this.memView.getInt32(wordAddr * 4, true);
  }
  storeWord(wordAddr, v) {
    this.memView.setInt32(wordAddr * 4, v | 0, true);
  }
  loadByte(byteAddr) {
    return this.memView.getUint8(byteAddr);
  }
  storeByte(byteAddr, v) {
    this.memView.setUint8(byteAddr, v & 0xFF);
  }

  get P() { return this.master.exports.P.value; }
  set P(v) { this.master.exports.P.value = v | 0; }

  // BCPL string at wordAddr: byte 0 = length, bytes 1..len = chars.
  readBcplString(wordAddr) {
    const baseByte = wordAddr * 4;
    const len = this.loadByte(baseByte);
    let s = "";
    for (let i = 0; i < len; i++) {
      s += String.fromCharCode(this.loadByte(baseByte + 1 + i));
    }
    return s;
  }

  // Args of the currently-executing BCPL function: P!3, P!4, ...
  arg(i) { return this.loadWord(this.P + 3 + i); }

  // Restore P from P!0 (the standard FNRN/RTRN epilogue). Every
  // stdlib entry must call this before returning.
  restoreP() { this.P = this.loadWord(this.P); }

  // Route one char to the current output stream. stdout → UI. User
  // streams buffer in-memory; contents commit on endstream.
  _writeChar(ch) {
    const s = this.streams[this.curOut];
    if (!s) return;
    if (s.kind === "stdout") {
      this.writeOut(String.fromCharCode(ch & 0xFF));
      return;
    }
    s.data = (s.data || "") + String.fromCharCode(ch & 0xFF);
  }

  _writeString(str) {
    const s = this.streams[this.curOut];
    if (!s) return;
    if (s.kind === "stdout") { this.writeOut(str); return; }
    s.data = (s.data || "") + str;
  }

  // Read one char from current input stream, or -1 at EOF.
  _readChar() {
    const s = this.streams[this.curIn];
    if (!s) return -1;
    if (s.kind === "stdin") {
      if (this.inputIdx >= this.input.length) return -1;
      return this.input.charCodeAt(this.inputIdx++);
    }
    if (s.pos >= s.data.length) return -1;
    return s.data.charCodeAt(s.pos++);
  }

  // ------------------ stdlib implementations ------------------

  imp_stop() {
    this.finished = true;
    // BCPL's stop takes one arg (exit code) but we just halt.
    throw new BcplHalt(this.arg(0));
  }

  imp_rdch() {
    this.restoreP();
    return this._readChar();
  }

  imp_wrch() {
    const ch = this.arg(0);
    this._writeChar(ch);
    this.restoreP();
    return 0;
  }

  imp_newline() {
    this._writeChar(10);
    this.restoreP();
    return 0;
  }

  imp_writen() {
    this._writeString(String(this.arg(0)));
    this.restoreP();
    return 0;
  }

  imp_writes() {
    this._writeString(this.readBcplString(this.arg(0)));
    this.restoreP();
    return 0;
  }

  imp_writef() {
    // writef(fmt, a0..a10) — classic BCPL format codes. Standard blib
    // supports 11 value args after the format string.
    const fmt = this.readBcplString(this.arg(0));
    const args = [];
    for (let k = 0; k < 11; k++) args.push(this.arg(1 + k));
    let ai = 0, out = "";
    const f32buf = new ArrayBuffer(4);
    const f32i = new Int32Array(f32buf);
    const f32f = new Float32Array(f32buf);
    for (let i = 0; i < fmt.length; i++) {
      const c = fmt[i];
      if (c !== "%") { out += c; continue; }
      i++;
      if (i >= fmt.length) break;
      // BCPL writef format (per sysb/blib.b write_format):
      //   %N[.P]<code>   explicit width.precision before code (%5.2f)
      //   %<code>[W]     single-char width after code (%i4, %X8) —
      //                  for codes I/D/X/O/U/Z/B only. W is digit or
      //                  letter A–F (=10..15). Codes S/C/N/#/T take
      //                  no width.
      let widthgiven = false, width = 0, precision = -1;
      if (/[0-9.]/.test(fmt[i] ?? "")) {
        widthgiven = true;
        while (/[0-9]/.test(fmt[i] ?? "")) {
          width = width * 10 + (fmt.charCodeAt(i) - 48);
          i++;
        }
        if (fmt[i] === ".") {
          i++;
          precision = 0;
          while (/[0-9]/.test(fmt[i] ?? "")) {
            precision = precision * 10 + (fmt.charCodeAt(i) - 48);
            i++;
          }
        }
      }
      const code = (fmt[i] ?? "").toLowerCase();
      if (!widthgiven && "idxouzbt".includes(code)) {
        const wc = fmt[i + 1] ?? "";
        if (/[0-9]/.test(wc))       { width = wc.charCodeAt(0) - 48;                            i++; }
        else if (/[a-f]/i.test(wc)) { width = 10 + (wc.toLowerCase().charCodeAt(0) - 97);       i++; }
      }
      switch (code) {
        case "n": out += String(args[ai++] | 0); break;
        case "d":
        case "i": out += String(args[ai++] | 0).padStart(width, " "); break;
        case "u": out += String(args[ai++] >>> 0).padStart(width, " "); break;
        case "c": out += String.fromCharCode(args[ai++] & 0xFF); break;
        case "s": out += this.readBcplString(args[ai++]); break;
        case "x": out += ((args[ai++] >>> 0).toString(16).padStart(width, "0")); break;
        case "o": out += ((args[ai++] >>> 0).toString(8).padStart(width, "0")); break;
        case "b": out += ((args[ai++] >>> 0).toString(2).padStart(width, "0")); break;
        case "z": {  // zero-padded signed decimal
          const v = args[ai++] | 0;
          const s = String(Math.abs(v)).padStart(width - (v < 0 ? 1 : 0), "0");
          out += (v < 0 ? "-" : "") + s;
          break;
        }
        case "t": out += this.readBcplString(args[ai++]).padEnd(width, " "); break;
        case "f": case "e": case "g": {
          f32i[0] = args[ai++] | 0;
          let s = (code === "e")
            ? f32f[0].toExponential(precision >= 0 ? precision : 6)
            : f32f[0].toFixed(precision >= 0 ? precision : 6);
          out += s.padStart(width, " ");
          break;
        }
        default: out += "%" + (fmt[i] ?? ""); break;
      }
    }
    this._writeString(out);
    this.restoreP();
    return 0;
  }

  // getvec(n) — allocate n+1 words. Prefer free list (first-fit),
  // else bump-allocate from top of memory. Returns BCPL word address
  // (pointer such that p!0..p!n span the allocation), or 0 on OOM.
  imp_getvec() {
    const n = this.arg(0);
    const size = n + 1;   // BCPL vectors are 0..n inclusive
    // First-fit on free list.
    let prev = 0, cur = this.freeList;
    while (cur !== 0) {
      const blockSize = this.loadWord(cur + 1);  // stored at p!1
      const next = this.loadWord(cur);           // stored at p!0
      if (blockSize >= size) {
        if (prev === 0) this.freeList = next;
        else this.storeWord(prev, next);
        this.restoreP();
        return cur;
      }
      prev = cur; cur = next;
    }
    // Bump.
    this.heapTop -= (size + 1);  // reserve 1 extra word for size header
    if (this.heapTop <= 0) {
      this.restoreP();
      return 0;
    }
    const p = this.heapTop;
    this.storeWord(p + 1, size);  // remember size for freevec/freelist
    this.restoreP();
    return p;
  }

  imp_freevec() {
    const p = this.arg(0);
    if (p === 0) { this.restoreP(); return 0; }
    // Link block onto free list. Size already stored at p!1.
    this.storeWord(p, this.freeList);
    this.freeList = p;
    this.restoreP();
    return 0;
  }

  // muldiv(a, b, c) = (a*b) / c with 64-bit intermediate to avoid
  // overflow, truncated to i32 on return. BCPL's classic way to
  // rescale integers without losing precision.
  imp_muldiv() {
    const a = BigInt(this.arg(0));
    const b = BigInt(this.arg(1));
    const c = BigInt(this.arg(2));
    this.restoreP();
    if (c === 0n) return 0;
    return Number((a * b) / c) | 0;
  }

  // abort(n) — same semantics as stop but flagged as an error halt.
  imp_abort() {
    this.finished = true;
    throw new BcplHalt(this.arg(0), /*isAbort*/ true);
  }

  // randno(n) — return pseudo-random integer in [1..n] inclusive.
  // n <= 0 returns 0 (matches BLIB behaviour).
  imp_randno() {
    const n = this.arg(0);
    this.restoreP();
    if (n <= 0) return 0;
    return 1 + (Math.random() * n) | 0;  // 1..n
  }

  // capitalch(ch) — uppercase a-z, leave others alone.
  imp_capitalch() {
    const ch = this.arg(0) & 0xFF;
    this.restoreP();
    if (ch >= 0x61 && ch <= 0x7A) return ch - 0x20;
    return ch;
  }

  // compch(a, b) — case-insensitive char compare. -1, 0, +1.
  imp_compch() {
    const up = (c) => (c >= 0x61 && c <= 0x7A) ? c - 0x20 : c;
    const a = up(this.arg(0) & 0xFF);
    const b = up(this.arg(1) & 0xFF);
    this.restoreP();
    if (a < b) return -1;
    if (a > b) return 1;
    return 0;
  }

  // compstring(s1, s2) — case-sensitive BCPL string compare. -1/0/+1.
  imp_compstring() {
    const s1 = this.readBcplString(this.arg(0));
    const s2 = this.readBcplString(this.arg(1));
    this.restoreP();
    if (s1 < s2) return -1;
    if (s1 > s2) return 1;
    return 0;
  }

  // output() / input() — return handle of current stream.
  imp_output() { this.restoreP(); return this.curOut; }
  imp_input()  { this.restoreP(); return this.curIn;  }

  // unrdch(ch) — push back one char into the current input stream.
  imp_unrdch() {
    const s = this.streams[this.curIn];
    this.restoreP();
    if (!s) return -1;
    if (s.kind === "stdin") {
      if (this.inputIdx > 0) this.inputIdx--;
      return 0;
    }
    if (s.pos > 0) s.pos--;
    return 0;
  }

  // rewindstream(h) — reset stream position to 0.
  imp_rewindstream() {
    const h = this.arg(0);
    this.restoreP();
    if (h <= 0 || h >= this.streams.length) return 0;
    const s = this.streams[h];
    if (!s) return 0;
    if (s.kind === "stdin") { this.inputIdx = 0; return 0; }
    if (s.kind === "stdout") return 0;
    s.pos = 0;
    return 0;
  }

  // findinoutput(name) — open bidirectional stream. We treat it as
  // an empty read/write stream.
  imp_findinoutput() {
    const name = this.readBcplString(this.arg(0));
    this.restoreP();
    const data = storageBackend.get(name) ?? "";
    return this._allocStream({ kind: "file", mode: "rw", name, data, pos: 0 });
  }

  // errwrch(ch) — write char to stderr. Routed to writeOut callback
  // with an [err] prefix so it isn't silently swallowed.
  imp_errwrch() {
    const ch = this.arg(0) & 0xFF;
    this.restoreP();
    this.writeOut(String.fromCharCode(ch));
    return 0;
  }

  // sawritef — same as writef for our purposes (writes directly to
  // the underlying output rather than via selectoutput).
  imp_sawritef() { return this.imp_writef(); }

  // sys(op, a, b, c, ...) — BCPL low-level dispatcher.
  //
  // Covers opcodes defined in g/libhdr.h under "Sys_*". Ones marked
  // NOOP return 0 silently; out-of-scope ones (graphics/audio, Cintpos
  // IRQ, segment loader, native bridge) also return 0. See
  // CLAUDE.md "WebAssembly Backend" for scope rules.
  imp_sys() {
    const op = this.arg(0);
    // Capture up to 7 extra args BEFORE restoreP since it rewrites P.
    const a1 = this.arg(1), a2 = this.arg(2), a3 = this.arg(3);
    const a4 = this.arg(4), a5 = this.arg(5), a6 = this.arg(6);
    const a7 = this.arg(7);
    this.restoreP();

    switch (op) {
      // ---- process lifecycle ----
      case -1: return 0;                                // Sys_setcount NOOP
      case  0: throw new BcplHalt(a1 | 0, /*isAbort*/ true);  // Sys_quit
      case  1: case  2: case  3: return 0;              // Sys_rti/saveregs/setst NOOP
      case  4: return 0;                                // Sys_tracing NOOP
      case  5: return 0;                                // Sys_watch NOOP
      case  6: return 0;                                // Sys_tally NOOP
      case  7: return 0;                                // Sys_interpret NOOP

      // ---- direct-screen char I/O ----
      case 10: return this._readChar();                 // Sys_sardch
      case 11: this._writeChar(a1); return 0;           // Sys_sawrch(ch)

      // ---- byte-granular stream read/write ----
      case 12: { // Sys_read(fd) — next byte (or -1)
        const prevIn = this.curIn;
        this.curIn = a1 || this.curIn;
        const ch = this._readChar();
        this.curIn = prevIn;
        return ch;
      }
      case 13: { // Sys_write(fd, ch)
        const prevOut = this.curOut;
        this.curOut = a1 || this.curOut;
        this._writeChar(a2);
        this.curOut = prevOut;
        return 0;
      }

      // ---- file open/close (delegate to stream imp_* helpers) ----
      case 14: { // Sys_openread(name)
        const name = this.readBcplString(a1);
        if (!name) return 0;
        const data = storageBackend.get(name);
        if (data === null) return 0;
        return this._allocStream({ kind: "file", mode: "r", name, data, pos: 0 });
      }
      case 15: { // Sys_openwrite(name)
        const name = this.readBcplString(a1);
        if (!name) return 0;
        return this._allocStream({ kind: "file", mode: "w", name, data: "", pos: 0 });
      }
      case 16: { // Sys_close(h)
        const h = a1;
        if (h <= 0 || h >= this.streams.length) return 0;
        const s = this.streams[h];
        if (!s) return 0;
        if (s.kind === "file" && s.mode === "w") storageBackend.set(s.name, s.data);
        this.streams[h] = null;
        if (this.curOut === h) { this.curOut = 1; this.storeWord(1 + 13, 1); }
        if (this.curIn  === h) { this.curIn  = 2; this.storeWord(1 + 12, 2); }
        return 0;
      }
      case 19: { // Sys_openappend(name)
        const name = this.readBcplString(a1);
        if (!name) return 0;
        const existing = storageBackend.get(name) ?? "";
        return this._allocStream({ kind: "file", mode: "w", name, data: existing, pos: existing.length });
      }
      case 47: { // Sys_openreadwrite(name)
        const name = this.readBcplString(a1);
        if (!name) return 0;
        const data = storageBackend.get(name) ?? "";
        return this._allocStream({ kind: "file", mode: "rw", name, data, pos: 0 });
      }

      // ---- file ops on storageBackend ----
      case 17: { // Sys_deletefile(name) → TRUE/FALSE
        const name = this.readBcplString(a1);
        if (!name || storageBackend.get(name) === null) return 0;
        storageBackend.del?.(name);
        return -1;
      }
      case 18: { // Sys_renamefile(old, new) → TRUE/FALSE
        const oldName = this.readBcplString(a1);
        const newName = this.readBcplString(a2);
        const data = storageBackend.get(oldName);
        if (data === null) return 0;
        storageBackend.set(newName, data);
        storageBackend.del?.(oldName);
        return -1;
      }
      case 46: { // Sys_filesize(name) → bytes, or -1 if missing
        const name = this.readBcplString(a1);
        const data = storageBackend.get(name);
        return data === null ? -1 : data.length;
      }

      // ---- memory ----
      case 21: return 0;  // Sys_getvec NOOP (delegate via imp_getvec at G!25)
      case 22: return 0;  // Sys_freevec NOOP
      case 24: return 0;  // Sys_globin NOOP (no seg loader)

      // ---- loader / native bridge (out of scope) ----
      case 23: case 25: return 0;                       // loadseg/unloadseg
      case 53: case 59: return 0;                       // callnative/callc

      // ---- muldiv ----
      case 26: { // Sys_muldiv(a, b, c)
        const a = BigInt.asIntN(64, BigInt(a1));
        const b = BigInt.asIntN(64, BigInt(a2));
        const c = BigInt.asIntN(64, BigInt(a3));
        if (c === 0n) { this._setResult2(0); return 0; }
        const q = (a * b) / c;
        const r = (a * b) - q * c;
        this._setResult2(Number(BigInt.asIntN(32, r)));
        return Number(BigInt.asIntN(32, q));
      }
      case 28: return 0;                                // Sys_intflag FALSE
      case 29: return 0;                                // Sys_setraster NOOP
      case 30: return 0;                                // Sys_cputime stub
      case 31: return 0;                                // Sys_filemodtime NOOP

      // ---- prefix (currentdir) ----
      case 32: {  // Sys_setprefix(s) — copy s to currentdir
        const name = this.readBcplString(a1);
        // Rewrite the currentdir string in place.
        const cd = this.loadWord(1 + 14);    // G!14 = currentdir word-addr
        if (!cd) return 0;
        const base = cd * 4;
        this.memView.setUint8(base, name.length & 0xFF);
        for (let i = 0; i < name.length; i++)
          this.memView.setUint8(base + 1 + i, name.charCodeAt(i) & 0xFF);
        return 0;
      }
      case 33: return this.loadWord(1 + 14);            // Sys_getprefix → G!14

      // ---- graphics placeholders ----
      case 34: return 0;                                // Sys_graphics NOOP

      // ---- stream seek / tell ----
      case 38: { // Sys_seek(h, pos, whence)
        const h = a1, pos = a2 | 0, whence = a3 | 0;
        const s = this.streams[h];
        if (!s || s.kind !== "file") return 0;
        let newPos = pos;
        if (whence === 1) newPos = (s.pos | 0) + pos;
        else if (whence === 2) newPos = (s.data?.length ?? 0) + pos;
        s.pos = Math.max(0, newPos);
        return -1;
      }
      case 39: { // Sys_tell(h)
        const s = this.streams[a1];
        if (!s || s.kind !== "file") return -1;
        return s.pos | 0;
      }

      // ---- IRQ / device (Cintpos — out of scope) ----
      case 40: case 41: case 42: case 43: return 0;

      // ---- datstamp(v) — fill v!0..v!2 with date info ----
      case 44: {
        const v = a1;
        if (!v) return 0;
        const now = new Date();
        const epochMs = now.getTime();
        const days = Math.floor(epochMs / 86400000);
        const msOfDay = epochMs - days * 86400000;
        this.storeWord(v + 0, days);
        this.storeWord(v + 1, msOfDay | 0);
        this.storeWord(v + 2, -1);
        return v;
      }

      // ---- sysvals (simple Map-backed kv store) ----
      case 48: {  // Sys_getsysval(key)
        this._sysvals ??= new Map();
        return this._sysvals.get(a1 | 0) | 0;
      }
      case 49: {  // Sys_putsysval(key, val)
        this._sysvals ??= new Map();
        this._sysvals.set(a1 | 0, a2 | 0);
        return 0;
      }

      case 50: return 0;                                // Sys_shellcom NOOP
      case 51: return 1;                                // Sys_getpid constant
      case 52: return 0;                                // Sys_dumpmem NOOP
      case 54: return 0;                                // Sys_platform generic
      case 55: {  // Sys_inc(addr) — *addr += 1, return new value
        const v = this.loadWord(a1) + 1;
        this.storeWord(a1, v);
        return v;
      }
      case 56: return 0;                                // Sys_buttons NOOP

      // ---- delay (no-op in Node, actual sleep would need async) ----
      case 57: return 0;                                // Sys_delay NOOP
      case 58: return 0;                                // Sys_sound NOOP (out of scope)

      // ---- tracing (NOOP) ----
      case 60: case 61: case 62: return 0;

      // ---- float (subop dispatch) ----
      case 63: {
        const sub = a1;
        const f = new Float32Array(1);
        const i = new Int32Array(f.buffer);
        const toF = (bits) => { i[0] = bits; return f[0]; };
        const toI = (val) => { f[0] = val;  return i[0]; };
        switch (sub) {
          case 1:  return toI(a2 * Math.pow(10, a3 | 0));  // fl_mk
          case 2:  return (toF(a2) | 0);                    // fl_unmk
          case 3:  return toI(a2 | 0);                      // fl_float
          case 4:  return (toF(a2) | 0);                    // fl_fix
          case 5:  return toI(Math.abs(toF(a2)));           // fl_abs
          case 6:  return toI(toF(a2) * toF(a3));           // fl_mul
          case 7:  return toI(toF(a2) / toF(a3));           // fl_div
          case 8:  return toI(toF(a2) % toF(a3));           // fl_mod
          case 9:  return toI(toF(a2) + toF(a3));           // fl_add
          case 10: return toI(toF(a2) - toF(a3));           // fl_sub
          case 11: return a2;                               // fl_pos
          case 12: return toI(-toF(a2));                    // fl_neg
          case 13: return toF(a2) === toF(a3) ? -1 : 0;     // fl_eq
          case 14: return toF(a2) !== toF(a3) ? -1 : 0;     // fl_ne
          case 15: return toF(a2) <  toF(a3) ? -1 : 0;      // fl_ls
          case 16: return toF(a2) >  toF(a3) ? -1 : 0;      // fl_gr
          case 17: return toF(a2) <= toF(a3) ? -1 : 0;      // fl_le
          case 18: return toF(a2) >= toF(a3) ? -1 : 0;      // fl_ge
          default: return 0;
        }
      }

      case 64: { // Sys_pollsardch — next char or -3 if none
        const s = this.streams[this.curIn];
        if (!s) return -3;
        if (s.kind === "stdin") {
          if (this.inputIdx >= this.input.length) return -3;
          return this.input.charCodeAt(this.inputIdx++);
        }
        if ((s.pos | 0) >= (s.data?.length | 0)) return -3;
        return s.data.charCodeAt(s.pos++);
      }
      case 65: return 0;                                // Sys_incdcount NOOP

      // ---- graphics / audio / joystick / extension (out of scope) ----
      case 66: case 67: case 68: case 69: case 72: return 0;

      case 70: return 0;                                // Sys_settracing NOOP
      case 71: return 0;                                // Sys_getbuildno stub

      // ---- block moves ----
      case 73: { // Sys_memmovewords(dest, src, n)
        const dest = a1, src = a2, n = a3 | 0;
        if (dest === src || n <= 0) return 0;
        if (dest < src) {
          for (let i = 0; i < n; i++) this.storeWord(dest + i, this.loadWord(src + i));
        } else {
          for (let i = n - 1; i >= 0; i--) this.storeWord(dest + i, this.loadWord(src + i));
        }
        return 0;
      }
      case 74: { // Sys_memmovebytes(dest, src, n) — byte addresses
        const dest = a1, src = a2, n = a3 | 0;
        if (dest === src || n <= 0) return 0;
        if (dest < src) {
          for (let i = 0; i < n; i++) this.memView.setUint8(dest + i, this.memView.getUint8(src + i));
        } else {
          for (let i = n - 1; i >= 0; i--) this.memView.setUint8(dest + i, this.memView.getUint8(src + i));
        }
        return 0;
      }
      case 75: { // Sys_errwrch(ch) — just write to stdout sink
        this.writeOut(String.fromCharCode(a1 & 0xFF));
        return 0;
      }

      default:
        // Unknown syscall — return 0 rather than trap.
        return 0;
    }
  }

  // level() — BCPL captures current stack frame pointer for later
  // longjump. We return the current $P (a word address) as a
  // "level" handle. longjump restores $P to that value.
  imp_level() {
    this.restoreP();
    return this.P;
  }

  // longjump(p, l) — non-local transfer. For simplicity, we treat
  // this as a hard halt with the given label code.
  imp_longjump() {
    const p = this.arg(0);
    const l = this.arg(1);
    this.restoreP();
    throw new BcplHalt(l, /*isAbort*/ true);
  }

  // pathfindinput(name, path) — try to open `name` via a search path.
  // Fallback to plain findinput.
  imp_pathfindinput() {
    const nameArg = this.arg(0);
    this.restoreP();
    if (!nameArg) return 0;
    const name = this.readBcplString(nameArg);
    const data = storageBackend.get(name);
    if (data === null) return 0;
    return this._allocStream({ kind: "file", mode: "r", name, data, pos: 0 });
  }

  // stop(n) — explicit halt with exit code. Alias of imp_stop but
  // kept distinct in the table so we can tell an intentional
  // stop(n) apart from a call into slot 0 (unassigned global).
  imp_stop_fn() {
    this.finished = true;
    throw new BcplHalt(this.arg(0));
  }

  // rdargs(argform, argv, argvsize) — parse command-line style input
  // (one line from stdin) against a BCPL argform spec. Supports /A
  // (required positional), /K (keyword with value), /S (switch), /N
  // (numeric). Writes BCPL-string pointers (or -1 for set switches,
  // or raw integers for /N) into argv slots in declaration order.
  //
  // argform example: "FROM/A,TO/K,ERR/K,SIZE/K/N,NONAMES/S,..."
  imp_rdargs() {
    const argform = this.readBcplString(this.arg(0));
    const argvWord = this.arg(1);
    const argvSize = this.arg(2);
    this.restoreP();

    // Read one stdin line as the command string.
    let line = "";
    let ch = this._readChar();
    while (ch !== -1 && ch !== 10) {
      line += String.fromCharCode(ch);
      ch = this._readChar();
    }
    const tokens = line.trim().split(/\s+/).filter(Boolean);

    // Parse argform into slots: [{name, flags:Set('A'|'K'|'S'|'N')}, ...]
    const slots = argform.split(",").map((spec) => {
      const parts = spec.trim().split("/");
      return { name: parts[0].toUpperCase(), flags: new Set(parts.slice(1).map(p => p.toUpperCase())) };
    });
    const values = new Array(slots.length).fill(null);

    const writeBcplString = (s) => {
      const total = s.length + 1;
      const words = Math.ceil(total / 4);
      this.heapTop -= words;
      const base = this.heapTop;
      const baseByte = base * 4;
      this.memView.setUint8(baseByte, s.length & 0xFF);
      for (let i = 0; i < s.length; i++) {
        this.memView.setUint8(baseByte + 1 + i, s.charCodeAt(i) & 0xFF);
      }
      for (let i = total; i < words * 4; i++) {
        this.memView.setUint8(baseByte + i, 0);
      }
      return base;
    };

    // Find slot by keyword name (case-insensitive).
    const findSlot = (nm) => slots.findIndex(s => s.name === nm.toUpperCase());

    let nextPositional = 0;
    const advancePositional = () => {
      while (nextPositional < slots.length
             && (slots[nextPositional].flags.has("S")
                 || (slots[nextPositional].flags.has("K") && !slots[nextPositional].flags.has("A"))
                 || values[nextPositional] !== null)) {
        nextPositional++;
      }
      return nextPositional < slots.length ? nextPositional++ : -1;
    };

    for (let i = 0; i < tokens.length; i++) {
      const tok = tokens[i];
      const keyIdx = findSlot(tok);
      if (keyIdx >= 0) {
        const slot = slots[keyIdx];
        if (slot.flags.has("S")) { values[keyIdx] = -1; continue; }
        // /K or /K/N or /A takes a following value.
        if (i + 1 >= tokens.length) break;
        const val = tokens[++i];
        values[keyIdx] = slot.flags.has("N") ? (parseInt(val, 10) | 0) : val;
        continue;
      }
      const pi = advancePositional();
      if (pi < 0) break;
      const slot = slots[pi];
      values[pi] = slot.flags.has("N") ? (parseInt(tok, 10) | 0) : tok;
    }

    // Write into argv. /N slots: allocate a word, write int there,
    // store pointer (BCPL rdargs convention: argv!i -> int cell).
    const writeIntCell = (n) => {
      this.heapTop -= 1;
      this.storeWord(this.heapTop, n | 0);
      return this.heapTop;
    };
    for (let i = 0; i < argvSize; i++) this.storeWord(argvWord + i, 0);
    for (let i = 0; i < slots.length && i < argvSize; i++) {
      const v = values[i];
      if (v === null) { this.storeWord(argvWord + i, 0); continue; }
      if (typeof v === "number") {
        if (v === -1) { this.storeWord(argvWord + i, -1); continue; }  // /S switch
        this.storeWord(argvWord + i, writeIntCell(v));
        continue;
      }
      this.storeWord(argvWord + i, writeBcplString(v));
    }
    // /A fields must be filled or rdargs fails.
    for (let i = 0; i < slots.length; i++) {
      if (slots[i].flags.has("A") && values[i] === null) return 0;
    }
    return argvWord || 1;  // non-zero = success
  }

  // Allocate a new stream slot, return its handle (index in
  // this.streams). Never returns 0.
  _allocStream(s) {
    for (let i = 3; i < this.streams.length; i++) {
      if (this.streams[i] === null) { this.streams[i] = s; return i; }
    }
    this.streams.push(s);
    return this.streams.length - 1;
  }

  // findoutput(name) — open a new write stream backed by storage.
  // Truncates any prior contents. Returns a stream handle, or 0 on
  // failure.
  imp_findoutput() {
    const name = this.readBcplString(this.arg(0));
    this.restoreP();
    if (!name) return 0;
    const h = this._allocStream({
      kind: "file", mode: "w", name, data: "", pos: 0,
    });
    return h;
  }

  // findinput(name) — open a stream for reading from storage.
  // Returns handle, or 0 if no such stream exists.
  imp_findinput() {
    const name = this.readBcplString(this.arg(0));
    this.restoreP();
    if (!name) return 0;
    const data = storageBackend.get(name);
    if (data === null) return 0;
    return this._allocStream({
      kind: "file", mode: "r", name, data, pos: 0,
    });
  }

  // selectoutput(h) — make h the current output stream. Returns
  // previous handle. Mirrors to G!13 (cos) so BCPL code reading the
  // global directly sees the current handle.
  imp_selectoutput() {
    const h = this.arg(0);
    this.restoreP();
    if (h < 0 || h >= this.streams.length || this.streams[h] === null) return 0;
    const prev = this.curOut;
    this.curOut = h;
    this.storeWord(1 + 13, h);  // G!13 = cos
    return prev;
  }

  imp_selectinput() {
    const h = this.arg(0);
    this.restoreP();
    if (h < 0 || h >= this.streams.length || this.streams[h] === null) return 0;
    const prev = this.curIn;
    this.curIn = h;
    this.storeWord(1 + 12, h);  // G!12 = cis
    return prev;
  }

  // endstream(h) — close h. If it was a write stream, commit data
  // to storage. If it was the current in/out stream, reset to the
  // stdin/stdout defaults.
  imp_endstream() {
    const h = this.arg(0);
    this.restoreP();
    if (h <= 0 || h >= this.streams.length) return 0;
    const s = this.streams[h];
    if (!s) return 0;
    if (s.kind === "file" && s.mode === "w") {
      storageBackend.set(s.name, s.data);
    }
    this.streams[h] = null;
    if (this.curOut === h) { this.curOut = 1; this.storeWord(1 + 13, 1); }
    if (this.curIn  === h) { this.curIn  = 2; this.storeWord(1 + 12, 2); }
    return 0;
  }

  // endread / endwrite — close the currently selected input/output
  // stream (whatever its handle).
  imp_endread() {
    const h = this.curIn;
    this.restoreP();
    if (h >= 3 && this.streams[h]) {
      this.streams[h] = null;
    }
    this.curIn = 2;
    this.storeWord(1 + 12, 2);  // G!12 = cis
    return 0;
  }
  imp_endwrite() {
    const h = this.curOut;
    this.restoreP();
    if (h >= 3 && this.streams[h]) {
      const s = this.streams[h];
      if (s.mode === "w") storageBackend.set(s.name, s.data);
      this.streams[h] = null;
    }
    this.curOut = 1;
    this.storeWord(1 + 13, 1);  // G!13 = cos
    return 0;
  }

  // ------------------ Tier-A memory + bit ops ------------------

  // copystring(from, to) — byte-copy BCPL string `from` to `to`
  // (including length byte at index 0).
  imp_copystring() {
    const from = this.arg(0) * 4;
    const to   = this.arg(1) * 4;
    this.restoreP();
    const len = this.memView.getUint8(from);
    for (let i = 0; i <= len; i++) {
      this.memView.setUint8(to + i, this.memView.getUint8(from + i));
    }
    return 0;
  }

  // copy_words(from, to, n) — word-copy n words.
  imp_copy_words() {
    const from = this.arg(0);
    const to   = this.arg(1);
    const n    = this.arg(2);
    this.restoreP();
    for (let i = 0; i < n; i++) this.storeWord(to + i, this.loadWord(from + i));
    return 0;
  }

  // clear_words(v, n) — zero-fill n words.
  imp_clear_words() {
    const v = this.arg(0);
    const n = this.arg(1);
    this.restoreP();
    for (let i = 0; i < n; i++) this.storeWord(v + i, 0);
    return 0;
  }

  // copy_bytes(fromlen, from, fillch, tolen, to) — MOVC5 semantics.
  // `from` and `to` are BYTE addresses (not word). Copy up to min(fromlen,
  // tolen) bytes, fill remainder of tolen with fillch. Returns
  // fromlen - copied.
  imp_copy_bytes() {
    const fromlen = this.arg(0);
    const from    = this.arg(1);
    const fillch  = this.arg(2);
    const tolen   = this.arg(3);
    const to      = this.arg(4);
    this.restoreP();
    const n = Math.min(fromlen, tolen);
    for (let i = 0; i < n; i++)
      this.memView.setUint8(to + i, this.memView.getUint8(from + i));
    for (let i = n; i < tolen; i++)
      this.memView.setUint8(to + i, fillch & 0xFF);
    return fromlen - n;
  }

  // packstring(v, s) — pack byte-per-word vector v into byte-packed
  // BCPL string s. Returns size = len/bytesperword.
  imp_packstring() {
    const v = this.arg(0);       // word addr of byte-per-word vec
    const s = this.arg(1) * 4;   // byte addr of dest string
    this.restoreP();
    const n = this.loadWord(v) & 0xFF;
    const bytesperword = 4;
    const size = (n / bytesperword) | 0;
    for (let i = 0; i <= n; i++) {
      this.memView.setUint8(s + i, this.loadWord(v + i) & 0xFF);
    }
    // Pad remainder of (size+1) words with zeros.
    for (let i = n + 1; i < (size + 1) * bytesperword; i++) {
      this.memView.setUint8(s + i, 0);
    }
    return size;
  }

  // unpackstring(s, v) — expand byte-packed string s into byte-per-word
  // vector v (v!0 = length, v!1 = byte 1, …).
  imp_unpackstring() {
    const s = this.arg(0) * 4;   // byte addr of source string
    const v = this.arg(1);       // word addr of dest vec
    this.restoreP();
    const len = this.memView.getUint8(s);
    for (let i = len; i >= 0; i--) {
      this.storeWord(v + i, this.memView.getUint8(s + i));
    }
    return 0;
  }

  // getword(v, i) — fetch i'th 16-bit little-endian word from byte-
  // indexed vector v (word-address). j = i*2.
  imp_getword() {
    const v = this.arg(0) * 4;   // byte addr
    const i = this.arg(1);
    this.restoreP();
    const j = v + i * 2;
    return this.memView.getUint8(j) | (this.memView.getUint8(j + 1) << 8);
  }

  // putword(v, i, w) — store low 16 bits of w into i'th 16-bit slot
  // of byte vector v, little-endian.
  imp_putword() {
    const v = this.arg(0) * 4;
    const i = this.arg(1);
    const w = this.arg(2);
    this.restoreP();
    const j = v + i * 2;
    this.memView.setUint8(j,     w         & 0xFF);
    this.memView.setUint8(j + 1, (w >>> 8) & 0xFF);
    return 0;
  }

  // setbit(bitno, bitvec, state) — set/clear bit, return previous.
  imp_setbit() {
    const bitno = this.arg(0);
    const bitvec = this.arg(1);
    const state  = this.arg(2);
    this.restoreP();
    const i = (bitno / 32) | 0;
    const s = bitno % 32;
    const mask = (1 << s) >>> 0;
    const word = this.loadWord(bitvec + i);
    const old  = word & mask;
    const next = state ? (word | mask) : (word & ~mask);
    this.storeWord(bitvec + i, next);
    return old;
  }

  // testbit(bitno, bitvec) — return nonzero if bit set.
  imp_testbit() {
    const bitno = this.arg(0);
    const bitvec = this.arg(1);
    this.restoreP();
    const i = (bitno / 32) | 0;
    const s = bitno % 32;
    return this.loadWord(bitvec + i) & ((1 << s) >>> 0);
  }

  // setvec(v, n, a0..a15) — copy up to 16 args into v!0..v!n-1.
  // BCPL signature has 16 named args after n; we read P!3..P!19 and
  // copy n of them. Excess args beyond available are zero.
  imp_setvec() {
    const v = this.arg(0);
    const n = this.arg(1);
    // Snapshot args before restoreP — P moves away after restore.
    const vals = [];
    for (let i = 0; i < 16; i++) vals.push(this.arg(2 + i));
    this.restoreP();
    for (let i = 0; i < n; i++) this.storeWord(v + i, vals[i] ?? 0);
    return 0;
  }

  // ------------------ Tier-A format group ------------------

  // writed(n, d) — signed decimal, d = min field width (space-pad).
  imp_writed() {
    const n = this.arg(0) | 0;
    const d = this.arg(1) | 0;
    this.restoreP();
    this._writeString(String(n).padStart(d, " "));
    return 0;
  }

  // writeu(n, d) — unsigned decimal, d = min field width.
  imp_writeu() {
    const n = this.arg(0) >>> 0;
    const d = this.arg(1) | 0;
    this.restoreP();
    this._writeString(String(n).padStart(d, " "));
    return 0;
  }

  // writet(s, d) — BCPL string, pad with trailing spaces to width d.
  imp_writet() {
    const s   = this.readBcplString(this.arg(0));
    const d   = this.arg(1) | 0;
    this.restoreP();
    this._writeString(s);
    const pad = d - s.length;
    if (pad > 0) this._writeString(" ".repeat(pad));
    return 0;
  }

  // writez(n, d) — signed decimal, d = field width, zero-pad.
  imp_writez() {
    const n = this.arg(0) | 0;
    const d = this.arg(1) | 0;
    this.restoreP();
    const neg = n < 0;
    const body = String(neg ? -n : n);
    const w = neg ? d - 1 : d;
    const padded = body.padStart(Math.max(w, body.length), "0");
    this._writeString((neg ? "-" : "") + padded);
    return 0;
  }

  // writehex(n, d) — unsigned hex, zero-pad to d digits (uppercase).
  imp_writehex() {
    const n = this.arg(0) >>> 0;
    const d = this.arg(1) | 0;
    this.restoreP();
    this._writeString(n.toString(16).toUpperCase().padStart(d, "0"));
    return 0;
  }

  // writeoct(n, d) — unsigned octal, zero-pad to d digits.
  imp_writeoct() {
    const n = this.arg(0) >>> 0;
    const d = this.arg(1) | 0;
    this.restoreP();
    this._writeString(n.toString(8).padStart(d, "0"));
    return 0;
  }

  // writeflt(x, w, p) — BCPL f32 bits x as fixed-point, width w,
  // p digits after the decimal point.
  imp_writeflt() {
    const xi = this.arg(0) | 0;
    const w  = this.arg(1) | 0;
    const p  = Math.max(0, this.arg(2) | 0);
    this.restoreP();
    const buf = new ArrayBuffer(4);
    new Int32Array(buf)[0] = xi;
    const x = new Float32Array(buf)[0];
    this._writeString(x.toFixed(p).padStart(w, " "));
    return 0;
  }

  // writee(x, w, p) — BCPL f32 bits x as exponential form, width w,
  // p digits after the decimal point.
  imp_writee() {
    const xi = this.arg(0) | 0;
    const w  = this.arg(1) | 0;
    const p  = Math.max(0, this.arg(2) | 0);
    this.restoreP();
    const buf = new ArrayBuffer(4);
    new Int32Array(buf)[0] = xi;
    const x = new Float32Array(buf)[0];
    this._writeString(x.toExponential(p).padStart(w, " "));
    return 0;
  }

  // newpage() — write form-feed (ASCII 12).
  imp_newpage() {
    this._writeChar(12);
    this.restoreP();
    return 0;
  }

  // codewrch(code) — encode Unicode codepoint as UTF-8 bytes.
  // BCPL blib supports GB2312 too; browser playground sticks to UTF-8.
  imp_codewrch() {
    const code = this.arg(0) >>> 0;
    this.restoreP();
    // Emit as JS string so the UI callback handles encoding.
    const s = String.fromCodePoint(code & 0x10FFFF);
    this._writeString(s);
    return 0;
  }

  // errwritef(fmt, ...) — writef to stderr. In the browser playground
  // we have one sink (writeOut); errwrch already routes there, so
  // errwritef delegates to writef for identical output behavior.
  imp_errwritef() { return this.imp_writef(); }

  // ------------------ Tier-A parse group ------------------

  // Push a char back onto the current input stream (blib unrdch).
  _unreadChar(ch) {
    const s = this.streams[this.curIn];
    if (!s) return;
    if (s.kind === "stdin") {
      if (this.inputIdx > 0) this.inputIdx--;
      return;
    }
    if (s.pos > 0) s.pos--;
  }

  // Write result2 (G!10) — secondary return value used by several
  // parse funcs for status/extra result.
  _setResult2(v) { this.storeWord(1 + 10, v | 0); }

  // readn() — skip leading whitespace + optional sign, parse signed
  // decimal, un-read terminator. result2 = 0 on success, -1 on
  // no-digits EOF-ish case.
  imp_readn() {
    this.restoreP();
    let ch, neg = false;
    // Skip whitespace + parse sign.
    for (;;) {
      ch = this._readChar();
      if (ch >= 48 && ch <= 57) break;                 // '0'..'9'
      if (ch === 32 || ch === 9 || ch === 10) continue;  // ws
      if (ch === 45) { neg = true; ch = this._readChar(); break; }  // '-'
      if (ch === 43) {              ch = this._readChar(); break; }  // '+'
      // No digit sighted — push back, signal error via result2.
      this._unreadChar(ch);
      this._setResult2(-1);
      return 0;
    }
    let sum = 0;
    while (ch >= 48 && ch <= 57) {
      sum = sum * 10 + (ch - 48);
      ch = this._readChar();
    }
    this._unreadChar(ch);
    this._setResult2(0);
    return (neg ? -sum : sum) | 0;
  }

  // readflt() — parse floating-point number, return f32 bit pattern.
  // result2 = 0 on success, -1 on failure.
  imp_readflt() {
    this.restoreP();
    let ch, str = "";
    // Skip whitespace.
    do { ch = this._readChar(); }
    while (ch === 32 || ch === 9 || ch === 10);
    // Optional sign.
    if (ch === 45 || ch === 43) { str += String.fromCharCode(ch); ch = this._readChar(); }
    let gotDigit = false;
    while (ch >= 48 && ch <= 57) { str += String.fromCharCode(ch); gotDigit = true; ch = this._readChar(); }
    if (ch === 46) {  // '.'
      str += "."; ch = this._readChar();
      while (ch >= 48 && ch <= 57) { str += String.fromCharCode(ch); gotDigit = true; ch = this._readChar(); }
    }
    if (ch === 69 || ch === 101) {  // 'E' 'e'
      str += "e"; ch = this._readChar();
      if (ch === 45 || ch === 43) { str += String.fromCharCode(ch); ch = this._readChar(); }
      while (ch >= 48 && ch <= 57) { str += String.fromCharCode(ch); ch = this._readChar(); }
    }
    this._unreadChar(ch);
    if (!gotDigit) { this._setResult2(-1); return 0; }
    const x = Number(str);
    this._setResult2(0);
    const buf = new ArrayBuffer(4);
    new Float32Array(buf)[0] = Number.isFinite(x) ? x : 0;
    return new Int32Array(buf)[0];
  }

  // rditem(v, upb) — read next item (word, quoted string, separator)
  // into v. Returns item type: 0=EOF, 1=unquoted, 2=quoted, 3='\n',
  // 4=';', 5='=', -1=error.
  imp_rditem() {
    const v   = this.arg(0);
    const upb = this.arg(1);
    this.restoreP();
    const pmax = (upb + 1) * 4 - 1;
    // Zero-fill v[0..upb].
    for (let i = 0; i <= upb; i++) this.storeWord(v + i, 0);
    const vByte = v * 4;
    const putByte = (p, ch) => this.memView.setUint8(vByte + p, ch & 0xFF);

    let ch = this._readChar();
    // Skip horizontal whitespace + CR.
    while (ch === 32 || ch === 9 || ch === 13) ch = this._readChar();

    if (ch === -1)  return 0;   // EOF
    if (ch === 10)  return 3;   // newline
    if (ch === 59)  return 4;   // ';'
    if (ch === 61)  return 5;   // '='

    let p = 0;
    if (ch === 34) {            // '"' quoted
      for (;;) {
        ch = this._readChar();
        if (ch === 13) continue;
        if (ch === 10 || ch === -1) return -1;
        if (ch === 34) return 2;
        if (ch === 42) {        // '*' escape
          const next = this._readChar();
          const cap = (next >= 97 && next <= 122) ? next - 32 : next;
          if (cap === 78) ch = 10;         // '*n'
          else if (cap === 34) ch = 34;    // '*"'
          else ch = next;
        }
        p++;
        if (p > pmax) return -1;
        putByte(0, p);
        putByte(p, ch);
      }
    }

    // Unquoted item.
    while (!(ch === 10 || ch === 32 || ch === 9 || ch === 59 || ch === 61 || ch === -1)) {
      p++;
      if (p > pmax) return -1;
      putByte(0, p);
      putByte(p, ch);
      do { ch = this._readChar(); } while (ch === 13);
    }
    if (ch !== -1) this._unreadChar(ch);
    return 1;
  }

  // str2numb(s) — simple BCPL-string-to-integer (deprecated but still
  // used in old code). Accepts optional leading '-' then digits.
  // Returns integer (no result2 contract).
  imp_str2numb() {
    const sByte = this.arg(0) * 4;
    this.restoreP();
    const len = this.memView.getUint8(sByte);
    let n = 0, neg = false, i = 1;
    if (len >= 1 && this.memView.getUint8(sByte + 1) === 45) { neg = true; i = 2; }
    for (; i <= len; i++) {
      const d = this.memView.getUint8(sByte + i) - 48;
      if (d < 0 || d > 9) break;
      n = n * 10 + d;
    }
    return (neg ? -n : n) | 0;
  }

  // string_to_number(s) — returns TRUE on success, FALSE on failure.
  // Success puts the parsed value in result2 (G!10). Supports
  // 'A' char literals, #O/#X/#B bases, underscores in digits, sign.
  imp_string_to_number() {
    const sByte = this.arg(0) * 4;
    this.restoreP();
    this._setResult2(0);
    const len = this.memView.getUint8(sByte);
    if (len === 0) return 0;
    const at = (k) => this.memView.getUint8(sByte + k);
    const cap = (c) => (c >= 97 && c <= 122) ? c - 32 : c;

    let p = 1, neg = false, radix = 10;
    let ch = cap(at(p));
    // Char literal 'A' (3-byte string: 'X').
    if (len === 3 && at(1) === 39 && at(3) === 39) {
      this._setResult2(at(2));
      return -1;
    }
    if (ch === 43 || ch === 45) {
      neg = ch === 45;
      if (p === len) return -1;
      p++;
      ch = cap(at(p));
    }
    if (ch === 35) {              // '#'
      radix = 8;
      if (p === len) return -1;
      p++;
      ch = cap(at(p));
      if (ch === 79 || ch === 88 || ch === 66) {
        if (ch === 88) radix = 16;
        else if (ch === 66) radix = 2;
        if (p === len) return -1;
        p++;
        ch = cap(at(p));
      }
    }
    let acc = 0;
    for (;;) {
      const d = (ch >= 48 && ch <= 57) ? ch - 48
              : (ch >= 65 && ch <= 90) ? ch - 65 + 10
              : ch === 95 ? -1
              : 1000;
      if (d < radix) {
        if (d >= 0) acc = (acc * radix + d) | 0;
      } else {
        return 0;  // bad digit → FALSE
      }
      p++;
      if (p > len) break;
      ch = cap(at(p));
    }
    this._setResult2((neg ? -acc : acc) | 0);
    return -1;
  }

  // ------------------ Tier-A diagnostic + aliases ------------------

  // memoryfree(x) — return number of free words on the heap.
  // result2 = total Cintcode memory size (words).
  // x param ignored (blib uses it for check-chain mode).
  imp_memoryfree() {
    this.restoreP();
    const totalWords = this.mem.buffer.byteLength >> 2;
    // heapTop is the lowest used heap address (grows downward).
    // Everything between static_base and heapTop is "free".
    const free = Math.max(0, this.heapTop - this.nextStaticWord);
    this._setResult2(totalWords);
    return free;
  }

  // stackfree(hwm) — return free stack words. For browser playground
  // the BCPL stack lives in a fixed slab; report a large constant
  // minus the distance P has advanced since stack base.
  imp_stackfree() {
    this.restoreP();
    // Heuristic: delta from initial static-past boundary. Programs
    // typically just log this; exact accuracy not essential.
    const stackBase = ((this.nextStaticWord + 3) & ~3);
    const free = Math.max(0, 100000 - (this.P - stackBase));
    this._setResult2(100000);
    return free;
  }

  // intflag() — TRUE if user pressed interrupt. Browser playground
  // has no such signal; always FALSE.
  imp_intflag() {
    this.restoreP();
    return 0;
  }

  // setseed(newseed) — replace randseed at G!127, return old.
  imp_setseed() {
    const newseed = this.arg(0) | 0;
    this.restoreP();
    const old = this.loadWord(1 + 127);
    this.storeWord(1 + 127, newseed);
    return old;
  }

  // ------------------ Coroutines (Asyncify-based) ------------------
  //
  // Each coroutine has its own BCPL stack slab + its own asyncify-state
  // buffer. cowait/callco/resumeco suspend the running wasm via
  // asyncify_start_unwind, and the JS scheduler resumes whichever
  // coroutine should run next via asyncify_start_rewind.
  //
  // Asyncify exports come from the user program after wasm-opt --asyncify
  // ran on it. If a program imports cowait/callco/resumeco/changeco/delay
  // but the asyncify pass wasn't applied (e.g. wasm-opt missing), the
  // imp_* methods fall back to single-shot semantics that won't actually
  // suspend; the program will still run but coroutine yields are no-ops.

  // Coroutine control block layout (mirrors blib.b's convention):
  //   c!0  co_pptr   — saved P (BCPL byte addr = stack << B2Wsh)
  //   c!1  co_parent — parent coroutine handle (0 if root)
  //   c!2  co_list   — next link in colist (we mirror G!8)
  //   c!3  co_fn     — body function
  //   c!4  co_size   — user stack size in words (excl. 6-word header)
  //   c!5  co_c      — self-pointer
  //   c!6+ stack space

  _coroutineExports() {
    // Find an instance that exports asyncify_start_unwind. After
    // wasm-opt --asyncify, every transformed module exports them.
    for (const p of this.programs) {
      if (p.instance.exports.asyncify_start_unwind) return p.instance.exports;
    }
    return null;
  }

  _allocCoroutine(fn, sizeWords) {
    // Reserve a slab near the top of memory (heap grows downward).
    const totalWords = sizeWords + 6;
    const base = this.heapTop - totalWords;
    this.heapTop = base;
    // Reserve an asyncify state buffer (1024 bytes = 256 words).
    const asyncifyWords = 256;
    const asyncifyBase = this.heapTop - asyncifyWords;
    this.heapTop = asyncifyBase;

    // Header.
    this.storeWord(base + 0, base << 2);          // co_pptr (byte addr)
    this.storeWord(base + 1, 0);                  // co_parent
    this.storeWord(base + 2, this.loadWord(1 + 8)); // co_list = old colist
    this.storeWord(base + 3, fn);                 // co_fn
    this.storeWord(base + 4, sizeWords);          // co_size
    this.storeWord(base + 5, base);               // co_c (self)
    // Fill stack with the BCPL stackword marker.
    for (let i = 6; i < totalWords; i++) {
      this.storeWord(base + i, 0xABCD1234 | 0);
    }
    // Asyncify state buffer: state[0] = current ptr (byte), state[1] = end (byte).
    const asyncByteBase = asyncifyBase * 4;
    this.memView.setUint32(asyncByteBase,     asyncByteBase + 8, true);
    this.memView.setUint32(asyncByteBase + 4, asyncByteBase + asyncifyWords * 4, true);

    return {
      handle: base,                  // BCPL passes this as "coroutine pointer"
      asyncifyData: asyncByteBase,   // byte addr of state struct
      status: "new",                 // "new" | "ready" | "running" | "done"
      yieldedValue: 0,
      resumeArg: 0,
    };
  }

  // createco(fn, size) — allocate a coroutine, return handle (=word
  // address of the control block). On first invocation the body fn
  // will see arg0 = the initial cowait return value (which our
  // scheduler delivers when first resumed).
  imp_createco() {
    const fn   = this.arg(0);
    const size = this.arg(1) | 0;
    this.restoreP();
    const sizeWords = Math.max(64, size);
    const co = this._allocCoroutine(fn, sizeWords);
    this._coroutines ??= new Map();
    this._coroutines.set(co.handle, co);
    // Insert at head of colist (G!8).
    this.storeWord(1 + 8, co.handle);
    return co.handle;
  }

  // deleteco(c) — free a coroutine. Refuse if it has children.
  imp_deleteco() {
    const c = this.arg(0);
    this.restoreP();
    if (!this._coroutines || !this._coroutines.has(c)) return 0;
    const co = this._coroutines.get(c);
    if (co.status === "running") return 0;
    this._coroutines.delete(c);
    // Note: we don't actually reclaim the heap slab here — the bump
    // allocator doesn't support arbitrary frees. Programs that delete
    // many short-lived coroutines will leak. Acceptable for demos.
    return 0;
  }

  // cowait(arg) — suspend the running coroutine, yield arg to the parent.
  // Implementation: triggers asyncify unwind; the JS scheduler picks
  // up the parent and rewinds it.
  imp_cowait() {
    const arg = this.arg(0);
    this.restoreP();
    const exp = this._coroutineExports();
    if (!exp || !this._currentCo) {
      // No asyncify or no coroutine context — degenerate: just return arg.
      return arg;
    }
    const co = this._currentCo;
    if (this._asyncifyMode === "rewinding") {
      // Resuming after a previous suspend.
      exp.asyncify_stop_rewind();
      this._asyncifyMode = "normal";
      return co.resumeArg;
    }
    // Suspend: kick off unwind.
    co.yieldedValue = arg;
    co.status = "ready";
    exp.asyncify_start_unwind(co.asyncifyData);
    this._asyncifyMode = "unwinding";
    // Schedule parent for resumption.
    this._scheduleResume = co.parentHandle;
    return 0;
  }

  // callco(c, arg) — suspend caller, resume c with arg as the cowait
  // return value. blib aborts(110) if c already has a parent.
  imp_callco() {
    const cHandle = this.arg(0);
    const arg     = this.arg(1);
    this.restoreP();
    const exp = this._coroutineExports();
    const target = this._coroutines?.get(cHandle);
    if (!exp || !target) return 0;
    if (this._asyncifyMode === "rewinding") {
      exp.asyncify_stop_rewind();
      this._asyncifyMode = "normal";
      return this._currentCo?.resumeArg ?? 0;
    }
    // Set parent link + arg.
    target.parentHandle = this._currentCo?.handle ?? null;
    target.resumeArg    = arg;
    this.storeWord(target.handle + 1, this._currentCo?.handle ?? 0);
    if (this._currentCo) {
      this._currentCo.status = "ready";
      exp.asyncify_start_unwind(this._currentCo.asyncifyData);
      this._asyncifyMode = "unwinding";
    }
    this._scheduleResume = cHandle;
    return 0;
  }

  // resumeco(c, arg) — same as callco but reparents (used for tail-call
  // style coroutine chains). Minimal v1: alias to callco.
  imp_resumeco() { return this.imp_callco(); }

  // changeco(val, c) — low-level swap. Treat as callco for v1.
  imp_changeco() {
    const val     = this.arg(0);
    const cHandle = this.arg(1);
    this.restoreP();
    // Reorder args to match callco's expectation.
    // Callers should rarely use changeco directly.
    const exp = this._coroutineExports();
    if (!exp) return 0;
    const target = this._coroutines?.get(cHandle);
    if (!target) return 0;
    if (this._asyncifyMode === "rewinding") {
      exp.asyncify_stop_rewind();
      this._asyncifyMode = "normal";
      return this._currentCo?.resumeArg ?? 0;
    }
    target.resumeArg = val;
    if (this._currentCo) {
      this._currentCo.status = "ready";
      exp.asyncify_start_unwind(this._currentCo.asyncifyData);
      this._asyncifyMode = "unwinding";
    }
    this._scheduleResume = cHandle;
    return 0;
  }

  // initco(fn, size, a..k) — wrapper that creates a coroutine and
  // delivers its initial args via the cowait return path. v1: just
  // create and let body see the first cowait arg.
  imp_initco() {
    const fn   = this.arg(0);
    const size = this.arg(1) | 0;
    // Args 2..12 are seed values; capture for the first cowait return.
    const seed = this.arg(2);
    this.restoreP();
    this._coroutines ??= new Map();
    const co = this._allocCoroutine(fn, Math.max(64, size));
    co.resumeArg = seed;
    this._coroutines.set(co.handle, co);
    this.storeWord(1 + 8, co.handle);
    return co.handle;
  }

  // findarg(keys, w) — search the rdargs key-spec string for an arg
  // matching BCPL string w. Returns arg index (0-based), or -1.
  imp_findarg() {
    const keysByte = this.arg(0) * 4;
    const wByte    = this.arg(1) * 4;
    this.restoreP();
    const klen = this.memView.getUint8(keysByte);
    const wlen = this.memView.getUint8(wByte);
    const capcmp = (a, b) => {
      const ca = (a >= 97 && a <= 122) ? a - 32 : a;
      const cb = (b >= 97 && b <= 122) ? b - 32 : b;
      return ca - cb;
    };
    let state = 0;  // 0=matching, 1=skipping
    let wp = 0, argno = 0;
    for (let i = 1; i <= klen; i++) {
      const kch = this.memView.getUint8(keysByte + i);
      if (state === 0) {
        if ((kch === 61 || kch === 47 || kch === 44) && wp === wlen) return argno;
        wp++;
        if (wp <= wlen && capcmp(kch, this.memView.getUint8(wByte + wp)) !== 0) state = 1;
      }
      if (kch === 44 || kch === 61) { state = 0; wp = 0; }
      if (kch === 44) argno++;
    }
    if (state === 0 && wp === wlen) return argno;
    return -1;
  }

  // ------------------ loader ------------------

  imports() {
    return {
      env: {
        bcpl_stop:    () => this.imp_stop(),
        bcpl_rdch:    () => this.imp_rdch(),
        bcpl_wrch:    () => this.imp_wrch(),
        bcpl_newline: () => this.imp_newline(),
        bcpl_writen:  () => this.imp_writen(),
        bcpl_writes:  () => this.imp_writes(),
        bcpl_writef:  () => this.imp_writef(),
        bcpl_getvec:  () => this.imp_getvec(),
        bcpl_freevec: () => this.imp_freevec(),
        bcpl_muldiv:  () => this.imp_muldiv(),
        bcpl_abort:   () => this.imp_abort(),
        bcpl_randno:  () => this.imp_randno(),
        bcpl_capitalch:  () => this.imp_capitalch(),
        bcpl_compch:     () => this.imp_compch(),
        bcpl_compstring: () => this.imp_compstring(),
        bcpl_findoutput:   () => this.imp_findoutput(),
        bcpl_findinput:    () => this.imp_findinput(),
        bcpl_selectoutput: () => this.imp_selectoutput(),
        bcpl_selectinput:  () => this.imp_selectinput(),
        bcpl_endstream:    () => this.imp_endstream(),
        bcpl_endread:      () => this.imp_endread(),
        bcpl_endwrite:     () => this.imp_endwrite(),
        bcpl_output:       () => this.imp_output(),
        bcpl_input:        () => this.imp_input(),
        bcpl_rdargs:       () => this.imp_rdargs(),
        bcpl_unrdch:       () => this.imp_unrdch(),
        bcpl_rewindstream: () => this.imp_rewindstream(),
        bcpl_findinoutput: () => this.imp_findinoutput(),
        bcpl_errwrch:      () => this.imp_errwrch(),
        bcpl_sawritef:     () => this.imp_sawritef(),
        bcpl_sys:          () => this.imp_sys(),
        bcpl_level:        () => this.imp_level(),
        bcpl_longjump:     () => this.imp_longjump(),
        bcpl_pathfindinput:() => this.imp_pathfindinput(),
        bcpl_stop_fn:      () => this.imp_stop_fn(),
        bcpl_copystring:   () => this.imp_copystring(),
        bcpl_copy_words:   () => this.imp_copy_words(),
        bcpl_clear_words:  () => this.imp_clear_words(),
        bcpl_copy_bytes:   () => this.imp_copy_bytes(),
        bcpl_packstring:   () => this.imp_packstring(),
        bcpl_unpackstring: () => this.imp_unpackstring(),
        bcpl_getword:      () => this.imp_getword(),
        bcpl_putword:      () => this.imp_putword(),
        bcpl_setbit:       () => this.imp_setbit(),
        bcpl_testbit:      () => this.imp_testbit(),
        bcpl_setvec:       () => this.imp_setvec(),
        bcpl_writed:       () => this.imp_writed(),
        bcpl_writeu:       () => this.imp_writeu(),
        bcpl_writet:       () => this.imp_writet(),
        bcpl_writez:       () => this.imp_writez(),
        bcpl_writehex:     () => this.imp_writehex(),
        bcpl_writeoct:     () => this.imp_writeoct(),
        bcpl_writee:       () => this.imp_writee(),
        bcpl_writeflt:     () => this.imp_writeflt(),
        bcpl_newpage:      () => this.imp_newpage(),
        bcpl_codewrch:     () => this.imp_codewrch(),
        bcpl_errwritef:    () => this.imp_errwritef(),
        bcpl_readn:           () => this.imp_readn(),
        bcpl_readflt:         () => this.imp_readflt(),
        bcpl_rditem:          () => this.imp_rditem(),
        bcpl_str2numb:        () => this.imp_str2numb(),
        bcpl_string_to_number:() => this.imp_string_to_number(),
        bcpl_findarg:         () => this.imp_findarg(),
        bcpl_memoryfree:      () => this.imp_memoryfree(),
        bcpl_stackfree:       () => this.imp_stackfree(),
        bcpl_intflag:         () => this.imp_intflag(),
        bcpl_setseed:         () => this.imp_setseed(),
        bcpl_createco:        () => this.imp_createco(),
        bcpl_callco:          () => this.imp_callco(),
        bcpl_cowait:          () => this.imp_cowait(),
        bcpl_resumeco:        () => this.imp_resumeco(),
        bcpl_deleteco:        () => this.imp_deleteco(),
        bcpl_initco:          () => this.imp_initco(),
        bcpl_changeco:        () => this.imp_changeco(),
      }
    };
  }

  // -------- linker-mode loader ----------------------------------
  // master.wasm owns shared memory + funcref table + P/G globals and
  // places stdlib imports at fixed table slots 0..21. Program wasms
  // compiled in linker mode import those plus $SB/$TB (static_base,
  // table_base) and export register()/stat_words()/fn_count(). The
  // loader two-pass-instantiates each program: probe sizes, bump-
  // allocate bases, then real instantiate + register.
  static STDLIB_TABLE_SLOTS = 74;
  static STATIC_WORD_BASE   = 1001;  // first word past G

  async loadMaster(url = "master.wasm") {
    if (this.master) return this.master;
    const bytes = await (await fetch(url)).arrayBuffer();
    const { instance } = await WebAssembly.instantiate(bytes, this.imports());
    this.master = instance;
    this.mem = instance.exports.mem;
    this.refresh();
    this.nextStaticWord = BcplRuntime.STATIC_WORD_BASE;
    this.nextTableSlot  = BcplRuntime.STDLIB_TABLE_SLOTS;
    this.programs = [];
    return instance;
  }

  _envFor(sbGlobal, tbGlobal) {
    const m = this.master.exports;
    return {
      mem: m.mem, ftable: m.ftable, P: m.P, G: m.G,
      static_base: sbGlobal, table_base: tbGlobal,
      ...this.imports().env,
    };
  }

  async loadProgramFromBytes(bytes) {
    if (!this.master) await this.loadMaster();
    const module = await WebAssembly.compile(bytes);
    // Probe pass with dummy bases — we need the instance to call
    // stat_words()/fn_count() before we know how much to bump.
    const zero = () => new WebAssembly.Global({ value: "i32" }, 0);
    const probe = await WebAssembly.instantiate(module, { env: this._envFor(zero(), zero()) });
    const stat_words = probe.exports.stat_words();
    const fn_count   = probe.exports.fn_count();
    // Real pass with allocated bases.
    const sb = this.nextStaticWord;
    const tb = this.nextTableSlot;
    this.nextStaticWord += stat_words;
    this.nextTableSlot  += fn_count;
    const real = await WebAssembly.instantiate(module, {
      env: this._envFor(
        new WebAssembly.Global({ value: "i32" }, sb),
        new WebAssembly.Global({ value: "i32" }, tb))
    });
    real.exports.register();
    this.programs.push({ instance: real, sb, tb, stat_words, fn_count });
    this.finished = false;
    return real;
  }

  async loadProgram(url) {
    const bytes = await (await fetch(url)).arrayBuffer();
    return this.loadProgramFromBytes(bytes);
  }

  // Load several program modules sharing one master (multi-section
  // BCPL, or a main program + libraries).
  //
  // IMPORTANT ordering rule: every program's register() writes G!1
  // (start tidx) if its source declares a `start` function. The LAST
  // loaded program wins. Pass library modules first and the entry
  // program last. run() prints a console warning if G!1 doesn't
  // resolve into the most-recently-loaded program's table slice.
  async loadProgramSet(urls) {
    if (!this.master) await this.loadMaster();
    for (const u of urls) await this.loadProgram(u);
  }

  initMaster(stackBaseWord) {
    const base = stackBaseWord ?? ((this.nextStaticWord + 3) & ~3);
    this.master.exports.init(base);

    // Phase 4: seed state globals libhdr reserves as read-only values
    // programs can inspect directly (not function pointers).
    //   G!12  cis         = default input  handle (stdin)
    //   G!13  cos         = default output handle (stdout)
    //   G!127 randseed    = PRNG seed
    //   G!14  currentdir  = pointer to BCPL string "/"
    // G!9 (rootnode), G!190 (current_language), G!7/8 (coroutine state)
    // stay at 0 — unused by current feature set.
    this.storeWord(1 + 12, this.curIn);   // cis
    this.storeWord(1 + 13, this.curOut);  // cos
    this.storeWord(1 + 127, (Date.now() | 1) >>> 0);  // randseed

    // Allocate BCPL string "/" in heap and point G!14 at it.
    const slashWord = this.heapTop - 1;
    this.heapTop = slashWord;
    this.memView.setUint8(slashWord * 4,     1);   // length byte
    this.memView.setUint8(slashWord * 4 + 1, 47);  // '/'
    this.storeWord(1 + 14, slashWord);    // currentdir
  }

  async load(url) {
    await this.loadMaster();
    await this.loadProgram(url);
    this.initMaster();
    return this.programs.at(-1).instance;
  }

  // Multi-program loading rule: libraries first, entry program LAST.
  // Each program's register() writes G!1 if it exports start, so the
  // last loader wins. Callers must order loadProgram() accordingly.
  //
  // NOTE: for a multi-section source (one logical program split on
  // `.` separators into multiple modules), the start function lives
  // in only ONE module — usually the first section. That's normal;
  // not an ordering bug. Use checkEntryOrdering() explicitly when
  // you know each loaded program is a separate source.
  run() {
    const tidx = this.loadWord(2);  // G!1 word addr = byte 8
    const fn = this.master.exports.ftable.get(tidx);
    if (!fn) throw new Error(`start (G!1 tidx=${tidx}) not in table`);
    try {
      return fn();
    } catch (e) {
      if (e instanceof BcplHalt) return e.code;
      throw e;
    }
  }

  // Caller-invoked load-order check. Returns null if OK, else a
  // diagnostic string describing the mismatch. Use in multi-file UIs
  // where each program corresponds to a separate source file and the
  // entry is expected to be the last-loaded item.
  //
  //   const warn = rt.checkEntryOrdering(programsPerSource);
  //
  // `programsPerSource` (optional) is an array of how many loaded
  // programs each source compiled to. If omitted, treats every
  // loaded program as its own source.
  checkEntryOrdering(programsPerSource = null) {
    if (this.programs.length < 2) return null;
    const tidx = this.loadWord(2);
    let lastSourceStart = this.programs.length - 1;
    if (programsPerSource && programsPerSource.length) {
      const total = programsPerSource.reduce((a, b) => a + b, 0);
      if (total === this.programs.length) {
        lastSourceStart = this.programs.length - programsPerSource.at(-1);
      }
    }
    const lastSource = this.programs.slice(lastSourceStart);
    const inLast = lastSource.some(p =>
      tidx >= p.tb && tidx < p.tb + p.fn_count);
    if (inLast) return null;
    const owner = this.programs.find(p =>
      tidx >= p.tb && tidx < p.tb + p.fn_count);
    const idx = owner ? this.programs.indexOf(owner) : -1;
    return `G!1 (start) resolves into program #${idx}, not the ` +
      `last-loaded source. Load the entry program last so its ` +
      `register() wins the G!1 assignment.`;
  }

  // P/G accessors now route through master's exported globals.
  get P() { return this.master.exports.P.value; }
  set P(v) { this.master.exports.P.value = v | 0; }
}

export class BcplHalt {
  constructor(code, isAbort = false) {
    this.code = code;
    this.isAbort = isAbort;
  }
}
