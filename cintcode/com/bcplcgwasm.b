// BCPL to WebAssembly (WAT) code generator.
// Outputs WebAssembly Text Format (.wat) to tostream.
// Assemble with: wat2wasm out.wat -o out.wasm
//
// Memory layout (BCPL word addressing; Wasm byte addr = word_addr * 4):
//   word 0     : reserved
//   words 1..1000 : global vector (G!0..G!999)
//   words 1001+  : static data (strings, tables, DATALAB items)
//   words above  : stack (grows upward, base set by $init)
//
// Registers:
//   $P  (Wasm global, mut i32) = BCPL word address of current stack frame
//   $G  (Wasm global, i32)     = BCPL word address of global vector base
//   $A  (Wasm local)           = accumulator / return value
//
// Expression stack: Wasm locals $t0..$t{MAXSTK-1}, indexed by compile-time
// variable cssp (current simulated stack pointer, 0-based).
// P!n in BCPL = i32.load at Wasm byte address (P+n)*4.
//
// Control flow: each function uses an if-chain dispatch loop.
//   Local $__lab holds current label index (0=entry, 1..N=BCPL labels).
//   At each LAB Ln, close prior if-block and open new one.
//   JUMP/RTRN/FNRN close the block with an explicit set+br or return.
//   Natural fallthrough: emit set $__lab to next idx before closing.

SECTION "BCPLCGWASM"
GET "libhdr"
GET "bcplfecg"

MANIFEST {
  wasm_glob_base  = 1      // G!0 at BCPL word address 1
  wasm_glob_size  = 1000   // words reserved for global vector
  wasm_stat_base  = wasm_glob_base + wasm_glob_size  // = 1001

  glob_base_bytes = wasm_glob_base * 4  // = 4 (Wasm byte addr of G!0)

  maxstack = 40    // max expression depth ($t0..$t39)
  maxlabs  = 16384 // max BCPL labels per section. bcpltrn.b itself uses
                   // ~1500 labels; 16384 gives 10x headroom. Direct-indexed
                   // labmap — must exceed the highest label number emitted.

  // Imported stdlib: host-provided BCPL built-ins. Each gets a fixed
  // Wasm function-table slot at the front of the table, and __init
  // writes that slot into its BCPL global number so indirect calls
  // (FNAP via G!n) reach the host.
  stdlib_count = 22
}

GLOBAL {
  cgsects: cgg
  wout          // write to tostream: wout(fmt, a, b, c, d)
  wout1         // wout helper: selectoutput and writef
  emit_fn_header
  emit_fn_footer
  emit_mod_header
  emit_mod_footer
  cgpendingop_wasm
  emit_goto_lab
  emit_goto_idx
  emit_condjump
  emit_apply
  emit_p_addr    // emit WAT expression: byte addr of P!n
  emit_g_addr    // emit WAT expression: byte addr of G!n
  push_const
  push_load_p
  push_load_g
  push_rv        // dereference top of expr stack
  binop; fbinop
  cmp_op; fcmp_op
  unop_neg; unop_not; unop_abs
  unop_fneg; unop_fabs; unop_float; unop_fix
  rdl; rdgn; rdname
  store_p
  store_g
  store_ind
  lab_idx        // labmap lookup / allocate
  cur_nlab       // count of labels in current function
  fn_entrylab    // entry label of current function
  fn_save        // SAVE count for current function
  labmap         // array: BCPL label -> sequential index
  nlabmap        // size of labmap
  op             // current OCODE opcode (shared across all cg functions)
  pendingop      // deferred binary/unary operator
  cssp           // compile-time OCODE stack pointer
  cssp_sync      // slot below which all live data has already been
                 // persisted to memory (via s_store or s_stack flush).
                 // s_store flushes only [cssp_sync..cssp-1]. Push ops
                 // leave cssp_sync unchanged.
  fn_peak        // peak cssp seen in current function (prescan output)
  terminated     // TRUE if current code block ended with terminal
  stat_words     // static data array (words)
  stat_n         // number of static words accumulated
  stat_labmap    // label -> offset in stat_words
  stat_labmap_n  // size of stat_labmap
  ginit_v        // global init pairs: even=gnum, odd=label
  ginit_n        // number of global init entries
  ftab_v         // function labels in order (for elem section)
  ftab_n         // number of functions
  pend_v         // pending inner-function OCODE ranges: triples
                 // (obuf_start, obuf_end, label)
  pend_n         // number of words used in pend_v (multiple of 3)
  pend_max       // capacity (words)
  sect_open      // TRUE if module header has been emitted
  // section_id removed: each BCPL source section (between `.`
  // separators) is its own codegenerate() call, so the frontend
  // loop in bcplsyn.b drives one (module ...) per section. The
  // bcpl2wasm.sh splitter partitions the combined .wat output on
  // `^(module` boundaries into separate .wasm files sharing one
  // master. Namespacing-across-sections is therefore unnecessary.
  workspace_base // saved for reuse across codegenerate calls
  workspace_size
  queue_inner    // helper: queue a nested function range
  drain_pending  // helper: emit queued inner functions
  skip_inner_body // helper: fast-forward over nested fn body
  register_entries // helper: pre-collect top-level ENTRY labels
}

// ------------------------------------------------------------------
// Main entry from frontend
// ------------------------------------------------------------------

LET codegenerate(workspace, workspacesize) BE
{ LET p = workspace
  IF workspacesize < 8192 DO
  { writes("WASM CG: Too little workspace*n")
    errcount := errcount + 1
    longjump(fin_p, fin_l)
  }

  labmap      := p;  p := p + maxlabs;   nlabmap := maxlabs
  stat_words  := p;  p := p + 32768
  stat_labmap := p;  p := p + maxlabs * 2; stat_labmap_n := maxlabs
  ginit_v     := p;  p := p + 512
  ftab_v      := p;  p := p + 1536
  pend_v      := p;  p := p + 768;  pend_max := 768

  FOR i = 0 TO maxlabs-1   DO labmap!i := -1
  FOR i = 0 TO maxlabs*2-1 DO stat_labmap!i := -1
  stat_n    := 0
  ginit_n   := 0
  ftab_n    := 0
  pend_n    := 0
  sect_open := FALSE

  op := rdn()
  cgsects(workspace + 4096, workspacesize - 4096)
}

// Multi-section OCODE stream: a single BCPL compilation unit may
// consist of several sections joined by '.', each terminated by its
// own s_global. We accumulate functions + static data + globals
// across ALL sections into one Wasm module. The footer (elem,
// $__init, data) is emitted exactly once when the stream ends (op=0).
AND cgsects(workvec, vecsize) BE UNTIL op=0 DO
{ UNLESS sect_open DO
  { sect_open := TRUE
    emit_mod_header()
  }

  IF op=s_section DO
  { LET n = rdn()
    selectoutput(tostream)
    writes("  ;; SECTION: ")
    FOR i = 1 TO n DO wrch(rdn())
    newline()
    selectoutput(sysprint)
    op := rdn()
  }

  register_entries()
  scan_emit()
  op := rdn()
}

// Walk OCODE once, depth-tracking nested ENTRY/ENDPROC, and append
// every top-level (depth=1 outer) ENTRY label to ftab_v. Restores
// obufp/op so scan_emit re-reads from the start.
AND register_entries() BE
{ LET sv_p = obufp
  LET sv_op = op
  LET cur_op = op
  LET depth = 0
  { SWITCHON cur_op INTO
    { DEFAULT: ENDCASE
      CASE 0: GOTO reg_done
      CASE s_global: GOTO reg_done
      CASE s_entry:
      { LET l = rdl()
        LET nn = rdn()
        FOR i=1 TO nn DO rdn()
        IF ftab_n < 512 DO
        { LET seen = FALSE
          FOR i = 0 TO ftab_n-1 DO
            IF ftab_v!i = l DO { seen := TRUE; BREAK }
          UNLESS seen DO
          { ftab_v!ftab_n := l
            ftab_n := ftab_n + 1
          }
        }
        depth := depth + 1
        ENDCASE
      }
      CASE s_endproc:
        depth := depth - 1
        ENDCASE
      CASE s_lp: CASE s_lg: CASE s_sp: CASE s_sg:
      CASE s_stack: CASE s_save:
      CASE s_ln: CASE s_lflt: CASE s_fnap: CASE s_rtap: CASE s_fnum:
        rdn(); ENDCASE
      CASE s_lf: CASE s_ll: CASE s_llp: CASE s_llg: CASE s_lll: CASE s_sl:
      CASE s_jt: CASE s_jf: CASE s_jump: CASE s_res: CASE s_datalab: CASE s_lab:
        rdl(); ENDCASE
      CASE s_lstr:
        { LET nn=rdn(); FOR i=1 TO nn DO rdn(); ENDCASE }
      CASE s_switchon:
        { LET nn=rdn(); rdl(); FOR i=1 TO nn DO {rdn(); rdl()}; ENDCASE }
      CASE s_selld:  rdn(); rdn(); ENDCASE
      CASE s_selst:  rdn(); rdn(); rdn(); ENDCASE
      CASE s_comment: CASE s_needs: CASE s_section:
        { LET nn=rdn(); FOR i=1 TO nn DO rdn(); ENDCASE }
      CASE s_itemn: CASE s_itemflt: rdn(); ENDCASE
    }
    cur_op := rdn()
  } REPEAT
reg_done:
  obufp := sv_p
  op    := sv_op
}

// ------------------------------------------------------------------
// Output helper: write to tostream
// ------------------------------------------------------------------

AND wout(fmt, a, b, c, d) BE
{ LET old = output()
  selectoutput(tostream)
  writef(fmt, a, b, c, d)
  selectoutput(old)
}

// Emit WAT byte address of P!n into current output context
AND emit_p_addr(n) BE
  writef("(i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const %n))", n*4)

// Emit WAT byte address of G!n into current output context
AND emit_g_addr(n) BE
  writef("(i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const %n))", n*4)

// OCODE stream readers (label, global number, name).
AND rdl()  = rdn()
AND rdgn() = rdn()

AND rdname(n, v) BE
{ // v is a VEC 16 byte buffer: v%0 = actual stored length (<=63),
//   v%1..v%63 = name chars. OCODE carries the full name bytes;
//   we copy up to 63 chars verbatim and discard any overflow so the
//   OCODE stream is fully consumed.
  LET cap = 63
  LET keep = n <= cap -> n, cap
  FOR i = 1 TO keep    DO v%i := rdn()
  FOR i = keep+1 TO n  DO rdn()
  v%0 := keep
}

// Fast-forward over one inner function's OCODE body.
// Caller: obufp positioned just after s_entry+label+name (start of body).
// On return: obufp positioned just after the matching s_endproc.
AND skip_inner_body() BE
{ LET depth = 1
  LET sop = rdn()
  { SWITCHON sop INTO
    { DEFAULT: ENDCASE
      CASE s_entry:
      { LET el = rdl()
        LET nn = rdn()
        FOR i=1 TO nn DO rdn()
        depth := depth + 1
        ENDCASE
      }
      CASE s_endproc:
        depth := depth - 1
        IF depth = 0 RETURN
        ENDCASE
      CASE s_lp: CASE s_lg: CASE s_sp: CASE s_sg:
      CASE s_stack: CASE s_save:
      CASE s_ln: CASE s_lflt: CASE s_fnap: CASE s_rtap: CASE s_fnum:
        rdn(); ENDCASE
      CASE s_lf: CASE s_ll: CASE s_llp: CASE s_llg: CASE s_lll: CASE s_sl:
      CASE s_jt: CASE s_jf: CASE s_jump: CASE s_res: CASE s_datalab: CASE s_lab:
        rdl(); ENDCASE
      CASE s_lstr:
        { LET nn=rdn(); FOR i=1 TO nn DO rdn(); ENDCASE }
      CASE s_switchon:
        { LET nn=rdn(); rdl(); FOR i=1 TO nn DO {rdn(); rdl()}; ENDCASE }
      CASE s_selld:  rdn(); rdn(); ENDCASE
      CASE s_selst:  rdn(); rdn(); rdn(); ENDCASE
      CASE s_comment: CASE s_needs: CASE s_section:
        { LET nn=rdn(); FOR i=1 TO nn DO rdn(); ENDCASE }
      CASE s_itemn: CASE s_itemflt: rdn(); ENDCASE
      CASE 0: RETURN
    }
    sop := rdn()
  } REPEAT
}

// Queue an inner function for later hoisting.
// Records (obuf_start, obuf_end, label). Registers label in ftab_v
// immediately so LF lookups from the outer function get a stable index.
AND queue_inner(start, ebd, lab) BE
{ IF pend_n + 3 > pend_max DO
  { writes("WASM CG: pend_v full*n"); RETURN
  }
  pend_v!pend_n := start; pend_n := pend_n + 1
  pend_v!pend_n := ebd;   pend_n := pend_n + 1
  pend_v!pend_n := lab;   pend_n := pend_n + 1
  IF ftab_n < 512 DO
  { ftab_v!ftab_n := lab
    ftab_n := ftab_n + 1
  }
}

// Emit all queued inner functions as top-level Wasm funcs.
// Called once after every outer function closed, before module footer.
AND drain_pending() BE
{ LET sv_obufq = obufq
  LET sv_obufp = obufp
  LET sv_op    = op
  LET i = 0
  UNTIL i >= pend_n DO
  { LET start = pend_v!i
    LET ebd   = pend_v!(i+1)
    obufp := start
    obufq := ebd
    op    := rdn()  // should be s_entry
    scan_emit()     // re-entrant: processes the single function
    i := i + 3
  }
  // Reset queue so the next section starts fresh — avoids re-emitting
  // already-drained inner functions when cgsects loops.
  pend_n := 0
  obufq := sv_obufq
  obufp := sv_obufp
  op    := sv_op
}

// ------------------------------------------------------------------
// Module header and footer
// ------------------------------------------------------------------

// Linker-mode header. Program modules import shared memory, table,
// globals (P, G) and two loader-supplied i32 globals:
//   $SB  word address of this module's static-data region.
//   $TB  table index base for this module's function slice.
// Stdlib is reached via G[gnum] set by master.init(); program modules
// don't import imp_* directly.
AND emit_mod_header() BE
{ selectoutput(tostream)
  writef("(module*n")
  writef("  (type $bcpl_fn (func (result i32)))*n")
  writef("  (import *"env*" *"mem*"    (memory 4))*n")
  writef("  (import *"env*" *"ftable*" (table $ftable 256 funcref))*n")
  writef("  (import *"env*" *"P*" (global $P (mut i32)))*n")
  writef("  (import *"env*" *"G*" (global $G i32))*n")
  writef("  (import *"env*" *"static_base*" (global $SB i32))*n")
  writef("  (import *"env*" *"table_base*"  (global $TB i32))*n*n")
  selectoutput(sysprint)
}

// Linker-mode footer:
//   - Emit an (elem ...) entry whose offset is the imported
//     $TB global, so the loader can place this module's functions
//     anywhere in the shared table.
//   - Emit a passive data segment with all collected static words.
//   - Emit a $register export: the loader calls it after
//     instantiation to copy passive data into memory at $SB*4 and
//     to write G[gnum] := TB + local_tidx for every s_global pair.
AND emit_mod_footer() BE
{ selectoutput(tostream)
  // Passive elem segment: NOT installed at instantiate time so the
  // two-pass loader's probe instance doesn't clobber the shared
  // table. register() issues table.init at the real TB.
  writef("  ;; --- function table slice (passive) ---*n")
  writef("  (elem $ftab funcref")
  FOR i = 0 TO ftab_n-1 DO writef(" (ref.func $fn_L%n)", ftab_v!i)
  writef(")*n*n")

  IF stat_n > 0 DO
  { writef("  ;; static data — passive segment (%n words)*n", stat_n)
    writef("  (data $stat *"")
    FOR i = 0 TO stat_n-1 DO
    { LET v = stat_words!i
      writef("\%X2\%X2\%X2\%X2",
             v & #xFF, (v>>8) & #xFF, (v>>16) & #xFF, (v>>24) & #xFF)
    }
    writef("*")*n*n")
  }

  // Loader calls register() after instantiate. It copies static data
  // into memory, populates the table slice, and writes G entries.
  writef("  (func $register (export *"register*")*n")
  IF stat_n > 0 DO
  { writef("    (memory.init $stat*n")
    writef("      (i32.shl (global.get $SB) (i32.const 2))*n")
    writef("      (i32.const 0)*n")
    writef("      (i32.const %n))*n", stat_n * 4)
    writef("    (data.drop $stat)*n")
  }
  IF ftab_n > 0 DO
  { writef("    (table.init $ftable $ftab*n")
    writef("      (global.get $TB)*n")
    writef("      (i32.const 0)*n")
    writef("      (i32.const %n))*n", ftab_n)
    writef("    (elem.drop $ftab)*n")
  }
  FOR i = 0 TO ginit_n-1 BY 2 DO
  { LET gnum       = ginit_v!i
    LET local_tidx = ginit_v!(i+1)
    writef("    (i32.store ")
    emit_g_addr(gnum)
    writef(" (i32.add (global.get $TB) (i32.const %n))) ;; G!%n*n",
           local_tidx, gnum)
  }
  writef("  )*n")

  writef("  (func $stat_words (export *"stat_words*") (result i32)*n")
  writef("    (i32.const %n))*n", stat_n)
  writef("  (func $fn_count (export *"fn_count*") (result i32)*n")
  writef("    (i32.const %n))*n", ftab_n)

  writef(")*n ;; end module*n")
  selectoutput(sysprint)
}

// ------------------------------------------------------------------
// Label management
// ------------------------------------------------------------------

AND lab_idx(l) = VALOF
{ IF l >= 0 & l < nlabmap DO
  { IF labmap!l >= 0 RESULTIS labmap!l
    cur_nlab    := cur_nlab + 1
    labmap!l    := cur_nlab
    RESULTIS cur_nlab
  }
  RESULTIS 0
}

// ------------------------------------------------------------------
// Expression stack helpers (write to currently-selected output)
// ------------------------------------------------------------------

AND push_const(n) BE
{ writef("    (local.set $t%n (i32.const %n))*n", cssp, n)
  cssp := cssp + 1
}

AND push_load_p(n) BE
{ writef("    (local.set $t%n (i32.load ", cssp)
  emit_p_addr(n)
  writef("))*n")
  cssp := cssp + 1
}

AND push_load_g(n) BE
{ writef("    (local.set $t%n (i32.load ", cssp)
  emit_g_addr(n)
  writef("))*n")
  cssp := cssp + 1
}

AND push_rv() BE
{ // Dereference: $t{top} is BCPL word address; load the word
  cssp := cssp - 1
  writef("    (local.set $t%n (i32.load (i32.shl (local.get $t%n) (i32.const 2))))*n",
         cssp, cssp)
  cssp := cssp + 1
}

AND binop(wasm_op) BE
{ cssp := cssp - 2
  writef("    (local.set $t%n (%s (local.get $t%n) (local.get $t%n)))*n",
         cssp, wasm_op, cssp, cssp+1)
  cssp := cssp + 1
  IF cssp_sync > cssp DO cssp_sync := cssp
}

// Float binop: reinterpret i32 bits -> f32, apply op, reinterpret back.
// Preserves BCPL typelessness (all stack locals stay i32).
AND fbinop(wasm_fop) BE
{ cssp := cssp - 2
  writef("    (local.set $t%n (i32.reinterpret_f32 (%s (f32.reinterpret_i32 (local.get $t%n)) (f32.reinterpret_i32 (local.get $t%n)))))*n",
         cssp, wasm_fop, cssp, cssp+1)
  cssp := cssp + 1
  IF cssp_sync > cssp DO cssp_sync := cssp
}

// Float compare: inputs are i32 bit patterns of floats, result is BCPL -1/0.
AND fcmp_op(wasm_fcmp) BE
{ cssp := cssp - 2
  writef("    (local.set $t%n (i32.sub (i32.const 0) (%s (f32.reinterpret_i32 (local.get $t%n)) (f32.reinterpret_i32 (local.get $t%n)))))*n",
         cssp, wasm_fcmp, cssp, cssp+1)
  cssp := cssp + 1
  IF cssp_sync > cssp DO cssp_sync := cssp
}

AND unop_neg() BE
{ cssp := cssp - 1
  writef("    (local.set $t%n (i32.sub (i32.const 0) (local.get $t%n)))*n",
         cssp, cssp)
  cssp := cssp + 1
}

AND unop_not() BE
{ cssp := cssp - 1
  writef("    (local.set $t%n (i32.xor (local.get $t%n) (i32.const -1)))*n",
         cssp, cssp)
  cssp := cssp + 1
}

AND unop_abs() BE
{ cssp := cssp - 1
  writef("    (local.set $t%n*n", cssp)
  writef("      (if (result i32) (i32.ge_s (local.get $t%n) (i32.const 0))*n", cssp)
  writef("        (then (local.get $t%n))*n", cssp)
  writef("        (else (i32.sub (i32.const 0) (local.get $t%n)))))*n", cssp)
  cssp := cssp + 1
}

// Float unary neg: flip sign bit of IEEE bit pattern (avoids f32 conversion).
AND unop_fneg() BE
{ cssp := cssp - 1
  writef("    (local.set $t%n (i32.xor (local.get $t%n) (i32.const %n)))*n",
         cssp, cssp, #x80000000)
  cssp := cssp + 1
}

// Float abs: clear sign bit.
AND unop_fabs() BE
{ cssp := cssp - 1
  writef("    (local.set $t%n (i32.and (local.get $t%n) (i32.const %n)))*n",
         cssp, cssp, #x7FFFFFFF)
  cssp := cssp + 1
}

// Int -> float conversion: i32 -> f32 -> reinterpret to i32 bits.
AND unop_float() BE
{ cssp := cssp - 1
  writef("    (local.set $t%n (i32.reinterpret_f32 (f32.convert_i32_s (local.get $t%n))))*n",
         cssp, cssp)
  cssp := cssp + 1
}

// Float -> int: reinterpret i32 bits to f32, truncate to i32.
AND unop_fix() BE
{ cssp := cssp - 1
  writef("    (local.set $t%n (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t%n))))*n",
         cssp, cssp)
  cssp := cssp + 1
}

AND cmp_op(wasm_cmp) BE
{ // BCPL comparison: TRUE=-1 (0xFFFFFFFF), FALSE=0
  // Wasm cmp: 1 or 0 → negate to get -1 or 0
  cssp := cssp - 2
  writef("    (local.set $t%n (i32.sub (i32.const 0) (%s (local.get $t%n) (local.get $t%n))))*n",
         cssp, wasm_cmp, cssp, cssp+1)
  cssp := cssp + 1
  IF cssp_sync > cssp DO cssp_sync := cssp
}

AND store_p(n) BE
{ cssp := cssp - 1
  writef("    (i32.store ")
  emit_p_addr(n)
  writef(" (local.get $t%n))*n", cssp)
  // Mirror into $t{n} so a later STORE that re-flushes the ssp=n
  // slot writes the updated value rather than a stale original.
  // Only meaningful when n refers to an in-function local slot.
  IF n >= 3 & n < fn_peak & n ~= cssp DO
    writef("    (local.set $t%n (local.get $t%n))*n", n, cssp)
  IF cssp_sync > cssp DO cssp_sync := cssp
}

AND store_g(n) BE
{ cssp := cssp - 1
  writef("    (i32.store ")
  emit_g_addr(n)
  writef(" (local.get $t%n))*n", cssp)
  IF cssp_sync > cssp DO cssp_sync := cssp
}

AND store_ind() BE
{ // STIND: !P!(S-1) := P!(S-2); S := S-2
  // Expr stack: $t{cssp-2}=value, $t{cssp-1}=addr (word addr)
  cssp := cssp - 2
  writef("    (i32.store (i32.shl (local.get $t%n) (i32.const 2)) (local.get $t%n))*n",
         cssp+1, cssp)
  IF cssp_sync > cssp DO cssp_sync := cssp
}

// ------------------------------------------------------------------
// Control flow helpers
// ------------------------------------------------------------------

AND emit_goto_lab(l) BE
{ emit_goto_idx(lab_idx(l))
}

AND emit_goto_idx(idx) BE
{ writef("      (local.set $__lab (i32.const %n)) (br $__dispatch)*n", idx)
  terminated := TRUE
}

AND emit_condjump(lab, is_jt) BE
{ LET idx = lab_idx(lab)
  // For comparison pendingop, emit inline compare
  // For other (or none), flush first then test stack top
  SWITCHON pendingop INTO
  { DEFAULT:
      cgpendingop_wasm()  // flush pending op first
      cssp := cssp - 1
      TEST is_jt
      THEN writef("    (if (local.get $t%n) (then*n", cssp)
      ELSE writef("    (if (i32.eqz (local.get $t%n)) (then*n", cssp)
      ENDCASE

    CASE s_none:
      cssp := cssp - 1
      TEST is_jt
      THEN writef("    (if (local.get $t%n) (then*n", cssp)
      ELSE writef("    (if (i32.eqz (local.get $t%n)) (then*n", cssp)
      ENDCASE

    CASE s_eq:
      cssp := cssp - 2
      TEST is_jt
      THEN writef("    (if (i32.eq  (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ELSE writef("    (if (i32.ne  (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ENDCASE
    CASE s_ne:
      cssp := cssp - 2
      TEST is_jt
      THEN writef("    (if (i32.ne  (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ELSE writef("    (if (i32.eq  (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ENDCASE
    CASE s_ls:
      cssp := cssp - 2
      TEST is_jt
      THEN writef("    (if (i32.lt_s (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ELSE writef("    (if (i32.ge_s (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ENDCASE
    CASE s_gr:
      cssp := cssp - 2
      TEST is_jt
      THEN writef("    (if (i32.gt_s (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ELSE writef("    (if (i32.le_s (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ENDCASE
    CASE s_le:
      cssp := cssp - 2
      TEST is_jt
      THEN writef("    (if (i32.le_s (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ELSE writef("    (if (i32.gt_s (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ENDCASE
    CASE s_ge:
      cssp := cssp - 2
      TEST is_jt
      THEN writef("    (if (i32.ge_s (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ELSE writef("    (if (i32.lt_s (local.get $t%n) (local.get $t%n)) (then*n",cssp,cssp+1)
      ENDCASE
  }
  pendingop := s_none

  IF cssp_sync > cssp DO cssp_sync := cssp

  writef("      (local.set $__lab (i32.const %n)) (br $__dispatch)*n", idx)
  writef("    ))*n")
}

// ------------------------------------------------------------------
// Function call
// ------------------------------------------------------------------

AND emit_apply(op_kind, k) BE
{ // Pre-call expression stack layout:
  //   $t{k+3..cssp-2}  = arg1 .. argN   (first arg at k+3, per sa=k+3)
  //   $t{cssp-1}       = fn_idx
  // After the call (matching cintcode's cgapply: stack(k); loadt(k_a,0)):
  //   cssp becomes k+1 and the result lives at $t{k}. FNAP result is
  //   written there; RTAP leaves $t{k} untouched (result discarded).
  LET fn_t  = cssp - 1
  LET nargs = cssp - (k + 4)
  IF nargs < 0 DO nargs := 0

  // Flush args to BCPL stack memory (new frame reads them at P!3..).
  FOR i = 0 TO nargs-1 DO
  { writef("    (i32.store ")
    emit_p_addr(k + 3 + i)
    writef(" (local.get $t%n))*n", k + 3 + i)
  }

  // Save frame header at P!k, P!k+1, P!k+2.
  writef("    (i32.store ")
  emit_p_addr(k)
  writef(" (global.get $P)) ;; save P*n")

  writef("    (i32.store ")
  emit_p_addr(k+1)
  writef(" (i32.const 0)) ;; return addr placeholder*n")

  writef("    (i32.store ")
  emit_p_addr(k+2)
  writef(" (local.get $t%n)) ;; entry fn_idx*n", fn_t)

  // Advance P by k, call, P restored by callee's FNRN/RTRN.
  writef("    (global.set $P (i32.add (global.get $P) (i32.const %n)))*n", k)

  IF op_kind = s_fnap DO
  { // Capture result in $t{k} (result position in caller's frame).
    writef("    (local.set $t%n (call_indirect $ftable (type $bcpl_fn) (local.get $t%n)))*n",
           k, fn_t)
    // Persist result to memory so later LP k reads the fresh value
    // rather than the stale FNAP frame-save that overwrote P!k.
    writef("    (i32.store ")
    emit_p_addr(k)
    writef(" (local.get $t%n)) ;; flush FNAP result*n", k)
    cssp := k + 1
    // Slots k..k+2 were overwritten by FNAP frame-save; only slot k
    // was restored (above). Any cssp_sync claim on k+1..k+2 is stale.
    IF cssp_sync > k + 1 DO cssp_sync := k + 1
    RETURN
  }
  // RTAP: discard result.
  writef("    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t%n)))*n", fn_t)
  cssp := k
  // Slots k..k+2 were overwritten by RTAP frame-save (no result saved).
  IF cssp_sync > k DO cssp_sync := k
}

// ------------------------------------------------------------------
// Flush any pending operator
// ------------------------------------------------------------------

AND cgpendingop_wasm() BE
{ LET pndop = pendingop
  pendingop := s_none
  IF pndop = s_none RETURN
  // Callers do not always have the output stream selected — flushes
  // can happen from structural cases (s_fnrn, s_res, ...) that select
  // tostream AFTER the flush call. Select locally so the flush always
  // lands in the .wat.
  selectoutput(tostream)
  SWITCHON pndop INTO
  { DEFAULT:                                ENDCASE
    CASE s_neg:   unop_neg();               ENDCASE
    CASE s_not:   unop_not();               ENDCASE
    CASE s_abs:   unop_abs();               ENDCASE
    CASE s_float: unop_float();             ENDCASE
    CASE s_fix:   unop_fix();               ENDCASE
    CASE s_fneg:  unop_fneg();              ENDCASE
    CASE s_fabs:  unop_fabs();              ENDCASE
    CASE s_add:   binop("i32.add");         ENDCASE
    CASE s_sub:   binop("i32.sub");         ENDCASE
    CASE s_mul:   binop("i32.mul");         ENDCASE
    CASE s_div:   binop("i32.div_s");       ENDCASE
    CASE s_mod:   binop("i32.rem_s");       ENDCASE
    CASE s_lshift:binop("i32.shl");         ENDCASE
    CASE s_rshift:binop("i32.shr_u");       ENDCASE  // BCPL >> is logical
    CASE s_logand:binop("i32.and");         ENDCASE
    CASE s_logor: binop("i32.or");          ENDCASE
    CASE s_xor:   binop("i32.xor");         ENDCASE
    CASE s_eqv:   binop("i32.xor"); unop_not(); ENDCASE
    CASE s_fadd:  fbinop("f32.add");        ENDCASE
    CASE s_fsub:  fbinop("f32.sub");        ENDCASE
    CASE s_fmul:  fbinop("f32.mul");        ENDCASE
    CASE s_fdiv:  fbinop("f32.div");        ENDCASE
    CASE s_fmod:
      // No direct Wasm op; compute a - trunc(a/b) * b.
      // Inputs $t{cssp-2}=a, $t{cssp-1}=b (both i32 bit patterns of f32).
      { LET va = cssp - 2
        LET vb = cssp - 1
        cssp := cssp - 1
        writef("    (local.set $t%n (i32.reinterpret_f32*n", va)
        writef("      (f32.sub*n")
        writef("        (f32.reinterpret_i32 (local.get $t%n))*n", va)
        writef("        (f32.mul*n")
        writef("          (f32.trunc*n")
        writef("            (f32.div*n")
        writef("              (f32.reinterpret_i32 (local.get $t%n))*n", va)
        writef("              (f32.reinterpret_i32 (local.get $t%n))))*n", vb)
        writef("          (f32.reinterpret_i32 (local.get $t%n))))))*n", vb)
        IF cssp_sync > cssp DO cssp_sync := cssp
      }
      ENDCASE
    CASE s_eq:  cmp_op("i32.eq");           ENDCASE
    CASE s_ne:  cmp_op("i32.ne");           ENDCASE
    CASE s_ls:  cmp_op("i32.lt_s");         ENDCASE
    CASE s_gr:  cmp_op("i32.gt_s");         ENDCASE
    CASE s_le:  cmp_op("i32.le_s");         ENDCASE
    CASE s_ge:  cmp_op("i32.ge_s");         ENDCASE
    CASE s_feq: fcmp_op("f32.eq");          ENDCASE
    CASE s_fne: fcmp_op("f32.ne");          ENDCASE
    CASE s_fls: fcmp_op("f32.lt");          ENDCASE
    CASE s_fgr: fcmp_op("f32.gt");          ENDCASE
    CASE s_fle: fcmp_op("f32.le");          ENDCASE
    CASE s_fge: fcmp_op("f32.ge");          ENDCASE
  }
  selectoutput(sysprint)
}

// ------------------------------------------------------------------
// Main emit scan: processes one codegenerate section.
// Uses { ... } REPEAT with LOOP/RETURN for control.
// ------------------------------------------------------------------

AND scan_emit() BE
{ cssp       := 3   // initial SSP: 0,1,2=save area, 3=first local
  cssp_sync  := 3   // no live locals yet
  pendingop  := s_none
  terminated := FALSE
  fn_entrylab := 0
  fn_save     := 3
  cur_nlab    := 0
  FOR i = 0 TO nlabmap-1 DO labmap!i := -1

  // We will switch to tostream when emitting function text.
  // scan_emit processes the entire section (may contain multiple functions).

  { // FLT-flagged ops (op | s_fltbit) have the same semantics as
    // their non-FLT counterparts under the typeless Wasm backend —
    // a word is a word. Strip the bit for dispatch.
    IF (op & s_fltbit) ~= 0 DO op := op & s_fltmask

    SWITCHON op INTO
    { DEFAULT:
        writef("*nWASM CG: unhandled op %n*n", op)
        ENDCASE

      CASE 0: RETURN

      CASE s_global:
      { // GLOBAL n g1 l1 ... gn ln
        LET n = rdn()
        // Close current dispatch loop if open
        IF fn_entrylab > 0 DO
        { selectoutput(tostream)
          UNLESS terminated DO
          { writef("      ;; implicit end*n")
            writef("      (return (i32.const 0))*n")
          }
          writef("    )) ;; end last block*n")
          writef("    ) ;; end $__dispatch*n")
          writef("    (i32.const 0)*n")
          writef("  ) ;; end func $fn_L%n*n*n", fn_entrylab)
          selectoutput(sysprint)
          fn_entrylab := 0
        }
        FOR i = 1 TO n DO
        { LET gnum = rdgn()
          LET ll   = rdl()
          // Resolve label -> local_tidx (0-based within this module's
          // function slice). $TB is added at register() time.
          LET local_tidx = 0
          FOR j = 0 TO ftab_n-1 DO
            IF ftab_v!j = ll DO { local_tidx := j; BREAK }
          IF ginit_n < 512 DO
          { ginit_v!ginit_n := gnum
            ginit_n := ginit_n + 1
            ginit_v!ginit_n := local_tidx
            ginit_n := ginit_n + 1
          }
        }
        drain_pending()
        emit_mod_footer()
        RETURN
      }

      CASE s_comment:
      { LET n = rdn()
        selectoutput(tostream)
        writes("    ;; ")
        FOR i = 1 TO n DO wrch(rdn())
        newline()
        selectoutput(sysprint)
        ENDCASE
      }

      CASE s_needs: CASE s_section:
      { LET n = rdn()
        FOR i = 1 TO n DO rdn()
        ENDCASE
      }

      CASE s_entry:
      { // Nested function: queue for hoisting, skip its body inline.
        // s_entry encodes as single byte (155<223), so inner_start is obufp-1.
        IF fn_entrylab > 0 DO
        { LET inner_start = obufp - 1
          LET lab = rdl()
          LET nn  = rdn()
          LET nbuf = VEC 16
          rdname(nn, nbuf)
          skip_inner_body()
          queue_inner(inner_start, obufp, lab)
          ENDCASE
        }

        { LET l = rdl()
          LET n = rdn()
          LET nam = VEC 16
          rdname(n, nam)

        // Pre-scan: collect labels, record SAVE size, and simulate
        // cssp drift so we know the peak expression-stack depth and
        // can emit only that many Wasm locals.
        { LET sv_p = obufp; LET sv_op = op
          LET depth = 1
          LET sim_cssp = 3
          FOR i = 0 TO nlabmap-1 DO labmap!i := -1
          cur_nlab    := 0
          fn_save     := 3
          fn_peak     := 3
          fn_entrylab := l
          op := rdn()
          { SWITCHON op INTO
            { DEFAULT: ENDCASE
              CASE s_save:
                { LET ns = rdn()
                  IF depth = 1 DO
                  { fn_save := ns
                    sim_cssp := ns
                  }
                  ENDCASE
                }
              CASE s_lab:
              { LET ll = rdl()
                IF depth = 1 DO
                { cur_nlab := cur_nlab + 1
                  IF ll < nlabmap DO labmap!ll := cur_nlab
                }
                ENDCASE
              }
              CASE s_entry:
              { LET ll=rdl(); LET nn=rdn()
                FOR i=1 TO nn DO rdn()
                depth := depth + 1
                ENDCASE
              }
              CASE s_endproc:
                depth := depth - 1
                IF depth <= 0 DO { op:=rdn(); GOTO prescan_done }
                ENDCASE

              // ---- push ops: cssp += 1 ----
              CASE s_lp: CASE s_lg: CASE s_ln: CASE s_lflt:
              CASE s_fnum:
                rdn()
                IF depth = 1 DO sim_cssp := sim_cssp + 1
                ENDCASE
              CASE s_lf: CASE s_ll: CASE s_llp: CASE s_llg: CASE s_lll:
                rdl()
                IF depth = 1 DO sim_cssp := sim_cssp + 1
                ENDCASE
              CASE s_true: CASE s_false: CASE s_query:
                IF depth = 1 DO sim_cssp := sim_cssp + 1
                ENDCASE
              CASE s_lstr:
                { LET nn=rdn(); FOR i=1 TO nn DO rdn()
                  IF depth = 1 DO sim_cssp := sim_cssp + 1
                  ENDCASE
                }

              // ---- store/pop ops ----
              CASE s_sp: CASE s_sg:
                rdn()
                IF depth = 1 DO sim_cssp := sim_cssp - 1
                ENDCASE
              CASE s_sl:
                rdl()
                IF depth = 1 DO sim_cssp := sim_cssp - 1
                ENDCASE
              CASE s_stind:
                IF depth = 1 DO sim_cssp := sim_cssp - 2
                ENDCASE

              // ---- stack adjust ----
              CASE s_stack:
                { LET n = rdn()
                  IF depth = 1 DO sim_cssp := n
                  ENDCASE
                }
              CASE s_rstack:
                { LET n = rdn()
                  IF depth = 1 DO sim_cssp := n + 1
                  ENDCASE
                }
              CASE s_store:      ENDCASE  // no cssp change

              // ---- unary: no cssp change ----
              CASE s_neg: CASE s_not: CASE s_abs:
              CASE s_float: CASE s_fix:
              CASE s_fneg: CASE s_fabs: CASE s_fpos:
              CASE s_rv:
                ENDCASE

              // ---- binary: cssp -= 1 ----
              CASE s_mul: CASE s_div: CASE s_mod:
              CASE s_add: CASE s_sub:
              CASE s_eq:  CASE s_ne:
              CASE s_ls:  CASE s_gr: CASE s_le: CASE s_ge:
              CASE s_lshift: CASE s_rshift:
              CASE s_logand: CASE s_logor: CASE s_eqv: CASE s_xor:
              CASE s_fmul: CASE s_fdiv: CASE s_fmod:
              CASE s_fadd: CASE s_fsub:
              CASE s_feq:  CASE s_fne:
              CASE s_fls:  CASE s_fgr: CASE s_fle: CASE s_fge:
                IF depth = 1 DO sim_cssp := sim_cssp - 1
                ENDCASE

              // ---- calls ----
              CASE s_fnap:
                { LET k = rdn()
                  IF depth = 1 DO sim_cssp := k + 1
                  ENDCASE
                }
              CASE s_rtap:
                { LET k = rdn()
                  IF depth = 1 DO sim_cssp := k
                  ENDCASE
                }

              // ---- returns/jumps: cssp -= 1 (stack consumed) ----
              CASE s_fnrn: CASE s_rtrn:
              CASE s_jt:   CASE s_jf:
                IF op = s_jt | op = s_jf DO rdl()
                IF depth = 1 DO sim_cssp := sim_cssp - 1
                ENDCASE
              CASE s_res:
                rdl()
                IF depth = 1 DO sim_cssp := sim_cssp - 1
                ENDCASE
              CASE s_jump:
                rdl()
                ENDCASE
              CASE s_goto:
                IF depth = 1 DO sim_cssp := sim_cssp - 1
                ENDCASE

              // ---- byte ops ----
              CASE s_getbyte:
                IF depth = 1 DO sim_cssp := sim_cssp - 1
                ENDCASE
              CASE s_putbyte:
                IF depth = 1 DO sim_cssp := sim_cssp - 3
                ENDCASE

              CASE s_switchon:
                { LET nn=rdn(); rdl(); FOR i=1 TO nn DO {rdn(); rdl()}
                  IF depth = 1 DO sim_cssp := sim_cssp - 1
                  ENDCASE
                }

              CASE s_selld:  rdn(); rdn(); ENDCASE   // net 0
              CASE s_selst:
                rdn(); rdn(); rdn()
                IF depth = 1 DO sim_cssp := sim_cssp - 2
                ENDCASE

              CASE s_datalab: rdl(); ENDCASE
              CASE s_comment: CASE s_needs: CASE s_section:
                { LET nn=rdn(); FOR i=1 TO nn DO rdn(); ENDCASE }
              CASE s_itemn: CASE s_itemflt: rdn(); ENDCASE

              CASE 0: GOTO prescan_done
              CASE s_global: GOTO prescan_done
            }
            IF depth = 1 & sim_cssp > fn_peak DO fn_peak := sim_cssp
            op := rdn()
          } REPEAT
prescan_done:
          obufp := sv_p
          // Let outer loop's `op := rdn()` read the first op of the
          // function body.
        }

        // Register label in ftab_v unless already present
        // (register_entries or queue_inner may have added it).
        { LET seen = FALSE
          FOR i = 0 TO ftab_n-1 DO
            IF ftab_v!i = l DO { seen := TRUE; BREAK }
          UNLESS seen DO
            IF ftab_n < 512 DO
            { ftab_v!ftab_n := l
              ftab_n := ftab_n + 1
            }
        }

        // Emit function header. Locals: one i32 per expression-stack
        // slot the body actually uses — fn_peak was computed by the
        // prescan above.
        selectoutput(tostream)
        // Debug-friendly comment: BCPL function name next to label.
        writef("  ;; BCPL fn %s (L%n)*n", nam, l)
        writef("  (func $fn_L%n (export *"fn_L%n*") (type $bcpl_fn)*n", l, l)
        writef("    (local $__lab i32)*n")
        FOR i = 0 TO fn_peak-1 DO writef("    (local $t%n i32)*n", i)
        writef("    (loop $__dispatch*n")
        writef("    (if (i32.eqz (local.get $__lab)) (then ;; entry block*n")
        selectoutput(sysprint)

          cssp       := fn_save
          cssp_sync  := fn_save
          terminated := FALSE
        }
        ENDCASE
      }

      CASE s_save:
      { cssp := rdn()
        cssp_sync := cssp
        ENDCASE
      }

      CASE s_endproc:
      { selectoutput(tostream)
        UNLESS terminated DO
        { writef("      ;; endproc fallthrough*n")
          writef("      (return (i32.const 0))*n")
        }
        writef("    )) ;; end last block*n")
        writef("    ) ;; end $__dispatch*n")
        writef("    (i32.const 0) ;; unreachable return*n")
        writef("  ) ;; end func $fn_L%n*n*n", fn_entrylab)
        selectoutput(sysprint)
        fn_entrylab := 0
        terminated := FALSE
        ENDCASE
      }

      CASE s_lab:
      { LET l   = rdl()
        LET idx = lab_idx(l)
        cgpendingop_wasm()
        selectoutput(tostream)
        // Close previous block (with fallthrough if not terminated)
        UNLESS terminated DO
        { writef("      (local.set $__lab (i32.const %n)) (br $__dispatch)*n", idx)
        }
        writef("    )) ;; end block / LAB L%n = idx %n*n", l, idx)
        // Open new block for this label
        writef("    (if (i32.eq (local.get $__lab) (i32.const %n)) (then ;; L%n*n",
               idx, l)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_lp:
      { LET n = rdn()
        cgpendingop_wasm()
        selectoutput(tostream)
        push_load_p(n)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_lg:
      { LET n = rdgn()
        cgpendingop_wasm()
        selectoutput(tostream)
        push_load_g(n)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_lf:
      { LET l = rdl()
        cgpendingop_wasm()
        selectoutput(tostream)
        // LF of function label: tidx = TB + local_fn_index.
        // LF of local dispatch label: plain dispatch index.
        { LET tidx = 0
          LET is_fn = FALSE
          FOR i = 0 TO ftab_n-1 DO IF ftab_v!i = l DO
          { tidx := i; is_fn := TRUE; BREAK }
          UNLESS is_fn DO
            IF l >= 0 & l < nlabmap & labmap!l >= 0 DO
              tidx := labmap!l
          TEST is_fn
          THEN writef("    (local.set $t%n (i32.add (global.get $TB) (i32.const %n))) ;; LF L%n*n",
                      cssp, tidx, l)
          ELSE writef("    (local.set $t%n (i32.const %n)) ;; LF L%n (disp)*n",
                      cssp, tidx, l)
        }
        selectoutput(sysprint)
        cssp := cssp + 1
        terminated := FALSE
        ENDCASE
      }

      CASE s_ll:
      { LET l = rdl()
        cgpendingop_wasm()
        selectoutput(tostream)
        // LL L: load the VALUE of the word at data-label L (not its
        // address — that's LLL). Byte addr = (SB + offset) << 2.
        { LET offset = VALOF
          { IF l >= 0 & l < nlabmap & labmap!l >= 0 RESULTIS labmap!l
            RESULTIS 0
          }
          writef("    (local.set $t%n (i32.load (i32.shl (i32.add (global.get $SB) (i32.const %n)) (i32.const 2)))) ;; LL L%n*n",
                 cssp, offset, l)
        }
        selectoutput(sysprint)
        cssp := cssp + 1
        terminated := FALSE
        ENDCASE
      }

      CASE s_llp:
      { LET n = rdn()
        cgpendingop_wasm()
        selectoutput(tostream)
        writef("    (local.set $t%n (i32.add (global.get $P) (i32.const %n)))*n",
               cssp, n)
        selectoutput(sysprint)
        cssp := cssp + 1
        terminated := FALSE
        ENDCASE
      }

      CASE s_llg:
      { LET n = rdgn()
        cgpendingop_wasm()
        selectoutput(tostream)
        writef("    (local.set $t%n (i32.add (global.get $G) (i32.const %n)))*n",
               cssp, n)
        selectoutput(sysprint)
        cssp := cssp + 1
        terminated := FALSE
        ENDCASE
      }

      CASE s_lll:
      { LET l = rdl()
        cgpendingop_wasm()
        selectoutput(tostream)
        { LET offset = VALOF
          { IF l >= 0 & l < nlabmap & labmap!l >= 0 RESULTIS labmap!l
            RESULTIS 0
          }
          writef("    (local.set $t%n (i32.add (global.get $SB) (i32.const %n))) ;; LLL L%n*n",
                 cssp, offset, l)
        }
        selectoutput(sysprint)
        cssp := cssp + 1
        terminated := FALSE
        ENDCASE
      }

      CASE s_ln:
      { LET n = rdn()
        cgpendingop_wasm()
        selectoutput(tostream)
        push_const(n)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_lflt:
      { LET n = rdn()  // float bits as i32
        cgpendingop_wasm()
        selectoutput(tostream)
        push_const(n)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_true:
        cgpendingop_wasm()
        selectoutput(tostream)
        push_const(-1)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE

      CASE s_false:
        cgpendingop_wasm()
        selectoutput(tostream)
        push_const(0)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE

      CASE s_query:
      { cgpendingop_wasm()
        selectoutput(tostream)
        writef("    (local.set $t%n (i32.const 0)) ;; QUERY (undefined)*n", cssp)
        selectoutput(sysprint)
        cssp := cssp + 1
        terminated := FALSE
        ENDCASE
      }

      CASE s_sp:
      { LET n = rdn()
        cgpendingop_wasm()
        selectoutput(tostream)
        store_p(n)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_sg:
      { LET n = rdgn()
        cgpendingop_wasm()
        selectoutput(tostream)
        store_g(n)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_sl:
      { LET l = rdl()
        cgpendingop_wasm()
        selectoutput(tostream)
        { LET offset = VALOF
          { IF l >= 0 & l < nlabmap & labmap!l >= 0 RESULTIS labmap!l
            RESULTIS 0
          }
          cssp := cssp - 1
          IF cssp_sync > cssp DO cssp_sync := cssp
          writef("    (i32.store*n")
          writef("      (i32.shl (i32.add (global.get $SB) (i32.const %n)) (i32.const 2))*n",
                 offset)
          writef("      (local.get $t%n))*n", cssp)
        }
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_stind:
        cgpendingop_wasm()
        selectoutput(tostream)
        store_ind()
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE

      CASE s_rv:
        cgpendingop_wasm()
        selectoutput(tostream)
        push_rv()
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE

      // Deferred operators
      CASE s_float: CASE s_fix: CASE s_fneg: CASE s_fabs:
      CASE s_not: CASE s_neg: CASE s_abs:
      CASE s_fmul: CASE s_fdiv: CASE s_fmod:
      CASE s_fadd: CASE s_fsub:
      CASE s_feq: CASE s_fne: CASE s_fls: CASE s_fgr: CASE s_fle: CASE s_fge:
      CASE s_mul: CASE s_div: CASE s_mod:
      CASE s_add: CASE s_sub:
      CASE s_eq: CASE s_ne:
      CASE s_ls: CASE s_gr: CASE s_le: CASE s_ge:
      CASE s_lshift: CASE s_rshift:
      CASE s_logand: CASE s_logor: CASE s_eqv: CASE s_xor:
        cgpendingop_wasm()
        pendingop := op
        ENDCASE

      CASE s_jt:
      { LET l = rdl()
        selectoutput(tostream)
        emit_condjump(l, TRUE)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_jf:
      { LET l = rdl()
        selectoutput(tostream)
        emit_condjump(l, FALSE)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_jump:
      { LET l = rdl()
        cgpendingop_wasm()
        selectoutput(tostream)
        writef("      (local.set $__lab (i32.const %n)) (br $__dispatch) ;; JUMP L%n*n",
               lab_idx(l), l)
        selectoutput(sysprint)
        terminated := TRUE
        ENDCASE
      }

      CASE s_goto:
      { // Computed GOTO: top of expression stack holds a dispatch
        // index (produced by LL of a code label in this function).
        // Set $__lab and re-enter the dispatch loop.
        cgpendingop_wasm()
        cssp := cssp - 1
        IF cssp_sync > cssp DO cssp_sync := cssp
        selectoutput(tostream)
        writef("      (local.set $__lab (local.get $t%n))*n", cssp)
        writef("      (br $__dispatch) ;; GOTO (computed)*n")
        selectoutput(sysprint)
        terminated := TRUE
        ENDCASE
      }

      CASE s_rtrn:
        cgpendingop_wasm()
        selectoutput(tostream)
        writef("    ;; RTRN*n")
        writef("    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))*n")
        writef("    (return (i32.const 0))*n")
        selectoutput(sysprint)
        terminated := TRUE
        ENDCASE

      CASE s_fnrn:
      { cgpendingop_wasm()
        { LET ret_t = cssp - 1
          selectoutput(tostream)
          writef("    ;; FNRN*n")
          writef("    (local.set $t%n (local.get $t%n))*n", 0, ret_t)
          writef("    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))*n")
          writef("    (return (local.get $t0))*n")
          selectoutput(sysprint)
        }
        cssp := cssp - 1
        IF cssp_sync > cssp DO cssp_sync := cssp
        terminated := TRUE
        ENDCASE
      }

      CASE s_res:
      { LET l = rdl()
        cgpendingop_wasm()
        { LET res_t = cssp - 1
          selectoutput(tostream)
          writef("    ;; RES L%n: save result, jump to RSTACK*n", l)
          writef("    (local.set $t0 (local.get $t%n))*n", res_t)
          cssp := cssp - 1
          IF cssp_sync > cssp DO cssp_sync := cssp
          emit_goto_lab(l)
          selectoutput(sysprint)
        }
        ENDCASE
      }

      CASE s_rstack:
      { LET n = rdn()
        selectoutput(tostream)
        writef("    ;; RSTACK %n*n", n)
        writef("    (local.set $t%n (local.get $t0)) ;; restore RES result*n", n)
        selectoutput(sysprint)
        cssp := n + 1
        terminated := FALSE
        ENDCASE
      }

      CASE s_stack:
      { LET n = rdn()
        IF fn_entrylab = 0 DO { cssp := n; cssp_sync := n; ENDCASE }
        cgpendingop_wasm()
        selectoutput(tostream)
        IF cssp_sync > cssp DO cssp_sync := cssp
        // Moving stack down (cssp > n): flush excess expression-stack
        // items to their memory slots so caller can find them by LP.
        UNTIL cssp <= n DO
        { cssp := cssp - 1
          IF cssp >= cssp_sync DO
          { writef("    (i32.store ")
            emit_p_addr(cssp)
            writef(" (local.get $t%n)) ;; flush t%n*n", cssp, cssp)
          }
        }
        // Moving stack up (cssp < n): flush any PENDING expression-
        // stack values at slots cssp_sync..cssp-1 first, then advance
        // cssp to n without reading memory. Slots cssp..n-1 are
        // reserved (e.g. VEC decl) and contain no expr-stack data.
        IF cssp < n DO
        { FOR i = cssp_sync TO cssp-1 DO
          { writef("    (i32.store ")
            emit_p_addr(i)
            writef(" (local.get $t%n)) ;; flush t%n (pre-stack-up)*n", i, i)
          }
          cssp := n
        }
        cssp_sync := cssp
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_store:
      { IF fn_entrylab = 0 DO ENDCASE
        cgpendingop_wasm()
        selectoutput(tostream)
        // Flush live expression-stack slots. cssp_sync tracks where
        // last sync boundary was (STACK or prior STORE). Slots below
        // cssp_sync already persisted; slots cssp_sync..cssp-1 are
        // the fresh pushes. Cap cssp_sync in case pops dropped cssp
        // below a previous sync mark.
        IF cssp_sync > cssp DO cssp_sync := cssp
        FOR i = cssp_sync TO cssp-1 DO
        { writef("    (i32.store ")
          emit_p_addr(i)
          writef(" (local.get $t%n)) ;; STORE slot %n*n", i, i)
        }
        cssp_sync := cssp
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_fnap: CASE s_rtap:
      { LET k = rdn()
        cgpendingop_wasm()
        selectoutput(tostream)
        emit_apply(op, k)
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_finish:
        cgpendingop_wasm()
        selectoutput(tostream)
        writef("    (return (i32.const 0)) ;; FINISH*n")
        selectoutput(sysprint)
        terminated := TRUE
        ENDCASE

      CASE s_lstr:
      { // BCPL string layout: byte 0 = length, bytes 1..n = chars.
        // Pack all (length + chars) into successive words — length
        // shares word 0 with the first 3 chars.
        LET n = rdn()
        cgpendingop_wasm()
        { LET str_offset = stat_n
          LET total = n + 1        // length byte + n char bytes
          LET words = (total + 3) / 4
          LET i = 0                // byte index in the composite
          LET w = 0
          LET b = 0
          UNTIL i = total DO
          { LET ch = i=0 -> n, rdn()
            w := w | ((ch & #xFF) << (b * 8))
            i := i + 1
            b := b + 1
            IF b = 4 DO { alloc_static(-1, w); w := 0; b := 0 }
          }
          IF b > 0 DO alloc_static(-1, w)   // flush final partial word
          selectoutput(tostream)
          writef("    (local.set $t%n (i32.add (global.get $SB) (i32.const %n))) ;; LSTR*n",
                 cssp, str_offset)
          selectoutput(sysprint)
          cssp := cssp + 1
        }
        terminated := FALSE
        ENDCASE
      }

      CASE s_getbyte:
      { cgpendingop_wasm()
        { LET bt = cssp-1
          LET ba = cssp-2
          selectoutput(tostream)
          cssp := cssp - 2
          writef("    (local.set $t%n (i32.load8_u (i32.add (i32.shl (local.get $t%n) (i32.const 2)) (local.get $t%n))))*n",
                 cssp, ba, bt)
          cssp := cssp + 1
          selectoutput(sysprint)
        }
        terminated := FALSE
        ENDCASE
      }

      CASE s_putbyte:
      { // OCODE order matches cintcode F_pbyt (a=byte-offset, b=word-
        // addr, c=value). Stack after push sequence [V, WA, BO] is:
        //   cssp-1 = BO (byte offset)
        //   cssp-2 = WA (word address)
        //   cssp-3 = V  (value)
        // Store byte at (WA<<2)+BO = V.
        cgpendingop_wasm()
        { LET bo = cssp - 1
          LET wa = cssp - 2
          LET vt = cssp - 3
          selectoutput(tostream)
          cssp := cssp - 3
          IF cssp_sync > cssp DO cssp_sync := cssp
          writef("    (i32.store8 (i32.add (i32.shl (local.get $t%n) (i32.const 2)) (local.get $t%n)) (local.get $t%n))*n",
                 wa, bo, vt)
          selectoutput(sysprint)
        }
        terminated := FALSE
        ENDCASE
      }

      CASE s_switchon:
      { LET n  = rdn()
        LET dl = rdl()
        cgpendingop_wasm()
        { LET val_t = cssp - 1
          selectoutput(tostream)
          cssp := cssp - 1
          IF cssp_sync > cssp DO cssp_sync := cssp
          writef("    ;; SWITCHON %n cases default L%n*n", n, dl)
          FOR i = 1 TO n DO
          { LET k  = rdn()
            LET ll = rdl()
            writef("    (if (i32.eq (local.get $t%n) (i32.const %n)) (then*n", val_t, k)
            writef("      (local.set $__lab (i32.const %n)) (br $__dispatch)))*n", lab_idx(ll))
          }
          emit_goto_lab(dl)
          selectoutput(sysprint)
        }
        ENDCASE
      }

      CASE s_datalab:
      { LET l = rdl()
        // Mark next static item with this label (module-local word
        // offset; resolved at emit via (i32.add (global.get $SB) ...)).
        IF l >= 0 & l < nlabmap DO labmap!l := stat_n
        ENDCASE
      }

      CASE s_itemn:
      { LET v = rdn()
        alloc_static(-1, v)
        ENDCASE
      }

      CASE s_itemflt:
      { LET v = rdn()
        alloc_static(-1, v)
        ENDCASE
      }

      CASE s_selld:
      { LET len = rdn(); LET sh = rdn()
        cgpendingop_wasm()
        selectoutput(tostream)
        // SELLD: top is word addr; load word, shift, mask
        cssp := cssp - 1
        writef("    (local.set $t%n (i32.load (i32.shl (local.get $t%n) (i32.const 2))))*n",
               cssp, cssp)
        IF sh > 0 DO
          writef("    (local.set $t%n (i32.shr_u (local.get $t%n) (i32.const %n)))*n",
                 cssp, cssp, sh)
        IF len > 0 DO
          writef("    (local.set $t%n (i32.and (local.get $t%n) (i32.const %n)))*n",
                 cssp, cssp, (1 << len) - 1)
        cssp := cssp + 1
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }

      CASE s_selst:
      { LET sfop = rdn(); LET len = rdn(); LET sh = rdn()
        cgpendingop_wasm()
        selectoutput(tostream)
        // Stack: $t{cssp-2}=value, $t{cssp-1}=word-addr.
        // Semantics: mem[addr]{sh..sh+len-1} := value{0..len-1}
        //   (for sf_none). Other sfops apply the op between old
        //   field value and new value first.
        { LET va = cssp - 2
          LET ad = cssp - 1
          LET fmask = len >= 32 -> -1, (1 << len) - 1
          LET cmask = ~(fmask << sh)
          UNLESS sfop = sf_none DO
            writef("    ;; SELST: sfop %n not supported, using :=*n", sfop)
          writef("    (i32.store*n")
          writef("      (i32.shl (local.get $t%n) (i32.const 2))*n", ad)
          writef("      (i32.or*n")
          writef("        (i32.and*n")
          writef("          (i32.load (i32.shl (local.get $t%n) (i32.const 2)))*n", ad)
          writef("          (i32.const %n))*n", cmask)
          writef("        (i32.shl*n")
          writef("          (i32.and (local.get $t%n) (i32.const %n))*n", va, fmask)
          writef("          (i32.const %n))))*n", sh)
        }
        cssp := cssp - 2
        IF cssp_sync > cssp DO cssp_sync := cssp
        selectoutput(sysprint)
        terminated := FALSE
        ENDCASE
      }
    }
    op := rdn()
  } REPEAT
}

// Linker mode: return module-local word offset (not absolute
// address). Emit sites add (global.get $SB) to form the full addr.
AND alloc_static(bcpl_lab, val) = VALOF
{ LET offset = stat_n
  IF stat_n < 32768 DO
  { stat_words!stat_n := val
    stat_n := stat_n + 1
  }
  IF bcpl_lab >= 0 & bcpl_lab < nlabmap DO
    labmap!bcpl_lab := offset
  RESULTIS offset
}
