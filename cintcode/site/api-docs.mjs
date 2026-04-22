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

  // ---- Raw syscall ----
  sys: {
    sig: "sys(op, …)",
    cat: "system",
    desc: "Low-level dispatcher. Op codes: Sys_quit(0), Sys_sardch(10), Sys_sawrch(11), " +
          "Sys_read(12)/write(13), Sys_open{read,write,append,readwrite}(14,15,19,47), " +
          "Sys_close(16), Sys_delete/renamefile(17,18), Sys_getvec/freevec(21,22), " +
          "Sys_muldiv(26), Sys_intflag(28), Sys_cputime(30), Sys_setprefix/getprefix(32,33), " +
          "Sys_seek/tell(38,39), Sys_datstamp(44), Sys_filesize(46), Sys_getsysval/putsysval(48,49), " +
          "Sys_getpid(51), Sys_inc(55), Sys_flt(63), Sys_pollsardch(64), " +
          "Sys_memmovewords/bytes(73,74), Sys_errwrch(75). " +
          "Sys_flt subops 1..18 cover mk/unmk/float/fix/abs/mul/div/mod/add/sub/pos/neg/eq/ne/ls/gr/le/ge.",
  },
};
