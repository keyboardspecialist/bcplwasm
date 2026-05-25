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

  ;; SECTION: BMSSP_DEMO
  ;; BCPL fn rng (L19)
  (func $fn_L19 (export "fn_L19") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:56
    (global.set $__line (i32.const 56))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1103515245))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t3 (i32.mul (local.get $t3) (local.get $t4)))
    (local.set $t4 (i32.const 12345))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (local.set $t4 (i32.const 2147483647))
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2))
      (local.get $t3))
    ;; line 0:57
    (global.set $__line (i32.const 57))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    ;; FNRN
    (local.set $__res (local.get $t3))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t3 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t3))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L19

  ;; BCPL fn rand_in (L20)
  (func $fn_L20 (export "fn_L20") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (local.set $t8 (i32.add (global.get $TB) (i32.const 0))) ;; LF L19
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.rem_s (local.get $t5) (local.get $t6)))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L20

  ;; BCPL fn build_graph (L21)
  (func $fn_L21 (export "fn_L21") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local $t24 i32)
    (local $t25 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_15
      (block $__case_14
      (block $__case_13
      (block $__case_12
      (block $__case_11
      (block $__case_10
      (block $__case_9
      (block $__case_8
      (block $__case_7
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:65
    (global.set $__line (i32.const 65))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1500))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1500))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 0:67
    (global.set $__line (i32.const 67))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 201))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:68
    (global.set $__line (i32.const 68))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:69
    (global.set $__line (i32.const 69))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 199))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L22
    ;; line 0:70
    (global.set $__line (i32.const 70))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (local.get $t7)) ;; LP promoted P!7
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L23
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 199))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L24
    ;; line 0:71
    (global.set $__line (i32.const 71))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.const 5))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L26
    ;; line 0:72
    (global.set $__line (i32.const 72))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 0))) ;; LF L19
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (local.set $t12 (i32.const 200))
    (local.set $t11 (i32.rem_s (local.get $t11) (local.get $t12)))
    ;; line 0:73
    (global.set $__line (i32.const 73))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t7)) ;; LP promoted P!7
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (if (i32.eq  (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:74
    (global.set $__line (i32.const 74))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t6)) ;; LP promoted P!6
    (local.set $t13 (i32.const 1500))
    (if (i32.ge_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:75
    (global.set $__line (i32.const 75))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t11)) ;; LP promoted P!11
    (local.set $t13 (local.get $t6)) ;; LP promoted P!6
    (local.set $t14 (local.get $t3)) ;; LP promoted P!3
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.shl (local.get $t13) (i32.const 2)) (local.get $t12))
    ;; line 0:76
    (global.set $__line (i32.const 76))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 1))
    (local.set $t16 (i32.const 50))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 1))) ;; LF L20
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (local.set $t13 (local.get $t6)) ;; LP promoted P!6
    (local.set $t14 (local.get $t4)) ;; LP promoted P!4
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.shl (local.get $t13) (i32.const 2)) (local.get $t12))
    ;; line 0:77
    (global.set $__line (i32.const 77))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t7)) ;; LP promoted P!7
    (local.set $t13 (local.get $t5)) ;; LP promoted P!5
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (local.get $t7)) ;; LP promoted P!7
    (local.set $t14 (local.get $t5)) ;; LP promoted P!5
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.shl (local.get $t13) (i32.const 2)) (local.get $t12))
    ;; line 0:78
    (global.set $__line (i32.const 78))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 1))
    (local.set $t13 (local.get $t6)) ;; LP promoted P!6
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t6 (local.get $t12)) ;; SP promoted P!6
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L28
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t9 (local.get $t11)) ;; SP promoted P!9
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L27
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L25
    ;; line 0:79
    (global.set $__line (i32.const 79))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    ;; line 0:82
    (global.set $__line (i32.const 82))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 199))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L29
    ;; line 0:83
    (global.set $__line (i32.const 83))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (local.get $t7)) ;; LP promoted P!7
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.const 1))
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L30
    (local.set $t7 (i32.const 200))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2))
      (local.get $t7))
    ;; line 0:84
    (global.set $__line (i32.const 84))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 201))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:85
    (global.set $__line (i32.const 85))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:86
    (global.set $__line (i32.const 86))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:87
    (global.set $__line (i32.const 87))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:88
    (global.set $__line (i32.const 88))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 199))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (local.set $t14 (local.get $t12)) ;; LP promoted P!12
    (if (i32.gt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L31
    ;; line 0:89
    (global.set $__line (i32.const 89))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (local.set $t14 (local.get $t11)) ;; LP promoted P!11
    (local.set $t15 (local.get $t7)) ;; LP promoted P!7
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t11 (local.get $t13)) ;; SP promoted P!11
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (local.set $t14 (local.get $t12)) ;; LP promoted P!12
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L32
    (local.set $t11 (local.get $t8)) ;; LP promoted P!8
    (local.set $t12 (local.get $t6)) ;; LP promoted P!6
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L33
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:91
    (global.set $__line (i32.const 91))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (local.set $t13 (i32.const 0))
    (if (i32.gt_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L35
    (local.set $t12 (i32.const 1))
    (local.set $t13 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t9 (local.get $t12)) ;; SP promoted P!9
    ;; line 0:92
    (global.set $__line (i32.const 92))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t9)) ;; LP promoted P!9
    (local.set $t13 (local.get $t5)) ;; LP promoted P!5
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t10 (local.get $t12)) ;; SP promoted P!10
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (local.set $t13 (i32.const 0))
    (if (i32.le_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
      ) ;; close $__case_14 — LAB L36
    (local.set $t12 (local.get $t9)) ;; LP promoted P!9
    (local.set $t13 (local.get $t7)) ;; LP promoted P!7
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t11 (local.get $t12)) ;; SP promoted P!11
    ;; line 0:93
    (global.set $__line (i32.const 93))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t8)) ;; LP promoted P!8
    (local.set $t13 (local.get $t3)) ;; LP promoted P!3
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.shl (local.get $t13) (i32.const 2)) (local.get $t12))
    ;; line 0:94
    (global.set $__line (i32.const 94))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t8)) ;; LP promoted P!8
    (local.set $t13 (local.get $t4)) ;; LP promoted P!4
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.shl (local.get $t13) (i32.const 2)) (local.get $t12))
    ;; line 0:95
    (global.set $__line (i32.const 95))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 1))
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (local.get $t9)) ;; LP promoted P!9
    (local.set $t14 (local.get $t7)) ;; LP promoted P!7
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.shl (local.get $t13) (i32.const 2)) (local.get $t12))
    ;; line 0:96
    (global.set $__line (i32.const 96))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t10 (local.get $t12)) ;; SP promoted P!10
    ;; line 0:97
    (global.set $__line (i32.const 97))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 1))
    (local.set $t13 (local.get $t8)) ;; LP promoted P!8
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t8 (local.get $t12)) ;; SP promoted P!8
    (local.set $t11 (local.get $t8)) ;; LP promoted P!8
    (local.set $t12 (local.get $t6)) ;; LP promoted P!6
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L34
    ;; line 0:90
    (global.set $__line (i32.const 90))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (local.get $t7)) ;; LP promoted P!7
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:100
    (global.set $__line (i32.const 100))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:102
    (global.set $__line (i32.const 102))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L21

  ;; BCPL fn heap_init (L39)
  (func $fn_L39 (export "fn_L39") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:112
    (global.set $__line (i32.const 112))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L39

  ;; BCPL fn heap_push (L40)
  (func $fn_L40 (export "fn_L40") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:114
    (global.set $__line (i32.const 114))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L38
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:115
    (global.set $__line (i32.const 115))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    ;; line 0:116
    (global.set $__line (i32.const 116))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 1))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L38
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t5))
    ;; line 0:117
    (global.set $__line (i32.const 117))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L41
    (local.set $t5 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.div_s (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:119
    (global.set $__line (i32.const 119))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:120
    (global.set $__line (i32.const 120))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:121
    (global.set $__line (i32.const 121))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:122
    (global.set $__line (i32.const 122))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t7)) ;; LP promoted P!7
    (local.set $t9 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.shl (local.get $t9) (i32.const 2)) (local.get $t8))
    ;; line 0:123
    (global.set $__line (i32.const 123))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.shl (local.get $t9) (i32.const 2)) (local.get $t8))
    ;; line 0:124
    (global.set $__line (i32.const 124))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t5)) ;; LP promoted P!5
    (local.set $t4 (local.get $t8)) ;; SP promoted P!4
    (local.set $t5 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.const 0))
    (if (i32.gt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L43
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L42
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L40

  ;; BCPL fn heap_pop (L44)
  (func $fn_L44 (export "fn_L44") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:129
    (global.set $__line (i32.const 129))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (local.set $t3 (i32.load (i32.shl (local.get $t3) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 0:130
    (global.set $__line (i32.const 130))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:131
    (global.set $__line (i32.const 131))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L38
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t5))
    ;; line 0:132
    (global.set $__line (i32.const 132))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L38
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    ;; line 0:133
    (global.set $__line (i32.const 133))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L45
    (local.set $t5 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.mul (local.get $t5) (local.get $t6)))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:135
    (global.set $__line (i32.const 135))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:136
    (global.set $__line (i32.const 136))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:137
    (global.set $__line (i32.const 137))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t5)) ;; LP promoted P!5
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L38
    (if (i32.ge_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t8 (local.get $t5)) ;; LP promoted P!5
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (if (i32.ge_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:138
    (global.set $__line (i32.const 138))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (local.get $t8)) ;; SP promoted P!7
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L46
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L38
    (if (i32.ge_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (if (i32.ge_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:139
    (global.set $__line (i32.const 139))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t7 (local.get $t8)) ;; SP promoted P!7
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L47
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.eq  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:140
    (global.set $__line (i32.const 140))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:141
    (global.set $__line (i32.const 141))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    ;; line 0:142
    (global.set $__line (i32.const 142))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t8)) ;; LP promoted P!8
    (local.set $t10 (local.get $t7)) ;; LP promoted P!7
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    ;; line 0:143
    (global.set $__line (i32.const 143))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t7)) ;; LP promoted P!7
    (local.set $t4 (local.get $t8)) ;; SP promoted P!4
      (local.set $__lab (i32.const 1)) (br $__dispatch) ;; JUMP L45
      ) ;; close $__case_4 — LAB L48
    ;; line 0:134
    (global.set $__line (i32.const 134))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    ;; FNRN
    (local.set $__res (local.get $t5))
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
  ) ;; end func $fn_L44

  ;; BCPL fn dijkstra (L49)
  (func $fn_L49 (export "fn_L49") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_7
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:152
    (global.set $__line (i32.const 152))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 199))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L50
    ;; line 0:153
    (global.set $__line (i32.const 153))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 2147483647))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t4 (local.get $t6)) ;; SP promoted P!4
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L51
    (local.set $t4 (i32.const 0))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    ;; line 0:154
    (global.set $__line (i32.const 154))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $TB) (i32.const 3))) ;; LF L39
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:155
    (global.set $__line (i32.const 155))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.add (global.get $TB) (i32.const 4))) ;; LF L40
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:156
    (global.set $__line (i32.const 156))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L38
    (local.set $t5 (i32.const 0))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L52
    (local.set $t7 (i32.add (global.get $TB) (i32.const 5))) ;; LF L44
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 0:158
    (global.set $__line (i32.const 158))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:159
    (global.set $__line (i32.const 159))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L55
      ) ;; close $__case_4 — LAB L54
    ;; line 0:160
    (global.set $__line (i32.const 160))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:161
    (global.set $__line (i32.const 161))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:162
    (global.set $__line (i32.const 162))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t9)) ;; LP promoted P!9
    (local.set $t11 (local.get $t8)) ;; LP promoted P!8
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (if (i32.ge_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:163
    (global.set $__line (i32.const 163))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t9)) ;; LP promoted P!9
    (local.set $t11 (local.get $t8)) ;; LP promoted P!8
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:164
    (global.set $__line (i32.const 164))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t8)) ;; LP promoted P!8
    (local.set $t14 (i32.add (global.get $TB) (i32.const 4))) ;; LF L40
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L56
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L55
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L38
    (local.set $t5 (i32.const 0))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L53
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L49

  ;; BCPL fn bellman_ford (L57)
  (func $fn_L57 (export "fn_L57") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_11
      (block $__case_10
      (block $__case_9
      (block $__case_8
      (block $__case_7
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:175
    (global.set $__line (i32.const 175))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:176
    (global.set $__line (i32.const 176))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:177
    (global.set $__line (i32.const 177))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 199))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L58
    ;; line 0:178
    (global.set $__line (i32.const 178))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 2147483647))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.shl (local.get $t9) (i32.const 2)) (local.get $t8))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L59
    (local.set $t6 (i32.const 0))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 0:179
    (global.set $__line (i32.const 179))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L61
      ) ;; close $__case_3 — LAB L60
    (local.set $t6 (i32.const 0))
    (local.set $t4 (local.get $t6)) ;; SP promoted P!4
    ;; line 0:181
    (global.set $__line (i32.const 181))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (local.get $t6)) ;; SP promoted P!5
    ;; line 0:182
    (global.set $__line (i32.const 182))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 199))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L62
    ;; line 0:183
    (global.set $__line (i32.const 183))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:184
    (global.set $__line (i32.const 184))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 2147483647))
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.eq  (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:185
    (global.set $__line (i32.const 185))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (i32.const 1))
    (local.set $t11 (local.get $t6)) ;; LP promoted P!6
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L66
      ) ;; close $__case_5 — LAB L65
    ;; line 0:186
    (global.set $__line (i32.const 186))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:187
    (global.set $__line (i32.const 187))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t9)) ;; LP promoted P!9
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t13 (local.get $t8)) ;; LP promoted P!8
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:188
    (global.set $__line (i32.const 188))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t12)) ;; LP promoted P!12
    (local.set $t14 (local.get $t11)) ;; LP promoted P!11
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t14 (i32.load (i32.shl (local.get $t14) (i32.const 2))))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:189
    (global.set $__line (i32.const 189))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t12)) ;; LP promoted P!12
    (local.set $t14 (local.get $t11)) ;; LP promoted P!11
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    (local.set $t13 (i32.const -1))
    (local.set $t4 (local.get $t13)) ;; SP promoted P!4
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L67
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t9 (local.get $t11)) ;; SP promoted P!9
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L66
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L64
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L63
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L61
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.const 200))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L68
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L57

  ;; BCPL fn find_pivots_demo (L69)
  (func $fn_L69 (export "fn_L69") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local $t24 i32)
    (local $t25 i32)
    (local $t26 i32)
    (local $t27 i32)
    (local $t28 i32)
    (local $t29 i32)
    (local $t30 i32)
    (local $t31 i32)
    (local $t32 i32)
    (local $t33 i32)
    (local $t34 i32)
    (local $t35 i32)
    (local $t36 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (loop $__dispatch
      (block $__default
      (block $__case_34
      (block $__case_33
      (block $__case_32
      (block $__case_31
      (block $__case_30
      (block $__case_29
      (block $__case_28
      (block $__case_27
      (block $__case_26
      (block $__case_25
      (block $__case_24
      (block $__case_23
      (block $__case_22
      (block $__case_21
      (block $__case_20
      (block $__case_19
      (block $__case_18
      (block $__case_17
      (block $__case_16
      (block $__case_15
      (block $__case_14
      (block $__case_13
      (block $__case_12
      (block $__case_11
      (block $__case_10
      (block $__case_9
      (block $__case_8
      (block $__case_7
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__case_28 $__case_29 $__case_30 $__case_31 $__case_32 $__case_33 $__case_34 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:204
    (global.set $__line (i32.const 204))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 201))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:205
    (global.set $__line (i32.const 205))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 201))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:206
    (global.set $__line (i32.const 206))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 201))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 0:207
    (global.set $__line (i32.const 207))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 201))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 0:208
    (global.set $__line (i32.const 208))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 201))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; line 0:209
    (global.set $__line (i32.const 209))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 201))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    ;; line 0:210
    (global.set $__line (i32.const 210))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 201))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; line 0:211
    (global.set $__line (i32.const 211))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:212
    (global.set $__line (i32.const 212))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:213
    (global.set $__line (i32.const 213))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:214
    (global.set $__line (i32.const 214))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:215
    (global.set $__line (i32.const 215))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 199))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t18)) ;; LP promoted P!18
    (if (i32.gt_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L70
    ;; line 0:218
    (global.set $__line (i32.const 218))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 2147483647))
    (local.set $t20 (local.get $t17)) ;; LP promoted P!17
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.shl (local.get $t20) (i32.const 2)) (local.get $t19))
    ;; line 0:219
    (global.set $__line (i32.const 219))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (local.get $t17)) ;; LP promoted P!17
    (local.set $t21 (local.get $t6)) ;; LP promoted P!6
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.shl (local.get $t20) (i32.const 2)) (local.get $t19))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (local.get $t17)) ;; LP promoted P!17
    (local.set $t21 (local.get $t7)) ;; LP promoted P!7
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.shl (local.get $t20) (i32.const 2)) (local.get $t19))
    (local.set $t19 (i32.const -1))
    (local.set $t20 (local.get $t17)) ;; LP promoted P!17
    (local.set $t21 (local.get $t11)) ;; LP promoted P!11
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.shl (local.get $t20) (i32.const 2)) (local.get $t19))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (local.get $t17)) ;; LP promoted P!17
    (local.set $t21 (local.get $t12)) ;; LP promoted P!12
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.shl (local.get $t20) (i32.const 2)) (local.get $t19))
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (i32.const 1))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t17 (local.get $t19)) ;; SP promoted P!17
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t18)) ;; LP promoted P!18
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L71
    (local.set $t17 (i32.const 0))
    (local.set $t18 (local.get $t4)) ;; LP promoted P!4
    (local.set $t19 (i32.const 1))
    (local.set $t18 (i32.sub (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L73
      ) ;; close $__case_3 — LAB L72
    ;; line 0:221
    (global.set $__line (i32.const 221))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t3)) ;; LP promoted P!3
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:222
    (global.set $__line (i32.const 222))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (local.get $t19)) ;; LP promoted P!19
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.shl (local.get $t21) (i32.const 2)) (local.get $t20))
    ;; line 0:223
    (global.set $__line (i32.const 223))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.const 1))
    (local.set $t21 (local.get $t19)) ;; LP promoted P!19
    (local.set $t22 (local.get $t6)) ;; LP promoted P!6
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.shl (local.get $t21) (i32.const 2)) (local.get $t20))
    ;; line 0:224
    (global.set $__line (i32.const 224))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (local.get $t19)) ;; LP promoted P!19
    (local.set $t21 (local.get $t19)) ;; LP promoted P!19
    (local.set $t22 (local.get $t11)) ;; LP promoted P!11
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.shl (local.get $t21) (i32.const 2)) (local.get $t20))
    (local.set $t20 (local.get $t19)) ;; LP promoted P!19
    (local.set $t21 (local.get $t15)) ;; LP promoted P!15
    (local.set $t22 (local.get $t10)) ;; LP promoted P!10
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.shl (local.get $t21) (i32.const 2)) (local.get $t20))
    ;; line 0:225
    (global.set $__line (i32.const 225))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.const 1))
    (local.set $t21 (local.get $t15)) ;; LP promoted P!15
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t15 (local.get $t20)) ;; SP promoted P!15
    (local.set $t20 (local.get $t19)) ;; LP promoted P!19
    (local.set $t21 (local.get $t13)) ;; LP promoted P!13
    (local.set $t22 (local.get $t8)) ;; LP promoted P!8
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.shl (local.get $t21) (i32.const 2)) (local.get $t20))
    ;; line 0:226
    (global.set $__line (i32.const 226))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.const 1))
    (local.set $t21 (local.get $t13)) ;; LP promoted P!13
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t13 (local.get $t20)) ;; SP promoted P!13
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (i32.const 1))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t17 (local.get $t19)) ;; SP promoted P!17
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L73
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t18)) ;; LP promoted P!18
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t17 (i32.const 1))
    (local.set $t18 (i32.const 3))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t18)) ;; LP promoted P!18
    (if (i32.gt_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L74
    ;; line 0:229
    (global.set $__line (i32.const 229))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (local.get $t14)) ;; LP promoted P!14
    (local.set $t21 (i32.const 1))
    (local.set $t20 (i32.sub (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L77
      ) ;; close $__case_6 — LAB L76
    ;; line 0:230
    (global.set $__line (i32.const 230))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (local.get $t19)) ;; LP promoted P!19
    (local.set $t23 (local.get $t9)) ;; LP promoted P!9
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (local.set $t22 (i32.load (i32.shl (local.get $t22) (i32.const 2))))
    (local.set $t23 (local.get $t7)) ;; LP promoted P!7
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    (local.set $t21 (local.get $t19)) ;; LP promoted P!19
    (local.set $t22 (i32.const 1))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t19 (local.get $t21)) ;; SP promoted P!19
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L77
    (local.set $t21 (local.get $t19)) ;; LP promoted P!19
    (local.set $t22 (local.get $t20)) ;; LP promoted P!20
    (if (i32.le_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t19 (i32.const 0))
    (local.set $t14 (local.get $t19)) ;; SP promoted P!14
    ;; line 0:231
    (global.set $__line (i32.const 231))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (local.get $t13)) ;; LP promoted P!13
    (local.set $t21 (i32.const 1))
    (local.set $t20 (i32.sub (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
      (local.set $__lab (i32.const 15)) (br $__dispatch) ;; JUMP L79
      ) ;; close $__case_8 — LAB L78
    ;; line 0:232
    (global.set $__line (i32.const 232))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (local.get $t19)) ;; LP promoted P!19
    (local.set $t22 (local.get $t8)) ;; LP promoted P!8
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t21 (i32.load (i32.shl (local.get $t21) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    ;; line 0:233
    (global.set $__line (i32.const 233))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (local.get $t21)) ;; LP promoted P!21
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (local.set $t22 (i32.load (i32.shl (local.get $t22) (i32.const 2))))
    (local.set $t23 (i32.const 1))
    (local.set $t24 (local.get $t21)) ;; LP promoted P!21
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (local.set $t24 (i32.const 1))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
      (local.set $__lab (i32.const 14)) (br $__dispatch) ;; JUMP L81
      ) ;; close $__case_9 — LAB L80
    ;; line 0:234
    (global.set $__line (i32.const 234))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (local.get $t22)) ;; LP promoted P!22
    (local.set $t25 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (local.set $t24 (i32.load (i32.shl (local.get $t24) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    ;; line 0:235
    (global.set $__line (i32.const 235))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (local.get $t21)) ;; LP promoted P!21
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t25 (i32.load (i32.shl (local.get $t25) (i32.const 2))))
    (local.set $t26 (local.get $t22)) ;; LP promoted P!22
    (local.set $t27 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t26 (i32.load (i32.shl (local.get $t26) (i32.const 2))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 0:236
    (global.set $__line (i32.const 236))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (local.get $t25)) ;; LP promoted P!25
    (local.set $t27 (local.get $t24)) ;; LP promoted P!24
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t27 (i32.load (i32.shl (local.get $t27) (i32.const 2))))
    (if (i32.ge_s (local.get $t26) (local.get $t27)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 0:237
    (global.set $__line (i32.const 237))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (local.get $t25)) ;; LP promoted P!25
    (local.set $t27 (local.get $t24)) ;; LP promoted P!24
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.shl (local.get $t27) (i32.const 2)) (local.get $t26))
    ;; line 0:238
    (global.set $__line (i32.const 238))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (local.set $t27 (local.get $t7)) ;; LP promoted P!7
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t26 (i32.load (i32.shl (local.get $t26) (i32.const 2))))
    (if (local.get $t26) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; line 0:239
    (global.set $__line (i32.const 239))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 1))
    (local.set $t27 (local.get $t24)) ;; LP promoted P!24
    (local.set $t28 (local.get $t7)) ;; LP promoted P!7
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.shl (local.get $t27) (i32.const 2)) (local.get $t26))
    ;; line 0:240
    (global.set $__line (i32.const 240))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (local.set $t27 (local.get $t14)) ;; LP promoted P!14
    (local.set $t28 (local.get $t9)) ;; LP promoted P!9
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.shl (local.get $t27) (i32.const 2)) (local.get $t26))
    ;; line 0:241
    (global.set $__line (i32.const 241))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 1))
    (local.set $t27 (local.get $t14)) ;; LP promoted P!14
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t14 (local.get $t26)) ;; SP promoted P!14
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L83
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (local.set $t27 (local.get $t6)) ;; LP promoted P!6
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t26 (i32.load (i32.shl (local.get $t26) (i32.const 2))))
    (if (local.get $t26) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 0:243
    (global.set $__line (i32.const 243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 1))
    (local.set $t27 (local.get $t24)) ;; LP promoted P!24
    (local.set $t28 (local.get $t6)) ;; LP promoted P!6
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.shl (local.get $t27) (i32.const 2)) (local.get $t26))
    ;; line 0:244
    (global.set $__line (i32.const 244))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (local.get $t15)) ;; LP promoted P!15
    (local.set $t27 (i32.const 200))
    (if (i32.ge_s (local.get $t26) (local.get $t27)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:245
    (global.set $__line (i32.const 245))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (local.set $t27 (local.get $t15)) ;; LP promoted P!15
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.shl (local.get $t27) (i32.const 2)) (local.get $t26))
    (local.set $t26 (i32.const 1))
    (local.set $t27 (local.get $t15)) ;; LP promoted P!15
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t15 (local.get $t26)) ;; SP promoted P!15
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L85
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L84
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L82
    (local.set $t24 (local.get $t22)) ;; LP promoted P!22
    (local.set $t25 (i32.const 1))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (local.set $t22 (local.get $t24)) ;; SP promoted P!22
      (local.set $__lab (i32.const 14)) (br $__dispatch)
      ) ;; close $__case_14 — LAB L81
    (local.set $t24 (local.get $t22)) ;; LP promoted P!22
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (if (i32.le_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    (local.set $t21 (local.get $t19)) ;; LP promoted P!19
    (local.set $t22 (i32.const 1))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t19 (local.get $t21)) ;; SP promoted P!19
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L79
    (local.set $t21 (local.get $t19)) ;; LP promoted P!19
    (local.set $t22 (local.get $t20)) ;; LP promoted P!20
    (if (i32.le_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t19 (local.get $t8)) ;; LP promoted P!8
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:251
    (global.set $__line (i32.const 251))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (local.get $t9)) ;; LP promoted P!9
    (local.set $t8 (local.get $t20)) ;; SP promoted P!8
    (local.set $t20 (local.get $t19)) ;; LP promoted P!19
    (local.set $t9 (local.get $t20)) ;; SP promoted P!9
    (local.set $t19 (local.get $t14)) ;; LP promoted P!14
    (local.set $t13 (local.get $t19)) ;; SP promoted P!13
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (i32.const 1))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t17 (local.get $t19)) ;; SP promoted P!17
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t18)) ;; LP promoted P!18
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L75
    ;; line 0:252
    (global.set $__line (i32.const 252))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (local.get $t15)) ;; LP promoted P!15
    (local.set $t19 (i32.const 1))
    (local.set $t18 (i32.sub (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
      (local.set $__lab (i32.const 21)) (br $__dispatch) ;; JUMP L87
      ) ;; close $__case_17 — LAB L86
    ;; line 0:257
    (global.set $__line (i32.const 257))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t10)) ;; LP promoted P!10
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:258
    (global.set $__line (i32.const 258))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (local.get $t19)) ;; LP promoted P!19
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t20 (i32.load (i32.shl (local.get $t20) (i32.const 2))))
    (local.set $t21 (i32.const 1))
    (local.set $t22 (local.get $t19)) ;; LP promoted P!19
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t21 (i32.load (i32.shl (local.get $t21) (i32.const 2))))
    (local.set $t22 (i32.const 1))
    (local.set $t21 (i32.sub (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
      (local.set $__lab (i32.const 20)) (br $__dispatch) ;; JUMP L89
      ) ;; close $__case_18 — LAB L88
    ;; line 0:259
    (global.set $__line (i32.const 259))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (local.get $t20)) ;; LP promoted P!20
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (local.set $t22 (i32.load (i32.shl (local.get $t22) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    ;; line 0:260
    (global.set $__line (i32.const 260))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (local.get $t22)) ;; LP promoted P!22
    (local.set $t24 (local.get $t6)) ;; LP promoted P!6
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (if (i32.eqz (local.get $t23)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
    (local.set $t23 (local.get $t22)) ;; LP promoted P!22
    (local.set $t24 (local.get $t11)) ;; LP promoted P!11
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (local.set $t24 (i32.const -1))
    (if (i32.ne  (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
    (local.set $t23 (local.get $t22)) ;; LP promoted P!22
    (local.set $t24 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (local.set $t24 (local.get $t19)) ;; LP promoted P!19
    (local.set $t25 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (local.set $t24 (i32.load (i32.shl (local.get $t24) (i32.const 2))))
    (local.set $t25 (local.get $t20)) ;; LP promoted P!20
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t25 (i32.load (i32.shl (local.get $t25) (i32.const 2))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (if (i32.ne  (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
    ;; line 0:261
    (global.set $__line (i32.const 261))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (local.get $t19)) ;; LP promoted P!19
    (local.set $t24 (local.get $t22)) ;; LP promoted P!22
    (local.set $t25 (local.get $t11)) ;; LP promoted P!11
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.shl (local.get $t24) (i32.const 2)) (local.get $t23))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      ) ;; close $__case_19 — LAB L90
    (local.set $t22 (local.get $t20)) ;; LP promoted P!20
    (local.set $t23 (i32.const 1))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (local.set $t20 (local.get $t22)) ;; SP promoted P!20
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L89
    (local.set $t22 (local.get $t20)) ;; LP promoted P!20
    (local.set $t23 (local.get $t21)) ;; LP promoted P!21
    (if (i32.le_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (i32.const 1))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t17 (local.get $t19)) ;; SP promoted P!17
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L87
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t18)) ;; LP promoted P!18
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; line 0:263
    (global.set $__line (i32.const 263))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (local.get $t15)) ;; LP promoted P!15
    (local.set $t19 (i32.const 1))
    (local.set $t18 (i32.sub (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
      (local.set $__lab (i32.const 29)) (br $__dispatch) ;; JUMP L92
      ) ;; close $__case_22 — LAB L91
    ;; line 0:267
    (global.set $__line (i32.const 267))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t10)) ;; LP promoted P!10
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:268
    (global.set $__line (i32.const 268))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (local.get $t19)) ;; LP promoted P!19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:269
    (global.set $__line (i32.const 269))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    ;; line 0:270
    (global.set $__line (i32.const 270))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    ;; line 0:271
    (global.set $__line (i32.const 271))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L94
      ) ;; close $__case_23 — LAB L93
    (local.set $t23 (local.get $t20)) ;; LP promoted P!20
    (local.set $t24 (local.get $t11)) ;; LP promoted P!11
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (local.set $t24 (i32.const -1))
    (if (i32.eq  (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
    (local.set $t23 (local.get $t22)) ;; LP promoted P!22
    (local.set $t24 (i32.const 200))
    (if (i32.le_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
      ) ;; close $__case_24 — LAB L96
    ;; line 0:273
    (global.set $__line (i32.const 273))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t21 (local.get $t23)) ;; SP promoted P!21
      (local.set $__lab (i32.const 27)) (br $__dispatch) ;; JUMP L97
      ) ;; close $__case_25 — LAB L95
    (local.set $t23 (local.get $t20)) ;; LP promoted P!20
    (local.set $t24 (local.get $t11)) ;; LP promoted P!11
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (local.set $t20 (local.get $t23)) ;; SP promoted P!20
    ;; line 0:274
    (global.set $__line (i32.const 274))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 1))
    (local.set $t24 (local.get $t22)) ;; LP promoted P!22
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t22 (local.get $t23)) ;; SP promoted P!22
      (local.set $__lab (i32.const 26)) (br $__dispatch)
      ) ;; close $__case_26 — LAB L94
    (local.set $t23 (local.get $t20)) ;; LP promoted P!20
    (local.set $t24 (local.get $t11)) ;; LP promoted P!11
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (local.set $t24 (local.get $t20)) ;; LP promoted P!20
    (if (i32.ne  (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L97
    ;; line 0:272
    (global.set $__line (i32.const 272))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (local.get $t21)) ;; LP promoted P!21
    (if (i32.eqz (local.get $t23)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    ))
    ;; line 0:277
    (global.set $__line (i32.const 277))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (local.get $t20)) ;; LP promoted P!20
    (local.set $t24 (local.get $t12)) ;; LP promoted P!12
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (local.set $t24 (i32.const 1))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t24 (local.get $t20)) ;; LP promoted P!20
    (local.set $t25 (local.get $t12)) ;; LP promoted P!12
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.shl (local.get $t24) (i32.const 2)) (local.get $t23))
      (local.set $__lab (i32.const 28)) (br $__dispatch)
      ) ;; close $__case_28 — LAB L98
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (i32.const 1))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t17 (local.get $t19)) ;; SP promoted P!17
      (local.set $__lab (i32.const 29)) (br $__dispatch)
      ) ;; close $__case_29 — LAB L92
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t18)) ;; LP promoted P!18
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (local.get $t4)) ;; LP promoted P!4
    (local.set $t19 (i32.const 1))
    (local.set $t18 (i32.sub (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
      (local.set $__lab (i32.const 32)) (br $__dispatch) ;; JUMP L100
      ) ;; close $__case_30 — LAB L99
    ;; line 0:279
    (global.set $__line (i32.const 279))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t3)) ;; LP promoted P!3
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (local.set $t20 (local.get $t12)) ;; LP promoted P!12
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (local.set $t20 (i32.const 3))
    (if (i32.lt_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
    ;; line 0:280
    (global.set $__line (i32.const 280))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 1))
    (local.set $t20 (local.get $t16)) ;; LP promoted P!16
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t16 (local.get $t19)) ;; SP promoted P!16
      (local.set $__lab (i32.const 31)) (br $__dispatch)
      ) ;; close $__case_31 — LAB L101
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (i32.const 1))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t17 (local.get $t19)) ;; SP promoted P!17
      (local.set $__lab (i32.const 32)) (br $__dispatch)
      ) ;; close $__case_32 — LAB L100
    (local.set $t19 (local.get $t17)) ;; LP promoted P!17
    (local.set $t20 (local.get $t18)) ;; LP promoted P!18
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
    (local.set $t20 (i32.add (global.get $SB) (i32.const 11))) ;; LSTR
    (local.set $t21 (local.get $t5)) ;; LP promoted P!5
    (local.set $t22 (local.get $t4)) ;; LP promoted P!4
    (local.set $t23 (local.get $t15)) ;; LP promoted P!15
    (local.set $t24 (local.get $t16)) ;; LP promoted P!16
    (local.set $t25 (i32.const 0))
    (local.set $t26 (local.get $t4)) ;; LP promoted P!4
    (if (i32.ne  (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    ))
    (local.set $t25 (i32.const 0))
    ;; RES L102: save result, jump to RSTACK
    (local.set $__res (local.get $t25))
      (local.set $__lab (i32.const 34)) (br $__dispatch)
      (local.set $__lab (i32.const 33)) (br $__dispatch)
      ) ;; close $__case_33 — LAB L103
    (local.set $t25 (i32.const 100))
    (local.set $t26 (local.get $t16)) ;; LP promoted P!16
    (local.set $t27 (i32.const 100))
    (local.set $t26 (i32.mul (local.get $t26) (local.get $t27)))
    (local.set $t27 (local.get $t4)) ;; LP promoted P!4
    (local.set $t26 (i32.div_s (local.get $t26) (local.get $t27)))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    ;; RES L102: save result, jump to RSTACK
    (local.set $__res (local.get $t25))
      (local.set $__lab (i32.const 34)) (br $__dispatch)
      ) ;; close $__case_34 — LAB L102
    ;; RSTACK 25
    (local.set $t25 (local.get $__res)) ;; restore RES result
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t26)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 17)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t26)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:282
    (global.set $__line (i32.const 282))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (local.get $t6)) ;; LP promoted P!6
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 17)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:286
    (global.set $__line (i32.const 286))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (local.get $t7)) ;; LP promoted P!7
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 17)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t20 (local.get $t8)) ;; LP promoted P!8
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 17)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t20 (local.get $t9)) ;; LP promoted P!9
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 17)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t20 (local.get $t10)) ;; LP promoted P!10
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 17)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:287
    (global.set $__line (i32.const 287))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (local.get $t11)) ;; LP promoted P!11
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 17)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t20 (local.get $t12)) ;; LP promoted P!12
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 17)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t17 (local.get $t16)) ;; LP promoted P!16
    ;; FNRN
    (local.set $__res (local.get $t17))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L69

  ;; BCPL fn checksum (L104)
  (func $fn_L104 (export "fn_L104") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:293
    (global.set $__line (i32.const 293))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:294
    (global.set $__line (i32.const 294))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L106
      ) ;; close $__case_1 — LAB L105
    ;; line 0:295
    (global.set $__line (i32.const 295))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.const 2147483647))
    (if (i32.eq  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t5 (local.get $t8)) ;; SP promoted P!5
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L107
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L106
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L104

  ;; BCPL fn reachable (L108)
  (func $fn_L108 (export "fn_L108") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:299
    (global.set $__line (i32.const 299))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:300
    (global.set $__line (i32.const 300))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L110
      ) ;; close $__case_1 — LAB L109
    ;; line 0:301
    (global.set $__line (i32.const 301))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.const 2147483647))
    (if (i32.eq  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t5 (local.get $t8)) ;; SP promoted P!5
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L111
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L110
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L108

  ;; BCPL fn start (L112)
  (func $fn_L112 (export "fn_L112") (type $bcpl_fn)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local $t24 i32)
    (local $t25 i32)
    (local $t26 i32)
    (local $t27 i32)
    (local $t28 i32)
    (local $t29 i32)
    (local $t30 i32)
    (local $t31 i32)
    (local $t32 i32)
    (local $t33 i32)
    (local $t34 i32)
    (local $t35 i32)
    (local $t36 i32)
    (local $t37 i32)
    (local $t38 i32)
    (local $t39 i32)
    (local $t40 i32)
    (local $t41 i32)
    (local $t42 i32)
    (local $t43 i32)
    (local $t44 i32)
    (local $t45 i32)
    (local $t46 i32)
    (local $t47 i32)
    (local $t48 i32)
    (local $t49 i32)
    (local $t50 i32)
    (local $t51 i32)
    (local $t52 i32)
    (local $t53 i32)
    (local $t54 i32)
    (local $t55 i32)
    (local $t56 i32)
    (local $t57 i32)
    (local $t58 i32)
    (local $t59 i32)
    (local $t60 i32)
    (local $t61 i32)
    (local $t62 i32)
    (local $t63 i32)
    (local $t64 i32)
    (local $t65 i32)
    (local $t66 i32)
    (local $t67 i32)
    (local $t68 i32)
    (local $t69 i32)
    (local $t70 i32)
    (local $t71 i32)
    (local $t72 i32)
    (local $t73 i32)
    (local $t74 i32)
    (local $t75 i32)
    (local $t76 i32)
    (local $t77 i32)
    (local $t78 i32)
    (local $t79 i32)
    (local $t80 i32)
    (local $t81 i32)
    (local $t82 i32)
    (local $t83 i32)
    (local $t84 i32)
    (local $t85 i32)
    (local $t86 i32)
    (local $t87 i32)
    (local $t88 i32)
    (local $t89 i32)
    (local $t90 i32)
    (local $t91 i32)
    (local $t92 i32)
    (local $t93 i32)
    (local $t94 i32)
    (local $t95 i32)
    (local $t96 i32)
    (local $t97 i32)
    (local $t98 i32)
    (local $t99 i32)
    (local $t100 i32)
    (local $t101 i32)
    (local $t102 i32)
    (local $t103 i32)
    (local $t104 i32)
    (local $t105 i32)
    (local $t106 i32)
    (local $t107 i32)
    (local $t108 i32)
    (local $t109 i32)
    (local $t110 i32)
    (local $t111 i32)
    (local $t112 i32)
    (local $t113 i32)
    (local $t114 i32)
    (local $t115 i32)
    (local $t116 i32)
    (local $t117 i32)
    (local $t118 i32)
    (local $t119 i32)
    (local $t120 i32)
    (local $t121 i32)
    (local $t122 i32)
    (local $t123 i32)
    (local $t124 i32)
    (local $t125 i32)
    (local $t126 i32)
    (local $t127 i32)
    (local $t128 i32)
    (local $t129 i32)
    (local $t130 i32)
    (local $t131 i32)
    (local $t132 i32)
    (local $t133 i32)
    (local $t134 i32)
    (local $t135 i32)
    (local $t136 i32)
    (local $t137 i32)
    (local $t138 i32)
    (local $t139 i32)
    (local $t140 i32)
    (local $t141 i32)
    (local $t142 i32)
    (local $t143 i32)
    (local $t144 i32)
    (local $t145 i32)
    (local $t146 i32)
    (local $t147 i32)
    (local $t148 i32)
    (local $t149 i32)
    (local $t150 i32)
    (local $t151 i32)
    (local $t152 i32)
    (local $t153 i32)
    (local $t154 i32)
    (local $t155 i32)
    (local $t156 i32)
    (local $t157 i32)
    (local $t158 i32)
    (local $t159 i32)
    (local $t160 i32)
    (local $t161 i32)
    (local $t162 i32)
    (local $t163 i32)
    (local $t164 i32)
    (local $t165 i32)
    (local $t166 i32)
    (local $t167 i32)
    (local $t168 i32)
    (local $t169 i32)
    (local $t170 i32)
    (local $t171 i32)
    (local $t172 i32)
    (local $t173 i32)
    (local $t174 i32)
    (local $t175 i32)
    (local $t176 i32)
    (local $t177 i32)
    (local $t178 i32)
    (local $t179 i32)
    (local $t180 i32)
    (local $t181 i32)
    (local $t182 i32)
    (local $t183 i32)
    (local $t184 i32)
    (local $t185 i32)
    (local $t186 i32)
    (local $t187 i32)
    (local $t188 i32)
    (local $t189 i32)
    (local $t190 i32)
    (local $t191 i32)
    (local $t192 i32)
    (local $t193 i32)
    (local $t194 i32)
    (local $t195 i32)
    (local $t196 i32)
    (local $t197 i32)
    (local $t198 i32)
    (local $t199 i32)
    (local $t200 i32)
    (local $t201 i32)
    (local $t202 i32)
    (local $t203 i32)
    (local $t204 i32)
    (local $t205 i32)
    (local $t206 i32)
    (local $t207 i32)
    (local $t208 i32)
    (local $t209 i32)
    (local $t210 i32)
    (local $t211 i32)
    (local $t212 i32)
    (local $t213 i32)
    (local $t214 i32)
    (local $t215 i32)
    (local $t216 i32)
    (local $t217 i32)
    (local $t218 i32)
    (local $t219 i32)
    (local $t220 i32)
    (local $t221 i32)
    (local $t222 i32)
    (local $t223 i32)
    (local $t224 i32)
    (local $t225 i32)
    (local $t226 i32)
    (local $t227 i32)
    (local $t228 i32)
    (local $t229 i32)
    (local $t230 i32)
    (local $t231 i32)
    (local $t232 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_11
      (block $__case_10
      (block $__case_9
      (block $__case_8
      (block $__case_7
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:305
    (global.set $__line (i32.const 305))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 0:306
    (global.set $__line (i32.const 306))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $P) (i32.const 5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush t4 (pre-stack-up)
    ;; line 0:307
    (global.set $__line (i32.const 307))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:308
    (global.set $__line (i32.const 308))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:309
    (global.set $__line (i32.const 309))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (local.set $t12 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:310
    (global.set $__line (i32.const 310))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $P) (i32.const 14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush t13 (pre-stack-up)
    ;; line 0:311
    (global.set $__line (i32.const 311))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.const 202))
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (local.set $t215 (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (local.get $t215)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t215))
    ;; line 0:313
    (global.set $__line (i32.const 313))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.const 1500))
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (local.set $t215 (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (local.get $t215)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2))
      (local.get $t215))
    ;; line 0:314
    (global.set $__line (i32.const 314))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.const 1500))
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (local.set $t215 (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (local.get $t215)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2))
      (local.get $t215))
    ;; line 0:315
    (global.set $__line (i32.const 315))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.const 201))
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (local.set $t215 (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (local.get $t215)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t215))
    ;; line 0:316
    (global.set $__line (i32.const 316))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.const 201))
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (local.set $t215 (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (local.get $t215)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2))
      (local.get $t215))
    ;; line 0:317
    (global.set $__line (i32.const 317))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.const 201))
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (local.set $t215 (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (local.get $t215)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2))
      (local.get $t215))
    ;; line 0:318
    (global.set $__line (i32.const 318))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.const 1800))
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (local.set $t215 (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (local.get $t215)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2))
      (local.get $t215))
    ;; line 0:321
    (global.set $__line (i32.const 321))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t215 (i32.const 20260524))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2))
      (local.get $t215))
    ;; line 0:323
    (global.set $__line (i32.const 323))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 25))) ;; LSTR
    (local.set $t219 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t220 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t220)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t220)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:324
    (global.set $__line (i32.const 324))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $TB) (i32.const 2))) ;; LF L21
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t218)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t218)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:325
    (global.set $__line (i32.const 325))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 28))) ;; LSTR
    (local.set $t219 (i32.const 200))
    (local.set $t220 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t221 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 880)) (local.get $t220))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t221)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t221)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:326
    (global.set $__line (i32.const 326))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 34))) ;; LSTR
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:328
    (global.set $__line (i32.const 328))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (local.get $t4)) ;; LP promoted P!4
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 436))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:329
    (global.set $__line (i32.const 329))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t215 (i32.const 1))
    (local.set $t216 (local.get $t4)) ;; LP promoted P!4
    (local.set $t215 (i32.add (local.get $t215) (local.get $t216)))
    (local.set $t215 (i32.load (i32.shl (local.get $t215) (i32.const 2))))
    (local.set $t8 (local.get $t215)) ;; SP promoted P!8
    (local.set $t218 (local.get $t3)) ;; LP promoted P!3
    (local.set $t219 (i32.add (global.get $TB) (i32.const 6))) ;; LF L49
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:330
    (global.set $__line (i32.const 330))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (local.get $t4)) ;; LP promoted P!4
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 436))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:331
    (global.set $__line (i32.const 331))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t215 (i32.const 1))
    (local.set $t216 (local.get $t4)) ;; LP promoted P!4
    (local.set $t215 (i32.add (local.get $t215) (local.get $t216)))
    (local.set $t215 (i32.load (i32.shl (local.get $t215) (i32.const 2))))
    (local.set $t9 (local.get $t215)) ;; SP promoted P!9
    (local.set $t215 (local.get $t9)) ;; LP promoted P!9
    (local.set $t216 (local.get $t8)) ;; LP promoted P!8
    (local.set $t215 (i32.sub (local.get $t215) (local.get $t216)))
    (local.set $t10 (local.get $t215)) ;; SP promoted P!10
    ;; line 0:332
    (global.set $__line (i32.const 332))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 40))) ;; LSTR
    (local.set $t219 (local.get $t10)) ;; LP promoted P!10
    (local.set $t220 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t220)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t220)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:333
    (global.set $__line (i32.const 333))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 44))) ;; LSTR
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218)) ;; flush t218 (pre-stack-up)
    (local.set $t222 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t223 (i32.const 200))
    (local.set $t224 (i32.add (global.get $TB) (i32.const 9))) ;; LF L104
    (i32.store (i32.add (local.get $Pb) (i32.const 888)) (local.get $t222))
    (i32.store (i32.add (local.get $Pb) (i32.const 892)) (local.get $t223))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 880)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 884)) (local.get $t224)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 219)))
    (local.set $t219 (call_indirect $ftable (type $bcpl_fn) (local.get $t224)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219)) ;; flush FNAP result
    (local.set $t220 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t220)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t220)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:334
    (global.set $__line (i32.const 334))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 48))) ;; LSTR
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218)) ;; flush t218 (pre-stack-up)
    (local.set $t222 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t223 (i32.const 200))
    (local.set $t224 (i32.add (global.get $TB) (i32.const 10))) ;; LF L108
    (i32.store (i32.add (local.get $Pb) (i32.const 888)) (local.get $t222))
    (i32.store (i32.add (local.get $Pb) (i32.const 892)) (local.get $t223))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 880)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 884)) (local.get $t224)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 219)))
    (local.set $t219 (call_indirect $ftable (type $bcpl_fn) (local.get $t224)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219)) ;; flush FNAP result
    (local.set $t220 (i32.const 200))
    (local.set $t221 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 880)) (local.get $t220))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t221)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t221)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:335
    (global.set $__line (i32.const 335))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 53))) ;; LSTR
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:337
    (global.set $__line (i32.const 337))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (local.get $t4)) ;; LP promoted P!4
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 436))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:338
    (global.set $__line (i32.const 338))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t215 (i32.const 1))
    (local.set $t216 (local.get $t4)) ;; LP promoted P!4
    (local.set $t215 (i32.add (local.get $t215) (local.get $t216)))
    (local.set $t215 (i32.load (i32.shl (local.get $t215) (i32.const 2))))
    (local.set $t8 (local.get $t215)) ;; SP promoted P!8
    (local.set $t218 (local.get $t3)) ;; LP promoted P!3
    (local.set $t219 (i32.add (global.get $TB) (i32.const 7))) ;; LF L57
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:339
    (global.set $__line (i32.const 339))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (local.get $t4)) ;; LP promoted P!4
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 436))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:340
    (global.set $__line (i32.const 340))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t215 (i32.const 1))
    (local.set $t216 (local.get $t4)) ;; LP promoted P!4
    (local.set $t215 (i32.add (local.get $t215) (local.get $t216)))
    (local.set $t215 (i32.load (i32.shl (local.get $t215) (i32.const 2))))
    (local.set $t9 (local.get $t215)) ;; SP promoted P!9
    (local.set $t215 (local.get $t9)) ;; LP promoted P!9
    (local.set $t216 (local.get $t8)) ;; LP promoted P!8
    (local.set $t215 (i32.sub (local.get $t215) (local.get $t216)))
    (local.set $t11 (local.get $t215)) ;; SP promoted P!11
    ;; line 0:341
    (global.set $__line (i32.const 341))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 40))) ;; LSTR
    (local.set $t219 (local.get $t11)) ;; LP promoted P!11
    (local.set $t220 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t220)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t220)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:342
    (global.set $__line (i32.const 342))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 44))) ;; LSTR
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218)) ;; flush t218 (pre-stack-up)
    (local.set $t222 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t223 (i32.const 200))
    (local.set $t224 (i32.add (global.get $TB) (i32.const 9))) ;; LF L104
    (i32.store (i32.add (local.get $Pb) (i32.const 888)) (local.get $t222))
    (i32.store (i32.add (local.get $Pb) (i32.const 892)) (local.get $t223))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 880)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 884)) (local.get $t224)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 219)))
    (local.set $t219 (call_indirect $ftable (type $bcpl_fn) (local.get $t224)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219)) ;; flush FNAP result
    (local.set $t220 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t220)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t220)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:343
    (global.set $__line (i32.const 343))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 48))) ;; LSTR
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218)) ;; flush t218 (pre-stack-up)
    (local.set $t222 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t223 (i32.const 200))
    (local.set $t224 (i32.add (global.get $TB) (i32.const 10))) ;; LF L108
    (i32.store (i32.add (local.get $Pb) (i32.const 888)) (local.get $t222))
    (i32.store (i32.add (local.get $Pb) (i32.const 892)) (local.get $t223))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 880)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 884)) (local.get $t224)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 219)))
    (local.set $t219 (call_indirect $ftable (type $bcpl_fn) (local.get $t224)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219)) ;; flush FNAP result
    (local.set $t220 (i32.const 200))
    (local.set $t221 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 880)) (local.get $t220))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t221)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t221)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:344
    (global.set $__line (i32.const 344))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t215 (i32.const 0))
    (local.set $t216 (i32.const 199))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (local.get $t215)) ;; STORE slot 215
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (local.get $t216)) ;; STORE slot 216
    (local.set $t217 (local.get $t215)) ;; LP promoted P!215
    (local.set $t218 (local.get $t216)) ;; LP promoted P!216
    (if (i32.gt_s (local.get $t217) (local.get $t218)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L113
    ;; line 0:347
    (global.set $__line (i32.const 347))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t217 (local.get $t215)) ;; LP promoted P!215
    (local.set $t218 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t217 (i32.add (local.get $t217) (local.get $t218)))
    (local.set $t217 (i32.load (i32.shl (local.get $t217) (i32.const 2))))
    (local.set $t218 (local.get $t215)) ;; LP promoted P!215
    (local.set $t219 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t218 (i32.add (local.get $t218) (local.get $t219)))
    (local.set $t218 (i32.load (i32.shl (local.get $t218) (i32.const 2))))
    (if (i32.eq  (local.get $t217) (local.get $t218)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:348
    (global.set $__line (i32.const 348))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t217 (i32.const 1))
    (local.set $t218 (local.get $t12)) ;; LP promoted P!12
    (local.set $t217 (i32.add (local.get $t217) (local.get $t218)))
    (local.set $t12 (local.get $t217)) ;; SP promoted P!12
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L115
    (local.set $t217 (local.get $t215)) ;; LP promoted P!215
    (local.set $t218 (i32.const 1))
    (local.set $t217 (i32.add (local.get $t217) (local.get $t218)))
    (local.set $t215 (local.get $t217)) ;; SP promoted P!215
    (local.set $t217 (local.get $t215)) ;; LP promoted P!215
    (local.set $t218 (local.get $t216)) ;; LP promoted P!216
    (if (i32.le_s (local.get $t217) (local.get $t218)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L114
    (local.set $t215 (i32.const 0))
    (local.set $t216 (local.get $t12)) ;; LP promoted P!12
    (if (i32.ne  (local.get $t215) (local.get $t216)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:349
    (global.set $__line (i32.const 349))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 60))) ;; LSTR
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 5)) (br $__dispatch) ;; JUMP L118
      ) ;; close $__case_4 — LAB L116
    ;; line 0:350
    (global.set $__line (i32.const 350))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    (local.set $t219 (local.get $t12)) ;; LP promoted P!12
    (local.set $t220 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t220)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t220)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L118
    ;; line 0:351
    (global.set $__line (i32.const 351))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 82))) ;; LSTR
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:353
    (global.set $__line (i32.const 353))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 93))) ;; LSTR
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:354
    (global.set $__line (i32.const 354))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 108))) ;; LSTR
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:355
    (global.set $__line (i32.const 355))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 125))) ;; LSTR
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:356
    (global.set $__line (i32.const 356))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 141))) ;; LSTR
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:357
    (global.set $__line (i32.const 357))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.add (global.get $SB) (i32.const 157))) ;; LSTR
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:358
    (global.set $__line (i32.const 358))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t215 (local.get $t3)) ;; LP promoted P!3
    (local.set $t216 (i32.const 0))
    (local.set $t217 (local.get $t13)) ;; LP promoted P!13
    (local.set $t216 (i32.add (local.get $t216) (local.get $t217)))
    (i32.store (i32.shl (local.get $t216) (i32.const 2)) (local.get $t215))
    ;; line 0:364
    (global.set $__line (i32.const 364))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (local.get $t13)) ;; LP promoted P!13
    (local.set $t219 (i32.const 1))
    (local.set $t220 (i32.add (global.get $SB) (i32.const 175))) ;; LSTR
    (local.set $t221 (i32.add (global.get $TB) (i32.const 8))) ;; LF L69
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 880)) (local.get $t220))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t221)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t221)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:365
    (global.set $__line (i32.const 365))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t215 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (local.get $t215)) ;; STORE slot 215
    ;; line 0:367
    (global.set $__line (i32.const 367))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t216 (local.get $t3)) ;; LP promoted P!3
    (local.set $t217 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t216 (i32.add (local.get $t216) (local.get $t217)))
    (local.set $t216 (i32.load (i32.shl (local.get $t216) (i32.const 2))))
    (local.set $t217 (i32.const 1))
    (local.set $t218 (local.get $t3)) ;; LP promoted P!3
    (local.set $t217 (i32.add (local.get $t217) (local.get $t218)))
    (local.set $t218 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t217 (i32.add (local.get $t217) (local.get $t218)))
    (local.set $t217 (i32.load (i32.shl (local.get $t217) (i32.const 2))))
    (local.set $t218 (i32.const 1))
    (local.set $t217 (i32.sub (local.get $t217) (local.get $t218)))
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (local.get $t216)) ;; STORE slot 216
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t217)) ;; STORE slot 217
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L120
      ) ;; close $__case_6 — LAB L119
    ;; line 0:368
    (global.set $__line (i32.const 368))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (local.get $t216)) ;; LP promoted P!216
    (local.set $t219 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t218 (i32.add (local.get $t218) (local.get $t219)))
    (local.set $t218 (i32.load (i32.shl (local.get $t218) (i32.const 2))))
    (local.set $t219 (local.get $t215)) ;; LP promoted P!215
    (local.set $t220 (local.get $t13)) ;; LP promoted P!13
    (local.set $t219 (i32.add (local.get $t219) (local.get $t220)))
    (i32.store (i32.shl (local.get $t219) (i32.const 2)) (local.get $t218))
    ;; line 0:369
    (global.set $__line (i32.const 369))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.const 1))
    (local.set $t219 (local.get $t215)) ;; LP promoted P!215
    (local.set $t218 (i32.add (local.get $t218) (local.get $t219)))
    (local.set $t215 (local.get $t218)) ;; SP promoted P!215
    (local.set $t218 (local.get $t215)) ;; LP promoted P!215
    (local.set $t219 (i32.const 200))
    (if (i32.ge_s (local.get $t218) (local.get $t219)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t218 (local.get $t216)) ;; LP promoted P!216
    (local.set $t219 (i32.const 1))
    (local.set $t218 (i32.add (local.get $t218) (local.get $t219)))
    (local.set $t216 (local.get $t218)) ;; SP promoted P!216
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L120
    (local.set $t218 (local.get $t216)) ;; LP promoted P!216
    (local.set $t219 (local.get $t217)) ;; LP promoted P!217
    (if (i32.le_s (local.get $t218) (local.get $t219)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L121
    ;; line 0:370
    (global.set $__line (i32.const 370))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t219 (local.get $t13)) ;; LP promoted P!13
    (local.set $t220 (local.get $t215)) ;; LP promoted P!215
    (local.set $t221 (i32.add (global.get $SB) (i32.const 182))) ;; LSTR
    (local.set $t222 (i32.add (global.get $TB) (i32.const 8))) ;; LF L69
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t219))
    (i32.store (i32.add (local.get $Pb) (i32.const 880)) (local.get $t220))
    (i32.store (i32.add (local.get $Pb) (i32.const 884)) (local.get $t221))
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t222)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 216)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t222)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:372
    (global.set $__line (i32.const 372))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t215 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (local.get $t215)) ;; STORE slot 215
    ;; line 0:376
    (global.set $__line (i32.const 376))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t216 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (local.get $t216)) ;; STORE slot 216
    ;; line 0:377
    (global.set $__line (i32.const 377))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t217 (i32.const 0))
    (local.set $t218 (i32.const 199))
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t217)) ;; STORE slot 217
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218)) ;; STORE slot 218
    (local.set $t219 (local.get $t217)) ;; LP promoted P!217
    (local.set $t220 (local.get $t218)) ;; LP promoted P!218
    (if (i32.gt_s (local.get $t219) (local.get $t220)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L122
    ;; line 0:380
    (global.set $__line (i32.const 380))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t219 (local.get $t215)) ;; LP promoted P!215
    (local.set $t220 (i32.const 32))
    (if (i32.ge_s (local.get $t219) (local.get $t220)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:381
    (global.set $__line (i32.const 381))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t219 (local.get $t217)) ;; LP promoted P!217
    (local.set $t220 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t219 (i32.add (local.get $t219) (local.get $t220)))
    (local.set $t219 (i32.load (i32.shl (local.get $t219) (i32.const 2))))
    (local.set $t220 (i32.const 2147483647))
    (if (i32.eq  (local.get $t219) (local.get $t220)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; line 0:382
    (global.set $__line (i32.const 382))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t219 (local.get $t217)) ;; LP promoted P!217
    (local.set $t220 (local.get $t215)) ;; LP promoted P!215
    (local.set $t221 (local.get $t13)) ;; LP promoted P!13
    (local.set $t220 (i32.add (local.get $t220) (local.get $t221)))
    (i32.store (i32.shl (local.get $t220) (i32.const 2)) (local.get $t219))
    ;; line 0:383
    (global.set $__line (i32.const 383))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t219 (i32.const 1))
    (local.set $t220 (local.get $t215)) ;; LP promoted P!215
    (local.set $t219 (i32.add (local.get $t219) (local.get $t220)))
    (local.set $t215 (local.get $t219)) ;; SP promoted P!215
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L124
    (local.set $t219 (local.get $t217)) ;; LP promoted P!217
    (local.set $t220 (i32.const 1))
    (local.set $t219 (i32.add (local.get $t219) (local.get $t220)))
    (local.set $t217 (local.get $t219)) ;; SP promoted P!217
    (local.set $t219 (local.get $t217)) ;; LP promoted P!217
    (local.set $t220 (local.get $t218)) ;; LP promoted P!218
    (if (i32.le_s (local.get $t219) (local.get $t220)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L123
    (local.set $t220 (local.get $t13)) ;; LP promoted P!13
    (local.set $t221 (local.get $t215)) ;; LP promoted P!215
    (local.set $t222 (i32.add (global.get $SB) (i32.const 189))) ;; LSTR
    (local.set $t223 (i32.add (global.get $TB) (i32.const 8))) ;; LF L69
    (i32.store (i32.add (local.get $Pb) (i32.const 880)) (local.get $t220))
    (i32.store (i32.add (local.get $Pb) (i32.const 884)) (local.get $t221))
    (i32.store (i32.add (local.get $Pb) (i32.const 888)) (local.get $t222))
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 876)) (local.get $t223)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 217)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t223)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:385
    (global.set $__line (i32.const 385))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:388
    (global.set $__line (i32.const 388))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t218 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t218 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:389
    (global.set $__line (i32.const 389))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t218 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t218 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t218 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L37
    (local.set $t219 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 872)) (local.get $t218))
    (i32.store (i32.add (local.get $Pb) (i32.const 860)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 864)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 868)) (local.get $t219)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 215)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t219)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t215 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t215))
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
  ) ;; end func $fn_L112

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L19) (ref.func $fn_L20) (ref.func $fn_L21) (ref.func $fn_L39) (ref.func $fn_L40) (ref.func $fn_L44) (ref.func $fn_L49) (ref.func $fn_L57) (ref.func $fn_L69) (ref.func $fn_L104) (ref.func $fn_L108) (ref.func $fn_L112))

  ;; static data — passive segment (196 words)
  (data $stat "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\37\25\73\20\7C\53\7C\3D\25\6E\20\20\76\69\73\69\74\65\64\20\57\3D\25\6E\20\20\70\69\76\6F\74\73\3D\25\6E\20\20\28\72\65\64\75\63\74\69\6F\6E\20\25\6E\2F\31\30\30\29\0A\0A\73\65\65\64\20\3D\20\25\6E\0A\00\17\67\72\61\70\68\3A\20\6E\20\3D\20\25\6E\2C\20\6D\20\3D\20\25\6E\0A\0A\15\62\61\73\65\6C\69\6E\65\20\31\3A\20\44\69\6A\6B\73\74\72\61\0A\00\00\0F\20\20\74\69\6D\65\3A\20\20\25\6E\20\6D\73\0A\0C\20\20\73\75\6D\3A\20\20\20\25\6E\0A\00\00\00\12\20\20\72\65\61\63\68\3A\20\25\6E\20\2F\20\25\6E\0A\0A\00\19\62\61\73\65\6C\69\6E\65\20\32\3A\20\42\65\6C\6C\6D\61\6E\2D\46\6F\72\64\0A\00\00\3B\44\69\6A\6B\73\74\72\61\20\61\6E\64\20\42\65\6C\6C\6D\61\6E\2D\46\6F\72\64\20\64\69\73\74\61\6E\63\65\73\20\4D\41\54\43\48\20\6F\6E\20\65\76\65\72\79\20\76\65\72\74\65\78\0A\0A\19\4D\49\53\4D\41\54\43\48\20\6F\6E\20\25\6E\20\76\65\72\74\69\63\65\73\0A\0A\00\00\29\70\61\70\65\72\20\69\6E\73\69\67\68\74\20\28\41\6C\67\6F\72\69\74\68\6D\20\31\20\2F\20\4C\65\6D\6D\61\20\33\2E\32\29\3A\0A\00\00\3A\20\20\2D\2D\20\6B\20\42\65\6C\6C\6D\61\6E\2D\46\6F\72\64\20\73\74\65\70\73\20\66\72\6F\6D\20\53\2C\20\62\75\69\6C\64\20\66\6F\72\65\73\74\20\6F\66\20\72\65\6C\61\78\65\64\0A\00\41\20\20\20\20\20\65\64\67\65\73\2C\20\6B\65\65\70\20\6F\6E\6C\79\20\53\20\76\65\72\74\69\63\65\73\20\77\68\6F\73\65\20\73\75\62\74\72\65\65\20\68\61\73\20\3E\3D\20\6B\20\65\6E\74\72\69\65\73\2E\0A\00\00\3C\20\20\20\20\20\54\68\65\20\6B\65\70\74\20\73\65\74\20\50\20\73\61\74\69\73\66\69\65\73\20\7C\50\7C\20\3C\3D\20\7C\57\7C\2F\6B\20\2D\2D\20\7E\31\2F\6B\20\66\72\6F\6E\74\69\65\72\0A\00\00\00\3E\20\20\20\20\20\73\68\72\69\6E\6B\61\67\65\2E\20\43\6F\6D\70\6F\75\6E\64\20\69\74\20\76\69\61\20\72\65\63\75\72\73\69\6F\6E\20\28\42\4D\53\53\50\20\41\6C\67\6F\72\69\74\68\6D\20\33\29\0A\00\44\20\20\20\20\20\61\63\72\6F\73\73\20\6C\6F\67\28\6E\29\2F\74\20\6C\65\76\65\6C\73\20\61\6E\64\20\44\69\6A\6B\73\74\72\61\27\73\20\73\6F\72\74\69\6E\67\20\62\61\72\72\69\65\72\20\62\72\65\61\6B\73\2E\0A\0A\00\00\00\1A\70\61\73\73\20\31\20\28\53\20\3D\20\7B\73\72\63\7D\29\3A\20\20\20\20\20\20\20\00\1A\70\61\73\73\20\32\20\28\53\20\3D\20\6F\75\74\2D\6E\65\69\67\68\29\3A\20\20\20\00\1A\70\61\73\73\20\33\20\28\33\32\20\63\6C\6F\73\65\73\74\29\3A\20\20\20\20\20\20\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 784))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 12))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 11))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 196))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 12))
)
 ;; end module
