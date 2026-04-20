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
const storageBackend = (() => {
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

  get P() { return this.instance.exports.P.value; }
  set P(v) { this.instance.exports.P.value = v | 0; }

  // BCPL string at wordAddr: first word = length, then chars packed
  // 4-per-word little-endian.
  readBcplString(wordAddr) {
    const len = this.loadWord(wordAddr);
    let s = "";
    const baseByte = (wordAddr + 1) * 4;
    for (let i = 0; i < len; i++) {
      s += String.fromCharCode(this.loadByte(baseByte + i));
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
    // writef(fmt, a, b, c, d) — classic BCPL format codes.
    const fmt = this.readBcplString(this.arg(0));
    const args = [this.arg(1), this.arg(2), this.arg(3), this.arg(4)];
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
  // previous handle.
  imp_selectoutput() {
    const h = this.arg(0);
    this.restoreP();
    if (h < 0 || h >= this.streams.length || this.streams[h] === null) return 0;
    const prev = this.curOut;
    this.curOut = h;
    return prev;
  }

  imp_selectinput() {
    const h = this.arg(0);
    this.restoreP();
    if (h < 0 || h >= this.streams.length || this.streams[h] === null) return 0;
    const prev = this.curIn;
    this.curIn = h;
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
    if (this.curOut === h) this.curOut = 1;
    if (this.curIn  === h) this.curIn  = 2;
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
    return 0;
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
      }
    };
  }

  async load(url) {
    const resp = await fetch(url);
    if (!resp.ok) throw new Error(`fetch ${url}: ${resp.status}`);
    const bytes = await resp.arrayBuffer();
    const { instance } = await WebAssembly.instantiate(bytes, this.imports());
    this.instance = instance;
    this.mem = instance.exports.mem;
    this.refresh();
    this.finished = false;
    return instance;
  }

  // Call the user's start() function. BCPL convention: start lives
  // at global 1; after $__init runs, G!1 holds its table index.
  // Look that up via the exported ftable (works regardless of which
  // fn_L<n> the compiler assigned to start).
  run() {
    const tidx = this.loadWord(2);  // G+1 word addr = byte 8
    const table = this.instance.exports.ftable;
    const fn = table.get(tidx);
    if (!fn) throw new Error(`start (G!1 tidx=${tidx}) not in table`);
    try {
      return fn();
    } catch (e) {
      if (e instanceof BcplHalt) return e.code;
      throw e;
    }
  }
}

export class BcplHalt {
  constructor(code, isAbort = false) {
    this.code = code;
    this.isAbort = isAbort;
  }
}
