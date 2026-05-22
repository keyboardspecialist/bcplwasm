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

  ;; SECTION: dwlt
  ;; BCPL fn lc (L45)
  (func $fn_L45 (export "fn_L45") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $Pb i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 65))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 90))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.const 32))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L46
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
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
  ) ;; end func $fn_L45

  ;; BCPL fn cp_substr (L47)
  (func $fn_L47 (export "fn_L47") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:183
    (global.set $__line (i32.const 183))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:184
    (global.set $__line (i32.const 184))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10)) (local.get $t8))
    ;; line 0:185
    (global.set $__line (i32.const 185))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L49
      ) ;; close $__case_1 — LAB L48
    ;; line 0:186
    (global.set $__line (i32.const 186))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.const 1))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store8 (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12)) (local.get $t10))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L49
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
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
  ) ;; end func $fn_L47

  ;; BCPL fn ends_with_wad (L50)
  (func $fn_L50 (export "fn_L50") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:189
    (global.set $__line (i32.const 189))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:190
    (global.set $__line (i32.const 190))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 4))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:191
    (global.set $__line (i32.const 191))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L51
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.const 4))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 0))) ;; LF L45
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
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.const 3))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L45
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
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.const 2))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L45
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
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L45
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
  ) ;; end func $fn_L50

  ;; BCPL fn try_load_wad (L52)
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
    ;; line 0:198
    (global.set $__line (i32.const 198))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $P) (i32.const 5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush t4 (pre-stack-up)
    ;; line 0:199
    (global.set $__line (i32.const 199))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.add (global.get $P) (i32.const 71)))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70)) ;; flush t70 (pre-stack-up)
    ;; line 0:200
    (global.set $__line (i32.const 200))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t104 (i32.const 0))
    (local.set $t105 (i32.const 0))
    (local.set $t106 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 416)) (local.get $t104)) ;; STORE slot 104
    (i32.store (i32.add (local.get $Pb) (i32.const 420)) (local.get $t105)) ;; STORE slot 105
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t106)) ;; STORE slot 106
    ;; line 0:201
    (global.set $__line (i32.const 201))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.const 81))
    (local.set $t111 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (local.get $Pb) (i32.const 444)) (local.get $t111))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (local.get $t112)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t112)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:202
    (global.set $__line (i32.const 202))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t108 (i32.const 0))
    (local.set $t107 (i32.load8_u (i32.add (i32.shl (local.get $t107) (i32.const 2)) (local.get $t108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 416)) (local.get $t107))
    (local.set $t104 (local.get $t107))
    ;; line 0:203
    (global.set $__line (i32.const 203))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 420)) (local.get $t107))
    (local.set $t105 (local.get $t107))
    ;; line 0:204
    (global.set $__line (i32.const 204))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t107))
    (local.set $t106 (local.get $t107))
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 416))))
    (if (i32.gt_s (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L53
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L56
      ) ;; close $__case_2 — LAB L55
    (local.set $t107 (i32.const 1))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t107 (i32.add (local.get $t107) (local.get $t108)))
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t107))
    (local.set $t106 (local.get $t107))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L56
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 416))))
    (if (i32.gt_s (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t107 (i32.load8_u (i32.add (i32.shl (local.get $t107) (i32.const 2)) (local.get $t108))))
    (local.set $t108 (i32.const 44))
    (if (i32.ne  (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L57
    ;; line 0:206
    (global.set $__line (i32.const 206))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t111 (i32.load (i32.add (local.get $Pb) (i32.const 420))))
    (local.set $t112 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t113 (i32.add (global.get $TB) (i32.const 2))) ;; LF L50
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
    ;; line 0:207
    (global.set $__line (i32.const 207))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t111 (i32.load (i32.add (local.get $Pb) (i32.const 420))))
    (local.set $t112 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t113 (i32.load (i32.add (local.get $Pb) (i32.const 280))))
    (local.set $t114 (i32.add (global.get $TB) (i32.const 1))) ;; LF L47
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
    ;; line 0:208
    (global.set $__line (i32.const 208))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.const 80))
    (local.set $t111 (i32.load (i32.add (local.get $Pb) (i32.const 280))))
    (local.set $t112 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
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
    ;; line 0:209
    (global.set $__line (i32.const 209))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.add (global.get $SB) (i32.const 35))) ;; LSTR
    (local.set $t111 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (local.get $t111)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t111)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:210
    (global.set $__line (i32.const 210))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 420))))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t109 (i32.const 1))
    (local.set $t108 (i32.sub (local.get $t108) (local.get $t109)))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (local.get $t107)) ;; STORE slot 107
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (local.get $t108)) ;; STORE slot 108
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L61
      ) ;; close $__case_5 — LAB L60
    ;; line 0:211
    (global.set $__line (i32.const 211))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t112 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t113 (i32.load (i32.add (local.get $Pb) (i32.const 428))))
    (local.set $t112 (i32.load8_u (i32.add (i32.shl (local.get $t112) (i32.const 2)) (local.get $t113))))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (local.get $Pb) (i32.const 448)) (local.get $t112))
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 444)) (local.get $t113)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 109)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t113)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t109 (i32.load (i32.add (local.get $Pb) (i32.const 428))))
    (local.set $t110 (i32.const 1))
    (local.set $t109 (i32.add (local.get $t109) (local.get $t110)))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (local.get $t109))
    (local.set $t107 (local.get $t109))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L61
    (local.set $t109 (i32.load (i32.add (local.get $Pb) (i32.const 428))))
    (local.set $t110 (i32.load (i32.add (local.get $Pb) (i32.const 432))))
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
    ;; line 0:212
    (global.set $__line (i32.const 212))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t107))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L59
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L58
    ;; line 0:213
    (global.set $__line (i32.const 213))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 1))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t107 (i32.add (local.get $t107) (local.get $t108)))
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t107))
    (local.set $t106 (local.get $t107))
    ;; line 0:216
    (global.set $__line (i32.const 216))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (i32.store (i32.add (local.get $Pb) (i32.const 420)) (local.get $t107))
    (local.set $t105 (local.get $t107))
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 416))))
    (if (i32.le_s (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L54
    ;; line 0:205
    (global.set $__line (i32.const 205))
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
  ) ;; end func $fn_L52

  ;; BCPL fn rd_u32_le (L62)
  (func $fn_L62 (export "fn_L62") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:221
    (global.set $__line (i32.const 221))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:222
    (global.set $__line (i32.const 222))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:223
    (global.set $__line (i32.const 223))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.const 2))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:224
    (global.set $__line (i32.const 224))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.const 3))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:225
    (global.set $__line (i32.const 225))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.const 8))
    (local.set $t9 (i32.shl (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.or (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.const 16))
    (local.set $t10 (i32.shl (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.or (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L62

  ;; BCPL fn rd_u16_le (L63)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L63

  ;; BCPL fn rd_i16_le (L64)
  (func $fn_L64 (export "fn_L64") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:231
    (global.set $__line (i32.const 231))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:232
    (global.set $__line (i32.const 232))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 32768))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:233
    (global.set $__line (i32.const 233))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 65536))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L65
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
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
  ) ;; end func $fn_L64

  ;; BCPL fn lump_name_eq (L66)
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
    ;; line 0:237
    (global.set $__line (i32.const 237))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:238
    (global.set $__line (i32.const 238))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 8))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:239
    (global.set $__line (i32.const 239))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L67
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L69
      ) ;; close $__case_2 — LAB L68
    ;; line 0:240
    (global.set $__line (i32.const 240))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.const 8))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (if (i32.eq  (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:241
    (global.set $__line (i32.const 241))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L70
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L69
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L71
    ;; line 0:242
    (global.set $__line (i32.const 242))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.const 8))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (local.set $t10 (i32.const 0))
    (if (i32.eq  (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:243
    (global.set $__line (i32.const 243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L73
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L72
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
  ) ;; end func $fn_L66

  ;; BCPL fn is_map_marker (L74)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:247
    (global.set $__line (i32.const 247))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 8))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:248
    (global.set $__line (i32.const 248))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:249
    (global.set $__line (i32.const 249))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:250
    (global.set $__line (i32.const 250))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.const 2))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:251
    (global.set $__line (i32.const 251))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.const 3))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:252
    (global.set $__line (i32.const 252))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.const 4))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:253
    (global.set $__line (i32.const 253))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 69))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 77))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:254
    (global.set $__line (i32.const 254))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L75
    ;; line 0:255
    (global.set $__line (i32.const 255))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 77))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 65))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 80))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:256
    (global.set $__line (i32.const 256))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L76
    ;; line 0:257
    (global.set $__line (i32.const 257))
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
  ) ;; end func $fn_L74

  ;; BCPL fn pr_lump_name (L77)
  (func $fn_L77 (export "fn_L77") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:261
    (global.set $__line (i32.const 261))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L79
      ) ;; close $__case_1 — LAB L78
    ;; line 0:262
    (global.set $__line (i32.const 262))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.const 8))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:263
    (global.set $__line (i32.const 263))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.eq  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:264
    (global.set $__line (i32.const 264))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L79
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L80
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
  ) ;; end func $fn_L77

  ;; BCPL fn find_first_map (L81)
  (func $fn_L81 (export "fn_L81") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:268
    (global.set $__line (i32.const 268))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L83
      ) ;; close $__case_1 — LAB L82
    ;; line 0:269
    (global.set $__line (i32.const 269))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 16))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:270
    (global.set $__line (i32.const 270))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 8))) ;; LF L74
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
    ;; line 0:271
    (global.set $__line (i32.const 271))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L84
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L83
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
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
  ) ;; end func $fn_L81

  ;; BCPL fn find_map_lump (L85)
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
    ;; line 0:276
    (global.set $__line (i32.const 276))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 12))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:277
    (global.set $__line (i32.const 277))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:278
    (global.set $__line (i32.const 278))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L86
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L88
      ) ;; close $__case_2 — LAB L87
    ;; line 0:279
    (global.set $__line (i32.const 279))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 16))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:280
    (global.set $__line (i32.const 280))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 7))) ;; LF L66
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
    ;; line 0:281
    (global.set $__line (i32.const 281))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L89
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L88
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
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
  ) ;; end func $fn_L85

  ;; BCPL fn name8_eq (L90)
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
    ;; line 0:288
    (global.set $__line (i32.const 288))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L91
    ;; line 0:289
    (global.set $__line (i32.const 289))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:290
    (global.set $__line (i32.const 290))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:291
    (global.set $__line (i32.const 291))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:292
    (global.set $__line (i32.const 292))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L93
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.eq  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:293
    (global.set $__line (i32.const 293))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L94
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L92
    (local.set $t7 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L90

  ;; BCPL fn find_lump_global (L95)
  (func $fn_L95 (export "fn_L95") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:300
    (global.set $__line (i32.const 300))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L97
      ) ;; close $__case_1 — LAB L96
    ;; line 0:301
    (global.set $__line (i32.const 301))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 16))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 8))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:302
    (global.set $__line (i32.const 302))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 12))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:303
    (global.set $__line (i32.const 303))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L98
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L97
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t5))
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
  ) ;; end func $fn_L95

  ;; BCPL fn fsin (L99)
  (func $fn_L99 (export "fn_L99") (type $bcpl_fn)
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
    ;; line 0:310
    (global.set $__line (i32.const 310))
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
    ;; line 0:311
    (global.set $__line (i32.const 311))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1078530007))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t9))
    (local.set $t4 (local.get $t9))
    ;; line 0:312
    (global.set $__line (i32.const 312))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 1073741824))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9))
    (local.set $t5 (local.get $t9))
    ;; line 0:313
    (global.set $__line (i32.const 313))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L101
      ) ;; close $__case_1 — LAB L100
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L101
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.gt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:314
    (global.set $__line (i32.const 314))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L103
      ) ;; close $__case_3 — LAB L102
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L103
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.lt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:315
    (global.set $__line (i32.const 315))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    ;; line 0:316
    (global.set $__line (i32.const 316))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:317
    (global.set $__line (i32.const 317))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1086324736))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:318
    (global.set $__line (i32.const 318))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1101004800))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:319
    (global.set $__line (i32.const 319))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1109917696))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:320
    (global.set $__line (i32.const 320))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1116733440))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:321
    (global.set $__line (i32.const 321))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
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
  ) ;; end func $fn_L99

  ;; BCPL fn fcos (L104)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t7 (i32.const 1070141402))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t7)) (f32.reinterpret_i32 (local.get $t8)))))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 14))) ;; LF L99
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L104

  ;; BCPL fn buildtrig (L105)
  (func $fn_L105 (export "fn_L105") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:327
    (global.set $__line (i32.const 327))
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
    ;; line 0:328
    (global.set $__line (i32.const 328))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:329
    (global.set $__line (i32.const 329))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1174405120))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
    ;; line 0:330
    (global.set $__line (i32.const 330))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t8))
    (local.set $t3 (local.get $t8))
    ;; line 0:331
    (global.set $__line (i32.const 331))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1086918615))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t8 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t8))
    (local.set $t4 (local.get $t8))
    ;; line 0:332
    (global.set $__line (i32.const 332))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 8191))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L107
      ) ;; close $__case_1 — LAB L106
    ;; line 0:333
    (global.set $__line (i32.const 333))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 14))) ;; LF L99
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
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t10))
    (local.set $t5 (local.get $t10))
    ;; line 0:334
    (global.set $__line (i32.const 334))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 15))) ;; LF L104
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
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t10))
    (local.set $t6 (local.get $t10))
    ;; line 0:335
    (global.set $__line (i32.const 335))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:336
    (global.set $__line (i32.const 336))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:337
    (global.set $__line (i32.const 337))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t10))
    (local.set $t3 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L107
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
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
  ) ;; end func $fn_L105

  ;; BCPL fn isqrt (L108)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:343
    (global.set $__line (i32.const 343))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:344
    (global.set $__line (i32.const 344))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:345
    (global.set $__line (i32.const 345))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:346
    (global.set $__line (i32.const 346))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L109
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    ;; line 0:347
    (global.set $__line (i32.const 347))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L110
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    ;; line 0:349
    (global.set $__line (i32.const 349))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L111
    ;; line 0:348
    (global.set $__line (i32.const 348))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    ;; FNRN
    (local.set $__res (local.get $t6))
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
  ) ;; end func $fn_L108

  ;; BCPL fn sd_sector (L112)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 30))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 28))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L112

  ;; BCPL fn sd_texoffx (L113)
  (func $fn_L113 (export "fn_L113") (type $bcpl_fn)
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
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 30))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 0))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L113

  ;; BCPL fn sec_floor (L114)
  (func $fn_L114 (export "fn_L114") (type $bcpl_fn)
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
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 0))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L114

  ;; BCPL fn sec_ceil (L115)
  (func $fn_L115 (export "fn_L115") (type $bcpl_fn)
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
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 2))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L115

  ;; BCPL fn sec_light (L116)
  (func $fn_L116 (export "fn_L116") (type $bcpl_fn)
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
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 20))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L116

  ;; BCPL fn point_on_side (L117)
  (func $fn_L117 (export "fn_L117") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:372
    (global.set $__line (i32.const 372))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:373
    (global.set $__line (i32.const 373))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:374
    (global.set $__line (i32.const 374))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 4))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 0:375
    (global.set $__line (i32.const 375))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 6))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 0:376
    (global.set $__line (i32.const 376))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:377
    (global.set $__line (i32.const 377))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:378
    (global.set $__line (i32.const 378))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t13 (i32.mul (local.get $t13) (local.get $t14)))
    (if (i32.ge_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:379
    (global.set $__line (i32.const 379))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L118
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
  ) ;; end func $fn_L117

  ;; BCPL fn point_in_subsector (L119)
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
    ;; line 0:383
    (global.set $__line (i32.const 383))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:384
    (global.set $__line (i32.const 384))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L121
      ) ;; close $__case_1 — LAB L120
    (local.set $t6 (i32.const 28))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:386
    (global.set $__line (i32.const 386))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 23))) ;; LF L117
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
    ;; line 0:387
    (global.set $__line (i32.const 387))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:388
    (global.set $__line (i32.const 388))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 24))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8))
    (local.set $t5 (local.get $t8))
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L124
      ) ;; close $__case_2 — LAB L122
    ;; line 0:389
    (global.set $__line (i32.const 389))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 26))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8))
    (local.set $t5 (local.get $t8))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L124
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L121
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.and (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 0))
    (if (i32.eq  (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:385
    (global.set $__line (i32.const 385))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const -32769))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
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
  ) ;; end func $fn_L119

  ;; BCPL fn floor_at (L125)
  (func $fn_L125 (export "fn_L125") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:395
    (global.set $__line (i32.const 395))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 24))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:396
    (global.set $__line (i32.const 396))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 4))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2)))) ;; LL L23
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:397
    (global.set $__line (i32.const 397))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:398
    (global.set $__line (i32.const 398))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 12))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:399
    (global.set $__line (i32.const 399))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 6))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 0:400
    (global.set $__line (i32.const 400))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t14 (i32.const 8))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; line 0:401
    (global.set $__line (i32.const 401))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 14))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:402
    (global.set $__line (i32.const 402))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.ne  (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 10))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; RES L126: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L127
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 12))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; RES L126: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L126
    ;; RSTACK 12
    (local.set $t12 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:403
    (global.set $__line (i32.const 403))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t14 (i32.const 0))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:405
    (global.set $__line (i32.const 405))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L128
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t20 (i32.add (global.get $TB) (i32.const 18))) ;; LF L112
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (local.set $t17 (i32.add (global.get $TB) (i32.const 20))) ;; LF L114
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
  ) ;; end func $fn_L125

  ;; BCPL fn find_player_start (L129)
  (func $fn_L129 (export "fn_L129") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:411
    (global.set $__line (i32.const 411))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 10))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:412
    (global.set $__line (i32.const 412))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L131
      ) ;; close $__case_1 — LAB L130
    ;; line 0:413
    (global.set $__line (i32.const 413))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 10))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:414
    (global.set $__line (i32.const 414))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.const 6))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; line 0:415
    (global.set $__line (i32.const 415))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:416
    (global.set $__line (i32.const 416))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    ;; line 0:417
    (global.set $__line (i32.const 417))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
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
      (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2))
      (local.get $t12))
    ;; line 0:418
    (global.set $__line (i32.const 418))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.const 2))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
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
      (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2))
      (local.get $t12))
    ;; line 0:419
    (global.set $__line (i32.const 419))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 8192))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 360))
    (local.set $t12 (i32.div_s (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 8191))
    (local.set $t12 (i32.and (local.get $t12) (local.get $t13)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2))
      (local.get $t12))
    ;; line 0:420
    (global.set $__line (i32.const 420))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L132
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L131
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:421
    (global.set $__line (i32.const 421))
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
  ) ;; end func $fn_L129

  ;; BCPL fn poll_events (L133)
  (func $fn_L133 (export "fn_L133") (type $bcpl_fn)
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
    ;; line 0:427
    (global.set $__line (i32.const 427))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    ;; line 0:428
    (global.set $__line (i32.const 428))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L135
      ) ;; close $__case_1 — LAB L134
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:430
    (global.set $__line (i32.const 430))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 2))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:431
    (global.set $__line (i32.const 431))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 2))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:432
    (global.set $__line (i32.const 432))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t15 (i32.const 512))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:433
    (global.set $__line (i32.const 433))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 1))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L139
    (local.set $t14 (i32.const 27))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:434
    (global.set $__line (i32.const 434))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L138
      ) ;; close $__case_3 — LAB L140
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L138
      ) ;; close $__case_4 — LAB L136
    (local.set $t14 (i32.const 3))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:436
    (global.set $__line (i32.const 436))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t15 (i32.const 512))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:437
    (global.set $__line (i32.const 437))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L142
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L141
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L138
    (local.set $t14 (i32.const 12))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:438
    (global.set $__line (i32.const 438))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L143
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L135
    (local.set $t15 (i32.const 66))
    (local.set $t16 (i32.const 20))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
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
  ) ;; end func $fn_L133

  ;; BCPL fn key_down (L144)
  (func $fn_L144 (export "fn_L144") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $Pb i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 512))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L145
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
  ) ;; end func $fn_L144

  ;; BCPL fn load_palette (L146)
  (func $fn_L146 (export "fn_L146") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:447
    (global.set $__line (i32.const 447))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 255))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L148
      ) ;; close $__case_1 — LAB L147
    ;; line 0:448
    (global.set $__line (i32.const 448))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:449
    (global.set $__line (i32.const 449))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:450
    (global.set $__line (i32.const 450))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:451
    (global.set $__line (i32.const 451))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:452
    (global.set $__line (i32.const 452))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 255))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.and (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 24))
    (local.set $t10 (i32.shl (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 255))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.and (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 16))
    (local.set $t11 (i32.shl (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.or (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 255))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t11 (i32.and (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 8))
    (local.set $t11 (i32.shl (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.or (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 255))
    (local.set $t10 (i32.or (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L148
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
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
  ) ;; end func $fn_L146

  ;; BCPL fn find_tex1_def (L149)
  (func $fn_L149 (export "fn_L149") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:461
    (global.set $__line (i32.const 461))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L151
      ) ;; close $__case_1 — LAB L150
    ;; line 0:462
    (global.set $__line (i32.const 462))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 4))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 4))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:463
    (global.set $__line (i32.const 463))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:464
    (global.set $__line (i32.const 464))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 12))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:465
    (global.set $__line (i32.const 465))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L152
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L151
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
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
  ) ;; end func $fn_L149

  ;; BCPL fn tex_cache_lookup (L153)
  (func $fn_L153 (export "fn_L153") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:471
    (global.set $__line (i32.const 471))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L155
      ) ;; close $__case_1 — LAB L154
    ;; line 0:472
    (global.set $__line (i32.const 472))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 2))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 2))
    (local.set $t7 (i32.shl (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:473
    (global.set $__line (i32.const 473))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 12))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:474
    (global.set $__line (i32.const 474))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L156
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L155
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t5))
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
  ) ;; end func $fn_L153

  ;; BCPL fn tex_put (L157)
  (func $fn_L157 (export "fn_L157") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:482
    (global.set $__line (i32.const 482))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:483
    (global.set $__line (i32.const 483))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
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
  ) ;; end func $fn_L157

  ;; BCPL fn stamp_patch_column (L158)
  (func $fn_L158 (export "fn_L158") (type $bcpl_fn)
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
    ;; line 0:488
    (global.set $__line (i32.const 488))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 8))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:490
    (global.set $__line (i32.const 490))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    ;; line 0:491
    (global.set $__line (i32.const 491))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:492
    (global.set $__line (i32.const 492))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:493
    (global.set $__line (i32.const 493))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:494
    (global.set $__line (i32.const 494))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:495
    (global.set $__line (i32.const 495))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t17 (i32.const 0))
    (if (i32.lt_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.lt_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L160
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L159
    ;; line 0:496
    (global.set $__line (i32.const 496))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t16 (i32.load8_u (i32.add (i32.shl (local.get $t16) (i32.const 2)) (local.get $t17))))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t16))
    (local.set $t15 (local.get $t16))
    ;; line 0:497
    (global.set $__line (i32.const 497))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.const 255))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (if (i32.eq  (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L161
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.const 1))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t16 (i32.load8_u (i32.add (i32.shl (local.get $t16) (i32.const 2)) (local.get $t17))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:499
    (global.set $__line (i32.const 499))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t19 (i32.const 1))
    (local.set $t18 (i32.sub (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L164
      ) ;; close $__case_4 — LAB L163
    ;; line 0:500
    (global.set $__line (i32.const 500))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.const 3))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t19 (i32.load8_u (i32.add (i32.shl (local.get $t19) (i32.const 2)) (local.get $t20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:501
    (global.set $__line (i32.const 501))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:502
    (global.set $__line (i32.const 502))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t22 (i32.const 0))
    (if (i32.lt_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ge_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:503
    (global.set $__line (i32.const 503))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 32))) ;; LF L157
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 21)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L165
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.const 1))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t19))
    (local.set $t17 (local.get $t19))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L164
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:504
    (global.set $__line (i32.const 504))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.const 4))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17))
    (local.set $t14 (local.get $t17))
    ;; line 0:506
    (global.set $__line (i32.const 506))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t17 (i32.load8_u (i32.add (i32.shl (local.get $t17) (i32.const 2)) (local.get $t18))))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17))
    (local.set $t15 (local.get $t17))
    (local.set $t16 (i32.const 255))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (if (i32.ne  (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L162
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
  ) ;; end func $fn_L158

  ;; BCPL fn composite_texture (L166)
  (func $fn_L166 (export "fn_L166") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:513
    (global.set $__line (i32.const 513))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 30))) ;; LF L149
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:514
    (global.set $__line (i32.const 514))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:515
    (global.set $__line (i32.const 515))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:516
    (global.set $__line (i32.const 516))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:517
    (global.set $__line (i32.const 517))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:518
    (global.set $__line (i32.const 518))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:519
    (global.set $__line (i32.const 519))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:521
    (global.set $__line (i32.const 521))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L167
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t12 (i32.const 128))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:522
    (global.set $__line (i32.const 522))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L168
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 12))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t11))
    (local.set $t6 (local.get $t11))
    ;; line 0:524
    (global.set $__line (i32.const 524))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 14))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t11))
    (local.set $t7 (local.get $t11))
    ;; line 0:525
    (global.set $__line (i32.const 525))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 20))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11))
    (local.set $t8 (local.get $t11))
    ;; line 0:526
    (global.set $__line (i32.const 526))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.const 0))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.const 0))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L170
    ;; line 0:527
    (global.set $__line (i32.const 527))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L169
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t14 (i32.mul (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    ;; line 0:529
    (global.set $__line (i32.const 529))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:530
    (global.set $__line (i32.const 530))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L171
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L173
      ) ;; close $__case_6 — LAB L172
    ;; line 0:532
    (global.set $__line (i32.const 532))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L173
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
      (local.set $__lab (i32.const 12)) (br $__dispatch) ;; JUMP L175
      ) ;; close $__case_8 — LAB L174
    ;; line 0:534
    (global.set $__line (i32.const 534))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 22))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.const 10))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.mul (local.get $t14) (local.get $t15)))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:535
    (global.set $__line (i32.const 535))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    ;; line 0:536
    (global.set $__line (i32.const 536))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t19 (i32.const 2))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t20 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 15)))
    (local.set $t15 (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; flush FNAP result
    ;; line 0:537
    (global.set $__line (i32.const 537))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t20 (i32.const 4))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    ;; line 0:538
    (global.set $__line (i32.const 538))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 8))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t17 (i32.mul (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2)))) ;; LL L27
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:539
    (global.set $__line (i32.const 539))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.add (global.get $TB) (i32.const 13))) ;; LF L95
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    ;; line 0:540
    (global.set $__line (i32.const 540))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:541
    (global.set $__line (i32.const 541))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:542
    (global.set $__line (i32.const 542))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    ;; line 0:543
    (global.set $__line (i32.const 543))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t23 (i32.const 0))
    (if (i32.lt_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:544
    (global.set $__line (i32.const 544))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 16))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t22))
    (local.set $t21 (local.get $t22))
    ;; line 0:545
    (global.set $__line (i32.const 545))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 22)))
    (local.set $t22 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t22))
    (local.set $t19 (local.get $t22))
    ;; line 0:546
    (global.set $__line (i32.const 546))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 22)))
    (local.set $t22 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t22))
    (local.set $t20 (local.get $t22))
    ;; line 0:547
    (global.set $__line (i32.const 547))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t24 (i32.const 1))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L178
      ) ;; close $__case_9 — LAB L177
    ;; line 0:548
    (global.set $__line (i32.const 548))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 33))) ;; LF L158
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t25 (i32.const 1))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t24))
    (local.set $t22 (local.get $t24))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L178
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (if (i32.le_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L176
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L175
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:549
    (global.set $__line (i32.const 549))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 4))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11))
    (local.set $t10 (local.get $t11))
    ;; line 0:554
    (global.set $__line (i32.const 554))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.gt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L179
    ;; line 0:555
    (global.set $__line (i32.const 555))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t13 (i32.load8_u (i32.add (i32.shl (local.get $t13) (i32.const 2)) (local.get $t14))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t15 (i32.const 8))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store8 (i32.add (i32.shl (local.get $t14) (i32.const 2)) (local.get $t15)) (local.get $t13))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
      ) ;; close $__case_14 — LAB L180
    ;; line 0:556
    (global.set $__line (i32.const 556))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:557
    (global.set $__line (i32.const 557))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:558
    (global.set $__line (i32.const 558))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:559
    (global.set $__line (i32.const 559))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2))
      (local.get $t11))
    ;; line 0:560
    (global.set $__line (i32.const 560))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
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
  ) ;; end func $fn_L166

  ;; BCPL fn ensure_sidedef_tex (L181)
  (func $fn_L181 (export "fn_L181") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:567
    (global.set $__line (i32.const 567))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 30))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.mul (local.get $t5) (local.get $t6)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:568
    (global.set $__line (i32.const 568))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:569
    (global.set $__line (i32.const 569))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:570
    (global.set $__line (i32.const 570))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 45))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (local.set $t9 (i32.const 0))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:572
    (global.set $__line (i32.const 572))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L182
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:573
    (global.set $__line (i32.const 573))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L183
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 31))) ;; LF L153
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
    ;; line 0:574
    (global.set $__line (i32.const 574))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 0))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:575
    (global.set $__line (i32.const 575))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L184
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 34))) ;; LF L166
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t8))
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
  ) ;; end func $fn_L181

  ;; BCPL fn prebuild_textures (L185)
  (func $fn_L185 (export "fn_L185") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:580
    (global.set $__line (i32.const 580))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L187
      ) ;; close $__case_1 — LAB L186
    ;; line 0:581
    (global.set $__line (i32.const 581))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 4))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:582
    (global.set $__line (i32.const 582))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 12))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:583
    (global.set $__line (i32.const 583))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 20))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L187
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:584
    (global.set $__line (i32.const 584))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 39))) ;; LSTR
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
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
  ) ;; end func $fn_L185

  ;; BCPL fn cam_x (L188)
  (func $fn_L188 (export "fn_L188") (type $bcpl_fn)
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
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:591
    (global.set $__line (i32.const 591))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:592
    (global.set $__line (i32.const 592))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:593
    (global.set $__line (i32.const 593))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 8191))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 8191))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L188

  ;; BCPL fn cam_y (L189)
  (func $fn_L189 (export "fn_L189") (type $bcpl_fn)
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
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:597
    (global.set $__line (i32.const 597))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:598
    (global.set $__line (i32.const 598))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:599
    (global.set $__line (i32.const 599))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 8191))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 8191))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L189

  ;; BCPL fn front_facing (L190)
  (func $fn_L190 (export "fn_L190") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:603
    (global.set $__line (i32.const 603))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:604
    (global.set $__line (i32.const 604))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:605
    (global.set $__line (i32.const 605))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L190

  ;; BCPL fn light_to_col (L191)
  (func $fn_L191 (export "fn_L191") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:609
    (global.set $__line (i32.const 609))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:610
    (global.set $__line (i32.const 610))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.const 40))
    (if (i32.ge_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:611
    (global.set $__line (i32.const 611))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 40))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L192
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.const 255))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:612
    (global.set $__line (i32.const 612))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 255))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L193
    (local.set $t8 (i32.const 66))
    (local.set $t9 (i32.const 26))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
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
  ) ;; end func $fn_L191

  ;; BCPL fn reset_clip (L194)
  (func $fn_L194 (export "fn_L194") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:616
    (global.set $__line (i32.const 616))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.gt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L195
    ;; line 0:617
    (global.set $__line (i32.const 617))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    (local.set $t5 (i32.const 719))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L196
    (local.set $t3 (i32.const 960))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2))
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
  ) ;; end func $fn_L194

  ;; BCPL fn close_column (L197)
  (func $fn_L197 (export "fn_L197") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:621
    (global.set $__line (i32.const 621))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:622
    (global.set $__line (i32.const 622))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2)))) ;; LL L38
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2))
      (local.get $t4))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L198
    (local.set $t4 (i32.const 720))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    ;; line 0:623
    (global.set $__line (i32.const 623))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const -1))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
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
  ) ;; end func $fn_L197

  ;; BCPL fn vline_clipped (L199)
  (func $fn_L199 (export "fn_L199") (type $bcpl_fn)
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
    ;; line 0:627
    (global.set $__line (i32.const 627))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:628
    (global.set $__line (i32.const 628))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:629
    (global.set $__line (i32.const 629))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:630
    (global.set $__line (i32.const 630))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t10))
    (local.set $t4 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t10))
    (local.set $t5 (local.get $t10))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L200
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:631
    (global.set $__line (i32.const 631))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t9))
    (local.set $t4 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L201
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:632
    (global.set $__line (i32.const 632))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9))
    (local.set $t5 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L202
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:633
    (global.set $__line (i32.const 633))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 66))
    (local.set $t13 (i32.const 29))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
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
      ) ;; close $__case_4 — LAB L203
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
  ) ;; end func $fn_L199

  ;; BCPL fn project_y (L204)
  (func $fn_L204 (export "fn_L204") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    (local.set $t5 (i32.const 360))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 34)) (i32.const 2)))) ;; LL L44
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 480))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L204

  ;; BCPL fn draw_textured_band (L205)
  (func $fn_L205 (export "fn_L205") (type $bcpl_fn)
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
    ;; line 0:640
    (global.set $__line (i32.const 640))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 0))
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:642
    (global.set $__line (i32.const 642))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 43))) ;; LF L199
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L206
    ;; line 0:643
    (global.set $__line (i32.const 643))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:644
    (global.set $__line (i32.const 644))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:645
    (global.set $__line (i32.const 645))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:646
    (global.set $__line (i32.const 646))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 65536))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t14 (i32.mul (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.const 480))
    (local.set $t14 (i32.div_s (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:647
    (global.set $__line (i32.const 647))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.rem_s (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.rem_s (local.get $t15) (local.get $t16)))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:650
    (global.set $__line (i32.const 650))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.const 65535))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t16 (i32.and (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t18 (i32.const 16))
    (local.set $t17 (i32.shl (local.get $t17) (local.get $t18)))
    (local.set $t16 (i32.or (local.get $t16) (local.get $t17)))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:651
    (global.set $__line (i32.const 651))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:652
    (global.set $__line (i32.const 652))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    ;; line 0:653
    (global.set $__line (i32.const 653))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t20 (i32.load (i32.shl (local.get $t20) (i32.const 2))))
    (if (i32.ge_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:654
    (global.set $__line (i32.const 654))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t19))
    (local.set $t17 (local.get $t19))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L207
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t20 (i32.load (i32.shl (local.get $t20) (i32.const 2))))
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:655
    (global.set $__line (i32.const 655))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t19))
    (local.set $t18 (local.get $t19))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L208
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (if (i32.gt_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:656
    (global.set $__line (i32.const 656))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 86))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 19)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_4 — LAB L209
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
  ) ;; end func $fn_L205

  ;; BCPL fn render_seg (L210)
  (func $fn_L210 (export "fn_L210") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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
    ;; line 0:664
    (global.set $__line (i32.const 664))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:665
    (global.set $__line (i32.const 665))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:666
    (global.set $__line (i32.const 666))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:667
    (global.set $__line (i32.const 667))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:668
    (global.set $__line (i32.const 668))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:669
    (global.set $__line (i32.const 669))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    ;; line 0:670
    (global.set $__line (i32.const 670))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (local.set $t26 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    ;; line 0:671
    (global.set $__line (i32.const 671))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    ;; line 0:672
    (global.set $__line (i32.const 672))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.const 0))
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
    ;; line 0:673
    (global.set $__line (i32.const 673))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.const 0))
    (local.set $t34 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33)) ;; STORE slot 33
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34)) ;; STORE slot 34
    ;; line 0:674
    (global.set $__line (i32.const 674))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t35 (i32.const 0))
    (local.set $t36 (i32.const 0))
    (local.set $t37 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35)) ;; STORE slot 35
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36)) ;; STORE slot 36
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; STORE slot 37
    ;; line 0:675
    (global.set $__line (i32.const 675))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t38 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t38)) ;; STORE slot 38
    ;; line 0:676
    (global.set $__line (i32.const 676))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t39 (i32.const 0))
    (local.set $t40 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39)) ;; STORE slot 39
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40)) ;; STORE slot 40
    ;; line 0:677
    (global.set $__line (i32.const 677))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t41 (i32.const 0))
    (local.set $t42 (i32.const 0))
    (local.set $t43 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41)) ;; STORE slot 41
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t42)) ;; STORE slot 42
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t43)) ;; STORE slot 43
    ;; line 0:678
    (global.set $__line (i32.const 678))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t44 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 176)) (local.get $t44)) ;; STORE slot 44
    ;; line 0:679
    (global.set $__line (i32.const 679))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t45 (i32.const -1))
    (local.set $t46 (i32.const -1))
    (local.set $t47 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 180)) (local.get $t45)) ;; STORE slot 45
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t46)) ;; STORE slot 46
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (local.get $t47)) ;; STORE slot 47
    ;; line 0:680
    (global.set $__line (i32.const 680))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t52 (i32.const 0))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t48))
    (local.set $t4 (local.get $t48))
    ;; line 0:682
    (global.set $__line (i32.const 682))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t52 (i32.const 2))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t48))
    (local.set $t5 (local.get $t48))
    ;; line 0:683
    (global.set $__line (i32.const 683))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t52 (i32.const 6))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t48))
    (local.set $t6 (local.get $t48))
    ;; line 0:684
    (global.set $__line (i32.const 684))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t52 (i32.const 8))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t48))
    (local.set $t7 (local.get $t48))
    ;; line 0:685
    (global.set $__line (i32.const 685))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t52 (i32.const 10))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t48))
    (local.set $t8 (local.get $t48))
    ;; line 0:686
    (global.set $__line (i32.const 686))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 14))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t48 (i32.mul (local.get $t48) (local.get $t49)))
    (local.set $t49 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t48 (i32.add (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t48))
    (local.set $t9 (local.get $t48))
    ;; line 0:687
    (global.set $__line (i32.const 687))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 0))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ne  (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:688
    (global.set $__line (i32.const 688))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t52 (i32.const 10))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t48))
    (local.set $t10 (local.get $t48))
    ;; line 0:689
    (global.set $__line (i32.const 689))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t52 (i32.const 12))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t48))
    (local.set $t11 (local.get $t48))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L213
      ) ;; close $__case_1 — LAB L211
    ;; line 0:690
    (global.set $__line (i32.const 690))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t52 (i32.const 12))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t48))
    (local.set $t10 (local.get $t48))
    ;; line 0:691
    (global.set $__line (i32.const 691))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t52 (i32.const 10))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t48))
    (local.set $t11 (local.get $t48))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L213
    ;; line 0:692
    (global.set $__line (i32.const 692))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t49 (i32.const 0))
    (if (i32.ge_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_3 — LAB L214
    ;; line 0:693
    (global.set $__line (i32.const 693))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 18))) ;; LF L112
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t48))
    (local.set $t12 (local.get $t48))
    ;; line 0:695
    (global.set $__line (i32.const 695))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t49 (i32.const 0))
    (if (i32.ge_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_4 — LAB L215
    ;; line 0:696
    (global.set $__line (i32.const 696))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 20))) ;; LF L114
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t48))
    (local.set $t22 (local.get $t48))
    ;; line 0:697
    (global.set $__line (i32.const 697))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 21))) ;; LF L115
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t48))
    (local.set $t23 (local.get $t48))
    ;; line 0:698
    (global.set $__line (i32.const 698))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 22))) ;; LF L116
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t48))
    (local.set $t24 (local.get $t48))
    ;; line 0:699
    (global.set $__line (i32.const 699))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 19))) ;; LF L113
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t48 (i32.add (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 176)) (local.get $t48))
    (local.set $t44 (local.get $t48))
    ;; line 0:700
    (global.set $__line (i32.const 700))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t49 (i32.const 0))
    (local.set $t48 (i32.sub (i32.const 0) (i32.ge_s (local.get $t48) (local.get $t49))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t48))
    (local.set $t27 (local.get $t48))
    ;; line 0:702
    (global.set $__line (i32.const 702))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (if (i32.eqz (local.get $t48)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:703
    (global.set $__line (i32.const 703))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 18))) ;; LF L112
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t48))
    (local.set $t13 (local.get $t48))
    ;; line 0:704
    (global.set $__line (i32.const 704))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t49 (i32.const 0))
    (if (i32.ge_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:705
    (global.set $__line (i32.const 705))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t48))
    (local.set $t27 (local.get $t48))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L217
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (if (i32.eqz (local.get $t48)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:706
    (global.set $__line (i32.const 706))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 20))) ;; LF L114
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t48))
    (local.set $t25 (local.get $t48))
    ;; line 0:707
    (global.set $__line (i32.const 707))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 21))) ;; LF L115
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t48))
    (local.set $t26 (local.get $t48))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L218
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L216
    ;; line 0:708
    (global.set $__line (i32.const 708))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 4))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t48 (i32.mul (local.get $t48) (local.get $t49)))
    (local.set $t49 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t48 (i32.add (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    ;; line 0:712
    (global.set $__line (i32.const 712))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.const 4))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t49 (i32.mul (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t49 (i32.add (local.get $t49) (local.get $t50)))
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49)) ;; STORE slot 49
    ;; line 0:713
    (global.set $__line (i32.const 713))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 0))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t50))
    (local.set $t14 (local.get $t50))
    ;; line 0:714
    (global.set $__line (i32.const 714))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 2))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t50))
    (local.set $t15 (local.get $t50))
    ;; line 0:715
    (global.set $__line (i32.const 715))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 0))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 196))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t50))
    (local.set $t16 (local.get $t50))
    ;; line 0:716
    (global.set $__line (i32.const 716))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 2))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 196))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 6))) ;; LF L64
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t50))
    (local.set $t17 (local.get $t50))
    ;; line 0:717
    (global.set $__line (i32.const 717))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (if (local.get $t48) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:720
    (global.set $__line (i32.const 720))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 39))) ;; LF L190
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (if (local.get $t48) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_8 — LAB L220
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L219
    ;; line 0:721
    (global.set $__line (i32.const 721))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t48 (i32.sub (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    ;; line 0:724
    (global.set $__line (i32.const 724))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t49 (i32.sub (local.get $t49) (local.get $t50)))
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49)) ;; STORE slot 49
    ;; line 0:725
    (global.set $__line (i32.const 725))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t53 (i32.mul (local.get $t53) (local.get $t54)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 196))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 196))))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (local.set $t53 (i32.add (local.get $t53) (local.get $t54)))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 17))) ;; LF L108
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t50))
    (local.set $t38 (local.get $t50))
    ;; line 0:726
    (global.set $__line (i32.const 726))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t48))
    (local.set $t39 (local.get $t48))
    ;; line 0:728
    (global.set $__line (i32.const 728))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 152))))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t48))
    (local.set $t40 (local.get $t48))
    ;; line 0:729
    (global.set $__line (i32.const 729))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 37))) ;; LF L188
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t48))
    (local.set $t18 (local.get $t48))
    ;; line 0:731
    (global.set $__line (i32.const 731))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 38))) ;; LF L189
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t48))
    (local.set $t19 (local.get $t48))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 37))) ;; LF L188
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t48))
    (local.set $t20 (local.get $t48))
    ;; line 0:732
    (global.set $__line (i32.const 732))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 38))) ;; LF L189
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t48))
    (local.set $t21 (local.get $t48))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t49 (i32.const 4))
    (if (i32.ge_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t49 (i32.const 4))
    (if (i32.ge_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_10 — LAB L221
    ;; line 0:733
    (global.set $__line (i32.const 733))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t49 (i32.const 4))
    (if (i32.ge_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:735
    (global.set $__line (i32.const 735))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 4))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t48 (i32.sub (local.get $t48) (local.get $t49)))
    (local.set $t49 (i32.const 1024))
    (local.set $t48 (i32.mul (local.get $t48) (local.get $t49)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t49 (i32.sub (local.get $t49) (local.get $t50)))
    (local.set $t48 (i32.div_s (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    ;; line 0:736
    (global.set $__line (i32.const 736))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t49 (i32.sub (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t49 (i32.mul (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.const 1024))
    (local.set $t49 (i32.div_s (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t49 (i32.add (local.get $t49) (local.get $t50)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t49))
    (local.set $t18 (local.get $t49))
    ;; line 0:737
    (global.set $__line (i32.const 737))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (local.set $t49 (i32.sub (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t49 (i32.mul (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.const 1024))
    (local.set $t49 (i32.div_s (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (local.set $t49 (i32.add (local.get $t49) (local.get $t50)))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t49))
    (local.set $t39 (local.get $t49))
    ;; line 0:738
    (global.set $__line (i32.const 738))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.const 4))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t49))
    (local.set $t19 (local.get $t49))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L222
    ;; line 0:739
    (global.set $__line (i32.const 739))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t49 (i32.const 4))
    (if (i32.ge_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 0:741
    (global.set $__line (i32.const 741))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 4))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t48 (i32.sub (local.get $t48) (local.get $t49)))
    (local.set $t49 (i32.const 1024))
    (local.set $t48 (i32.mul (local.get $t48) (local.get $t49)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t49 (i32.sub (local.get $t49) (local.get $t50)))
    (local.set $t48 (i32.div_s (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    ;; line 0:742
    (global.set $__line (i32.const 742))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t49 (i32.sub (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t49 (i32.mul (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.const 1024))
    (local.set $t49 (i32.div_s (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t49 (i32.add (local.get $t49) (local.get $t50)))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t49))
    (local.set $t20 (local.get $t49))
    ;; line 0:743
    (global.set $__line (i32.const 743))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t49 (i32.sub (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t49 (i32.mul (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.const 1024))
    (local.set $t49 (i32.div_s (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t49 (i32.add (local.get $t49) (local.get $t50)))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t49))
    (local.set $t40 (local.get $t49))
    ;; line 0:744
    (global.set $__line (i32.const 744))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.const 4))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t49))
    (local.set $t21 (local.get $t49))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L223
    ;; line 0:745
    (global.set $__line (i32.const 745))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 480))
    (local.set $t49 (i32.const 480))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t49 (i32.mul (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t49 (i32.div_s (local.get $t49) (local.get $t50)))
    (local.set $t48 (i32.add (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t48))
    (local.set $t28 (local.get $t48))
    ;; line 0:748
    (global.set $__line (i32.const 748))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 480))
    (local.set $t49 (i32.const 480))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t49 (i32.mul (local.get $t49) (local.get $t50)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t49 (i32.div_s (local.get $t49) (local.get $t50)))
    (local.set $t48 (i32.add (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t48))
    (local.set $t29 (local.get $t48))
    ;; line 0:749
    (global.set $__line (i32.const 749))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.le_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 0:751
    (global.set $__line (i32.const 751))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    ;; line 0:752
    (global.set $__line (i32.const 752))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t49))
    (local.set $t28 (local.get $t49))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t49))
    (local.set $t29 (local.get $t49))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t49))
    (local.set $t48 (local.get $t49))
    ;; line 0:753
    (global.set $__line (i32.const 753))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t49))
    (local.set $t18 (local.get $t49))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t49))
    (local.set $t20 (local.get $t49))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t49))
    (local.set $t48 (local.get $t49))
    ;; line 0:754
    (global.set $__line (i32.const 754))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t49))
    (local.set $t19 (local.get $t49))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t49))
    (local.set $t21 (local.get $t49))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t49))
    (local.set $t48 (local.get $t49))
    ;; line 0:755
    (global.set $__line (i32.const 755))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t49))
    (local.set $t39 (local.get $t49))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t49))
    (local.set $t40 (local.get $t49))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L224
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (i32.ne  (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_14 — LAB L225
    ;; line 0:757
    (global.set $__line (i32.const 757))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t48))
    (local.set $t30 (local.get $t48))
    ;; line 0:759
    (global.set $__line (i32.const 759))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t48))
    (local.set $t31 (local.get $t48))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t49 (i32.const 0))
    (if (i32.ge_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
    ;; line 0:760
    (global.set $__line (i32.const 760))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t48))
    (local.set $t30 (local.get $t48))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L226
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (local.set $t49 (i32.const 960))
    (if (i32.lt_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
    ;; line 0:761
    (global.set $__line (i32.const 761))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t48))
    (local.set $t31 (local.get $t48))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L227
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (if (i32.le_s (local.get $t48) (local.get $t49)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_17 — LAB L228
    ;; line 0:762
    (global.set $__line (i32.const 762))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 1048576))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t48 (i32.div_s (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t48))
    (local.set $t32 (local.get $t48))
    ;; line 0:764
    (global.set $__line (i32.const 764))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 1048576))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t48 (i32.div_s (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t48))
    (local.set $t33 (local.get $t48))
    ;; line 0:765
    (global.set $__line (i32.const 765))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t48 (i32.sub (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t48))
    (local.set $t34 (local.get $t48))
    ;; line 0:766
    (global.set $__line (i32.const 766))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (local.set $t48 (i32.mul (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t48))
    (local.set $t41 (local.get $t48))
    ;; line 0:771
    (global.set $__line (i32.const 771))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t48 (i32.mul (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t48))
    (local.set $t42 (local.get $t48))
    ;; line 0:772
    (global.set $__line (i32.const 772))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 168))))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 164))))
    (local.set $t48 (i32.sub (local.get $t48) (local.get $t49)))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 136))))
    (local.set $t48 (i32.div_s (local.get $t48) (local.get $t49)))
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t48))
    (local.set $t43 (local.get $t48))
    ;; line 0:773
    (global.set $__line (i32.const 773))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 40))) ;; LF L191
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t48))
    (local.set $t35 (local.get $t48))
    ;; line 0:775
    (global.set $__line (i32.const 775))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t52 (i32.const 16))
    (local.set $t51 (i32.sub (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 40))) ;; LF L191
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t48))
    (local.set $t36 (local.get $t48))
    ;; line 0:776
    (global.set $__line (i32.const 776))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t52 (i32.const 32))
    (local.set $t51 (i32.sub (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.add (global.get $TB) (i32.const 40))) ;; LF L191
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t52)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t48))
    (local.set $t37 (local.get $t48))
    ;; line 0:777
    (global.set $__line (i32.const 777))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t52 (i32.const 20))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 180)) (local.get $t48))
    (local.set $t45 (local.get $t48))
    ;; line 0:779
    (global.set $__line (i32.const 779))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t52 (i32.const 12))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t48))
    (local.set $t46 (local.get $t48))
    ;; line 0:780
    (global.set $__line (i32.const 780))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t52 (i32.const 4))
    (local.set $t53 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 48)))
    (local.set $t48 (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (local.get $t48))
    (local.set $t47 (local.get $t48))
    ;; line 0:781
    (global.set $__line (i32.const 781))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t49 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49)) ;; STORE slot 49
      (local.set $__lab (i32.const 35)) (br $__dispatch) ;; JUMP L230
      ) ;; close $__case_18 — LAB L229
    ;; line 0:783
    (global.set $__line (i32.const 783))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t50 (i32.sub (local.get $t50) (local.get $t51)))
    (local.set $t51 (i32.const 1024))
    (local.set $t50 (i32.mul (local.get $t50) (local.get $t51)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 136))))
    (local.set $t50 (i32.div_s (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    ;; line 0:784
    (global.set $__line (i32.const 784))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t51 (i32.sub (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t51 (i32.mul (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.const 1024))
    (local.set $t51 (i32.div_s (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t51 (i32.add (local.get $t51) (local.get $t52)))
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51)) ;; STORE slot 51
    ;; line 0:785
    (global.set $__line (i32.const 785))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t52 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52)) ;; STORE slot 52
    ;; line 0:786
    (global.set $__line (i32.const 786))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.const 0))
    (local.set $t54 (i32.const 0))
    (local.set $t55 (i32.const 0))
    (local.set $t56 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53)) ;; STORE slot 53
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55)) ;; STORE slot 55
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56)) ;; STORE slot 56
    ;; line 0:787
    (global.set $__line (i32.const 787))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.const 0))
    (local.set $t58 (i32.const 0))
    (local.set $t59 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57)) ;; STORE slot 57
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58)) ;; STORE slot 58
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59)) ;; STORE slot 59
    ;; line 0:788
    (global.set $__line (i32.const 788))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (local.set $t61 (i32.const 0))
    (if (i32.le_s (local.get $t60) (local.get $t61)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    ))
    ;; line 0:789
    (global.set $__line (i32.const 789))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.const 1048576))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (local.set $t60 (i32.div_s (local.get $t60) (local.get $t61)))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t60))
    (local.set $t52 (local.get $t60))
    ;; line 0:790
    (global.set $__line (i32.const 790))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 208))))
    (local.set $t65 (i32.add (global.get $TB) (i32.const 44))) ;; LF L204
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t64))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t65)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (local.set $t60 (call_indirect $ftable (type $bcpl_fn) (local.get $t65)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t60))
    (local.set $t53 (local.get $t60))
    ;; line 0:792
    (global.set $__line (i32.const 792))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 208))))
    (local.set $t65 (i32.add (global.get $TB) (i32.const 44))) ;; LF L204
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t64))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t65)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (local.set $t60 (call_indirect $ftable (type $bcpl_fn) (local.get $t65)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t60))
    (local.set $t54 (local.get $t60))
    ;; line 0:793
    (global.set $__line (i32.const 793))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t61 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60)) ;; STORE slot 60
    ;; line 0:796
    (global.set $__line (i32.const 796))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t62 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t61 (i32.add (local.get $t61) (local.get $t62)))
    (local.set $t61 (i32.load (i32.shl (local.get $t61) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (local.get $t61)) ;; STORE slot 61
    ;; line 0:797
    (global.set $__line (i32.const 797))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (if (i32.ge_s (local.get $t62) (local.get $t63)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
    ;; line 0:798
    (global.set $__line (i32.const 798))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (local.set $t63 (i32.const 1))
    (local.set $t62 (i32.sub (local.get $t62) (local.get $t63)))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t62)) ;; STORE slot 62
    ;; line 0:799
    (global.set $__line (i32.const 799))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (if (i32.le_s (local.get $t63) (local.get $t64)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
    ;; line 0:800
    (global.set $__line (i32.const 800))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t63))
    (local.set $t62 (local.get $t63))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      ) ;; close $__case_19 — LAB L233
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (if (i32.gt_s (local.get $t63) (local.get $t64)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 0:801
    (global.set $__line (i32.const 801))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.const 66))
    (local.set $t67 (i32.const 29))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (local.set $t72 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 29)) (i32.const 2)))) ;; LL L39
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t73)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 63)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t73)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L234
    ;; line 0:802
    (global.set $__line (i32.const 802))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t65 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t64 (i32.add (local.get $t64) (local.get $t65)))
    (i32.store (i32.shl (local.get $t64) (i32.const 2)) (local.get $t63))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L232
    ;; line 0:803
    (global.set $__line (i32.const 803))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t61 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60)) ;; STORE slot 60
    ;; line 0:807
    (global.set $__line (i32.const 807))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t62 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t61 (i32.add (local.get $t61) (local.get $t62)))
    (local.set $t61 (i32.load (i32.shl (local.get $t61) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (local.get $t61)) ;; STORE slot 61
    ;; line 0:808
    (global.set $__line (i32.const 808))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (if (i32.le_s (local.get $t62) (local.get $t63)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
    ;; line 0:809
    (global.set $__line (i32.const 809))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.const 1))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t62 (i32.add (local.get $t62) (local.get $t63)))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t62)) ;; STORE slot 62
    ;; line 0:810
    (global.set $__line (i32.const 810))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (if (i32.ge_s (local.get $t63) (local.get $t64)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
    ;; line 0:811
    (global.set $__line (i32.const 811))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t63))
    (local.set $t62 (local.get $t63))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
      ) ;; close $__case_22 — LAB L236
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (if (i32.gt_s (local.get $t63) (local.get $t64)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
    ;; line 0:812
    (global.set $__line (i32.const 812))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.const 66))
    (local.set $t67 (i32.const 29))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (local.set $t72 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 30)) (i32.const 2)))) ;; LL L40
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t73)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 63)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t73)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
      ) ;; close $__case_23 — LAB L237
    ;; line 0:813
    (global.set $__line (i32.const 813))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t65 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t64 (i32.add (local.get $t64) (local.get $t65)))
    (i32.store (i32.shl (local.get $t64) (i32.const 2)) (local.get $t63))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
      ) ;; close $__case_24 — LAB L235
    ;; line 0:814
    (global.set $__line (i32.const 814))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t61 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t62 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t61 (i32.add (local.get $t61) (local.get $t62)))
    (local.set $t61 (i32.load (i32.shl (local.get $t61) (i32.const 2))))
    (if (i32.le_s (local.get $t60) (local.get $t61)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
    ;; line 0:817
    (global.set $__line (i32.const 817))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t64 (i32.add (global.get $TB) (i32.const 42))) ;; LF L197
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t64)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t64)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 34)) (br $__dispatch) ;; JUMP L231
      ) ;; close $__case_25 — LAB L238
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t60 (i32.sub (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 172))))
    (local.set $t60 (i32.mul (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 164))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t60))
    (local.set $t57 (local.get $t60))
    ;; line 0:820
    (global.set $__line (i32.const 820))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 228))))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (local.set $t60 (i32.div_s (local.get $t60) (local.get $t61)))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t60))
    (local.set $t58 (local.get $t60))
    ;; line 0:821
    (global.set $__line (i32.const 821))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 176))))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t60))
    (local.set $t59 (local.get $t60))
    ;; line 0:822
    (global.set $__line (i32.const 822))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (if (i32.eqz (local.get $t60)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    ))
    ;; line 0:824
    (global.set $__line (i32.const 824))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 208))))
    (local.set $t65 (i32.add (global.get $TB) (i32.const 44))) ;; LF L204
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t64))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t65)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (local.set $t60 (call_indirect $ftable (type $bcpl_fn) (local.get $t65)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t60))
    (local.set $t56 (local.get $t60))
    ;; line 0:825
    (global.set $__line (i32.const 825))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 208))))
    (local.set $t65 (i32.add (global.get $TB) (i32.const 44))) ;; LF L204
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t64))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t65)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (local.set $t60 (call_indirect $ftable (type $bcpl_fn) (local.get $t65)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t60))
    (local.set $t55 (local.get $t60))
    ;; line 0:826
    (global.set $__line (i32.const 826))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (if (i32.ge_s (local.get $t60) (local.get $t61)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    ))
    ;; line 0:827
    (global.set $__line (i32.const 827))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 224))))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 208))))
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 236))))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 188))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 148))))
    (local.set $t71 (i32.add (global.get $TB) (i32.const 45))) ;; LF L205
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t64))
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t71)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t71)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:828
    (global.set $__line (i32.const 828))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.const 1))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 224))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t62 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t61 (i32.add (local.get $t61) (local.get $t62)))
    (local.set $t61 (i32.load (i32.shl (local.get $t61) (i32.const 2))))
    (if (i32.le_s (local.get $t60) (local.get $t61)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    ;; line 0:830
    (global.set $__line (i32.const 830))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.const 1))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 224))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t62 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t61 (i32.add (local.get $t61) (local.get $t62)))
    (i32.store (i32.shl (local.get $t61) (i32.const 2)) (local.get $t60))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
      ) ;; close $__case_26 — LAB L243
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t61 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t62 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t61 (i32.add (local.get $t61) (local.get $t62)))
    (local.set $t61 (i32.load (i32.shl (local.get $t61) (i32.const 2))))
    (if (i32.le_s (local.get $t60) (local.get $t61)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
    ;; line 0:831
    (global.set $__line (i32.const 831))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t64 (i32.add (global.get $TB) (i32.const 42))) ;; LF L197
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t64)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t64)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L244
      (local.set $__lab (i32.const 28)) (br $__dispatch)
      ) ;; close $__case_28 — LAB L242
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (if (i32.le_s (local.get $t60) (local.get $t61)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
    ;; line 0:833
    (global.set $__line (i32.const 833))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 208))))
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 236))))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 144))))
    (local.set $t71 (i32.add (global.get $TB) (i32.const 45))) ;; LF L205
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t64))
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t71)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t71)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:834
    (global.set $__line (i32.const 834))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t61 (i32.const 1))
    (local.set $t60 (i32.sub (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t62 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t61 (i32.add (local.get $t61) (local.get $t62)))
    (local.set $t61 (i32.load (i32.shl (local.get $t61) (i32.const 2))))
    (if (i32.ge_s (local.get $t60) (local.get $t61)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    ))
    ;; line 0:836
    (global.set $__line (i32.const 836))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t61 (i32.const 1))
    (local.set $t60 (i32.sub (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t62 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t61 (i32.add (local.get $t61) (local.get $t62)))
    (i32.store (i32.shl (local.get $t61) (i32.const 2)) (local.get $t60))
      (local.set $__lab (i32.const 29)) (br $__dispatch)
      ) ;; close $__case_29 — LAB L246
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t61 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t62 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t61 (i32.add (local.get $t61) (local.get $t62)))
    (local.set $t61 (i32.load (i32.shl (local.get $t61) (i32.const 2))))
    (if (i32.le_s (local.get $t60) (local.get $t61)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
    ;; line 0:837
    (global.set $__line (i32.const 837))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t64 (i32.add (global.get $TB) (i32.const 42))) ;; LF L197
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t64)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t64)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 33)) (br $__dispatch) ;; JUMP L241
      ) ;; close $__case_30 — LAB L247
      (local.set $__lab (i32.const 33)) (br $__dispatch) ;; JUMP L241
      ) ;; close $__case_31 — LAB L245
      (local.set $__lab (i32.const 33)) (br $__dispatch) ;; JUMP L241
      ) ;; close $__case_32 — LAB L239
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 208))))
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 236))))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 180))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 140))))
    (local.set $t71 (i32.add (global.get $TB) (i32.const 45))) ;; LF L205
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t64))
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t71)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t71)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:840
    (global.set $__line (i32.const 840))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t64 (i32.add (global.get $TB) (i32.const 42))) ;; LF L197
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t64)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 60)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t64)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
      ) ;; close $__case_33 — LAB L241
      (local.set $__lab (i32.const 34)) (br $__dispatch)
      ) ;; close $__case_34 — LAB L231
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t51 (i32.const 1))
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t50))
    (local.set $t48 (local.get $t50))
      (local.set $__lab (i32.const 35)) (br $__dispatch)
      ) ;; close $__case_35 — LAB L230
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 196))))
    (if (i32.le_s (local.get $t50) (local.get $t51)) (then
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
  ) ;; end func $fn_L210

  ;; BCPL fn render_subsector (L248)
  (func $fn_L248 (export "fn_L248") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:847
    (global.set $__line (i32.const 847))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 4))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2)))) ;; LL L23
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:848
    (global.set $__line (i32.const 848))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:849
    (global.set $__line (i32.const 849))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:850
    (global.set $__line (i32.const 850))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_1 — LAB L249
    ;; line 0:851
    (global.set $__line (i32.const 851))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2)))) ;; LL L38
    (local.set $t10 (i32.const 0))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L251
    ;; line 0:852
    (global.set $__line (i32.const 852))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 12))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 46))) ;; LF L210
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L250
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
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
  ) ;; end func $fn_L248

  ;; BCPL fn render_node (L252)
  (func $fn_L252 (export "fn_L252") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:857
    (global.set $__line (i32.const 857))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2)))) ;; LL L38
    (local.set $t5 (i32.const 0))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L253
    ;; line 0:858
    (global.set $__line (i32.const 858))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 32768))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.and (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.const 0))
    (if (i32.eq  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:859
    (global.set $__line (i32.const 859))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const -32769))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 47))) ;; LF L248
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:860
    (global.set $__line (i32.const 860))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L254
    ;; line 0:861
    (global.set $__line (i32.const 861))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 28))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:863
    (global.set $__line (i32.const 863))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 23))) ;; LF L117
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
    ;; line 0:864
    (global.set $__line (i32.const 864))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 24))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:865
    (global.set $__line (i32.const 865))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 26))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 5))) ;; LF L63
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:866
    (global.set $__line (i32.const 866))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:867
    (global.set $__line (i32.const 867))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 48))) ;; LF L252
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:868
    (global.set $__line (i32.const 868))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 48))) ;; LF L252
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
      ) ;; close $__case_3 — LAB L255
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 48))) ;; LF L252
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:869
    (global.set $__line (i32.const 869))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 48))) ;; LF L252
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
  ) ;; end func $fn_L252

  ;; BCPL fn fill_remaining (L256)
  (func $fn_L256 (export "fn_L256") (type $bcpl_fn)
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
    ;; line 0:873
    (global.set $__line (i32.const 873))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L258
      ) ;; close $__case_1 — LAB L257
    ;; line 0:874
    (global.set $__line (i32.const 874))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:875
    (global.set $__line (i32.const 875))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:876
    (global.set $__line (i32.const 876))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.gt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:877
    (global.set $__line (i32.const 877))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 360))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:878
    (global.set $__line (i32.const 878))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:879
    (global.set $__line (i32.const 879))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 360))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:880
    (global.set $__line (i32.const 880))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 359))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L261
    (local.set $t11 (i32.const 66))
    (local.set $t12 (i32.const 29))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 29)) (i32.const 2)))) ;; LL L39
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
      ) ;; close $__case_3 — LAB L260
    ;; line 0:881
    (global.set $__line (i32.const 881))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 360))
    (if (i32.lt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:883
    (global.set $__line (i32.const 883))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:884
    (global.set $__line (i32.const 884))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 360))
    (if (i32.ge_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:885
    (global.set $__line (i32.const 885))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 360))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L263
    (local.set $t11 (i32.const 66))
    (local.set $t12 (i32.const 29))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 30)) (i32.const 2)))) ;; LL L40
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
      ) ;; close $__case_5 — LAB L262
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L259
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L258
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
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
  ) ;; end func $fn_L256

  ;; BCPL fn drawframe (L264)
  (func $fn_L264 (export "fn_L264") (type $bcpl_fn)
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
      (block $__case_0
        (br_table $__case_0 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:891
    (global.set $__line (i32.const 891))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 41))) ;; LF L194
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:892
    (global.set $__line (i32.const 892))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t8 (i32.add (global.get $TB) (i32.const 25))) ;; LF L125
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
      (i32.shl (i32.add (global.get $SB) (i32.const 34)) (i32.const 2))
      (local.get $t3))
    ;; line 0:893
    (global.set $__line (i32.const 893))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t7 (i32.add (global.get $TB) (i32.const 48))) ;; LF L252
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:894
    (global.set $__line (i32.const 894))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 49))) ;; LF L256
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:895
    (global.set $__line (i32.const 895))
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L264

  ;; BCPL fn start (L265)
  (func $fn_L265 (export "fn_L265") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:901
    (global.set $__line (i32.const 901))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    ;; line 0:902
    (global.set $__line (i32.const 902))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:903
    (global.set $__line (i32.const 903))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:904
    (global.set $__line (i32.const 904))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:905
    (global.set $__line (i32.const 905))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:906
    (global.set $__line (i32.const 906))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:907
    (global.set $__line (i32.const 907))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    ;; line 0:908
    (global.set $__line (i32.const 908))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 0:909
    (global.set $__line (i32.const 909))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    ;; line 0:910
    (global.set $__line (i32.const 910))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 3))) ;; LF L52
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (if (local.get $t28) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:912
    (global.set $__line (i32.const 912))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 47))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:913
    (global.set $__line (i32.const 913))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L266
    ;; line 0:914
    (global.set $__line (i32.const 914))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t28))
    (local.set $t8 (local.get $t28))
    ;; line 0:916
    (global.set $__line (i32.const 916))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (local.set $t29 (i32.const 0))
    (if (i32.eq  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:917
    (global.set $__line (i32.const 917))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 53))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L267
    (local.set $t28 (i32.const 2))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t28))
    ;; line 0:918
    (global.set $__line (i32.const 918))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 4))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2))
      (local.get $t28))
    ;; line 0:920
    (global.set $__line (i32.const 920))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 8))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2))
      (local.get $t28))
    ;; line 0:921
    (global.set $__line (i32.const 921))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t34 (i32.add (global.get $TB) (i32.const 10))) ;; LF L81
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t28))
    (local.set $t9 (local.get $t28))
    ;; line 0:923
    (global.set $__line (i32.const 923))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t29 (i32.const 0))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:924
    (global.set $__line (i32.const 924))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 58))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L268
    (local.set $t31 (i32.add (global.get $SB) (i32.const 62))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:925
    (global.set $__line (i32.const 925))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 9))) ;; LF L77
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 64))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L85
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t28))
    (local.set $t10 (local.get $t28))
    ;; line 0:927
    (global.set $__line (i32.const 927))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 67))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L85
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t28))
    (local.set $t11 (local.get $t28))
    ;; line 0:928
    (global.set $__line (i32.const 928))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 70))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L85
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t28))
    (local.set $t12 (local.get $t28))
    ;; line 0:929
    (global.set $__line (i32.const 929))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 73))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L85
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t28))
    (local.set $t13 (local.get $t28))
    ;; line 0:930
    (global.set $__line (i32.const 930))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L85
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t28))
    (local.set $t14 (local.get $t28))
    ;; line 0:931
    (global.set $__line (i32.const 931))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 77))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L85
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t28))
    (local.set $t15 (local.get $t28))
    ;; line 0:932
    (global.set $__line (i32.const 932))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 80))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L85
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t28))
    (local.set $t16 (local.get $t28))
    ;; line 0:933
    (global.set $__line (i32.const 933))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 82))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L85
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t28))
    (local.set $t17 (local.get $t28))
    ;; line 0:934
    (global.set $__line (i32.const 934))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t29 (i32.const 0))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L270
    ;; line 0:935
    (global.set $__line (i32.const 935))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 84))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:937
    (global.set $__line (i32.const 937))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L269
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2))
      (local.get $t28))
    ;; line 0:939
    (global.set $__line (i32.const 939))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2))
      (local.get $t28))
    ;; line 0:940
    (global.set $__line (i32.const 940))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t28))
    ;; line 0:941
    (global.set $__line (i32.const 941))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 4))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t28))
    (local.set $t24 (local.get $t28))
    ;; line 0:942
    (global.set $__line (i32.const 942))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t29 (i32.const 30))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28))
    (local.set $t25 (local.get $t28))
    ;; line 0:943
    (global.set $__line (i32.const 943))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2))
      (local.get $t28))
    ;; line 0:944
    (global.set $__line (i32.const 944))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2))
      (local.get $t28))
    ;; line 0:945
    (global.set $__line (i32.const 945))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2))
      (local.get $t28))
    ;; line 0:946
    (global.set $__line (i32.const 946))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2))
      (local.get $t28))
    ;; line 0:947
    (global.set $__line (i32.const 947))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t28))
    (local.set $t21 (local.get $t28))
    ;; line 0:948
    (global.set $__line (i32.const 948))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 4))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t28))
    (local.set $t22 (local.get $t28))
    ;; line 0:949
    (global.set $__line (i32.const 949))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 4))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (local.set $t29 (i32.const 28))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2))
      (local.get $t28))
    ;; line 0:950
    (global.set $__line (i32.const 950))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 13))) ;; LF L95
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t28))
    (local.set $t18 (local.get $t28))
    ;; line 0:953
    (global.set $__line (i32.const 953))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L272
      ) ;; close $__case_6 — LAB L271
    ;; line 0:955
    (global.set $__line (i32.const 955))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 16))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t30 (i32.mul (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    ;; line 0:956
    (global.set $__line (i32.const 956))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 89))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L66
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (local.set $t31 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31)) ;; flush FNAP result
    (if (i32.eqz (local.get $t31)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:957
    (global.set $__line (i32.const 957))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t31))
    (local.set $t18 (local.get $t31))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L273
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 91))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L66
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (local.set $t31 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31)) ;; flush FNAP result
    (if (i32.eqz (local.get $t31)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:958
    (global.set $__line (i32.const 958))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t31))
    (local.set $t19 (local.get $t31))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L274
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 93))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L66
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (local.set $t31 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31)) ;; flush FNAP result
    (if (i32.eqz (local.get $t31)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:959
    (global.set $__line (i32.const 959))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t31))
    (local.set $t20 (local.get $t31))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L275
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L272
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (if (i32.eq  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L277
    ;; line 0:961
    (global.set $__line (i32.const 961))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 96))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:962
    (global.set $__line (i32.const 962))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_12 — LAB L276
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
    ;; line 0:964
    (global.set $__line (i32.const 964))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t28))
    (local.set $t27 (local.get $t28))
    ;; line 0:965
    (global.set $__line (i32.const 965))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2))
      (local.get $t28))
    ;; line 0:966
    (global.set $__line (i32.const 966))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 18)) (i32.const 2))
      (local.get $t28))
    ;; line 0:967
    (global.set $__line (i32.const 967))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 4))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2))
      (local.get $t28))
    ;; line 0:968
    (global.set $__line (i32.const 968))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L62
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2))
      (local.get $t28))
    ;; line 0:969
    (global.set $__line (i32.const 969))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 106))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 18)) (i32.const 2)))) ;; LL L28
    (local.set $t35 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t36 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:970
    (global.set $__line (i32.const 970))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 256))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2))
      (local.get $t28))
    ;; line 0:973
    (global.set $__line (i32.const 973))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 256))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2))
      (local.get $t28))
    ;; line 0:974
    (global.set $__line (i32.const 974))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 128))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2))
      (local.get $t28))
    ;; line 0:975
    (global.set $__line (i32.const 975))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 128))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2))
      (local.get $t28))
    ;; line 0:976
    (global.set $__line (i32.const 976))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 128))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2))
      (local.get $t28))
    ;; line 0:977
    (global.set $__line (i32.const 977))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 29))) ;; LF L146
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:979
    (global.set $__line (i32.const 979))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 8192))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2))
      (local.get $t28))
    ;; line 0:981
    (global.set $__line (i32.const 981))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 8192))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2))
      (local.get $t28))
    ;; line 0:982
    (global.set $__line (i32.const 982))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $TB) (i32.const 16))) ;; LF L105
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:983
    (global.set $__line (i32.const 983))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 960))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2))
      (local.get $t28))
    ;; line 0:985
    (global.set $__line (i32.const 985))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 960))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2))
      (local.get $t28))
    ;; line 0:986
    (global.set $__line (i32.const 986))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 26))) ;; LF L129
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (if (local.get $t28) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 0:988
    (global.set $__line (i32.const 988))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 119))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:989
    (global.set $__line (i32.const 989))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2))
      (local.get $t28))
    (local.set $t28 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2))
      (local.get $t28))
    (local.set $t28 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2))
      (local.get $t28))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L278
    (local.set $t31 (i32.add (global.get $SB) (i32.const 124))) ;; LSTR
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t35)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t35)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:990
    (global.set $__line (i32.const 990))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 36))) ;; LF L185
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:992
    (global.set $__line (i32.const 992))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 66))
    (local.set $t32 (i32.const 1))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:994
    (global.set $__line (i32.const 994))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 66))
    (local.set $t32 (i32.const 2))
    (local.set $t33 (i32.const 960))
    (local.set $t34 (i32.const 720))
    (local.set $t35 (i32.const 0))
    (local.set $t36 (i32.const 0))
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2))
      (local.get $t28))
    ;; line 0:995
    (global.set $__line (i32.const 995))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 66))
    (local.set $t32 (i32.const 26))
    (local.set $t33 (i32.const 0))
    (local.set $t34 (i32.const 60))
    (local.set $t35 (i32.const 110))
    (local.set $t36 (i32.const 180))
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 29)) (i32.const 2))
      (local.get $t28))
    ;; line 0:997
    (global.set $__line (i32.const 997))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 66))
    (local.set $t32 (i32.const 26))
    (local.set $t33 (i32.const 0))
    (local.set $t34 (i32.const 40))
    (local.set $t35 (i32.const 40))
    (local.set $t36 (i32.const 40))
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 30)) (i32.const 2))
      (local.get $t28))
    ;; line 0:998
    (global.set $__line (i32.const 998))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 512))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1000
    (global.set $__line (i32.const 1000))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.const 512))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
      ) ;; close $__case_14 — LAB L279
    ;; line 0:1001
    (global.set $__line (i32.const 1001))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (i32.store (i32.shl (local.get $t31) (i32.const 2)) (local.get $t30))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L280
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (if (i32.eqz (local.get $t28)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L281
    (local.set $t28 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    ;; line 0:1004
    (global.set $__line (i32.const 1004))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    ;; line 0:1005
    (global.set $__line (i32.const 1005))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 27))) ;; LF L133
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1006
    (global.set $__line (i32.const 1006))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const 87))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 28))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 38))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 28))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
      ) ;; close $__case_17 — LAB L284
    ;; line 0:1007
    (global.set $__line (i32.const 1007))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 1))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 18)) (br $__dispatch)
      ) ;; close $__case_18 — LAB L283
    (local.set $t33 (i32.const 83))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 28))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 40))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 28))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      ) ;; close $__case_19 — LAB L286
    ;; line 0:1008
    (global.set $__line (i32.const 1008))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.sub (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L285
    (local.set $t33 (i32.const 65))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 28))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 37))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 28))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L288
    ;; line 0:1009
    (global.set $__line (i32.const 1009))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t31 (i32.const 64))
    (local.set $t30 (i32.sub (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30))
    (local.set $t29 (local.get $t30))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
      ) ;; close $__case_22 — LAB L287
    (local.set $t33 (i32.const 68))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 28))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 39))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 28))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
      ) ;; close $__case_23 — LAB L290
    ;; line 0:1010
    (global.set $__line (i32.const 1010))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 64))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30))
    (local.set $t29 (local.get $t30))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
      ) ;; close $__case_24 — LAB L289
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
    ;; line 0:1012
    (global.set $__line (i32.const 1012))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 8191))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t30 (i32.and (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (local.set $t30 (i32.load (i32.shl (local.get $t30) (i32.const 2))))
    (local.set $t31 (i32.const 16))
    (local.set $t30 (i32.mul (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t30 (i32.mul (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.const 1024))
    (local.set $t30 (i32.div_s (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    ;; line 0:1013
    (global.set $__line (i32.const 1013))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 8191))
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t31 (i32.and (local.get $t31) (local.get $t32)))
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (local.set $t31 (i32.load (i32.shl (local.get $t31) (i32.const 2))))
    (local.set $t32 (i32.const 16))
    (local.set $t31 (i32.mul (local.get $t31) (local.get $t32)))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.mul (local.get $t31) (local.get $t32)))
    (local.set $t32 (i32.const 1024))
    (local.set $t31 (i32.div_s (local.get $t31) (local.get $t32)))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
    ;; line 0:1014
    (global.set $__line (i32.const 1014))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2))
      (local.get $t32))
    ;; line 0:1015
    (global.set $__line (i32.const 1015))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2))
      (local.get $t32))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
      ) ;; close $__case_25 — LAB L291
    ;; line 0:1016
    (global.set $__line (i32.const 1016))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    ;; line 0:1018
    (global.set $__line (i32.const 1018))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.const 8191))
    (local.set $t30 (i32.and (local.get $t30) (local.get $t31)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2))
      (local.get $t30))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
      ) ;; close $__case_26 — LAB L292
    (local.set $t33 (i32.add (global.get $TB) (i32.const 50))) ;; LF L264
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1020
    (global.set $__line (i32.const 1020))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const 16))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 512))))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (if (local.get $t28) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L282
    ;; line 0:1003
    (global.set $__line (i32.const 1003))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1024
    (global.set $__line (i32.const 1024))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1025
    (global.set $__line (i32.const 1025))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 133))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1026
    (global.set $__line (i32.const 1026))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t28))
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
  ) ;; end func $fn_L265

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L45) (ref.func $fn_L47) (ref.func $fn_L50) (ref.func $fn_L52) (ref.func $fn_L62) (ref.func $fn_L63) (ref.func $fn_L64) (ref.func $fn_L66) (ref.func $fn_L74) (ref.func $fn_L77) (ref.func $fn_L81) (ref.func $fn_L85) (ref.func $fn_L90) (ref.func $fn_L95) (ref.func $fn_L99) (ref.func $fn_L104) (ref.func $fn_L105) (ref.func $fn_L108) (ref.func $fn_L112) (ref.func $fn_L113) (ref.func $fn_L114) (ref.func $fn_L115) (ref.func $fn_L116) (ref.func $fn_L117) (ref.func $fn_L119) (ref.func $fn_L125) (ref.func $fn_L129) (ref.func $fn_L133) (ref.func $fn_L144) (ref.func $fn_L146) (ref.func $fn_L149) (ref.func $fn_L153) (ref.func $fn_L157) (ref.func $fn_L158) (ref.func $fn_L166) (ref.func $fn_L181) (ref.func $fn_L185) (ref.func $fn_L188) (ref.func $fn_L189) (ref.func $fn_L190) (ref.func $fn_L191) (ref.func $fn_L194) (ref.func $fn_L197) (ref.func $fn_L199) (ref.func $fn_L204) (ref.func $fn_L205) (ref.func $fn_L210) (ref.func $fn_L248) (ref.func $fn_L252) (ref.func $fn_L256) (ref.func $fn_L264) (ref.func $fn_L265))

  ;; static data — passive segment (137 words)
  (data $stat "\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\6C\6F\61\64\65\64\20\57\41\44\3A\20\00\00\00\1E\63\6F\6D\70\6F\73\69\74\65\64\20\25\6E\20\75\6E\69\71\75\65\20\74\65\78\74\75\72\65\73\0A\00\17\4E\6F\20\57\41\44\20\61\73\73\65\74\20\75\70\6C\6F\61\64\65\64\2E\0A\13\41\73\73\65\74\20\69\73\20\61\6E\20\69\6D\61\67\65\2E\0A\0F\4E\6F\20\6D\61\70\20\6D\61\72\6B\65\72\2E\0A\05\6D\61\70\3A\20\00\00\08\56\45\52\54\45\58\45\53\00\00\00\08\4C\49\4E\45\44\45\46\53\00\00\00\08\53\49\44\45\44\45\46\53\00\00\00\07\53\45\43\54\4F\52\53\05\4E\4F\44\45\53\00\00\08\53\53\45\43\54\4F\52\53\00\00\00\04\53\45\47\53\00\00\00\06\54\48\49\4E\47\53\00\12\4D\69\73\73\69\6E\67\20\6D\61\70\20\6C\75\6D\70\2E\0A\00\07\50\4C\41\59\50\41\4C\06\50\4E\41\4D\45\53\00\08\54\45\58\54\55\52\45\31\00\00\00\25\4D\69\73\73\69\6E\67\20\50\4C\41\59\50\41\4C\20\2F\20\50\4E\41\4D\45\53\20\2F\20\54\45\58\54\55\52\45\31\2E\0A\00\00\30\50\4C\41\59\50\41\4C\20\40\25\6E\20\20\50\4E\41\4D\45\53\20\40\25\6E\20\28\25\6E\29\20\20\54\45\58\54\55\52\45\31\20\40\25\6E\20\28\25\6E\29\0A\00\00\00\12\4E\6F\20\70\6C\61\79\65\72\31\20\73\74\61\72\74\2E\0A\00\20\70\6C\61\79\65\72\20\73\74\61\72\74\20\20\70\78\3D\25\6E\20\70\79\3D\25\6E\20\70\61\3D\25\6E\0A\00\00\00\0C\64\77\6C\74\20\65\78\69\74\65\64\0A\00\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 548))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 52))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 51))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 137))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 52))
)
 ;; end module
