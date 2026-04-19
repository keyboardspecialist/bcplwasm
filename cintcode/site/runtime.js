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

export class BcplRuntime {
  constructor(writeOut, input = "") {
    this.writeOut = writeOut;   // (string) => void — write to UI
    this.input = input;         // stdin buffer — consumed by rdch
    this.inputIdx = 0;
    this.instance = null;
    this.mem = null;
    this.memView = null;
    this.finished = false;
    // Heap grows downward from top of linear memory.
    // Stack grows upward from just past static data (set in $__init).
    // Free list: singly-linked, first word of each freed block holds
    // next_free (word addr, 0 = end). Simple first-fit reuse.
    this.heapTop = 0;           // set after instantiation
    this.freeList = 0;          // word addr of first free block, 0 if none
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

  // ------------------ stdlib implementations ------------------

  imp_stop() {
    this.finished = true;
    // BCPL's stop takes one arg (exit code) but we just halt.
    throw new BcplHalt(this.arg(0));
  }

  imp_rdch() {
    // Returns next char from input buffer, or -1 (endstreamch) at EOF.
    this.restoreP();
    if (this.inputIdx >= this.input.length) return -1;
    return this.input.charCodeAt(this.inputIdx++);
  }

  imp_wrch() {
    const ch = this.arg(0);
    this.writeOut(String.fromCharCode(ch & 0xFF));
    this.restoreP();
    return 0;
  }

  imp_newline() {
    this.writeOut("\n");
    this.restoreP();
    return 0;
  }

  imp_writen() {
    this.writeOut(String(this.arg(0)));
    this.restoreP();
    return 0;
  }

  imp_writes() {
    this.writeOut(this.readBcplString(this.arg(0)));
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
      if (!widthgiven && "idxouzb".includes(code)) {
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
    this.writeOut(out);
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

  // Call the user's start() function. Generated code exports it as
  // fn_L10 by convention (first user function label). If a different
  // entry is wanted, pass the export name.
  run(entry = "fn_L10") {
    const fn = this.instance.exports[entry];
    if (!fn) throw new Error(`no export ${entry}`);
    try {
      return fn();
    } catch (e) {
      if (e instanceof BcplHalt) return e.code;
      throw e;
    }
  }
}

export class BcplHalt {
  constructor(code) { this.code = code; }
}
