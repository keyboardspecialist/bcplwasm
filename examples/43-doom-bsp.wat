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

  ;; SECTION: dbsp
  ;; BCPL fn lc (L34)
  (func $fn_L34 (export "fn_L34") (type $bcpl_fn)
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
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 65))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 90))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.const 32))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L35
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L34

  ;; BCPL fn cp_substr (L36)
  (func $fn_L36 (export "fn_L36") (type $bcpl_fn)
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
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 24)))) ;; init promoted P!6
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:133
    (global.set $__line (i32.const 133))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:134
    (global.set $__line (i32.const 134))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t7)) ;; LP promoted P!7
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t10 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10)) (local.get $t8))
    ;; line 0:135
    (global.set $__line (i32.const 135))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L38
      ) ;; close $__case_1 — LAB L37
    ;; line 0:136
    (global.set $__line (i32.const 136))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t11 (local.get $t8)) ;; LP promoted P!8
    (local.set $t12 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (local.set $t11 (local.get $t6)) ;; LP promoted P!6
    (local.set $t12 (i32.const 1))
    (local.set $t13 (local.get $t8)) ;; LP promoted P!8
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store8 (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12)) (local.get $t10))
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t8 (local.get $t10)) ;; SP promoted P!8
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L38
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
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
  ) ;; end func $fn_L36

  ;; BCPL fn ends_with_wad (L39)
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:139
    (global.set $__line (i32.const 139))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:140
    (global.set $__line (i32.const 140))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.const 4))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:141
    (global.set $__line (i32.const 141))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L40
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t12 (i32.const 4))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 0))) ;; LF L34
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 46))
    (local.set $t7 (i32.sub (i32.const 0) (i32.eq (local.get $t7) (local.get $t8))))
    (local.set $t11 (local.get $t3)) ;; LP promoted P!3
    (local.set $t12 (local.get $t5)) ;; LP promoted P!5
    (local.set $t13 (i32.const 3))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L34
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.const 119))
    (local.set $t8 (i32.sub (i32.const 0) (i32.eq (local.get $t8) (local.get $t9))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t11 (local.get $t3)) ;; LP promoted P!3
    (local.set $t12 (local.get $t5)) ;; LP promoted P!5
    (local.set $t13 (i32.const 2))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L34
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.const 97))
    (local.set $t8 (i32.sub (i32.const 0) (i32.eq (local.get $t8) (local.get $t9))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t11 (local.get $t3)) ;; LP promoted P!3
    (local.set $t12 (local.get $t5)) ;; LP promoted P!5
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L34
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.const 100))
    (local.set $t8 (i32.sub (i32.const 0) (i32.eq (local.get $t8) (local.get $t9))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    ;; FNRN
    (local.set $__res (local.get $t7))
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
  ) ;; end func $fn_L39

  ;; BCPL fn try_load_wad (L41)
  (func $fn_L41 (export "fn_L41") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:148
    (global.set $__line (i32.const 148))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $P) (i32.const 5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush t4 (pre-stack-up)
    ;; line 0:149
    (global.set $__line (i32.const 149))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.add (global.get $P) (i32.const 71)))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70)) ;; flush t70 (pre-stack-up)
    ;; line 0:150
    (global.set $__line (i32.const 150))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t104 (i32.const 0))
    (local.set $t105 (i32.const 0))
    (local.set $t106 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 416)) (local.get $t104)) ;; STORE slot 104
    (i32.store (i32.add (local.get $Pb) (i32.const 420)) (local.get $t105)) ;; STORE slot 105
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t106)) ;; STORE slot 106
    ;; line 0:151
    (global.set $__line (i32.const 151))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.const 81))
    (local.set $t111 (local.get $t4)) ;; LP promoted P!4
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (local.get $Pb) (i32.const 444)) (local.get $t111))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (local.get $t112)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t112)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:152
    (global.set $__line (i32.const 152))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (local.get $t4)) ;; LP promoted P!4
    (local.set $t108 (i32.const 0))
    (local.set $t107 (i32.load8_u (i32.add (i32.shl (local.get $t107) (i32.const 2)) (local.get $t108))))
    (local.set $t104 (local.get $t107)) ;; SP promoted P!104
    ;; line 0:153
    (global.set $__line (i32.const 153))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 1))
    (local.set $t105 (local.get $t107)) ;; SP promoted P!105
    ;; line 0:154
    (global.set $__line (i32.const 154))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 1))
    (local.set $t106 (local.get $t107)) ;; SP promoted P!106
    (local.set $t107 (local.get $t106)) ;; LP promoted P!106
    (local.set $t108 (local.get $t104)) ;; LP promoted P!104
    (if (i32.gt_s (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L42
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L45
      ) ;; close $__case_2 — LAB L44
    (local.set $t107 (i32.const 1))
    (local.set $t108 (local.get $t106)) ;; LP promoted P!106
    (local.set $t107 (i32.add (local.get $t107) (local.get $t108)))
    (local.set $t106 (local.get $t107)) ;; SP promoted P!106
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L45
    (local.set $t107 (local.get $t106)) ;; LP promoted P!106
    (local.set $t108 (local.get $t104)) ;; LP promoted P!104
    (if (i32.gt_s (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t107 (local.get $t4)) ;; LP promoted P!4
    (local.set $t108 (local.get $t106)) ;; LP promoted P!106
    (local.set $t107 (i32.load8_u (i32.add (i32.shl (local.get $t107) (i32.const 2)) (local.get $t108))))
    (local.set $t108 (i32.const 44))
    (if (i32.ne  (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L46
    ;; line 0:156
    (global.set $__line (i32.const 156))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (local.get $t4)) ;; LP promoted P!4
    (local.set $t111 (local.get $t105)) ;; LP promoted P!105
    (local.set $t112 (local.get $t106)) ;; LP promoted P!106
    (local.set $t113 (i32.add (global.get $TB) (i32.const 2))) ;; LF L39
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (local.get $Pb) (i32.const 444)) (local.get $t111))
    (i32.store (i32.add (local.get $Pb) (i32.const 448)) (local.get $t112))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (local.get $t113)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (local.set $t107 (call_indirect $ftable (type $bcpl_fn) (local.get $t113)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (local.get $t107)) ;; flush FNAP result
    (if (i32.eqz (local.get $t107)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:157
    (global.set $__line (i32.const 157))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (local.get $t4)) ;; LP promoted P!4
    (local.set $t111 (local.get $t105)) ;; LP promoted P!105
    (local.set $t112 (local.get $t106)) ;; LP promoted P!106
    (local.set $t113 (local.get $t70)) ;; LP promoted P!70
    (local.set $t114 (i32.add (global.get $TB) (i32.const 1))) ;; LF L36
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (local.get $Pb) (i32.const 444)) (local.get $t111))
    (i32.store (i32.add (local.get $Pb) (i32.const 448)) (local.get $t112))
    (i32.store (i32.add (local.get $Pb) (i32.const 452)) (local.get $t113))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (local.get $t114)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t114)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:158
    (global.set $__line (i32.const 158))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.const 80))
    (local.set $t111 (local.get $t70)) ;; LP promoted P!70
    (local.set $t112 (local.get $t3)) ;; LP promoted P!3
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (local.get $Pb) (i32.const 444)) (local.get $t111))
    (i32.store (i32.add (local.get $Pb) (i32.const 448)) (local.get $t112))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (local.get $t113)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (local.set $t107 (call_indirect $ftable (type $bcpl_fn) (local.get $t113)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (local.get $t107)) ;; flush FNAP result
    (if (i32.eqz (local.get $t107)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:159
    (global.set $__line (i32.const 159))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.add (global.get $SB) (i32.const 24))) ;; LSTR
    (local.set $t111 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (local.get $t111)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t111)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:160
    (global.set $__line (i32.const 160))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (local.get $t105)) ;; LP promoted P!105
    (local.set $t108 (local.get $t106)) ;; LP promoted P!106
    (local.set $t109 (i32.const 1))
    (local.set $t108 (i32.sub (local.get $t108) (local.get $t109)))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (local.get $t107)) ;; STORE slot 107
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (local.get $t108)) ;; STORE slot 108
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L50
      ) ;; close $__case_5 — LAB L49
    ;; line 0:161
    (global.set $__line (i32.const 161))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t112 (local.get $t4)) ;; LP promoted P!4
    (local.set $t113 (local.get $t107)) ;; LP promoted P!107
    (local.set $t112 (i32.load8_u (i32.add (i32.shl (local.get $t112) (i32.const 2)) (local.get $t113))))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (local.get $Pb) (i32.const 448)) (local.get $t112))
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 444)) (local.get $t113)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 109)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t113)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t109 (local.get $t107)) ;; LP promoted P!107
    (local.set $t110 (i32.const 1))
    (local.set $t109 (i32.add (local.get $t109) (local.get $t110)))
    (local.set $t107 (local.get $t109)) ;; SP promoted P!107
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L50
    (local.set $t109 (local.get $t107)) ;; LP promoted P!107
    (local.set $t110 (local.get $t108)) ;; LP promoted P!108
    (if (i32.le_s (local.get $t109) (local.get $t110)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t110 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (local.get $t110)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t110)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:162
    (global.set $__line (i32.const 162))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t107))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L48
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L47
    ;; line 0:163
    (global.set $__line (i32.const 163))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 1))
    (local.set $t108 (local.get $t106)) ;; LP promoted P!106
    (local.set $t107 (i32.add (local.get $t107) (local.get $t108)))
    (local.set $t106 (local.get $t107)) ;; SP promoted P!106
    ;; line 0:166
    (global.set $__line (i32.const 166))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (local.get $t106)) ;; LP promoted P!106
    (local.set $t105 (local.get $t107)) ;; SP promoted P!105
    (local.set $t107 (local.get $t106)) ;; LP promoted P!106
    (local.set $t108 (local.get $t104)) ;; LP promoted P!104
    (if (i32.le_s (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L43
    ;; line 0:155
    (global.set $__line (i32.const 155))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t107))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L41

  ;; BCPL fn rd_u32_le (L51)
  (func $fn_L51 (export "fn_L51") (type $bcpl_fn)
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
    ;; line 0:171
    (global.set $__line (i32.const 171))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.const 0))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:172
    (global.set $__line (i32.const 172))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.const 1))
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:173
    (global.set $__line (i32.const 173))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.const 2))
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:174
    (global.set $__line (i32.const 174))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.const 3))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:175
    (global.set $__line (i32.const 175))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t10 (i32.const 8))
    (local.set $t9 (i32.shl (local.get $t9) (local.get $t10)))
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t9 (i32.or (local.get $t9) (local.get $t10)))
    (local.set $t10 (local.get $t7)) ;; LP promoted P!7
    (local.set $t11 (i32.const 16))
    (local.set $t10 (i32.shl (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.or (local.get $t9) (local.get $t10)))
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (i32.const 24))
    (local.set $t10 (i32.shl (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.or (local.get $t9) (local.get $t10)))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L51

  ;; BCPL fn rd_u16_le (L52)
  (func $fn_L52 (export "fn_L52") (type $bcpl_fn)
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
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.const 1))
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (local.set $t7 (i32.const 8))
    (local.set $t6 (i32.shl (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.or (local.get $t5) (local.get $t6)))
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
  ) ;; end func $fn_L52

  ;; BCPL fn rd_i16_le (L53)
  (func $fn_L53 (export "fn_L53") (type $bcpl_fn)
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
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:181
    (global.set $__line (i32.const 181))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:182
    (global.set $__line (i32.const 182))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.const 32768))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:183
    (global.set $__line (i32.const 183))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.const 65536))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (local.set $t5 (local.get $t6)) ;; SP promoted P!5
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L54
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
  ) ;; end func $fn_L53

  ;; BCPL fn lump_name_eq (L55)
  (func $fn_L55 (export "fn_L55") (type $bcpl_fn)
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
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
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
    ;; line 0:187
    (global.set $__line (i32.const 187))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.const 0))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:188
    (global.set $__line (i32.const 188))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.const 8))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:189
    (global.set $__line (i32.const 189))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L56
    (local.set $t7 (i32.const 0))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L58
      ) ;; close $__case_2 — LAB L57
    ;; line 0:190
    (global.set $__line (i32.const 190))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.const 8))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t11 (i32.const 1))
    (local.set $t12 (local.get $t7)) ;; LP promoted P!7
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (if (i32.eq  (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:191
    (global.set $__line (i32.const 191))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L59
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L58
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L60
    ;; line 0:192
    (global.set $__line (i32.const 192))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.const 8))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (local.set $t10 (i32.const 0))
    (if (i32.eq  (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:193
    (global.set $__line (i32.const 193))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L62
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L61
    (local.set $t7 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t7))
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
  ) ;; end func $fn_L55

  ;; BCPL fn is_map_marker (L63)
  (func $fn_L63 (export "fn_L63") (type $bcpl_fn)
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
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:197
    (global.set $__line (i32.const 197))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 8))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:198
    (global.set $__line (i32.const 198))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.const 0))
    (local.set $t8 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:199
    (global.set $__line (i32.const 199))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.const 1))
    (local.set $t9 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:200
    (global.set $__line (i32.const 200))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.const 2))
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:201
    (global.set $__line (i32.const 201))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.const 3))
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:202
    (global.set $__line (i32.const 202))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t11 (i32.const 4))
    (local.set $t12 (local.get $t5)) ;; LP promoted P!5
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:203
    (global.set $__line (i32.const 203))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 69))
    (local.set $t12 (local.get $t6)) ;; LP promoted P!6
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 77))
    (local.set $t12 (local.get $t8)) ;; LP promoted P!8
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:204
    (global.set $__line (i32.const 204))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L64
    ;; line 0:205
    (global.set $__line (i32.const 205))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 77))
    (local.set $t12 (local.get $t6)) ;; LP promoted P!6
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 65))
    (local.set $t12 (local.get $t7)) ;; LP promoted P!7
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 80))
    (local.set $t12 (local.get $t8)) ;; LP promoted P!8
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (local.get $t10)) ;; LP promoted P!10
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (local.get $t10)) ;; LP promoted P!10
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:206
    (global.set $__line (i32.const 206))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L65
    ;; line 0:207
    (global.set $__line (i32.const 207))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t11))
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
  ) ;; end func $fn_L63

  ;; BCPL fn pr_lump_name (L66)
  (func $fn_L66 (export "fn_L66") (type $bcpl_fn)
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
    ;; line 0:211
    (global.set $__line (i32.const 211))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L68
      ) ;; close $__case_1 — LAB L67
    ;; line 0:212
    (global.set $__line (i32.const 212))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.const 8))
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:213
    (global.set $__line (i32.const 213))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.eq  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:214
    (global.set $__line (i32.const 214))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t5 (local.get $t7)) ;; SP promoted P!5
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L68
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L69
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
  ) ;; end func $fn_L66

  ;; BCPL fn find_first_map (L70)
  (func $fn_L70 (export "fn_L70") (type $bcpl_fn)
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
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:218
    (global.set $__line (i32.const 218))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L72
      ) ;; close $__case_1 — LAB L71
    ;; line 0:219
    (global.set $__line (i32.const 219))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 16))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:220
    (global.set $__line (i32.const 220))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t3)) ;; LP promoted P!3
    (local.set $t13 (local.get $t8)) ;; LP promoted P!8
    (local.set $t14 (i32.add (global.get $TB) (i32.const 8))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:221
    (global.set $__line (i32.const 221))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L73
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L72
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t6))
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
  ) ;; end func $fn_L70

  ;; BCPL fn find_map_lump (L74)
  (func $fn_L74 (export "fn_L74") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 24)))) ;; init promoted P!6
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 28)))) ;; init promoted P!7
    (loop $__dispatch
      (block $__default
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:226
    (global.set $__line (i32.const 226))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 12))
    (local.set $t9 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:227
    (global.set $__line (i32.const 227))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t8)) ;; LP promoted P!8
    (local.set $t10 (local.get $t6)) ;; LP promoted P!6
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:228
    (global.set $__line (i32.const 228))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (local.get $t9)) ;; SP promoted P!8
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L75
    (local.set $t9 (i32.const 1))
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L77
      ) ;; close $__case_2 — LAB L76
    ;; line 0:229
    (global.set $__line (i32.const 229))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 16))
    (local.set $t12 (local.get $t9)) ;; LP promoted P!9
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:230
    (global.set $__line (i32.const 230))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (local.get $t3)) ;; LP promoted P!3
    (local.set $t16 (local.get $t11)) ;; LP promoted P!11
    (local.set $t17 (local.get $t7)) ;; LP promoted P!7
    (local.set $t18 (i32.add (global.get $TB) (i32.const 7))) ;; LF L55
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (if (i32.eqz (local.get $t12)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:231
    (global.set $__line (i32.const 231))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t9)) ;; LP promoted P!9
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L78
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t9 (local.get $t11)) ;; SP promoted P!9
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L77
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t9 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t8 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L74

  ;; BCPL fn fsin (L79)
  (func $fn_L79 (export "fn_L79") (type $bcpl_fn)
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
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:238
    (global.set $__line (i32.const 238))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:239
    (global.set $__line (i32.const 239))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1078530007))
    (local.set $t4 (local.get $t9)) ;; SP promoted P!4
    ;; line 0:240
    (global.set $__line (i32.const 240))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.const 1073741824))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t5 (local.get $t9)) ;; SP promoted P!5
    ;; line 0:241
    (global.set $__line (i32.const 241))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L81
      ) ;; close $__case_1 — LAB L80
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t3 (local.get $t9)) ;; SP promoted P!3
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L81
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t9 (i32.sub (i32.const 0) (f32.gt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:242
    (global.set $__line (i32.const 242))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L83
      ) ;; close $__case_3 — LAB L82
    (local.set $t9 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t3 (local.get $t9)) ;; SP promoted P!3
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L83
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.const 0))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.lt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:243
    (global.set $__line (i32.const 243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t6 (local.get $t9)) ;; SP promoted P!6
    ;; line 0:244
    (global.set $__line (i32.const 244))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    ;; line 0:245
    (global.set $__line (i32.const 245))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t8 (local.get $t9)) ;; SP promoted P!8
    (local.set $t9 (i32.const 0))
    (local.set $t10 (local.get $t6)) ;; LP promoted P!6
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1086324736))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    ;; line 0:246
    (global.set $__line (i32.const 246))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t8 (local.get $t9)) ;; SP promoted P!8
    (local.set $t9 (i32.const 0))
    (local.set $t10 (local.get $t6)) ;; LP promoted P!6
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1101004800))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    ;; line 0:247
    (global.set $__line (i32.const 247))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t8 (local.get $t9)) ;; SP promoted P!8
    (local.set $t9 (i32.const 0))
    (local.set $t10 (local.get $t6)) ;; LP promoted P!6
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1109917696))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    ;; line 0:248
    (global.set $__line (i32.const 248))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t8 (local.get $t9)) ;; SP promoted P!8
    (local.set $t9 (i32.const 0))
    (local.set $t10 (local.get $t6)) ;; LP promoted P!6
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1116733440))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    ;; line 0:249
    (global.set $__line (i32.const 249))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (local.set $t8 (local.get $t9)) ;; SP promoted P!8
    (local.set $t9 (local.get $t8)) ;; LP promoted P!8
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L79

  ;; BCPL fn fcos (L84)
  (func $fn_L84 (export "fn_L84") (type $bcpl_fn)
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
    (local.set $t7 (i32.const 1070141402))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t7)) (f32.reinterpret_i32 (local.get $t8)))))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 12))) ;; LF L79
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L84

  ;; BCPL fn buildtrig (L85)
  (func $fn_L85 (export "fn_L85") (type $bcpl_fn)
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
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:255
    (global.set $__line (i32.const 255))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:256
    (global.set $__line (i32.const 256))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:257
    (global.set $__line (i32.const 257))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1174405120))
    (local.set $t7 (local.get $t8)) ;; SP promoted P!7
    ;; line 0:258
    (global.set $__line (i32.const 258))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t3 (local.get $t8)) ;; SP promoted P!3
    ;; line 0:259
    (global.set $__line (i32.const 259))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1086918615))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t8 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (local.set $t4 (local.get $t8)) ;; SP promoted P!4
    ;; line 0:260
    (global.set $__line (i32.const 260))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 8191))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L87
      ) ;; close $__case_1 — LAB L86
    ;; line 0:261
    (global.set $__line (i32.const 261))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t3)) ;; LP promoted P!3
    (local.set $t14 (i32.add (global.get $TB) (i32.const 12))) ;; LF L79
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.const 1149239296))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t5 (local.get $t10)) ;; SP promoted P!5
    ;; line 0:262
    (global.set $__line (i32.const 262))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t3)) ;; LP promoted P!3
    (local.set $t14 (i32.add (global.get $TB) (i32.const 13))) ;; LF L84
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.const 1149239296))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t6 (local.get $t10)) ;; SP promoted P!6
    ;; line 0:263
    (global.set $__line (i32.const 263))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (local.get $t8)) ;; LP promoted P!8
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:264
    (global.set $__line (i32.const 264))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t6)) ;; LP promoted P!6
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (local.get $t8)) ;; LP promoted P!8
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:265
    (global.set $__line (i32.const 265))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t3 (local.get $t10)) ;; SP promoted P!3
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t8 (local.get $t10)) ;; SP promoted P!8
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L87
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
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
  ) ;; end func $fn_L85

  ;; BCPL fn sd_sector (L88)
  (func $fn_L88 (export "fn_L88") (type $bcpl_fn)
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
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 30))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 28))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L88

  ;; BCPL fn sec_floor (L89)
  (func $fn_L89 (export "fn_L89") (type $bcpl_fn)
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
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 0))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L89

  ;; BCPL fn sec_ceil (L90)
  (func $fn_L90 (export "fn_L90") (type $bcpl_fn)
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
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 2))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L90

  ;; BCPL fn sec_light (L91)
  (func $fn_L91 (export "fn_L91") (type $bcpl_fn)
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
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 20))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L91

  ;; BCPL fn point_on_side (L92)
  (func $fn_L92 (export "fn_L92") (type $bcpl_fn)
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
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:286
    (global.set $__line (i32.const 286))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 0))
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:287
    (global.set $__line (i32.const 287))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 2))
    (local.set $t12 (local.get $t5)) ;; LP promoted P!5
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:288
    (global.set $__line (i32.const 288))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 4))
    (local.set $t13 (local.get $t5)) ;; LP promoted P!5
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 0:289
    (global.set $__line (i32.const 289))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 6))
    (local.set $t14 (local.get $t5)) ;; LP promoted P!5
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 0:290
    (global.set $__line (i32.const 290))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t11 (local.get $t6)) ;; LP promoted P!6
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:291
    (global.set $__line (i32.const 291))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t12 (local.get $t7)) ;; LP promoted P!7
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:292
    (global.set $__line (i32.const 292))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t8)) ;; LP promoted P!8
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (local.get $t10)) ;; LP promoted P!10
    (local.set $t14 (local.get $t9)) ;; LP promoted P!9
    (local.set $t13 (i32.mul (local.get $t13) (local.get $t14)))
    (if (i32.ge_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:295
    (global.set $__line (i32.const 295))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L93
    (local.set $t12 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t12))
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
  ) ;; end func $fn_L92

  ;; BCPL fn point_in_subsector (L94)
  (func $fn_L94 (export "fn_L94") (type $bcpl_fn)
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
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:300
    (global.set $__line (i32.const 300))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:301
    (global.set $__line (i32.const 301))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L96
      ) ;; close $__case_1 — LAB L95
    (local.set $t6 (i32.const 28))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:303
    (global.set $__line (i32.const 303))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t12 (local.get $t6)) ;; LP promoted P!6
    (local.set $t13 (i32.add (global.get $TB) (i32.const 19))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:304
    (global.set $__line (i32.const 304))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:305
    (global.set $__line (i32.const 305))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 24))
    (local.set $t13 (local.get $t6)) ;; LP promoted P!6
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t5 (local.get $t8)) ;; SP promoted P!5
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L99
      ) ;; close $__case_2 — LAB L97
    ;; line 0:306
    (global.set $__line (i32.const 306))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 26))
    (local.set $t13 (local.get $t6)) ;; LP promoted P!6
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t5 (local.get $t8)) ;; SP promoted P!5
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L99
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L96
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.and (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 0))
    (if (i32.eq  (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:302
    (global.set $__line (i32.const 302))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const -32769))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.and (local.get $t6) (local.get $t7)))
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
  ) ;; end func $fn_L94

  ;; BCPL fn floor_at (L100)
  (func $fn_L100 (export "fn_L100") (type $bcpl_fn)
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
    ;; line 0:314
    (global.set $__line (i32.const 314))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.add (global.get $TB) (i32.const 20))) ;; LF L94
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:315
    (global.set $__line (i32.const 315))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 4))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:316
    (global.set $__line (i32.const 316))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 2))
    (local.set $t12 (local.get $t6)) ;; LP promoted P!6
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:317
    (global.set $__line (i32.const 317))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 12))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:318
    (global.set $__line (i32.const 318))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 6))
    (local.set $t14 (local.get $t8)) ;; LP promoted P!8
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 0:319
    (global.set $__line (i32.const 319))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t14 (i32.const 8))
    (local.set $t15 (local.get $t8)) ;; LP promoted P!8
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; line 0:320
    (global.set $__line (i32.const 320))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 14))
    (local.set $t12 (local.get $t9)) ;; LP promoted P!9
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:321
    (global.set $__line (i32.const 321))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (local.get $t10)) ;; LP promoted P!10
    (if (i32.ne  (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 10))
    (local.set $t17 (local.get $t11)) ;; LP promoted P!11
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; RES L101: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L102
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 12))
    (local.set $t17 (local.get $t11)) ;; LP promoted P!11
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; RES L101: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L101
    ;; RSTACK 12
    (local.set $t12 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:322
    (global.set $__line (i32.const 322))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t12)) ;; LP promoted P!12
    (local.set $t14 (i32.const 0))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:324
    (global.set $__line (i32.const 324))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L103
    (local.set $t19 (local.get $t12)) ;; LP promoted P!12
    (local.set $t20 (i32.add (global.get $TB) (i32.const 15))) ;; LF L88
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (local.set $t17 (i32.add (global.get $TB) (i32.const 16))) ;; LF L89
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t13))
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
  ) ;; end func $fn_L100

  ;; BCPL fn find_player_start (L104)
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
    (local $t24 i32)
    (local $t25 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:330
    (global.set $__line (i32.const 330))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.const 10))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:331
    (global.set $__line (i32.const 331))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L106
      ) ;; close $__case_1 — LAB L105
    ;; line 0:332
    (global.set $__line (i32.const 332))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 10))
    (local.set $t10 (local.get $t7)) ;; LP promoted P!7
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:333
    (global.set $__line (i32.const 333))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t3)) ;; LP promoted P!3
    (local.set $t14 (i32.const 6))
    (local.set $t15 (local.get $t9)) ;; LP promoted P!9
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; line 0:334
    (global.set $__line (i32.const 334))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:335
    (global.set $__line (i32.const 335))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (local.get $t3)) ;; LP promoted P!3
    (local.set $t15 (i32.const 4))
    (local.set $t16 (local.get $t9)) ;; LP promoted P!9
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    ;; line 0:336
    (global.set $__line (i32.const 336))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (local.get $t3)) ;; LP promoted P!3
    (local.set $t16 (i32.const 0))
    (local.set $t17 (local.get $t9)) ;; LP promoted P!9
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2))
      (local.get $t12))
    ;; line 0:337
    (global.set $__line (i32.const 337))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (local.get $t3)) ;; LP promoted P!3
    (local.set $t16 (i32.const 2))
    (local.set $t17 (local.get $t9)) ;; LP promoted P!9
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2))
      (local.get $t12))
    ;; line 0:338
    (global.set $__line (i32.const 338))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 8192))
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 360))
    (local.set $t12 (i32.div_s (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 8191))
    (local.set $t12 (i32.and (local.get $t12) (local.get $t13)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2))
      (local.get $t12))
    ;; line 0:339
    (global.set $__line (i32.const 339))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L107
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L106
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:340
    (global.set $__line (i32.const 340))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
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
  ) ;; end func $fn_L104

  ;; BCPL fn poll_events (L108)
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
    (local $t24 i32)
    (local $t25 i32)
    (local $t26 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:346
    (global.set $__line (i32.const 346))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    ;; line 0:347
    (global.set $__line (i32.const 347))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L110
      ) ;; close $__case_1 — LAB L109
    (local.set $t12 (i32.const 0))
    (local.set $t13 (local.get $t3)) ;; LP promoted P!3
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:349
    (global.set $__line (i32.const 349))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 2))
    (local.set $t14 (local.get $t3)) ;; LP promoted P!3
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:350
    (global.set $__line (i32.const 350))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 2))
    (local.set $t15 (local.get $t12)) ;; LP promoted P!12
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:351
    (global.set $__line (i32.const 351))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (local.get $t13)) ;; LP promoted P!13
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t14 (local.get $t13)) ;; LP promoted P!13
    (local.set $t15 (i32.const 512))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:352
    (global.set $__line (i32.const 352))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 1))
    (local.set $t15 (local.get $t13)) ;; LP promoted P!13
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L114
    (local.set $t14 (i32.const 27))
    (local.set $t15 (local.get $t13)) ;; LP promoted P!13
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:353
    (global.set $__line (i32.const 353))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L113
      ) ;; close $__case_3 — LAB L115
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L113
      ) ;; close $__case_4 — LAB L111
    (local.set $t14 (i32.const 3))
    (local.set $t15 (local.get $t12)) ;; LP promoted P!12
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:355
    (global.set $__line (i32.const 355))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (local.get $t13)) ;; LP promoted P!13
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t14 (local.get $t13)) ;; LP promoted P!13
    (local.set $t15 (i32.const 512))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:356
    (global.set $__line (i32.const 356))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (local.get $t13)) ;; LP promoted P!13
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L117
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L116
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L113
    (local.set $t14 (i32.const 12))
    (local.set $t15 (local.get $t12)) ;; LP promoted P!12
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:357
    (global.set $__line (i32.const 357))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L118
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L110
    (local.set $t15 (i32.const 66))
    (local.set $t16 (i32.const 20))
    (local.set $t17 (local.get $t3)) ;; LP promoted P!3
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (if (local.get $t12) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
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
  ) ;; end func $fn_L108

  ;; BCPL fn key_down (L119)
  (func $fn_L119 (export "fn_L119") (type $bcpl_fn)
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
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 512))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L120
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L119

  ;; BCPL fn cam_x (L121)
  (func $fn_L121 (export "fn_L121") (type $bcpl_fn)
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
    ;; line 0:365
    (global.set $__line (i32.const 365))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:366
    (global.set $__line (i32.const 366))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:367
    (global.set $__line (i32.const 367))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 8191))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 8191))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 1024))
    (local.set $t7 (i32.div_s (local.get $t7) (local.get $t8)))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L121

  ;; BCPL fn cam_y (L122)
  (func $fn_L122 (export "fn_L122") (type $bcpl_fn)
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
    ;; line 0:371
    (global.set $__line (i32.const 371))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:372
    (global.set $__line (i32.const 372))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:373
    (global.set $__line (i32.const 373))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 8191))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 8191))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 1024))
    (local.set $t7 (i32.div_s (local.get $t7) (local.get $t8)))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L122

  ;; BCPL fn front_facing (L123)
  (func $fn_L123 (export "fn_L123") (type $bcpl_fn)
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
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 24)))) ;; init promoted P!6
    ;; line 0:377
    (global.set $__line (i32.const 377))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:378
    (global.set $__line (i32.const 378))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:379
    (global.set $__line (i32.const 379))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.mul (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.const 0))
    (local.set $t9 (i32.sub (i32.const 0) (i32.gt_s (local.get $t9) (local.get $t10))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L123

  ;; BCPL fn light_to_col (L124)
  (func $fn_L124 (export "fn_L124") (type $bcpl_fn)
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
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:383
    (global.set $__line (i32.const 383))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:384
    (global.set $__line (i32.const 384))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.const 40))
    (if (i32.ge_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:385
    (global.set $__line (i32.const 385))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 40))
    (local.set $t4 (local.get $t5)) ;; SP promoted P!4
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L125
    (local.set $t5 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.const 255))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:386
    (global.set $__line (i32.const 386))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 255))
    (local.set $t4 (local.get $t5)) ;; SP promoted P!4
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L126
    (local.set $t8 (i32.const 66))
    (local.set $t9 (i32.const 26))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t12 (local.get $t4)) ;; LP promoted P!4
    (local.set $t13 (local.get $t4)) ;; LP promoted P!4
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L124

  ;; BCPL fn reset_clip (L127)
  (func $fn_L127 (export "fn_L127") (type $bcpl_fn)
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
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:392
    (global.set $__line (i32.const 392))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.gt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L128
    ;; line 0:393
    (global.set $__line (i32.const 393))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    ;; line 0:394
    (global.set $__line (i32.const 394))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 719))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t3 (local.get $t5)) ;; SP promoted P!3
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L129
    ;; line 0:395
    (global.set $__line (i32.const 395))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 960))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2))
      (local.get $t3))
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
  ) ;; end func $fn_L127

  ;; BCPL fn vline_clipped (L130)
  (func $fn_L130 (export "fn_L130") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 24)))) ;; init promoted P!6
    (loop $__dispatch
      (block $__default
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:403
    (global.set $__line (i32.const 403))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:404
    (global.set $__line (i32.const 404))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:405
    (global.set $__line (i32.const 405))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:406
    (global.set $__line (i32.const 406))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t4 (local.get $t10)) ;; SP promoted P!4
    (local.set $t10 (local.get $t9)) ;; LP promoted P!9
    (local.set $t5 (local.get $t10)) ;; SP promoted P!5
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L131
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (local.get $t7)) ;; LP promoted P!7
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:407
    (global.set $__line (i32.const 407))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t4 (local.get $t9)) ;; SP promoted P!4
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L132
    (local.set $t9 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:408
    (global.set $__line (i32.const 408))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t8)) ;; LP promoted P!8
    (local.set $t5 (local.get $t9)) ;; SP promoted P!5
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L133
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:409
    (global.set $__line (i32.const 409))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 66))
    (local.set $t13 (i32.const 29))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t15 (local.get $t3)) ;; LP promoted P!3
    (local.set $t16 (local.get $t4)) ;; LP promoted P!4
    (local.set $t17 (local.get $t5)) ;; LP promoted P!5
    (local.set $t18 (local.get $t6)) ;; LP promoted P!6
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_4 — LAB L134
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
  ) ;; end func $fn_L130

  ;; BCPL fn close_column (L135)
  (func $fn_L135 (export "fn_L135") (type $bcpl_fn)
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
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:413
    (global.set $__line (i32.const 413))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:414
    (global.set $__line (i32.const 414))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2)))) ;; LL L27
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2))
      (local.get $t4))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L136
    (local.set $t4 (i32.const 720))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    ;; line 0:415
    (global.set $__line (i32.const 415))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const -1))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
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
  ) ;; end func $fn_L135

  ;; BCPL fn project_y (L137)
  (func $fn_L137 (export "fn_L137") (type $bcpl_fn)
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
    (local.set $t5 (i32.const 360))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 480))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
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
  ) ;; end func $fn_L137

  ;; BCPL fn render_seg (L138)
  (func $fn_L138 (export "fn_L138") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_35
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__case_28 $__case_29 $__case_30 $__case_31 $__case_32 $__case_33 $__case_34 $__case_35 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:424
    (global.set $__line (i32.const 424))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:425
    (global.set $__line (i32.const 425))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:426
    (global.set $__line (i32.const 426))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:427
    (global.set $__line (i32.const 427))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:428
    (global.set $__line (i32.const 428))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:429
    (global.set $__line (i32.const 429))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:430
    (global.set $__line (i32.const 430))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 0:431
    (global.set $__line (i32.const 431))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    ;; line 0:432
    (global.set $__line (i32.const 432))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 0))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.const 0))
    (local.set $t30 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    ;; line 0:433
    (global.set $__line (i32.const 433))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 0))
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33)) ;; STORE slot 33
    ;; line 0:434
    (global.set $__line (i32.const 434))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t34 (i32.const 0))
    (local.set $t35 (i32.const 0))
    (local.set $t36 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34)) ;; STORE slot 34
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35)) ;; STORE slot 35
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36)) ;; STORE slot 36
    ;; line 0:435
    (global.set $__line (i32.const 435))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t41 (i32.const 0))
    (local.set $t42 (local.get $t3)) ;; LP promoted P!3
    (local.set $t41 (i32.add (local.get $t41) (local.get $t42)))
    (local.set $t42 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t4 (local.get $t37)) ;; SP promoted P!4
    ;; line 0:437
    (global.set $__line (i32.const 437))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t41 (i32.const 2))
    (local.set $t42 (local.get $t3)) ;; LP promoted P!3
    (local.set $t41 (i32.add (local.get $t41) (local.get $t42)))
    (local.set $t42 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t5 (local.get $t37)) ;; SP promoted P!5
    ;; line 0:438
    (global.set $__line (i32.const 438))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t41 (i32.const 6))
    (local.set $t42 (local.get $t3)) ;; LP promoted P!3
    (local.set $t41 (i32.add (local.get $t41) (local.get $t42)))
    (local.set $t42 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t6 (local.get $t37)) ;; SP promoted P!6
    ;; line 0:439
    (global.set $__line (i32.const 439))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t41 (i32.const 8))
    (local.set $t42 (local.get $t3)) ;; LP promoted P!3
    (local.set $t41 (i32.add (local.get $t41) (local.get $t42)))
    (local.set $t42 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t7 (local.get $t37)) ;; SP promoted P!7
    ;; line 0:440
    (global.set $__line (i32.const 440))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 14))
    (local.set $t38 (local.get $t6)) ;; LP promoted P!6
    (local.set $t37 (i32.mul (local.get $t37) (local.get $t38)))
    (local.set $t38 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t37 (i32.add (local.get $t37) (local.get $t38)))
    (local.set $t8 (local.get $t37)) ;; SP promoted P!8
    ;; line 0:441
    (global.set $__line (i32.const 441))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 0))
    (local.set $t38 (local.get $t7)) ;; LP promoted P!7
    (if (i32.ne  (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:442
    (global.set $__line (i32.const 442))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t41 (i32.const 10))
    (local.set $t42 (local.get $t8)) ;; LP promoted P!8
    (local.set $t41 (i32.add (local.get $t41) (local.get $t42)))
    (local.set $t42 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t9 (local.get $t37)) ;; SP promoted P!9
    ;; line 0:443
    (global.set $__line (i32.const 443))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t41 (i32.const 12))
    (local.set $t42 (local.get $t8)) ;; LP promoted P!8
    (local.set $t41 (i32.add (local.get $t41) (local.get $t42)))
    (local.set $t42 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t10 (local.get $t37)) ;; SP promoted P!10
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L141
      ) ;; close $__case_1 — LAB L139
    ;; line 0:444
    (global.set $__line (i32.const 444))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t41 (i32.const 12))
    (local.set $t42 (local.get $t8)) ;; LP promoted P!8
    (local.set $t41 (i32.add (local.get $t41) (local.get $t42)))
    (local.set $t42 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t9 (local.get $t37)) ;; SP promoted P!9
    ;; line 0:445
    (global.set $__line (i32.const 445))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t41 (i32.const 10))
    (local.set $t42 (local.get $t8)) ;; LP promoted P!8
    (local.set $t41 (i32.add (local.get $t41) (local.get $t42)))
    (local.set $t42 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t10 (local.get $t37)) ;; SP promoted P!10
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L141
    ;; line 0:446
    (global.set $__line (i32.const 446))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t9)) ;; LP promoted P!9
    (local.set $t38 (i32.const 0))
    (if (i32.ge_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_3 — LAB L142
    ;; line 0:447
    (global.set $__line (i32.const 447))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t9)) ;; LP promoted P!9
    (local.set $t41 (i32.add (global.get $TB) (i32.const 15))) ;; LF L88
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t11 (local.get $t37)) ;; SP promoted P!11
    ;; line 0:449
    (global.set $__line (i32.const 449))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t11)) ;; LP promoted P!11
    (local.set $t38 (i32.const 0))
    (if (i32.ge_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_4 — LAB L143
    ;; line 0:450
    (global.set $__line (i32.const 450))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t11)) ;; LP promoted P!11
    (local.set $t41 (i32.add (global.get $TB) (i32.const 16))) ;; LF L89
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t21 (local.get $t37)) ;; SP promoted P!21
    ;; line 0:451
    (global.set $__line (i32.const 451))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t11)) ;; LP promoted P!11
    (local.set $t41 (i32.add (global.get $TB) (i32.const 17))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t22 (local.get $t37)) ;; SP promoted P!22
    ;; line 0:452
    (global.set $__line (i32.const 452))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t11)) ;; LP promoted P!11
    (local.set $t41 (i32.add (global.get $TB) (i32.const 18))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t23 (local.get $t37)) ;; SP promoted P!23
    ;; line 0:453
    (global.set $__line (i32.const 453))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t10)) ;; LP promoted P!10
    (local.set $t38 (i32.const 0))
    (local.set $t37 (i32.sub (i32.const 0) (i32.ge_s (local.get $t37) (local.get $t38))))
    (local.set $t26 (local.get $t37)) ;; SP promoted P!26
    ;; line 0:455
    (global.set $__line (i32.const 455))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t26)) ;; LP promoted P!26
    (if (i32.eqz (local.get $t37)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:456
    (global.set $__line (i32.const 456))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t10)) ;; LP promoted P!10
    (local.set $t41 (i32.add (global.get $TB) (i32.const 15))) ;; LF L88
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t12 (local.get $t37)) ;; SP promoted P!12
    ;; line 0:457
    (global.set $__line (i32.const 457))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t12)) ;; LP promoted P!12
    (local.set $t38 (i32.const 0))
    (if (i32.ge_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:458
    (global.set $__line (i32.const 458))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 0))
    (local.set $t26 (local.get $t37)) ;; SP promoted P!26
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L145
    (local.set $t37 (local.get $t26)) ;; LP promoted P!26
    (if (i32.eqz (local.get $t37)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:459
    (global.set $__line (i32.const 459))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t12)) ;; LP promoted P!12
    (local.set $t41 (i32.add (global.get $TB) (i32.const 16))) ;; LF L89
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t24 (local.get $t37)) ;; SP promoted P!24
    ;; line 0:460
    (global.set $__line (i32.const 460))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t12)) ;; LP promoted P!12
    (local.set $t41 (i32.add (global.get $TB) (i32.const 17))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t25 (local.get $t37)) ;; SP promoted P!25
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L146
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L144
    ;; line 0:461
    (global.set $__line (i32.const 461))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 4))
    (local.set $t38 (local.get $t4)) ;; LP promoted P!4
    (local.set $t37 (i32.mul (local.get $t37) (local.get $t38)))
    (local.set $t38 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t37 (i32.add (local.get $t37) (local.get $t38)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; STORE slot 37
    ;; line 0:465
    (global.set $__line (i32.const 465))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t38 (i32.const 4))
    (local.set $t39 (local.get $t5)) ;; LP promoted P!5
    (local.set $t38 (i32.mul (local.get $t38) (local.get $t39)))
    (local.set $t39 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t38 (i32.add (local.get $t38) (local.get $t39)))
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t38)) ;; STORE slot 38
    ;; line 0:466
    (global.set $__line (i32.const 466))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t42 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t43 (i32.const 0))
    (local.set $t44 (local.get $t37)) ;; LP promoted P!37
    (local.set $t43 (i32.add (local.get $t43) (local.get $t44)))
    (local.set $t44 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t42))
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t43))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t44)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 39)))
    (local.set $t39 (call_indirect $ftable (type $bcpl_fn) (local.get $t44)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39)) ;; flush FNAP result
    (local.set $t13 (local.get $t39)) ;; SP promoted P!13
    ;; line 0:467
    (global.set $__line (i32.const 467))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t42 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t43 (i32.const 2))
    (local.set $t44 (local.get $t37)) ;; LP promoted P!37
    (local.set $t43 (i32.add (local.get $t43) (local.get $t44)))
    (local.set $t44 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t42))
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t43))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t44)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 39)))
    (local.set $t39 (call_indirect $ftable (type $bcpl_fn) (local.get $t44)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39)) ;; flush FNAP result
    (local.set $t14 (local.get $t39)) ;; SP promoted P!14
    ;; line 0:468
    (global.set $__line (i32.const 468))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t42 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t43 (i32.const 0))
    (local.set $t44 (local.get $t38)) ;; LP promoted P!38
    (local.set $t43 (i32.add (local.get $t43) (local.get $t44)))
    (local.set $t44 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t42))
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t43))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t44)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 39)))
    (local.set $t39 (call_indirect $ftable (type $bcpl_fn) (local.get $t44)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39)) ;; flush FNAP result
    (local.set $t15 (local.get $t39)) ;; SP promoted P!15
    ;; line 0:469
    (global.set $__line (i32.const 469))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t42 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t43 (i32.const 2))
    (local.set $t44 (local.get $t38)) ;; LP promoted P!38
    (local.set $t43 (i32.add (local.get $t43) (local.get $t44)))
    (local.set $t44 (i32.add (global.get $TB) (i32.const 6))) ;; LF L53
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t42))
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t43))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t44)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 39)))
    (local.set $t39 (call_indirect $ftable (type $bcpl_fn) (local.get $t44)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39)) ;; flush FNAP result
    (local.set $t16 (local.get $t39)) ;; SP promoted P!16
    ;; line 0:470
    (global.set $__line (i32.const 470))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t26)) ;; LP promoted P!26
    (if (local.get $t37) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:473
    (global.set $__line (i32.const 473))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t13)) ;; LP promoted P!13
    (local.set $t41 (local.get $t14)) ;; LP promoted P!14
    (local.set $t42 (local.get $t15)) ;; LP promoted P!15
    (local.set $t43 (local.get $t16)) ;; LP promoted P!16
    (local.set $t44 (i32.add (global.get $TB) (i32.const 27))) ;; LF L123
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t42))
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t43))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t44)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t44)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (if (local.get $t37) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_8 — LAB L148
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L147
    ;; line 0:474
    (global.set $__line (i32.const 474))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t13)) ;; LP promoted P!13
    (local.set $t41 (local.get $t14)) ;; LP promoted P!14
    (local.set $t42 (i32.add (global.get $TB) (i32.const 25))) ;; LF L121
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t17 (local.get $t37)) ;; SP promoted P!17
    ;; line 0:476
    (global.set $__line (i32.const 476))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t13)) ;; LP promoted P!13
    (local.set $t41 (local.get $t14)) ;; LP promoted P!14
    (local.set $t42 (i32.add (global.get $TB) (i32.const 26))) ;; LF L122
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t18 (local.get $t37)) ;; SP promoted P!18
    (local.set $t40 (local.get $t15)) ;; LP promoted P!15
    (local.set $t41 (local.get $t16)) ;; LP promoted P!16
    (local.set $t42 (i32.add (global.get $TB) (i32.const 25))) ;; LF L121
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t19 (local.get $t37)) ;; SP promoted P!19
    ;; line 0:477
    (global.set $__line (i32.const 477))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t15)) ;; LP promoted P!15
    (local.set $t41 (local.get $t16)) ;; LP promoted P!16
    (local.set $t42 (i32.add (global.get $TB) (i32.const 26))) ;; LF L122
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t42)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t42)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t20 (local.get $t37)) ;; SP promoted P!20
    (local.set $t37 (local.get $t18)) ;; LP promoted P!18
    (local.set $t38 (i32.const 4))
    (if (i32.ge_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    (local.set $t37 (local.get $t20)) ;; LP promoted P!20
    (local.set $t38 (i32.const 4))
    (if (i32.ge_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_10 — LAB L149
    ;; line 0:478
    (global.set $__line (i32.const 478))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t18)) ;; LP promoted P!18
    (local.set $t38 (i32.const 4))
    (if (i32.ge_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:480
    (global.set $__line (i32.const 480))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 4))
    (local.set $t38 (local.get $t18)) ;; LP promoted P!18
    (local.set $t37 (i32.sub (local.get $t37) (local.get $t38)))
    (local.set $t38 (i32.const 1024))
    (local.set $t37 (i32.mul (local.get $t37) (local.get $t38)))
    (local.set $t38 (local.get $t20)) ;; LP promoted P!20
    (local.set $t39 (local.get $t18)) ;; LP promoted P!18
    (local.set $t38 (i32.sub (local.get $t38) (local.get $t39)))
    (local.set $t37 (i32.div_s (local.get $t37) (local.get $t38)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; STORE slot 37
    ;; line 0:481
    (global.set $__line (i32.const 481))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t38 (local.get $t19)) ;; LP promoted P!19
    (local.set $t39 (local.get $t17)) ;; LP promoted P!17
    (local.set $t38 (i32.sub (local.get $t38) (local.get $t39)))
    (local.set $t39 (local.get $t37)) ;; LP promoted P!37
    (local.set $t38 (i32.mul (local.get $t38) (local.get $t39)))
    (local.set $t39 (i32.const 1024))
    (local.set $t38 (i32.div_s (local.get $t38) (local.get $t39)))
    (local.set $t39 (local.get $t17)) ;; LP promoted P!17
    (local.set $t38 (i32.add (local.get $t38) (local.get $t39)))
    (local.set $t17 (local.get $t38)) ;; SP promoted P!17
    ;; line 0:482
    (global.set $__line (i32.const 482))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t38 (i32.const 4))
    (local.set $t18 (local.get $t38)) ;; SP promoted P!18
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L150
    ;; line 0:483
    (global.set $__line (i32.const 483))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t20)) ;; LP promoted P!20
    (local.set $t38 (i32.const 4))
    (if (i32.ge_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 0:485
    (global.set $__line (i32.const 485))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 4))
    (local.set $t38 (local.get $t20)) ;; LP promoted P!20
    (local.set $t37 (i32.sub (local.get $t37) (local.get $t38)))
    (local.set $t38 (i32.const 1024))
    (local.set $t37 (i32.mul (local.get $t37) (local.get $t38)))
    (local.set $t38 (local.get $t18)) ;; LP promoted P!18
    (local.set $t39 (local.get $t20)) ;; LP promoted P!20
    (local.set $t38 (i32.sub (local.get $t38) (local.get $t39)))
    (local.set $t37 (i32.div_s (local.get $t37) (local.get $t38)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; STORE slot 37
    ;; line 0:486
    (global.set $__line (i32.const 486))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t38 (local.get $t17)) ;; LP promoted P!17
    (local.set $t39 (local.get $t19)) ;; LP promoted P!19
    (local.set $t38 (i32.sub (local.get $t38) (local.get $t39)))
    (local.set $t39 (local.get $t37)) ;; LP promoted P!37
    (local.set $t38 (i32.mul (local.get $t38) (local.get $t39)))
    (local.set $t39 (i32.const 1024))
    (local.set $t38 (i32.div_s (local.get $t38) (local.get $t39)))
    (local.set $t39 (local.get $t19)) ;; LP promoted P!19
    (local.set $t38 (i32.add (local.get $t38) (local.get $t39)))
    (local.set $t19 (local.get $t38)) ;; SP promoted P!19
    ;; line 0:487
    (global.set $__line (i32.const 487))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t38 (i32.const 4))
    (local.set $t20 (local.get $t38)) ;; SP promoted P!20
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L151
    ;; line 0:488
    (global.set $__line (i32.const 488))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 480))
    (local.set $t38 (i32.const 480))
    (local.set $t39 (local.get $t17)) ;; LP promoted P!17
    (local.set $t38 (i32.mul (local.get $t38) (local.get $t39)))
    (local.set $t39 (local.get $t18)) ;; LP promoted P!18
    (local.set $t38 (i32.div_s (local.get $t38) (local.get $t39)))
    (local.set $t37 (i32.add (local.get $t37) (local.get $t38)))
    (local.set $t27 (local.get $t37)) ;; SP promoted P!27
    ;; line 0:491
    (global.set $__line (i32.const 491))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 480))
    (local.set $t38 (i32.const 480))
    (local.set $t39 (local.get $t19)) ;; LP promoted P!19
    (local.set $t38 (i32.mul (local.get $t38) (local.get $t39)))
    (local.set $t39 (local.get $t20)) ;; LP promoted P!20
    (local.set $t38 (i32.div_s (local.get $t38) (local.get $t39)))
    (local.set $t37 (i32.add (local.get $t37) (local.get $t38)))
    (local.set $t28 (local.get $t37)) ;; SP promoted P!28
    ;; line 0:492
    (global.set $__line (i32.const 492))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t27)) ;; LP promoted P!27
    (local.set $t38 (local.get $t28)) ;; LP promoted P!28
    (if (i32.le_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 0:494
    (global.set $__line (i32.const 494))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t27)) ;; LP promoted P!27
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; STORE slot 37
    ;; line 0:495
    (global.set $__line (i32.const 495))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t38 (local.get $t28)) ;; LP promoted P!28
    (local.set $t27 (local.get $t38)) ;; SP promoted P!27
    (local.set $t38 (local.get $t37)) ;; LP promoted P!37
    (local.set $t28 (local.get $t38)) ;; SP promoted P!28
    (local.set $t38 (local.get $t17)) ;; LP promoted P!17
    (local.set $t37 (local.get $t38)) ;; SP promoted P!37
    ;; line 0:496
    (global.set $__line (i32.const 496))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t38 (local.get $t19)) ;; LP promoted P!19
    (local.set $t17 (local.get $t38)) ;; SP promoted P!17
    (local.set $t38 (local.get $t37)) ;; LP promoted P!37
    (local.set $t19 (local.get $t38)) ;; SP promoted P!19
    (local.set $t38 (local.get $t18)) ;; LP promoted P!18
    (local.set $t37 (local.get $t38)) ;; SP promoted P!37
    ;; line 0:497
    (global.set $__line (i32.const 497))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t38 (local.get $t20)) ;; LP promoted P!20
    (local.set $t18 (local.get $t38)) ;; SP promoted P!18
    (local.set $t38 (local.get $t37)) ;; LP promoted P!37
    (local.set $t20 (local.get $t38)) ;; SP promoted P!20
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L152
    (local.set $t37 (local.get $t28)) ;; LP promoted P!28
    (local.set $t38 (local.get $t27)) ;; LP promoted P!27
    (if (i32.ne  (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_14 — LAB L153
    ;; line 0:499
    (global.set $__line (i32.const 499))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t27)) ;; LP promoted P!27
    (local.set $t29 (local.get $t37)) ;; SP promoted P!29
    ;; line 0:501
    (global.set $__line (i32.const 501))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t28)) ;; LP promoted P!28
    (local.set $t30 (local.get $t37)) ;; SP promoted P!30
    (local.set $t37 (local.get $t29)) ;; LP promoted P!29
    (local.set $t38 (i32.const 0))
    (if (i32.ge_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
    ;; line 0:502
    (global.set $__line (i32.const 502))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 0))
    (local.set $t29 (local.get $t37)) ;; SP promoted P!29
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L154
    (local.set $t37 (local.get $t30)) ;; LP promoted P!30
    (local.set $t38 (i32.const 960))
    (if (i32.lt_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
    ;; line 0:503
    (global.set $__line (i32.const 503))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 959))
    (local.set $t30 (local.get $t37)) ;; SP promoted P!30
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L155
    (local.set $t37 (local.get $t29)) ;; LP promoted P!29
    (local.set $t38 (local.get $t30)) ;; LP promoted P!30
    (if (i32.le_s (local.get $t37) (local.get $t38)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_17 — LAB L156
    ;; line 0:504
    (global.set $__line (i32.const 504))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 1048576))
    (local.set $t38 (local.get $t18)) ;; LP promoted P!18
    (local.set $t37 (i32.div_s (local.get $t37) (local.get $t38)))
    (local.set $t31 (local.get $t37)) ;; SP promoted P!31
    ;; line 0:506
    (global.set $__line (i32.const 506))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (i32.const 1048576))
    (local.set $t38 (local.get $t20)) ;; LP promoted P!20
    (local.set $t37 (i32.div_s (local.get $t37) (local.get $t38)))
    (local.set $t32 (local.get $t37)) ;; SP promoted P!32
    ;; line 0:507
    (global.set $__line (i32.const 507))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t28)) ;; LP promoted P!28
    (local.set $t38 (local.get $t27)) ;; LP promoted P!27
    (local.set $t37 (i32.sub (local.get $t37) (local.get $t38)))
    (local.set $t33 (local.get $t37)) ;; SP promoted P!33
    ;; line 0:508
    (global.set $__line (i32.const 508))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t23)) ;; LP promoted P!23
    (local.set $t41 (i32.add (global.get $TB) (i32.const 28))) ;; LF L124
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t34 (local.get $t37)) ;; SP promoted P!34
    ;; line 0:510
    (global.set $__line (i32.const 510))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t23)) ;; LP promoted P!23
    (local.set $t41 (i32.const 16))
    (local.set $t40 (i32.sub (local.get $t40) (local.get $t41)))
    (local.set $t41 (i32.add (global.get $TB) (i32.const 28))) ;; LF L124
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t35 (local.get $t37)) ;; SP promoted P!35
    ;; line 0:511
    (global.set $__line (i32.const 511))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t23)) ;; LP promoted P!23
    (local.set $t41 (i32.const 32))
    (local.set $t40 (i32.sub (local.get $t40) (local.get $t41)))
    (local.set $t41 (i32.add (global.get $TB) (i32.const 28))) ;; LF L124
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 37)))
    (local.set $t37 (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; flush FNAP result
    (local.set $t36 (local.get $t37)) ;; SP promoted P!36
    ;; line 0:512
    (global.set $__line (i32.const 512))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t37 (local.get $t29)) ;; LP promoted P!29
    (local.set $t38 (local.get $t30)) ;; LP promoted P!30
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; STORE slot 37
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t38)) ;; STORE slot 38
      (local.set $__lab (i32.const 35)) (br $__dispatch) ;; JUMP L158
      ) ;; close $__case_18 — LAB L157
    ;; line 0:514
    (global.set $__line (i32.const 514))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t39 (local.get $t37)) ;; LP promoted P!37
    (local.set $t40 (local.get $t27)) ;; LP promoted P!27
    (local.set $t39 (i32.sub (local.get $t39) (local.get $t40)))
    (local.set $t40 (i32.const 1024))
    (local.set $t39 (i32.mul (local.get $t39) (local.get $t40)))
    (local.set $t40 (local.get $t33)) ;; LP promoted P!33
    (local.set $t39 (i32.div_s (local.get $t39) (local.get $t40)))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39)) ;; STORE slot 39
    ;; line 0:515
    (global.set $__line (i32.const 515))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (local.get $t32)) ;; LP promoted P!32
    (local.set $t41 (local.get $t31)) ;; LP promoted P!31
    (local.set $t40 (i32.sub (local.get $t40) (local.get $t41)))
    (local.set $t41 (local.get $t39)) ;; LP promoted P!39
    (local.set $t40 (i32.mul (local.get $t40) (local.get $t41)))
    (local.set $t41 (i32.const 1024))
    (local.set $t40 (i32.div_s (local.get $t40) (local.get $t41)))
    (local.set $t41 (local.get $t31)) ;; LP promoted P!31
    (local.set $t40 (i32.add (local.get $t40) (local.get $t41)))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40)) ;; STORE slot 40
    ;; line 0:516
    (global.set $__line (i32.const 516))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t41 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41)) ;; STORE slot 41
    ;; line 0:517
    (global.set $__line (i32.const 517))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t42 (i32.const 0))
    (local.set $t43 (i32.const 0))
    (local.set $t44 (i32.const 0))
    (local.set $t45 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t42)) ;; STORE slot 42
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t43)) ;; STORE slot 43
    (i32.store (i32.add (local.get $Pb) (i32.const 176)) (local.get $t44)) ;; STORE slot 44
    (i32.store (i32.add (local.get $Pb) (i32.const 180)) (local.get $t45)) ;; STORE slot 45
    ;; line 0:518
    (global.set $__line (i32.const 518))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t46 (local.get $t40)) ;; LP promoted P!40
    (local.set $t47 (i32.const 0))
    (if (i32.le_s (local.get $t46) (local.get $t47)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    ))
    ;; line 0:519
    (global.set $__line (i32.const 519))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t46 (i32.const 1048576))
    (local.set $t47 (local.get $t40)) ;; LP promoted P!40
    (local.set $t46 (i32.div_s (local.get $t46) (local.get $t47)))
    (local.set $t41 (local.get $t46)) ;; SP promoted P!41
    ;; line 0:520
    (global.set $__line (i32.const 520))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t22)) ;; LP promoted P!22
    (local.set $t50 (local.get $t41)) ;; LP promoted P!41
    (local.set $t51 (i32.add (global.get $TB) (i32.const 32))) ;; LF L137
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t51)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (local.set $t46 (call_indirect $ftable (type $bcpl_fn) (local.get $t51)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t46)) ;; flush FNAP result
    (local.set $t42 (local.get $t46)) ;; SP promoted P!42
    ;; line 0:522
    (global.set $__line (i32.const 522))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t21)) ;; LP promoted P!21
    (local.set $t50 (local.get $t41)) ;; LP promoted P!41
    (local.set $t51 (i32.add (global.get $TB) (i32.const 32))) ;; LF L137
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t51)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (local.set $t46 (call_indirect $ftable (type $bcpl_fn) (local.get $t51)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t46)) ;; flush FNAP result
    (local.set $t43 (local.get $t46)) ;; SP promoted P!43
    ;; line 0:523
    (global.set $__line (i32.const 523))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t46 (local.get $t37)) ;; LP promoted P!37
    (local.set $t47 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t46 (i32.add (local.get $t46) (local.get $t47)))
    (local.set $t46 (i32.load (i32.shl (local.get $t46) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t46)) ;; STORE slot 46
    ;; line 0:529
    (global.set $__line (i32.const 529))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t47 (local.get $t37)) ;; LP promoted P!37
    (local.set $t48 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t47 (i32.add (local.get $t47) (local.get $t48)))
    (local.set $t47 (i32.load (i32.shl (local.get $t47) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (local.get $t47)) ;; STORE slot 47
    ;; line 0:530
    (global.set $__line (i32.const 530))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (local.get $t46)) ;; LP promoted P!46
    (local.set $t49 (local.get $t42)) ;; LP promoted P!42
    (if (i32.ge_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
    ;; line 0:531
    (global.set $__line (i32.const 531))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (local.get $t42)) ;; LP promoted P!42
    (local.set $t49 (i32.const 1))
    (local.set $t48 (i32.sub (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    ;; line 0:532
    (global.set $__line (i32.const 532))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t48)) ;; LP promoted P!48
    (local.set $t50 (local.get $t47)) ;; LP promoted P!47
    (if (i32.le_s (local.get $t49) (local.get $t50)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
    ;; line 0:533
    (global.set $__line (i32.const 533))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t47)) ;; LP promoted P!47
    (local.set $t48 (local.get $t49)) ;; SP promoted P!48
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      ) ;; close $__case_19 — LAB L161
    (local.set $t49 (local.get $t46)) ;; LP promoted P!46
    (local.set $t50 (local.get $t48)) ;; LP promoted P!48
    (if (i32.gt_s (local.get $t49) (local.get $t50)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 0:534
    (global.set $__line (i32.const 534))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t52 (i32.const 66))
    (local.set $t53 (i32.const 29))
    (local.set $t54 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t55 (local.get $t37)) ;; LP promoted P!37
    (local.set $t56 (local.get $t46)) ;; LP promoted P!46
    (local.set $t57 (local.get $t48)) ;; LP promoted P!48
    (local.set $t58 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 18)) (i32.const 2)))) ;; LL L28
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 49)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L162
    ;; line 0:535
    (global.set $__line (i32.const 535))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t42)) ;; LP promoted P!42
    (local.set $t50 (local.get $t37)) ;; LP promoted P!37
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (i32.store (i32.shl (local.get $t50) (i32.const 2)) (local.get $t49))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L160
    ;; line 0:536
    (global.set $__line (i32.const 536))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t46 (local.get $t37)) ;; LP promoted P!37
    (local.set $t47 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t46 (i32.add (local.get $t46) (local.get $t47)))
    (local.set $t46 (i32.load (i32.shl (local.get $t46) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t46)) ;; STORE slot 46
    ;; line 0:540
    (global.set $__line (i32.const 540))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t47 (local.get $t37)) ;; LP promoted P!37
    (local.set $t48 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t47 (i32.add (local.get $t47) (local.get $t48)))
    (local.set $t47 (i32.load (i32.shl (local.get $t47) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (local.get $t47)) ;; STORE slot 47
    ;; line 0:541
    (global.set $__line (i32.const 541))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (local.get $t47)) ;; LP promoted P!47
    (local.set $t49 (local.get $t43)) ;; LP promoted P!43
    (if (i32.le_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
    ;; line 0:542
    (global.set $__line (i32.const 542))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 1))
    (local.set $t49 (local.get $t43)) ;; LP promoted P!43
    (local.set $t48 (i32.add (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    ;; line 0:543
    (global.set $__line (i32.const 543))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t48)) ;; LP promoted P!48
    (local.set $t50 (local.get $t46)) ;; LP promoted P!46
    (if (i32.ge_s (local.get $t49) (local.get $t50)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
    ;; line 0:544
    (global.set $__line (i32.const 544))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t46)) ;; LP promoted P!46
    (local.set $t48 (local.get $t49)) ;; SP promoted P!48
      (local.set $__lab (i32.const 22)) (br $__dispatch)
      ) ;; close $__case_22 — LAB L164
    (local.set $t49 (local.get $t48)) ;; LP promoted P!48
    (local.set $t50 (local.get $t47)) ;; LP promoted P!47
    (if (i32.gt_s (local.get $t49) (local.get $t50)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
    ;; line 0:545
    (global.set $__line (i32.const 545))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t52 (i32.const 66))
    (local.set $t53 (i32.const 29))
    (local.set $t54 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t55 (local.get $t37)) ;; LP promoted P!37
    (local.set $t56 (local.get $t48)) ;; LP promoted P!48
    (local.set $t57 (local.get $t47)) ;; LP promoted P!47
    (local.set $t58 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 49)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
      ) ;; close $__case_23 — LAB L165
    ;; line 0:546
    (global.set $__line (i32.const 546))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t43)) ;; LP promoted P!43
    (local.set $t50 (local.get $t37)) ;; LP promoted P!37
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (i32.store (i32.shl (local.get $t50) (i32.const 2)) (local.get $t49))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
      ) ;; close $__case_24 — LAB L163
    ;; line 0:547
    (global.set $__line (i32.const 547))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t46 (local.get $t37)) ;; LP promoted P!37
    (local.set $t47 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t46 (i32.add (local.get $t46) (local.get $t47)))
    (local.set $t46 (i32.load (i32.shl (local.get $t46) (i32.const 2))))
    (local.set $t47 (local.get $t37)) ;; LP promoted P!37
    (local.set $t48 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t47 (i32.add (local.get $t47) (local.get $t48)))
    (local.set $t47 (i32.load (i32.shl (local.get $t47) (i32.const 2))))
    (if (i32.le_s (local.get $t46) (local.get $t47)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
    ;; line 0:550
    (global.set $__line (i32.const 550))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t37)) ;; LP promoted P!37
    (local.set $t50 (i32.add (global.get $TB) (i32.const 31))) ;; LF L135
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t50)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t50)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 34)) (br $__dispatch) ;; JUMP L159
      ) ;; close $__case_25 — LAB L166
    (local.set $t46 (local.get $t26)) ;; LP promoted P!26
    (if (i32.eqz (local.get $t46)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    ))
    ;; line 0:552
    (global.set $__line (i32.const 552))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t25)) ;; LP promoted P!25
    (local.set $t50 (local.get $t41)) ;; LP promoted P!41
    (local.set $t51 (i32.add (global.get $TB) (i32.const 32))) ;; LF L137
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t51)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (local.set $t46 (call_indirect $ftable (type $bcpl_fn) (local.get $t51)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t46)) ;; flush FNAP result
    (local.set $t45 (local.get $t46)) ;; SP promoted P!45
    ;; line 0:553
    (global.set $__line (i32.const 553))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t24)) ;; LP promoted P!24
    (local.set $t50 (local.get $t41)) ;; LP promoted P!41
    (local.set $t51 (i32.add (global.get $TB) (i32.const 32))) ;; LF L137
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t51)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (local.set $t46 (call_indirect $ftable (type $bcpl_fn) (local.get $t51)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t46)) ;; flush FNAP result
    (local.set $t44 (local.get $t46)) ;; SP promoted P!44
    ;; line 0:554
    (global.set $__line (i32.const 554))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t46 (local.get $t25)) ;; LP promoted P!25
    (local.set $t47 (local.get $t22)) ;; LP promoted P!22
    (if (i32.ge_s (local.get $t46) (local.get $t47)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    ))
    ;; line 0:555
    (global.set $__line (i32.const 555))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t37)) ;; LP promoted P!37
    (local.set $t50 (local.get $t42)) ;; LP promoted P!42
    (local.set $t51 (local.get $t45)) ;; LP promoted P!45
    (local.set $t52 (local.get $t36)) ;; LP promoted P!36
    (local.set $t53 (i32.add (global.get $TB) (i32.const 30))) ;; LF L130
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50))
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:556
    (global.set $__line (i32.const 556))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t46 (i32.const 1))
    (local.set $t47 (local.get $t45)) ;; LP promoted P!45
    (local.set $t46 (i32.add (local.get $t46) (local.get $t47)))
    (local.set $t47 (local.get $t37)) ;; LP promoted P!37
    (local.set $t48 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t47 (i32.add (local.get $t47) (local.get $t48)))
    (local.set $t47 (i32.load (i32.shl (local.get $t47) (i32.const 2))))
    (if (i32.le_s (local.get $t46) (local.get $t47)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    ;; line 0:557
    (global.set $__line (i32.const 557))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t46 (i32.const 1))
    (local.set $t47 (local.get $t45)) ;; LP promoted P!45
    (local.set $t46 (i32.add (local.get $t46) (local.get $t47)))
    (local.set $t47 (local.get $t37)) ;; LP promoted P!37
    (local.set $t48 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t47 (i32.add (local.get $t47) (local.get $t48)))
    (i32.store (i32.shl (local.get $t47) (i32.const 2)) (local.get $t46))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
      ) ;; close $__case_26 — LAB L171
    (local.set $t46 (local.get $t37)) ;; LP promoted P!37
    (local.set $t47 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t46 (i32.add (local.get $t46) (local.get $t47)))
    (local.set $t46 (i32.load (i32.shl (local.get $t46) (i32.const 2))))
    (local.set $t47 (local.get $t37)) ;; LP promoted P!37
    (local.set $t48 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t47 (i32.add (local.get $t47) (local.get $t48)))
    (local.set $t47 (i32.load (i32.shl (local.get $t47) (i32.const 2))))
    (if (i32.le_s (local.get $t46) (local.get $t47)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
    ;; line 0:558
    (global.set $__line (i32.const 558))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t37)) ;; LP promoted P!37
    (local.set $t50 (i32.add (global.get $TB) (i32.const 31))) ;; LF L135
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t50)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t50)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L172
      (local.set $__lab (i32.const 28)) (br $__dispatch)
      ) ;; close $__case_28 — LAB L170
    (local.set $t46 (local.get $t24)) ;; LP promoted P!24
    (local.set $t47 (local.get $t21)) ;; LP promoted P!21
    (if (i32.le_s (local.get $t46) (local.get $t47)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
    ;; line 0:560
    (global.set $__line (i32.const 560))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t37)) ;; LP promoted P!37
    (local.set $t50 (local.get $t44)) ;; LP promoted P!44
    (local.set $t51 (local.get $t43)) ;; LP promoted P!43
    (local.set $t52 (local.get $t35)) ;; LP promoted P!35
    (local.set $t53 (i32.add (global.get $TB) (i32.const 30))) ;; LF L130
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50))
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:561
    (global.set $__line (i32.const 561))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t46 (local.get $t44)) ;; LP promoted P!44
    (local.set $t47 (i32.const 1))
    (local.set $t46 (i32.sub (local.get $t46) (local.get $t47)))
    (local.set $t47 (local.get $t37)) ;; LP promoted P!37
    (local.set $t48 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t47 (i32.add (local.get $t47) (local.get $t48)))
    (local.set $t47 (i32.load (i32.shl (local.get $t47) (i32.const 2))))
    (if (i32.ge_s (local.get $t46) (local.get $t47)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    ))
    ;; line 0:562
    (global.set $__line (i32.const 562))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t46 (local.get $t44)) ;; LP promoted P!44
    (local.set $t47 (i32.const 1))
    (local.set $t46 (i32.sub (local.get $t46) (local.get $t47)))
    (local.set $t47 (local.get $t37)) ;; LP promoted P!37
    (local.set $t48 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t47 (i32.add (local.get $t47) (local.get $t48)))
    (i32.store (i32.shl (local.get $t47) (i32.const 2)) (local.get $t46))
      (local.set $__lab (i32.const 29)) (br $__dispatch)
      ) ;; close $__case_29 — LAB L174
    (local.set $t46 (local.get $t37)) ;; LP promoted P!37
    (local.set $t47 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t46 (i32.add (local.get $t46) (local.get $t47)))
    (local.set $t46 (i32.load (i32.shl (local.get $t46) (i32.const 2))))
    (local.set $t47 (local.get $t37)) ;; LP promoted P!37
    (local.set $t48 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t47 (i32.add (local.get $t47) (local.get $t48)))
    (local.set $t47 (i32.load (i32.shl (local.get $t47) (i32.const 2))))
    (if (i32.le_s (local.get $t46) (local.get $t47)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
    ;; line 0:563
    (global.set $__line (i32.const 563))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t37)) ;; LP promoted P!37
    (local.set $t50 (i32.add (global.get $TB) (i32.const 31))) ;; LF L135
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t50)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t50)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 33)) (br $__dispatch) ;; JUMP L169
      ) ;; close $__case_30 — LAB L175
      (local.set $__lab (i32.const 33)) (br $__dispatch) ;; JUMP L169
      ) ;; close $__case_31 — LAB L173
      (local.set $__lab (i32.const 33)) (br $__dispatch) ;; JUMP L169
      ) ;; close $__case_32 — LAB L167
    (local.set $t49 (local.get $t37)) ;; LP promoted P!37
    (local.set $t50 (local.get $t42)) ;; LP promoted P!42
    (local.set $t51 (local.get $t43)) ;; LP promoted P!43
    (local.set $t52 (local.get $t34)) ;; LP promoted P!34
    (local.set $t53 (i32.add (global.get $TB) (i32.const 30))) ;; LF L130
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50))
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:566
    (global.set $__line (i32.const 566))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (local.get $t37)) ;; LP promoted P!37
    (local.set $t50 (i32.add (global.get $TB) (i32.const 31))) ;; LF L135
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49))
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t50)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 46)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t50)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
      ) ;; close $__case_33 — LAB L169
      (local.set $__lab (i32.const 34)) (br $__dispatch)
      ) ;; close $__case_34 — LAB L159
    (local.set $t39 (local.get $t37)) ;; LP promoted P!37
    (local.set $t40 (i32.const 1))
    (local.set $t39 (i32.add (local.get $t39) (local.get $t40)))
    (local.set $t37 (local.get $t39)) ;; SP promoted P!37
      (local.set $__lab (i32.const 35)) (br $__dispatch)
      ) ;; close $__case_35 — LAB L158
    (local.set $t39 (local.get $t37)) ;; LP promoted P!37
    (local.set $t40 (local.get $t38)) ;; LP promoted P!38
    (if (i32.le_s (local.get $t39) (local.get $t40)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
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
  ) ;; end func $fn_L138

  ;; BCPL fn render_subsector (L176)
  (func $fn_L176 (export "fn_L176") (type $bcpl_fn)
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
    ;; line 0:574
    (global.set $__line (i32.const 574))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 4))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:575
    (global.set $__line (i32.const 575))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 0))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:576
    (global.set $__line (i32.const 576))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 2))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:577
    (global.set $__line (i32.const 577))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (local.get $t5)) ;; LP promoted P!5
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L178
      ) ;; close $__case_1 — LAB L177
    ;; line 0:578
    (global.set $__line (i32.const 578))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2)))) ;; LL L27
    (local.set $t10 (i32.const 0))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L179
    ;; line 0:579
    (global.set $__line (i32.const 579))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t7)) ;; LP promoted P!7
    (local.set $t13 (local.get $t6)) ;; LP promoted P!6
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 12))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 33))) ;; LF L138
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L178
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
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
  ) ;; end func $fn_L176

  ;; BCPL fn render_node (L180)
  (func $fn_L180 (export "fn_L180") (type $bcpl_fn)
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
    ;; line 0:584
    (global.set $__line (i32.const 584))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2)))) ;; LL L27
    (local.set $t5 (i32.const 0))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L181
    ;; line 0:585
    (global.set $__line (i32.const 585))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 32768))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t4 (i32.and (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.const 0))
    (if (i32.eq  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:593
    (global.set $__line (i32.const 593))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const -32769))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 34))) ;; LF L176
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:594
    (global.set $__line (i32.const 594))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L182
    ;; line 0:595
    (global.set $__line (i32.const 595))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 28))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:597
    (global.set $__line (i32.const 597))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (i32.add (global.get $TB) (i32.const 19))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:598
    (global.set $__line (i32.const 598))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 24))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:599
    (global.set $__line (i32.const 599))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 26))
    (local.set $t12 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 5))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:600
    (global.set $__line (i32.const 600))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (local.get $t5)) ;; LP promoted P!5
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:601
    (global.set $__line (i32.const 601))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (local.get $t6)) ;; LP promoted P!6
    (local.set $t12 (i32.add (global.get $TB) (i32.const 35))) ;; LF L180
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:602
    (global.set $__line (i32.const 602))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t12 (i32.add (global.get $TB) (i32.const 35))) ;; LF L180
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_3 — LAB L183
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (local.set $t12 (i32.add (global.get $TB) (i32.const 35))) ;; LF L180
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:603
    (global.set $__line (i32.const 603))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (local.get $t6)) ;; LP promoted P!6
    (local.set $t12 (i32.add (global.get $TB) (i32.const 35))) ;; LF L180
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
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
  ) ;; end func $fn_L180

  ;; BCPL fn fill_remaining (L184)
  (func $fn_L184 (export "fn_L184") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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
    ;; line 0:609
    (global.set $__line (i32.const 609))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L186
      ) ;; close $__case_1 — LAB L185
    ;; line 0:612
    (global.set $__line (i32.const 612))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:613
    (global.set $__line (i32.const 613))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:614
    (global.set $__line (i32.const 614))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (if (i32.gt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:615
    (global.set $__line (i32.const 615))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t8 (i32.const 360))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:616
    (global.set $__line (i32.const 616))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:617
    (global.set $__line (i32.const 617))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t7)) ;; LP promoted P!7
    (local.set $t9 (i32.const 360))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:618
    (global.set $__line (i32.const 618))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 359))
    (local.set $t7 (local.get $t8)) ;; SP promoted P!7
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L189
    (local.set $t11 (i32.const 66))
    (local.set $t12 (i32.const 29))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t14 (local.get $t3)) ;; LP promoted P!3
    (local.set $t15 (local.get $t5)) ;; LP promoted P!5
    (local.set $t16 (local.get $t7)) ;; LP promoted P!7
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 18)) (i32.const 2)))) ;; LL L28
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L188
    ;; line 0:619
    (global.set $__line (i32.const 619))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.const 360))
    (if (i32.lt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:621
    (global.set $__line (i32.const 621))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:622
    (global.set $__line (i32.const 622))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t7)) ;; LP promoted P!7
    (local.set $t9 (i32.const 360))
    (if (i32.ge_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:623
    (global.set $__line (i32.const 623))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 360))
    (local.set $t7 (local.get $t8)) ;; SP promoted P!7
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L191
    (local.set $t11 (i32.const 66))
    (local.set $t12 (i32.const 29))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t14 (local.get $t3)) ;; LP promoted P!3
    (local.set $t15 (local.get $t7)) ;; LP promoted P!7
    (local.set $t16 (local.get $t6)) ;; LP promoted P!6
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L190
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L187
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t3 (local.get $t5)) ;; SP promoted P!3
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L186
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
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
  ) ;; end func $fn_L184

  ;; BCPL fn drawframe (L192)
  (func $fn_L192 (export "fn_L192") (type $bcpl_fn)
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
    ;; line 0:629
    (global.set $__line (i32.const 629))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 29))) ;; LF L127
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:630
    (global.set $__line (i32.const 630))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t8 (i32.add (global.get $TB) (i32.const 21))) ;; LF L100
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t4 (i32.const 41))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2))
      (local.get $t3))
    ;; line 0:631
    (global.set $__line (i32.const 631))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (local.set $t7 (i32.add (global.get $TB) (i32.const 35))) ;; LF L180
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:632
    (global.set $__line (i32.const 632))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 36))) ;; LF L184
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:633
    (global.set $__line (i32.const 633))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 66))
    (local.set $t7 (i32.const 17))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L192

  ;; BCPL fn start (L193)
  (func $fn_L193 (export "fn_L193") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:639
    (global.set $__line (i32.const 639))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    ;; line 0:640
    (global.set $__line (i32.const 640))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:641
    (global.set $__line (i32.const 641))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:642
    (global.set $__line (i32.const 642))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:643
    (global.set $__line (i32.const 643))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:644
    (global.set $__line (i32.const 644))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:645
    (global.set $__line (i32.const 645))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    ;; line 0:646
    (global.set $__line (i32.const 646))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (local.get $t3)) ;; LP promoted P!3
    (local.set $t27 (i32.add (global.get $TB) (i32.const 3))) ;; LF L41
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (if (local.get $t23) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:648
    (global.set $__line (i32.const 648))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 28))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:649
    (global.set $__line (i32.const 649))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t23))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L194
    ;; line 0:650
    (global.set $__line (i32.const 650))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (local.get $t3)) ;; LP promoted P!3
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (local.set $t8 (local.get $t23)) ;; SP promoted P!8
    ;; line 0:652
    (global.set $__line (i32.const 652))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 1))
    (local.set $t24 (local.get $t3)) ;; LP promoted P!3
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (local.set $t24 (i32.const 0))
    (if (i32.eq  (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:653
    (global.set $__line (i32.const 653))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 41))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t23 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t23))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L195
    (local.set $t23 (i32.const 2))
    (local.set $t24 (local.get $t3)) ;; LP promoted P!3
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t23))
    ;; line 0:654
    (global.set $__line (i32.const 654))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (local.get $t8)) ;; LP promoted P!8
    (local.set $t24 (i32.const 12))
    (if (i32.ge_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:655
    (global.set $__line (i32.const 655))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 49))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t23 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t23))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L196
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 4))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t9 (local.get $t23)) ;; SP promoted P!9
    ;; line 0:657
    (global.set $__line (i32.const 657))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 8))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t10 (local.get $t23)) ;; SP promoted P!10
    ;; line 0:658
    (global.set $__line (i32.const 658))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (local.get $t10)) ;; LP promoted P!10
    (local.set $t28 (local.get $t9)) ;; LP promoted P!9
    (local.set $t29 (i32.add (global.get $TB) (i32.const 10))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t11 (local.get $t23)) ;; SP promoted P!11
    ;; line 0:660
    (global.set $__line (i32.const 660))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (local.get $t11)) ;; LP promoted P!11
    (local.set $t24 (i32.const 0))
    (if (i32.ge_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:661
    (global.set $__line (i32.const 661))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 53))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t23 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t23))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L197
    (local.set $t26 (i32.add (global.get $SB) (i32.const 57))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:662
    (global.set $__line (i32.const 662))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t11)) ;; LP promoted P!11
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 9))) ;; LF L66
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t26)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t26)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (local.get $t10)) ;; LP promoted P!10
    (local.set $t28 (local.get $t11)) ;; LP promoted P!11
    (local.set $t29 (local.get $t9)) ;; LP promoted P!9
    (local.set $t30 (i32.add (global.get $SB) (i32.const 59))) ;; LSTR
    (local.set $t31 (i32.add (global.get $TB) (i32.const 11))) ;; LF L74
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t12 (local.get $t23)) ;; SP promoted P!12
    ;; line 0:664
    (global.set $__line (i32.const 664))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (local.get $t10)) ;; LP promoted P!10
    (local.set $t28 (local.get $t11)) ;; LP promoted P!11
    (local.set $t29 (local.get $t9)) ;; LP promoted P!9
    (local.set $t30 (i32.add (global.get $SB) (i32.const 62))) ;; LSTR
    (local.set $t31 (i32.add (global.get $TB) (i32.const 11))) ;; LF L74
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t13 (local.get $t23)) ;; SP promoted P!13
    ;; line 0:665
    (global.set $__line (i32.const 665))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (local.get $t10)) ;; LP promoted P!10
    (local.set $t28 (local.get $t11)) ;; LP promoted P!11
    (local.set $t29 (local.get $t9)) ;; LP promoted P!9
    (local.set $t30 (i32.add (global.get $SB) (i32.const 65))) ;; LSTR
    (local.set $t31 (i32.add (global.get $TB) (i32.const 11))) ;; LF L74
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t14 (local.get $t23)) ;; SP promoted P!14
    ;; line 0:666
    (global.set $__line (i32.const 666))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (local.get $t10)) ;; LP promoted P!10
    (local.set $t28 (local.get $t11)) ;; LP promoted P!11
    (local.set $t29 (local.get $t9)) ;; LP promoted P!9
    (local.set $t30 (i32.add (global.get $SB) (i32.const 68))) ;; LSTR
    (local.set $t31 (i32.add (global.get $TB) (i32.const 11))) ;; LF L74
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t15 (local.get $t23)) ;; SP promoted P!15
    ;; line 0:667
    (global.set $__line (i32.const 667))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (local.get $t10)) ;; LP promoted P!10
    (local.set $t28 (local.get $t11)) ;; LP promoted P!11
    (local.set $t29 (local.get $t9)) ;; LP promoted P!9
    (local.set $t30 (i32.add (global.get $SB) (i32.const 70))) ;; LSTR
    (local.set $t31 (i32.add (global.get $TB) (i32.const 11))) ;; LF L74
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t16 (local.get $t23)) ;; SP promoted P!16
    ;; line 0:668
    (global.set $__line (i32.const 668))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (local.get $t10)) ;; LP promoted P!10
    (local.set $t28 (local.get $t11)) ;; LP promoted P!11
    (local.set $t29 (local.get $t9)) ;; LP promoted P!9
    (local.set $t30 (i32.add (global.get $SB) (i32.const 72))) ;; LSTR
    (local.set $t31 (i32.add (global.get $TB) (i32.const 11))) ;; LF L74
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t17 (local.get $t23)) ;; SP promoted P!17
    ;; line 0:669
    (global.set $__line (i32.const 669))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (local.get $t10)) ;; LP promoted P!10
    (local.set $t28 (local.get $t11)) ;; LP promoted P!11
    (local.set $t29 (local.get $t9)) ;; LP promoted P!9
    (local.set $t30 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    (local.set $t31 (i32.add (global.get $TB) (i32.const 11))) ;; LF L74
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t18 (local.get $t23)) ;; SP promoted P!18
    ;; line 0:670
    (global.set $__line (i32.const 670))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (local.get $t10)) ;; LP promoted P!10
    (local.set $t28 (local.get $t11)) ;; LP promoted P!11
    (local.set $t29 (local.get $t9)) ;; LP promoted P!9
    (local.set $t30 (i32.add (global.get $SB) (i32.const 77))) ;; LSTR
    (local.set $t31 (i32.add (global.get $TB) (i32.const 11))) ;; LF L74
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t19 (local.get $t23)) ;; SP promoted P!19
    ;; line 0:671
    (global.set $__line (i32.const 671))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (local.get $t12)) ;; LP promoted P!12
    (local.set $t24 (i32.const 0))
    (if (i32.lt_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t23 (local.get $t13)) ;; LP promoted P!13
    (local.set $t24 (i32.const 0))
    (if (i32.lt_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t23 (local.get $t14)) ;; LP promoted P!14
    (local.set $t24 (i32.const 0))
    (if (i32.lt_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t23 (local.get $t15)) ;; LP promoted P!15
    (local.set $t24 (i32.const 0))
    (if (i32.lt_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t23 (local.get $t16)) ;; LP promoted P!16
    (local.set $t24 (i32.const 0))
    (if (i32.lt_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t23 (local.get $t17)) ;; LP promoted P!17
    (local.set $t24 (i32.const 0))
    (if (i32.lt_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t23 (local.get $t18)) ;; LP promoted P!18
    (local.set $t24 (i32.const 0))
    (if (i32.lt_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t23 (local.get $t19)) ;; LP promoted P!19
    (local.set $t24 (i32.const 0))
    (if (i32.ge_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L199
    ;; line 0:672
    (global.set $__line (i32.const 672))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 79))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:674
    (global.set $__line (i32.const 674))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t23))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L198
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t12)) ;; LP promoted P!12
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 0))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2))
      (local.get $t23))
    ;; line 0:676
    (global.set $__line (i32.const 676))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t13)) ;; LP promoted P!13
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 0))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2))
      (local.get $t23))
    ;; line 0:677
    (global.set $__line (i32.const 677))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t14)) ;; LP promoted P!14
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 0))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2))
      (local.get $t23))
    ;; line 0:678
    (global.set $__line (i32.const 678))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t15)) ;; LP promoted P!15
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 0))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2))
      (local.get $t23))
    ;; line 0:679
    (global.set $__line (i32.const 679))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t16)) ;; LP promoted P!16
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 0))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t23))
    ;; line 0:680
    (global.set $__line (i32.const 680))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t16)) ;; LP promoted P!16
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 4))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t22 (local.get $t23)) ;; SP promoted P!22
    ;; line 0:681
    (global.set $__line (i32.const 681))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t17)) ;; LP promoted P!17
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 0))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2))
      (local.get $t23))
    ;; line 0:682
    (global.set $__line (i32.const 682))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t18)) ;; LP promoted P!18
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 0))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2))
      (local.get $t23))
    ;; line 0:683
    (global.set $__line (i32.const 683))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t19)) ;; LP promoted P!19
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 0))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t20 (local.get $t23)) ;; SP promoted P!20
    ;; line 0:684
    (global.set $__line (i32.const 684))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (i32.const 16))
    (local.set $t28 (local.get $t19)) ;; LP promoted P!19
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (local.get $t10)) ;; LP promoted P!10
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 4))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 4))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (local.set $t21 (local.get $t23)) ;; SP promoted P!21
    ;; line 0:685
    (global.set $__line (i32.const 685))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (local.get $t22)) ;; LP promoted P!22
    (local.set $t24 (i32.const 28))
    (local.set $t23 (i32.div_s (local.get $t23) (local.get $t24)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2))
      (local.get $t23))
    ;; line 0:687
    (global.set $__line (i32.const 687))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2)))) ;; LL L23
    (local.set $t24 (i32.const 1))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2))
      (local.get $t23))
    ;; line 0:688
    (global.set $__line (i32.const 688))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 84))) ;; LSTR
    (local.set $t27 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2)))) ;; LL L23
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:689
    (global.set $__line (i32.const 689))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 8192))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2))
      (local.get $t23))
    ;; line 0:691
    (global.set $__line (i32.const 691))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 8192))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2))
      (local.get $t23))
    ;; line 0:692
    (global.set $__line (i32.const 692))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $TB) (i32.const 14))) ;; LF L85
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t26)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t26)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:693
    (global.set $__line (i32.const 693))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 960))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2))
      (local.get $t23))
    ;; line 0:695
    (global.set $__line (i32.const 695))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 960))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2))
      (local.get $t23))
    ;; line 0:696
    (global.set $__line (i32.const 696))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t27 (local.get $t20)) ;; LP promoted P!20
    (local.set $t28 (local.get $t21)) ;; LP promoted P!21
    (local.set $t29 (i32.add (global.get $TB) (i32.const 22))) ;; LF L104
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (if (local.get $t23) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:698
    (global.set $__line (i32.const 698))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 89))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:699
    (global.set $__line (i32.const 699))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2))
      (local.get $t23))
    ;; line 0:700
    (global.set $__line (i32.const 700))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2))
      (local.get $t23))
    (local.set $t23 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2))
      (local.get $t23))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L200
    (local.set $t26 (i32.add (global.get $SB) (i32.const 99))) ;; LSTR
    (local.set $t27 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:702
    (global.set $__line (i32.const 702))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 66))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:704
    (global.set $__line (i32.const 704))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 66))
    (local.set $t27 (i32.const 2))
    (local.set $t28 (i32.const 960))
    (local.set $t29 (i32.const 720))
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.const 0))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2))
      (local.get $t23))
    ;; line 0:705
    (global.set $__line (i32.const 705))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 66))
    (local.set $t27 (i32.const 26))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.const 60))
    (local.set $t30 (i32.const 110))
    (local.set $t31 (i32.const 180))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 18)) (i32.const 2))
      (local.get $t23))
    ;; line 0:707
    (global.set $__line (i32.const 707))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 66))
    (local.set $t27 (i32.const 26))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.const 40))
    (local.set $t30 (i32.const 40))
    (local.set $t31 (i32.const 40))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2))
      (local.get $t23))
    ;; line 0:708
    (global.set $__line (i32.const 708))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 512))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2))
      (local.get $t23))
    ;; line 0:710
    (global.set $__line (i32.const 710))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 512))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (if (i32.gt_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L201
    ;; line 0:711
    (global.set $__line (i32.const 711))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.const 0))
    (local.set $t26 (local.get $t23)) ;; LP promoted P!23
    (local.set $t27 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (i32.store (i32.shl (local.get $t26) (i32.const 2)) (local.get $t25))
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t23 (local.get $t25)) ;; SP promoted P!23
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (if (i32.le_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L202
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (if (i32.eqz (local.get $t23)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L203
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 0:714
    (global.set $__line (i32.const 714))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    ;; line 0:715
    (global.set $__line (i32.const 715))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 23))) ;; LF L108
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:716
    (global.set $__line (i32.const 716))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 87))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 24))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    (if (local.get $t25) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 38))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 24))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    (if (i32.eqz (local.get $t25)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L206
    ;; line 0:717
    (global.set $__line (i32.const 717))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.const 1))
    (local.set $t26 (local.get $t23)) ;; LP promoted P!23
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t23 (local.get $t25)) ;; SP promoted P!23
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L205
    (local.set $t28 (i32.const 83))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 24))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    (if (local.get $t25) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 40))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 24))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    (if (i32.eqz (local.get $t25)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L208
    ;; line 0:718
    (global.set $__line (i32.const 718))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (local.set $t23 (local.get $t25)) ;; SP promoted P!23
      (local.set $__lab (i32.const 14)) (br $__dispatch)
      ) ;; close $__case_14 — LAB L207
    (local.set $t28 (i32.const 65))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 24))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    (if (local.get $t25) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 37))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 24))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    (if (i32.eqz (local.get $t25)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L210
    ;; line 0:719
    (global.set $__line (i32.const 719))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (local.get $t24)) ;; LP promoted P!24
    (local.set $t26 (i32.const 64))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (local.set $t24 (local.get $t25)) ;; SP promoted P!24
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L209
    (local.set $t28 (i32.const 68))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 24))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    (if (local.get $t25) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 39))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 24))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    (if (i32.eqz (local.get $t25)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
      ) ;; close $__case_17 — LAB L212
    ;; line 0:720
    (global.set $__line (i32.const 720))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.const 64))
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t24 (local.get $t25)) ;; SP promoted P!24
      (local.set $__lab (i32.const 18)) (br $__dispatch)
      ) ;; close $__case_18 — LAB L211
    (local.set $t25 (i32.const 0))
    (local.set $t26 (local.get $t23)) ;; LP promoted P!23
    (if (i32.eq  (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
    ;; line 0:722
    (global.set $__line (i32.const 722))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.const 8191))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t25 (i32.and (local.get $t25) (local.get $t26)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t25 (i32.load (i32.shl (local.get $t25) (i32.const 2))))
    (local.set $t26 (i32.const 16))
    (local.set $t25 (i32.mul (local.get $t25) (local.get $t26)))
    (local.set $t26 (local.get $t23)) ;; LP promoted P!23
    (local.set $t25 (i32.mul (local.get $t25) (local.get $t26)))
    (local.set $t26 (i32.const 1024))
    (local.set $t25 (i32.div_s (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 0:723
    (global.set $__line (i32.const 723))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 8191))
    (local.set $t27 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t26 (i32.and (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t26 (i32.load (i32.shl (local.get $t26) (i32.const 2))))
    (local.set $t27 (i32.const 16))
    (local.set $t26 (i32.mul (local.get $t26) (local.get $t27)))
    (local.set $t27 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (i32.mul (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.const 1024))
    (local.set $t26 (i32.div_s (local.get $t26) (local.get $t27)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    ;; line 0:724
    (global.set $__line (i32.const 724))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (local.get $t25)) ;; LP promoted P!25
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2))
      (local.get $t27))
    ;; line 0:725
    (global.set $__line (i32.const 725))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (local.get $t26)) ;; LP promoted P!26
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2))
      (local.get $t27))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      ) ;; close $__case_19 — LAB L213
    ;; line 0:726
    (global.set $__line (i32.const 726))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.const 0))
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (if (i32.eq  (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 0:728
    (global.set $__line (i32.const 728))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (local.get $t24)) ;; LP promoted P!24
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t26 (i32.const 8191))
    (local.set $t25 (i32.and (local.get $t25) (local.get $t26)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2))
      (local.get $t25))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L214
    (local.set $t28 (i32.add (global.get $TB) (i32.const 37))) ;; LF L192
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:730
    (global.set $__line (i32.const 730))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 16))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 512))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (if (local.get $t23) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L204
    ;; line 0:713
    (global.set $__line (i32.const 713))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:734
    (global.set $__line (i32.const 734))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:735
    (global.set $__line (i32.const 735))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 108))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:736
    (global.set $__line (i32.const 736))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t23))
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
  ) ;; end func $fn_L193

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L34) (ref.func $fn_L36) (ref.func $fn_L39) (ref.func $fn_L41) (ref.func $fn_L51) (ref.func $fn_L52) (ref.func $fn_L53) (ref.func $fn_L55) (ref.func $fn_L63) (ref.func $fn_L66) (ref.func $fn_L70) (ref.func $fn_L74) (ref.func $fn_L79) (ref.func $fn_L84) (ref.func $fn_L85) (ref.func $fn_L88) (ref.func $fn_L89) (ref.func $fn_L90) (ref.func $fn_L91) (ref.func $fn_L92) (ref.func $fn_L94) (ref.func $fn_L100) (ref.func $fn_L104) (ref.func $fn_L108) (ref.func $fn_L119) (ref.func $fn_L121) (ref.func $fn_L122) (ref.func $fn_L123) (ref.func $fn_L124) (ref.func $fn_L127) (ref.func $fn_L130) (ref.func $fn_L135) (ref.func $fn_L137) (ref.func $fn_L138) (ref.func $fn_L176) (ref.func $fn_L180) (ref.func $fn_L184) (ref.func $fn_L192) (ref.func $fn_L193))

  ;; static data — passive segment (112 words)
  (data $stat "\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\6C\6F\61\64\65\64\20\57\41\44\3A\20\00\00\00\32\4E\6F\20\57\41\44\20\61\73\73\65\74\2E\20\55\70\6C\6F\61\64\20\6F\6E\65\20\66\72\6F\6D\20\73\69\74\65\2F\74\65\78\74\75\72\65\73\2F\57\61\64\73\2F\0A\00\1E\41\73\73\65\74\20\69\73\20\61\6E\20\69\6D\61\67\65\2C\20\6E\6F\74\20\61\20\57\41\44\2E\0A\00\0F\54\72\75\6E\63\61\74\65\64\20\57\41\44\2E\0A\0F\4E\6F\20\6D\61\70\20\6D\61\72\6B\65\72\2E\0A\05\6D\61\70\3A\20\00\00\08\56\45\52\54\45\58\45\53\00\00\00\08\4C\49\4E\45\44\45\46\53\00\00\00\08\53\49\44\45\44\45\46\53\00\00\00\07\53\45\43\54\4F\52\53\05\4E\4F\44\45\53\00\00\08\53\53\45\43\54\4F\52\53\00\00\00\04\53\45\47\53\00\00\00\06\54\48\49\4E\47\53\00\12\4D\69\73\73\69\6E\67\20\6D\61\70\20\6C\75\6D\70\2E\0A\00\13\6E\6F\64\65\73\3A\20\25\6E\20\20\72\6F\6F\74\3D\25\6E\0A\26\4E\6F\20\70\6C\61\79\65\72\31\20\73\74\61\72\74\3B\20\73\70\61\77\6E\69\6E\67\20\61\74\20\28\30\2C\20\30\29\2E\0A\00\20\70\6C\61\79\65\72\20\73\74\61\72\74\20\20\70\78\3D\25\6E\20\70\79\3D\25\6E\20\70\61\3D\25\6E\0A\00\00\00\0C\64\62\73\70\20\65\78\69\74\65\64\0A\00\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 448))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 39))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 38))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 112))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 39))
)
 ;; end module
