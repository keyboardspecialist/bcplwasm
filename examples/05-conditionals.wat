(module
  (type $bcpl_fn (func (result i32)))
  (type $void_fn (func))
  (import "env" "mem"    (memory 4))
  (import "env" "ftable" (table $ftable 256 funcref))
  (import "env" "P" (global $P (mut i32)))
  (import "env" "G" (global $G i32))
  (import "env" "static_base" (global $SB i32))
  (import "env" "table_base"  (global $TB i32))
  (import "env" "__line" (global $__line (mut i32)))
  (import "env" "__bp_armed" (global $__bp_armed (mut i32)))
  (import "env" "bcpl_break" (func $__break (type $void_fn)))

  ;; SECTION: cond
  ;; BCPL fn start (L10)
  (func $fn_L10 (export "fn_L10") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $Pb i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (local $t7 i32)
    (local $t8 i32)
    (local $t9 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_8
      (block $__case_7
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:13
    (global.set $__line (i32.const 13))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const -7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 0:14
    (global.set $__line (i32.const 14))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:16
    (global.set $__line (i32.const 16))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 0))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L11
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.eq  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:17
    (global.set $__line (i32.const 17))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 5))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L12
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:19
    (global.set $__line (i32.const 19))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 9))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L15
      ) ;; close $__case_3 — LAB L13
    ;; line 0:20
    (global.set $__line (i32.const 20))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 12))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L15
    ;; line 0:21
    (global.set $__line (i32.const 21))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 16))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.const 0))
    (if (i32.ge_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 19))) ;; LSTR
    ;; RES L16: save result, jump to RSTACK
    (local.set $__res (local.get $t8))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L17
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 20))) ;; LSTR
    ;; RES L18: save result, jump to RSTACK
    (local.set $__res (local.get $t8))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L19
    (local.set $t8 (i32.add (global.get $SB) (i32.const 22))) ;; LSTR
    ;; RES L18: save result, jump to RSTACK
    (local.set $__res (local.get $t8))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L18
    ;; RSTACK 8
    (local.set $t8 (local.get $__res)) ;; restore RES result
    ;; RES L16: save result, jump to RSTACK
    (local.set $__res (local.get $t8))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L16
    ;; RSTACK 8
    (local.set $t8 (local.get $__res)) ;; restore RES result
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:24
    (global.set $__line (i32.const 24))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t3 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t3))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L10

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L10))

  ;; static data — passive segment (23 words)
  (data $stat "\12\6E\20\69\73\20\6E\65\67\61\74\69\76\65\3A\20\25\6E\0A\00\0D\6E\20\69\73\20\6E\6F\6E\7A\65\72\6F\0A\00\00\09\70\6F\73\69\74\69\76\65\0A\00\00\0D\6E\6F\74\20\70\6F\73\69\74\69\76\65\0A\00\00\0A\73\69\67\6E\20\3D\20\25\73\0A\00\03\6E\65\67\04\7A\65\72\6F\00\00\00\03\70\6F\73")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 92))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 1))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 0))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 23))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 1))
)
 ;; end module
