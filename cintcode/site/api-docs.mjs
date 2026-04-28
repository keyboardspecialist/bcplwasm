// Curated help text for the Runtime API tab. Keyed by BCPL function
// name (matches stdlib-manifest.mjs + g/libhdr.h). If a runtime slot
// exists without an entry here, the UI shows "(no help available)".

export const API_DOCS = {
  // ---- I/O ----
  writef: {
    sig: "writef(fmt, a0..a10)",
    cat: "I/O",
    desc: "Formatted write. Format codes: %n %d %i %u %c %s %x %o %b %z %t %f %e %g. " +
          "Width: '%i4' or '%5.2f'.",
  },
  writes:    { sig: "writes(s)",      cat: "I/O", desc: "Write BCPL string to current output." },
  writen:    { sig: "writen(n)",      cat: "I/O", desc: "Write signed decimal." },
  writed:    { sig: "writed(n, d)",   cat: "I/O", desc: "Signed decimal, space-padded to d chars." },
  writeu:    { sig: "writeu(n, d)",   cat: "I/O", desc: "Unsigned decimal, space-padded." },
  writet:    { sig: "writet(s, d)",   cat: "I/O", desc: "BCPL string padded right with spaces to width d." },
  writez:    { sig: "writez(n, d)",   cat: "I/O", desc: "Signed decimal, zero-padded to d chars." },
  writehex:  { sig: "writehex(n, d)", cat: "I/O", desc: "Unsigned hex, zero-padded to d digits (uppercase)." },
  writeoct:  { sig: "writeoct(n, d)", cat: "I/O", desc: "Unsigned octal, zero-padded." },
  writeflt:  { sig: "writeflt(x, w, p)", cat: "I/O", desc: "Float x (f32 bits) as fixed-point, width w, p decimals." },
  writee:    { sig: "writee(x, w, p)",   cat: "I/O", desc: "Float x as exponential, width w, p decimals." },
  newline:   { sig: "newline()",      cat: "I/O", desc: "Write LF (ASCII 10)." },
  newpage:   { sig: "newpage()",      cat: "I/O", desc: "Write form-feed (ASCII 12)." },
  wrch:      { sig: "wrch(ch)",       cat: "I/O", desc: "Write one char to current output stream." },
  binwrch:   { sig: "binwrch(ch)",    cat: "I/O", desc: "Alias of wrch (playground has no binary-mode distinction)." },
  sawrch:    { sig: "sawrch(ch)",     cat: "I/O", desc: "Direct-screen char write. Alias of wrch in playground." },
  codewrch:  { sig: "codewrch(code)", cat: "I/O", desc: "Write Unicode codepoint (UTF-8 in playground)." },
  errwrch:   { sig: "errwrch(ch)",    cat: "I/O", desc: "Write char to stderr (same sink as stdout in playground)." },
  errwritef: { sig: "errwritef(fmt, …)", cat: "I/O", desc: "writef to stderr; delegates to writef in playground." },
  sawritef:  { sig: "sawritef(fmt, …)",  cat: "I/O", desc: "writef bypassing output-stream selection. Alias of writef." },

  // ---- Char input ----
  rdch:     { sig: "rdch()",    cat: "input", desc: "Read next char from current input. -1 at EOF." },
  binrdch:  { sig: "binrdch()", cat: "input", desc: "Alias of rdch." },
  sardch:   { sig: "sardch()",  cat: "input", desc: "Direct-keyboard read. Alias of rdch." },
  unrdch:   { sig: "unrdch()",  cat: "input", desc: "Push last-read char back onto the input stream." },

  // ---- Stream management ----
  findinput:     { sig: "findinput(name) → h",  cat: "streams", desc: "Open named stream for reading (via storageBackend). Returns handle or 0." },
  findoutput:    { sig: "findoutput(name) → h", cat: "streams", desc: "Open named stream for writing. Handle or 0." },
  findinoutput:  { sig: "findinoutput(name) → h", cat: "streams", desc: "Open read+write stream." },
  pathfindinput: { sig: "pathfindinput(name, paths) → h", cat: "streams", desc: "Find file by search path. Playground uses storage lookup." },
  selectinput:   { sig: "selectinput(h) → prev", cat: "streams", desc: "Switch current input stream. Returns previous handle." },
  selectoutput:  { sig: "selectoutput(h) → prev", cat: "streams", desc: "Switch current output stream. Returns previous handle." },
  input:         { sig: "input() → h",  cat: "streams", desc: "Return current input handle (cis)." },
  output:        { sig: "output() → h", cat: "streams", desc: "Return current output handle (cos)." },
  endstream:     { sig: "endstream(h)", cat: "streams", desc: "Close stream. Writes commit to storage." },
  endread:       { sig: "endread()",    cat: "streams", desc: "Close current input stream, reset to stdin." },
  endwrite:      { sig: "endwrite()",   cat: "streams", desc: "Close current output stream, reset to stdout." },
  rewindstream:  { sig: "rewindstream(h)", cat: "streams", desc: "Reset stream position to start." },

  // ---- Memory / bits ----
  getvec:     { sig: "getvec(n) → v",           cat: "memory", desc: "Allocate n+1 words. Returns pointer or 0 on OOM." },
  freevec:    { sig: "freevec(v)",              cat: "memory", desc: "Return vector to free list." },
  copystring: { sig: "copystring(from, to)",    cat: "memory", desc: "Byte-copy BCPL string (including length byte)." },
  copy_words: { sig: "copy_words(from, to, n)", cat: "memory", desc: "Copy n words." },
  clear_words:{ sig: "clear_words(v, n)",       cat: "memory", desc: "Zero-fill n words." },
  copy_bytes: { sig: "copy_bytes(fromlen, from, fillch, tolen, to) → rem", cat: "memory", desc: "MOVC5 byte copy with fill padding." },
  packstring: { sig: "packstring(v, s) → size", cat: "memory", desc: "Pack byte-per-word vec v into byte-packed BCPL string s." },
  unpackstring:{ sig: "unpackstring(s, v)",     cat: "memory", desc: "Unpack string into byte-per-word vec." },
  getword:    { sig: "getword(v, i)",           cat: "memory", desc: "Fetch little-endian 16-bit word at byte offset i*2 of v." },
  putword:    { sig: "putword(v, i, w)",        cat: "memory", desc: "Store low 16 bits of w into i'th LE word slot." },
  setbit:     { sig: "setbit(bitno, bitvec, state) → old", cat: "memory", desc: "Set/clear bit, return previous value." },
  testbit:    { sig: "testbit(bitno, bitvec)",  cat: "memory", desc: "Returns nonzero if bit is set." },
  setvec:     { sig: "setvec(v, n, a0..a15)",   cat: "memory", desc: "Copy up to 16 vararg values into v!0..v!n-1." },

  // ---- Parsing / conversion ----
  readn:            { sig: "readn() → n",             cat: "parse", desc: "Read signed decimal from current input. result2=-1 if no digits." },
  readflt:          { sig: "readflt() → bits",        cat: "parse", desc: "Read float from input. Returns f32 bit pattern." },
  rditem:           { sig: "rditem(v, upb) → type",   cat: "parse", desc: "Read token: 0=EOF 1=word 2=quoted 3=NL 4=';' 5='='." },
  str2numb:         { sig: "str2numb(s) → n",         cat: "parse", desc: "Simple string→int (deprecated but supported)." },
  string_to_number: { sig: "string_to_number(s) → ok", cat: "parse", desc: "Full parser: signs, #O/#X/#B bases, 'A' char literal, underscores. Value in result2." },
  findarg:          { sig: "findarg(keys, w) → idx",  cat: "parse", desc: "Find matching keyword in rdargs key-spec. -1 if not found." },
  rdargs:           { sig: "rdargs(keys, argv, upb)", cat: "parse", desc: "Parse command-line args per key-spec. Fills argv." },
  capitalch:        { sig: "capitalch(ch)",           cat: "parse", desc: "Uppercase a..z; others unchanged." },
  compch:           { sig: "compch(a, b)",            cat: "parse", desc: "Case-insensitive char compare: -1/0/+1." },
  compstring:       { sig: "compstring(s1, s2)",      cat: "parse", desc: "Case-insensitive string compare: -1/0/+1." },

  // ---- Math ----
  muldiv: { sig: "muldiv(a, b, c) → (a*b)/c", cat: "math", desc: "64-bit intermediate. Remainder in result2." },
  randno: { sig: "randno(upb) → n",           cat: "math", desc: "Random int in [1..upb]. Uses randseed (G!127)." },
  setseed:{ sig: "setseed(v) → old",          cat: "math", desc: "Replace randseed; return old value." },
  abs:    { sig: "ABS(x)",                    cat: "math", desc: "Absolute value (language keyword)." },

  // ---- Diagnostic / system ----
  memoryfree: { sig: "memoryfree(x) → free", cat: "system", desc: "Free heap words. Total in result2." },
  stackfree:  { sig: "stackfree(hwm) → free", cat: "system", desc: "Free stack words (heuristic). Size in result2." },
  intflag:    { sig: "intflag() → bool",      cat: "system", desc: "Always FALSE in playground (no interrupt source)." },
  abort:      { sig: "abort(code)",           cat: "system", desc: "Halt with error flag set." },
  stop:       { sig: "stop(code)",            cat: "system", desc: "Halt program cleanly." },
  level:      { sig: "level() → P",           cat: "system", desc: "Capture current stack frame pointer. Use with longjump." },
  longjump:   { sig: "longjump(p, l)",        cat: "system", desc: "Non-local jump. In playground, halts." },

  // ---- Coroutines (Asyncify-backed) ----
  createco: {
    sig: "createco(fn, size) → handle",
    cat: "coroutines",
    desc: "Allocate a coroutine: 6-word header + size-word stack + asyncify state buffer. " +
          "Returns a handle (BCPL pointer). The first callco delivers its arg as fn's parameter; " +
          "subsequent activations resume the body at its last cowait.",
  },
  callco: {
    sig: "callco(c, arg) → val",
    cat: "coroutines",
    desc: "Suspend the caller, resume coroutine c with arg. Returns whatever the coroutine " +
          "next cowait's (or its final return value if it completes). Sets c's parent link " +
          "to the caller.",
  },
  cowait: {
    sig: "cowait(arg) → val",
    cat: "coroutines",
    desc: "Yield arg to the parent coroutine and suspend. The corresponding callco in the " +
          "parent receives arg as its return value. When the parent next callco's this " +
          "coroutine, cowait returns the parent's new arg.",
  },
  resumeco: {
    sig: "resumeco(c, arg) → val",
    cat: "coroutines",
    desc: "Like callco but reparents c so the original parent isn't on the chain. " +
          "Currently aliased to callco in the playground.",
  },
  deleteco: {
    sig: "deleteco(c)",
    cat: "coroutines",
    desc: "Remove a coroutine from the runtime registry. Heap reclaim is bump-allocator only — " +
          "deleteco does NOT actually free the slab. Acceptable for demos.",
  },
  initco: {
    sig: "initco(fn, size, a..k) → handle",
    cat: "coroutines",
    desc: "createco + seed first cowait return with a (BCPL libhdr pattern). Up to 11 args.",
  },
  changeco: {
    sig: "changeco(val, c) → val",
    cat: "coroutines",
    desc: "Low-level context swap: suspend caller, resume c with val. Currently aliased to callco.",
  },

  // ---- Animation timing ----
  delay: {
    sig: "delay(ms)",
    cat: "system",
    desc: "Suspend for ms milliseconds. Asyncify-backed: yields one requestAnimationFrame " +
          "(canvas paints), then setTimeout for any remainder past 16ms. Use between frames " +
          "in animation loops; without it, render code runs synchronously and only the final " +
          "frame is visible.",
  },

  // ---- SDL graphics (sys(Sys_sdl, op, ...)) ----
  // The playground does not ship sdl.b BCPL wrappers — call via sys() directly.
  // Header sdl.h (auto-seeded) declares all sdl_* manifest constants.
  Sys_sdl: {
    sig: "sys(Sys_sdl, op, …)",
    cat: "graphics",
    desc: "SDL dispatcher. Sub-ops implemented:\n" +
          "  sdl_avail(0), sdl_init(1), sdl_setvideomode(2,w,h,bpp,flags)→surf, sdl_quit(3)\n" +
          "  sdl_lock/unlocksurface(4,5) — no-op on canvas\n" +
          "  sdl_delay(14) — better to use the wired delay() call instead\n" +
          "  sdl_flip(15) — no-op (canvas auto-presents)\n" +
          "  sdl_waitevent(17,v), sdl_pollevent(18,v) — fill v[0..2] with type/mod/ch or x/y\n" +
          "  sdl_getmousestate(19,v) — v[0,1]=x,y; returns button bits\n" +
          "  sdl_wm_setcaption(22,str)\n" +
          "  sdl_maprgb(24,fmt,r,g,b) → packed colour int\n" +
          "  sdl_drawline(27,surf,x1,y1,x2,y2,col)\n" +
          "  sdl_drawhline(28,surf,x1,x2,y,col), sdl_drawvline(29,surf,x,y1,y2,col)\n" +
          "  sdl_drawcircle(30,surf,cx,cy,r,col), sdl_drawfillcircle(37,…)\n" +
          "  sdl_drawrect(31,surf,x1,y1,x2,y2,col), sdl_drawfillrect(38,…), sdl_fillrect(39,…)\n" +
          "  sdl_drawpixel(32,surf,x,y,col)\n" +
          "  sdl_drawellipse(33,…), sdl_drawfillellipse(34,…)\n" +
          "  sdl_fillsurf(40,surf,col)\n" +
          "  sdl_getticks(50) → ms since sdl_init\n" +
          "  sdl_show/hidecursor(51,52)",
  },
  sdl_init:           { sig: "sys(Sys_sdl, sdl_init)", cat: "graphics", desc: "Reveal the canvas pane and start the timer (sdl_getticks epoch)." },
  sdl_setvideomode:   { sig: "sys(Sys_sdl, sdl_setvideomode, w, h, bpp, flags) → surf", cat: "graphics", desc: "Set canvas size. Returns a surface handle (use 1)." },
  sdl_quit:           { sig: "sys(Sys_sdl, sdl_quit)", cat: "graphics", desc: "No-op in playground; left for source compatibility with cintsys SDL." },
  sdl_maprgb:         { sig: "sys(Sys_sdl, sdl_maprgb, fmt, r, g, b) → col", cat: "graphics", desc: "Pack r,g,b (0..255) into a colour int the draw ops accept." },
  sdl_drawline:       { sig: "sys(Sys_sdl, sdl_drawline, surf, x1, y1, x2, y2, col)", cat: "graphics", desc: "Stroke a line." },
  sdl_drawhline:      { sig: "sys(Sys_sdl, sdl_drawhline, surf, x1, x2, y, col)", cat: "graphics", desc: "Stroke a horizontal line." },
  sdl_drawvline:      { sig: "sys(Sys_sdl, sdl_drawvline, surf, x, y1, y2, col)", cat: "graphics", desc: "Stroke a vertical line." },
  sdl_drawpixel:      { sig: "sys(Sys_sdl, sdl_drawpixel, surf, x, y, col)", cat: "graphics", desc: "Set a single pixel." },
  sdl_drawrect:       { sig: "sys(Sys_sdl, sdl_drawrect, surf, x1, y1, x2, y2, col)", cat: "graphics", desc: "Stroke rect outline." },
  sdl_drawfillrect:   { sig: "sys(Sys_sdl, sdl_drawfillrect, surf, x1, y1, x2, y2, col)", cat: "graphics", desc: "Fill rect." },
  sdl_fillrect:       { sig: "sys(Sys_sdl, sdl_fillrect, surf, x1, y1, x2, y2, col)", cat: "graphics", desc: "Same as drawfillrect." },
  sdl_drawcircle:     { sig: "sys(Sys_sdl, sdl_drawcircle, surf, cx, cy, r, col)", cat: "graphics", desc: "Stroke circle outline." },
  sdl_drawfillcircle: { sig: "sys(Sys_sdl, sdl_drawfillcircle, surf, cx, cy, r, col)", cat: "graphics", desc: "Filled disk." },
  sdl_drawellipse:    { sig: "sys(Sys_sdl, sdl_drawellipse, surf, cx, cy, rx, ry, col)", cat: "graphics", desc: "Stroke ellipse outline." },
  sdl_drawfillellipse:{ sig: "sys(Sys_sdl, sdl_drawfillellipse, surf, cx, cy, rx, ry, col)", cat: "graphics", desc: "Filled ellipse." },
  sdl_fillsurf:       { sig: "sys(Sys_sdl, sdl_fillsurf, surf, col)", cat: "graphics", desc: "Clear (or fill) the entire surface with col." },
  sdl_flip:           { sig: "sys(Sys_sdl, sdl_flip, surf)", cat: "graphics", desc: "No-op on canvas — paints happen automatically when JS yields (use delay)." },
  sdl_pollevent:      { sig: "sys(Sys_sdl, sdl_pollevent, v) → bool", cat: "graphics", desc: "Pop next event into v[0..2]. v[0]=type (sdle_*), v[1]/v[2]=args. Returns -1 if any, 0 if none." },
  sdl_waitevent:      { sig: "sys(Sys_sdl, sdl_waitevent, v) → bool", cat: "graphics", desc: "Same as pollevent in playground (does NOT actually block — use delay+pollevent in a loop)." },
  sdl_getmousestate:  { sig: "sys(Sys_sdl, sdl_getmousestate, v) → buttons", cat: "graphics", desc: "v[0],v[1] := mouse x,y. Returns button-bits mask." },
  sdl_getticks:       { sig: "sys(Sys_sdl, sdl_getticks) → ms", cat: "graphics", desc: "Milliseconds since sdl_init." },
  sdl_wm_setcaption:  { sig: "sys(Sys_sdl, sdl_wm_setcaption, str, ?)", cat: "graphics", desc: "Update the document title." },

  // ---- Raw syscall ----
  sys: {
    sig: "sys(op, …)",
    cat: "system",
    desc: "Low-level dispatcher. Op codes: Sys_quit(0), Sys_sardch(10), Sys_sawrch(11), " +
          "Sys_read(12)/write(13), Sys_open{read,write,append,readwrite}(14,15,19,47), " +
          "Sys_close(16), Sys_delete/renamefile(17,18), Sys_getvec/freevec(21,22), " +
          "Sys_muldiv(26), Sys_intflag(28), Sys_cputime(30), Sys_setprefix/getprefix(32,33), " +
          "Sys_seek/tell(38,39), Sys_datstamp(44), Sys_filesize(46), Sys_getsysval/putsysval(48,49), " +
          "Sys_getpid(51), Sys_inc(55), Sys_flt(63), Sys_pollsardch(64), Sys_sdl(66), " +
          "Sys_memmovewords/bytes(73,74), Sys_errwrch(75). " +
          "Sys_flt subops 1..18 cover mk/unmk/float/fix/abs/mul/div/mod/add/sub/pos/neg/eq/ne/ls/gr/le/ge. " +
          "Sys_sdl sub-ops listed under sys(Sys_sdl, …).",
  },
};
