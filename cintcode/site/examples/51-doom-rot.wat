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

  ;; SECTION: drot
  ;; BCPL fn lc (L73)
  (func $fn_L73 (export "fn_L73") (type $bcpl_fn)
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
      ) ;; close $__case_1 — LAB L74
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
  ) ;; end func $fn_L73

  ;; BCPL fn cp_substr (L75)
  (func $fn_L75 (export "fn_L75") (type $bcpl_fn)
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
    ;; line 0:230
    (global.set $__line (i32.const 230))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:231
    (global.set $__line (i32.const 231))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10)) (local.get $t8))
    ;; line 0:232
    (global.set $__line (i32.const 232))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L77
      ) ;; close $__case_1 — LAB L76
    ;; line 0:233
    (global.set $__line (i32.const 233))
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
      ) ;; close $__case_2 — LAB L77
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
  ) ;; end func $fn_L75

  ;; BCPL fn ends_with_wad (L78)
  (func $fn_L78 (export "fn_L78") (type $bcpl_fn)
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
    ;; line 0:236
    (global.set $__line (i32.const 236))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:237
    (global.set $__line (i32.const 237))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 4))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:238
    (global.set $__line (i32.const 238))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L79
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.const 4))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 0))) ;; LF L73
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
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L73
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
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L73
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
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L73
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
  ) ;; end func $fn_L78

  ;; BCPL fn try_load_wad (L80)
  (func $fn_L80 (export "fn_L80") (type $bcpl_fn)
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
    ;; line 0:245
    (global.set $__line (i32.const 245))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $P) (i32.const 5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush t4 (pre-stack-up)
    ;; line 0:246
    (global.set $__line (i32.const 246))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.add (global.get $P) (i32.const 71)))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70)) ;; flush t70 (pre-stack-up)
    ;; line 0:247
    (global.set $__line (i32.const 247))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t104 (i32.const 0))
    (local.set $t105 (i32.const 0))
    (local.set $t106 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 416)) (local.get $t104)) ;; STORE slot 104
    (i32.store (i32.add (local.get $Pb) (i32.const 420)) (local.get $t105)) ;; STORE slot 105
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t106)) ;; STORE slot 106
    ;; line 0:248
    (global.set $__line (i32.const 248))
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
    ;; line 0:249
    (global.set $__line (i32.const 249))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t108 (i32.const 0))
    (local.set $t107 (i32.load8_u (i32.add (i32.shl (local.get $t107) (i32.const 2)) (local.get $t108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 416)) (local.get $t107))
    (local.set $t104 (local.get $t107))
    ;; line 0:250
    (global.set $__line (i32.const 250))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 420)) (local.get $t107))
    (local.set $t105 (local.get $t107))
    ;; line 0:251
    (global.set $__line (i32.const 251))
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
      ) ;; close $__case_1 — LAB L81
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L84
      ) ;; close $__case_2 — LAB L83
    (local.set $t107 (i32.const 1))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t107 (i32.add (local.get $t107) (local.get $t108)))
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t107))
    (local.set $t106 (local.get $t107))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L84
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
      ) ;; close $__case_4 — LAB L85
    ;; line 0:253
    (global.set $__line (i32.const 253))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t111 (i32.load (i32.add (local.get $Pb) (i32.const 420))))
    (local.set $t112 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t113 (i32.add (global.get $TB) (i32.const 2))) ;; LF L78
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
    ;; line 0:254
    (global.set $__line (i32.const 254))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t111 (i32.load (i32.add (local.get $Pb) (i32.const 420))))
    (local.set $t112 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t113 (i32.load (i32.add (local.get $Pb) (i32.const 280))))
    (local.set $t114 (i32.add (global.get $TB) (i32.const 1))) ;; LF L75
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
    ;; line 0:255
    (global.set $__line (i32.const 255))
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
    ;; line 0:256
    (global.set $__line (i32.const 256))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.add (global.get $SB) (i32.const 63))) ;; LSTR
    (local.set $t111 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (local.get $t111)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t111)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:257
    (global.set $__line (i32.const 257))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 420))))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t109 (i32.const 1))
    (local.set $t108 (i32.sub (local.get $t108) (local.get $t109)))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (local.get $t107)) ;; STORE slot 107
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (local.get $t108)) ;; STORE slot 108
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L89
      ) ;; close $__case_5 — LAB L88
    ;; line 0:258
    (global.set $__line (i32.const 258))
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
      ) ;; close $__case_6 — LAB L89
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
    ;; line 0:259
    (global.set $__line (i32.const 259))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t107))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L87
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L86
    ;; line 0:260
    (global.set $__line (i32.const 260))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 1))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t107 (i32.add (local.get $t107) (local.get $t108)))
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t107))
    (local.set $t106 (local.get $t107))
    ;; line 0:263
    (global.set $__line (i32.const 263))
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
      ) ;; close $__case_9 — LAB L82
    ;; line 0:252
    (global.set $__line (i32.const 252))
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
  ) ;; end func $fn_L80

  ;; BCPL fn rd_u32_le (L90)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:268
    (global.set $__line (i32.const 268))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:269
    (global.set $__line (i32.const 269))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:270
    (global.set $__line (i32.const 270))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.const 2))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:271
    (global.set $__line (i32.const 271))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.const 3))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:272
    (global.set $__line (i32.const 272))
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L90

  ;; BCPL fn rd_u16_le (L91)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L91

  ;; BCPL fn rd_i16_le (L92)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:278
    (global.set $__line (i32.const 278))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:279
    (global.set $__line (i32.const 279))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 32768))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:280
    (global.set $__line (i32.const 280))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 65536))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L93
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
  ) ;; end func $fn_L92

  ;; BCPL fn lump_name_eq (L94)
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
    ;; line 0:284
    (global.set $__line (i32.const 284))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:285
    (global.set $__line (i32.const 285))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 8))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:286
    (global.set $__line (i32.const 286))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L95
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L97
      ) ;; close $__case_2 — LAB L96
    ;; line 0:287
    (global.set $__line (i32.const 287))
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
    ;; line 0:288
    (global.set $__line (i32.const 288))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L98
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L97
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
      ) ;; close $__case_5 — LAB L99
    ;; line 0:289
    (global.set $__line (i32.const 289))
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
    ;; line 0:290
    (global.set $__line (i32.const 290))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L101
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
      ) ;; close $__case_7 — LAB L100
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
  ) ;; end func $fn_L94

  ;; BCPL fn is_map_marker (L102)
  (func $fn_L102 (export "fn_L102") (type $bcpl_fn)
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
    ;; line 0:294
    (global.set $__line (i32.const 294))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 8))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:295
    (global.set $__line (i32.const 295))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:296
    (global.set $__line (i32.const 296))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:297
    (global.set $__line (i32.const 297))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.const 2))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:298
    (global.set $__line (i32.const 298))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.const 3))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:299
    (global.set $__line (i32.const 299))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.const 4))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:300
    (global.set $__line (i32.const 300))
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
    ;; line 0:301
    (global.set $__line (i32.const 301))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L103
    ;; line 0:302
    (global.set $__line (i32.const 302))
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
    ;; line 0:303
    (global.set $__line (i32.const 303))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L104
    ;; line 0:304
    (global.set $__line (i32.const 304))
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
  ) ;; end func $fn_L102

  ;; BCPL fn pr_lump_name (L105)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:308
    (global.set $__line (i32.const 308))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L107
      ) ;; close $__case_1 — LAB L106
    ;; line 0:309
    (global.set $__line (i32.const 309))
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
    ;; line 0:310
    (global.set $__line (i32.const 310))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.eq  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:311
    (global.set $__line (i32.const 311))
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
      ) ;; close $__case_2 — LAB L107
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L108
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

  ;; BCPL fn find_first_map (L109)
  (func $fn_L109 (export "fn_L109") (type $bcpl_fn)
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
    ;; line 0:315
    (global.set $__line (i32.const 315))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L111
      ) ;; close $__case_1 — LAB L110
    ;; line 0:316
    (global.set $__line (i32.const 316))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 16))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:317
    (global.set $__line (i32.const 317))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 8))) ;; LF L102
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
    ;; line 0:318
    (global.set $__line (i32.const 318))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L112
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L111
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
  ) ;; end func $fn_L109

  ;; BCPL fn find_map_lump (L113)
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
    ;; line 0:323
    (global.set $__line (i32.const 323))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 12))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:324
    (global.set $__line (i32.const 324))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:325
    (global.set $__line (i32.const 325))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L114
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L116
      ) ;; close $__case_2 — LAB L115
    ;; line 0:326
    (global.set $__line (i32.const 326))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 16))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:327
    (global.set $__line (i32.const 327))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 7))) ;; LF L94
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
    ;; line 0:328
    (global.set $__line (i32.const 328))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L117
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L116
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
  ) ;; end func $fn_L113

  ;; BCPL fn name8_eq (L118)
  (func $fn_L118 (export "fn_L118") (type $bcpl_fn)
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
    ;; line 0:335
    (global.set $__line (i32.const 335))
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
      ) ;; close $__case_1 — LAB L119
    ;; line 0:336
    (global.set $__line (i32.const 336))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:337
    (global.set $__line (i32.const 337))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:338
    (global.set $__line (i32.const 338))
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
    ;; line 0:339
    (global.set $__line (i32.const 339))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L121
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.eq  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:340
    (global.set $__line (i32.const 340))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L122
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
      ) ;; close $__case_4 — LAB L120
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
  ) ;; end func $fn_L118

  ;; BCPL fn find_lump_global (L123)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:347
    (global.set $__line (i32.const 347))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L125
      ) ;; close $__case_1 — LAB L124
    ;; line 0:348
    (global.set $__line (i32.const 348))
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
    ;; line 0:349
    (global.set $__line (i32.const 349))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 12))) ;; LF L118
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
    ;; line 0:350
    (global.set $__line (i32.const 350))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L126
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L125
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
  ) ;; end func $fn_L123

  ;; BCPL fn fsin (L127)
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
    ;; line 0:357
    (global.set $__line (i32.const 357))
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
    ;; line 0:358
    (global.set $__line (i32.const 358))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1078530007))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t9))
    (local.set $t4 (local.get $t9))
    ;; line 0:359
    (global.set $__line (i32.const 359))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 1073741824))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9))
    (local.set $t5 (local.get $t9))
    ;; line 0:360
    (global.set $__line (i32.const 360))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L129
      ) ;; close $__case_1 — LAB L128
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L129
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.gt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:361
    (global.set $__line (i32.const 361))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L131
      ) ;; close $__case_3 — LAB L130
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L131
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.lt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:362
    (global.set $__line (i32.const 362))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    ;; line 0:363
    (global.set $__line (i32.const 363))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:364
    (global.set $__line (i32.const 364))
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
    ;; line 0:365
    (global.set $__line (i32.const 365))
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
    ;; line 0:366
    (global.set $__line (i32.const 366))
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
    ;; line 0:367
    (global.set $__line (i32.const 367))
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
    ;; line 0:368
    (global.set $__line (i32.const 368))
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
  ) ;; end func $fn_L127

  ;; BCPL fn fcos (L132)
  (func $fn_L132 (export "fn_L132") (type $bcpl_fn)
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
    (local.set $t7 (i32.const 1070141402))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t7)) (f32.reinterpret_i32 (local.get $t8)))))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 14))) ;; LF L127
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
  ) ;; end func $fn_L132

  ;; BCPL fn buildtrig (L133)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:374
    (global.set $__line (i32.const 374))
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
    ;; line 0:375
    (global.set $__line (i32.const 375))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:376
    (global.set $__line (i32.const 376))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1174405120))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
    ;; line 0:377
    (global.set $__line (i32.const 377))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t8))
    (local.set $t3 (local.get $t8))
    ;; line 0:378
    (global.set $__line (i32.const 378))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1086918615))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t8 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t8))
    (local.set $t4 (local.get $t8))
    ;; line 0:379
    (global.set $__line (i32.const 379))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 8191))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L135
      ) ;; close $__case_1 — LAB L134
    ;; line 0:380
    (global.set $__line (i32.const 380))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 14))) ;; LF L127
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
    ;; line 0:381
    (global.set $__line (i32.const 381))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 15))) ;; LF L132
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
    ;; line 0:382
    (global.set $__line (i32.const 382))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:383
    (global.set $__line (i32.const 383))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:384
    (global.set $__line (i32.const 384))
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
      ) ;; close $__case_2 — LAB L135
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
  ) ;; end func $fn_L133

  ;; BCPL fn isqrt (L136)
  (func $fn_L136 (export "fn_L136") (type $bcpl_fn)
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
    ;; line 0:390
    (global.set $__line (i32.const 390))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:391
    (global.set $__line (i32.const 391))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:392
    (global.set $__line (i32.const 392))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:393
    (global.set $__line (i32.const 393))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L137
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    ;; line 0:394
    (global.set $__line (i32.const 394))
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
      ) ;; close $__case_2 — LAB L138
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    ;; line 0:396
    (global.set $__line (i32.const 396))
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
      ) ;; close $__case_3 — LAB L139
    ;; line 0:395
    (global.set $__line (i32.const 395))
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
  ) ;; end func $fn_L136

  ;; BCPL fn sd_sector (L140)
  (func $fn_L140 (export "fn_L140") (type $bcpl_fn)
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
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 30))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 28))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
  ) ;; end func $fn_L140

  ;; BCPL fn sd_texoffx (L141)
  (func $fn_L141 (export "fn_L141") (type $bcpl_fn)
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
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 30))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 0))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
  ) ;; end func $fn_L141

  ;; BCPL fn sd_texoffy (L142)
  (func $fn_L142 (export "fn_L142") (type $bcpl_fn)
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
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 30))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 2))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
  ) ;; end func $fn_L142

  ;; BCPL fn sec_floor (L143)
  (func $fn_L143 (export "fn_L143") (type $bcpl_fn)
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
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 0))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
  ) ;; end func $fn_L143

  ;; BCPL fn sec_ceil (L144)
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
    (local $t6 i32)
    (local $t7 i32)
    (local $t8 i32)
    (local $t9 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 2))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
  ) ;; end func $fn_L144

  ;; BCPL fn sec_light (L145)
  (func $fn_L145 (export "fn_L145") (type $bcpl_fn)
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
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 20))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
  ) ;; end func $fn_L145

  ;; BCPL fn sec_floortex_byte (L146)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t4 (i32.const 26))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.const 4))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
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
  ) ;; end func $fn_L146

  ;; BCPL fn sec_ceiltex_byte (L147)
  (func $fn_L147 (export "fn_L147") (type $bcpl_fn)
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
    (local.set $t4 (i32.const 26))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.const 12))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
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
  ) ;; end func $fn_L147

  ;; BCPL fn name8_is_sky (L148)
  (func $fn_L148 (export "fn_L148") (type $bcpl_fn)
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
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:430
    (global.set $__line (i32.const 430))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 70))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:432
    (global.set $__line (i32.const 432))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L149
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 95))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:433
    (global.set $__line (i32.const 433))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L150
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 2))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 83))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:434
    (global.set $__line (i32.const 434))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L151
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 75))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:435
    (global.set $__line (i32.const 435))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L152
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 4))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 89))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:436
    (global.set $__line (i32.const 436))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L153
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 5))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 49))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:437
    (global.set $__line (i32.const 437))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L154
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
  ) ;; end func $fn_L148

  ;; BCPL fn sector_ceil_is_sky (L155)
  (func $fn_L155 (export "fn_L155") (type $bcpl_fn)
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
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:442
    (global.set $__line (i32.const 442))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:443
    (global.set $__line (i32.const 443))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L156
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush t7 (pre-stack-up)
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 25))) ;; LF L147
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.add (global.get $TB) (i32.const 26))) ;; LF L148
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
  ) ;; end func $fn_L155

  ;; BCPL fn flat_cache_lookup (L157)
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
    ;; line 0:447
    (global.set $__line (i32.const 447))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L159
      ) ;; close $__case_1 — LAB L158
    ;; line 0:448
    (global.set $__line (i32.const 448))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.mul (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 36)) (i32.const 2)))) ;; LL L46
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 12))) ;; LF L118
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (if (i32.eqz (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:449
    (global.set $__line (i32.const 449))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L160
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L159
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
  ) ;; end func $fn_L157

  ;; BCPL fn load_flat (L161)
  (func $fn_L161 (export "fn_L161") (type $bcpl_fn)
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
    ;; line 0:455
    (global.set $__line (i32.const 455))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:456
    (global.set $__line (i32.const 456))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:457
    (global.set $__line (i32.const 457))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:458
    (global.set $__line (i32.const 458))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:459
    (global.set $__line (i32.const 459))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L162
    (local.set $t11 (i32.const 45))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:460
    (global.set $__line (i32.const 460))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L163
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 26))) ;; LF L148
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (if (i32.eqz (local.get $t11)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:461
    (global.set $__line (i32.const 461))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L164
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t12 (i32.const 64))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:462
    (global.set $__line (i32.const 462))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L165
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 13))) ;; LF L123
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
    ;; line 0:464
    (global.set $__line (i32.const 464))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.const 0))
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:465
    (global.set $__line (i32.const 465))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L166
    (local.set $t11 (i32.const 16))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t11))
    (local.set $t7 (local.get $t11))
    ;; line 0:466
    (global.set $__line (i32.const 466))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:467
    (global.set $__line (i32.const 467))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    ;; line 0:468
    (global.set $__line (i32.const 468))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 4096))
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:469
    (global.set $__line (i32.const 469))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L167
    (local.set $t14 (i32.const 4096))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11))
    (local.set $t10 (local.get $t11))
    ;; line 0:471
    (global.set $__line (i32.const 471))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:472
    (global.set $__line (i32.const 472))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L168
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 4095))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.gt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L169
    ;; line 0:473
    (global.set $__line (i32.const 473))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t13 (i32.load8_u (i32.add (i32.shl (local.get $t13) (i32.const 2)) (local.get $t14))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:474
    (global.set $__line (i32.const 474))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t14 (i32.load (i32.shl (local.get $t14) (i32.const 2))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L170
    ;; line 0:475
    (global.set $__line (i32.const 475))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.gt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L171
    ;; line 0:478
    (global.set $__line (i32.const 478))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t13 (i32.load8_u (i32.add (i32.shl (local.get $t13) (i32.const 2)) (local.get $t14))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 36)) (i32.const 2)))) ;; LL L46
    (local.set $t15 (i32.const 8))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
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
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L172
    ;; line 0:479
    (global.set $__line (i32.const 479))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2)))) ;; LL L47
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:480
    (global.set $__line (i32.const 480))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2))
      (local.get $t11))
    ;; line 0:481
    (global.set $__line (i32.const 481))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
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
  ) ;; end func $fn_L161

  ;; BCPL fn ensure_flat (L173)
  (func $fn_L173 (export "fn_L173") (type $bcpl_fn)
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
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:485
    (global.set $__line (i32.const 485))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 28))) ;; LF L157
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:486
    (global.set $__line (i32.const 486))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:487
    (global.set $__line (i32.const 487))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L174
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 29))) ;; LF L161
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
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
  ) ;; end func $fn_L173

  ;; BCPL fn prebuild_flats (L175)
  (func $fn_L175 (export "fn_L175") (type $bcpl_fn)
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
    ;; line 0:491
    (global.set $__line (i32.const 491))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L177
      ) ;; close $__case_1 — LAB L176
    ;; line 0:492
    (global.set $__line (i32.const 492))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush t9 (pre-stack-up)
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 24))) ;; LF L146
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.add (global.get $TB) (i32.const 30))) ;; LF L173
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:493
    (global.set $__line (i32.const 493))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush t9 (pre-stack-up)
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 25))) ;; LF L147
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.add (global.get $TB) (i32.const 30))) ;; LF L173
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
      ) ;; close $__case_2 — LAB L177
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:494
    (global.set $__line (i32.const 494))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 67))) ;; LSTR
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
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
  ) ;; end func $fn_L175

  ;; BCPL fn point_on_side (L178)
  (func $fn_L178 (export "fn_L178") (type $bcpl_fn)
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
    ;; line 0:499
    (global.set $__line (i32.const 499))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:500
    (global.set $__line (i32.const 500))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:501
    (global.set $__line (i32.const 501))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 4))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 0:502
    (global.set $__line (i32.const 502))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 6))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 0:503
    (global.set $__line (i32.const 503))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:504
    (global.set $__line (i32.const 504))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:505
    (global.set $__line (i32.const 505))
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
    ;; line 0:506
    (global.set $__line (i32.const 506))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L179
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
  ) ;; end func $fn_L178

  ;; BCPL fn point_in_subsector (L180)
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
    ;; line 0:510
    (global.set $__line (i32.const 510))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:511
    (global.set $__line (i32.const 511))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L182
      ) ;; close $__case_1 — LAB L181
    (local.set $t6 (i32.const 28))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:513
    (global.set $__line (i32.const 513))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 32))) ;; LF L178
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
    ;; line 0:514
    (global.set $__line (i32.const 514))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:515
    (global.set $__line (i32.const 515))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 24))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
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
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L185
      ) ;; close $__case_2 — LAB L183
    ;; line 0:516
    (global.set $__line (i32.const 516))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 26))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
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
      ) ;; close $__case_3 — LAB L185
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L182
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.and (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 0))
    (if (i32.eq  (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:512
    (global.set $__line (i32.const 512))
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
  ) ;; end func $fn_L180

  ;; BCPL fn sector_at (L186)
  (func $fn_L186 (export "fn_L186") (type $bcpl_fn)
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
    ;; line 0:523
    (global.set $__line (i32.const 523))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 33))) ;; LF L180
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:524
    (global.set $__line (i32.const 524))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 4))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2)))) ;; LL L23
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:525
    (global.set $__line (i32.const 525))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:526
    (global.set $__line (i32.const 526))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 12))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:527
    (global.set $__line (i32.const 527))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 6))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 0:528
    (global.set $__line (i32.const 528))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t14 (i32.const 8))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; line 0:529
    (global.set $__line (i32.const 529))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 14))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:530
    (global.set $__line (i32.const 530))
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
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; RES L187: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L188
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 12))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; RES L187: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L187
    ;; RSTACK 12
    (local.set $t12 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:531
    (global.set $__line (i32.const 531))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t14 (i32.const 0))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:533
    (global.set $__line (i32.const 533))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L189
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 18))) ;; LF L140
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
  ) ;; end func $fn_L186

  ;; BCPL fn floor_at (L190)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:537
    (global.set $__line (i32.const 537))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 34))) ;; LF L186
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:538
    (global.set $__line (i32.const 538))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:539
    (global.set $__line (i32.const 539))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L191
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 21))) ;; LF L143
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
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
  ) ;; end func $fn_L190

  ;; BCPL fn ceil_at (L192)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:543
    (global.set $__line (i32.const 543))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 34))) ;; LF L186
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:544
    (global.set $__line (i32.const 544))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:545
    (global.set $__line (i32.const 545))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L193
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 22))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
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
  ) ;; end func $fn_L192

  ;; BCPL fn line_blocks_move (L194)
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
    ;; line 0:556
    (global.set $__line (i32.const 556))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 35))) ;; LF L190
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:557
    (global.set $__line (i32.const 557))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 52)) (i32.const 2)))) ;; LL L62
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 11)) (br $__dispatch) ;; JUMP L196
      ) ;; close $__case_1 — LAB L195
    ;; line 0:558
    (global.set $__line (i32.const 558))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 14))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t10 (i32.mul (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:559
    (global.set $__line (i32.const 559))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    ;; line 0:560
    (global.set $__line (i32.const 560))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 2))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; line 0:561
    (global.set $__line (i32.const 561))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 10))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    ;; line 0:562
    (global.set $__line (i32.const 562))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t18 (i32.const 12))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    ;; line 0:563
    (global.set $__line (i32.const 563))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:564
    (global.set $__line (i32.const 564))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.const 4))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t16 (i32.mul (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:565
    (global.set $__line (i32.const 565))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 17)))
    (local.set $t17 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; flush FNAP result
    ;; line 0:566
    (global.set $__line (i32.const 566))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t22 (i32.const 2))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    ;; line 0:567
    (global.set $__line (i32.const 567))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t24)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 19)))
    (local.set $t19 (call_indirect $ftable (type $bcpl_fn) (local.get $t24)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; flush FNAP result
    ;; line 0:568
    (global.set $__line (i32.const 568))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t24 (i32.const 2))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t25)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 20)))
    (local.set $t20 (call_indirect $ftable (type $bcpl_fn) (local.get $t25)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; flush FNAP result
    ;; line 0:569
    (global.set $__line (i32.const 569))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t21 (i32.sub (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (local.set $t21 (i32.mul (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t21 (i32.sub (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    ;; line 0:571
    (global.set $__line (i32.const 571))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    ;; line 0:572
    (global.set $__line (i32.const 572))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (local.set $t24 (i32.mul (local.get $t24) (local.get $t25)))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 0:573
    (global.set $__line (i32.const 573))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (local.set $t24 (i32.mul (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t26 (i32.sub (local.get $t26) (local.get $t27)))
    (local.set $t25 (i32.mul (local.get $t25) (local.get $t26)))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    ;; line 0:574
    (global.set $__line (i32.const 574))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t26 (i32.const 0))
    (local.set $t25 (i32.sub (i32.const 0) (i32.gt_s (local.get $t25) (local.get $t26))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t27 (i32.const 0))
    (local.set $t26 (i32.sub (i32.const 0) (i32.gt_s (local.get $t26) (local.get $t27))))
    (if (i32.eq  (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t26 (i32.const 0))
    (local.set $t25 (i32.sub (i32.const 0) (i32.gt_s (local.get $t25) (local.get $t26))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t27 (i32.const 0))
    (local.set $t26 (i32.sub (i32.const 0) (i32.gt_s (local.get $t26) (local.get $t27))))
    (if (i32.eq  (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; line 0:575
    (global.set $__line (i32.const 575))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t26 (i32.const 0))
    (if (i32.ge_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:577
    (global.set $__line (i32.const 577))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t25))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L198
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t26 (i32.const 0))
    (if (i32.ge_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:578
    (global.set $__line (i32.const 578))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t25))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L199
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 18))) ;; LF L140
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    ;; line 0:579
    (global.set $__line (i32.const 579))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t30 (i32.add (global.get $TB) (i32.const 18))) ;; LF L140
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 26)))
    (local.set $t26 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; flush FNAP result
    ;; line 0:580
    (global.set $__line (i32.const 580))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t31 (i32.add (global.get $TB) (i32.const 21))) ;; LF L143
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 0:581
    (global.set $__line (i32.const 581))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 22))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    ;; line 0:582
    (global.set $__line (i32.const 582))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 21))) ;; LF L143
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 29)))
    (local.set $t29 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; flush FNAP result
    ;; line 0:583
    (global.set $__line (i32.const 583))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 22))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    ;; line 0:584
    (global.set $__line (i32.const 584))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (if (i32.le_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    ;; RES L200: save result, jump to RSTACK
    (local.set $__res (local.get $t31))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L201
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    ;; RES L200: save result, jump to RSTACK
    (local.set $__res (local.get $t31))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L200
    ;; RSTACK 31
    (local.set $t31 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
    ;; line 0:585
    (global.set $__line (i32.const 585))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (i32.ge_s (local.get $t32) (local.get $t33)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    ;; RES L202: save result, jump to RSTACK
    (local.set $__res (local.get $t32))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L203
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    ;; RES L202: save result, jump to RSTACK
    (local.set $__res (local.get $t32))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L202
    ;; RSTACK 32
    (local.set $t32 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    ;; line 0:586
    (global.set $__line (i32.const 586))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (local.set $t34 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t33 (i32.sub (local.get $t33) (local.get $t34)))
    (local.set $t34 (i32.const 24))
    (if (i32.le_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:587
    (global.set $__line (i32.const 587))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t33))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_8 — LAB L204
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t34 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (local.set $t33 (i32.sub (local.get $t33) (local.get $t34)))
    (local.set $t34 (i32.const 56))
    (if (i32.ge_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:588
    (global.set $__line (i32.const 588))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t33))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_9 — LAB L205
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L197
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L196
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t8))
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
  ) ;; end func $fn_L194

  ;; BCPL fn try_move (L206)
  (func $fn_L206 (export "fn_L206") (type $bcpl_fn)
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
    ;; line 0:594
    (global.set $__line (i32.const 594))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:595
    (global.set $__line (i32.const 595))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:596
    (global.set $__line (i32.const 596))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 37))) ;; LF L194
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 0))
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:597
    (global.set $__line (i32.const 597))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2))
      (local.get $t7))
    ;; line 0:598
    (global.set $__line (i32.const 598))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2))
      (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L207
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t14 (i32.add (global.get $TB) (i32.const 37))) ;; LF L194
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 0))
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:599
    (global.set $__line (i32.const 599))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2))
      (local.get $t7))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L208
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 37))) ;; LF L194
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 0))
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:600
    (global.set $__line (i32.const 600))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2))
      (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_3 — LAB L209
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
  ) ;; end func $fn_L206

  ;; BCPL fn find_player_start (L210)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:606
    (global.set $__line (i32.const 606))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 10))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:607
    (global.set $__line (i32.const 607))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L212
      ) ;; close $__case_1 — LAB L211
    ;; line 0:608
    (global.set $__line (i32.const 608))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 10))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:609
    (global.set $__line (i32.const 609))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.const 6))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; line 0:610
    (global.set $__line (i32.const 610))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:611
    (global.set $__line (i32.const 611))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    ;; line 0:612
    (global.set $__line (i32.const 612))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
    ;; line 0:613
    (global.set $__line (i32.const 613))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.const 2))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
    ;; line 0:614
    (global.set $__line (i32.const 614))
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
    ;; line 0:615
    (global.set $__line (i32.const 615))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L213
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L212
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:616
    (global.set $__line (i32.const 616))
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
  ) ;; end func $fn_L210

  ;; BCPL fn poll_events (L214)
  (func $fn_L214 (export "fn_L214") (type $bcpl_fn)
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
    ;; line 0:622
    (global.set $__line (i32.const 622))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    ;; line 0:623
    (global.set $__line (i32.const 623))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L216
      ) ;; close $__case_1 — LAB L215
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:625
    (global.set $__line (i32.const 625))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 2))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:626
    (global.set $__line (i32.const 626))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 2))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:627
    (global.set $__line (i32.const 627))
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
    ;; line 0:628
    (global.set $__line (i32.const 628))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 1))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L220
    (local.set $t14 (i32.const 27))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:629
    (global.set $__line (i32.const 629))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L219
      ) ;; close $__case_3 — LAB L221
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L219
      ) ;; close $__case_4 — LAB L217
    (local.set $t14 (i32.const 3))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:631
    (global.set $__line (i32.const 631))
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
    ;; line 0:632
    (global.set $__line (i32.const 632))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L223
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L222
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L219
    (local.set $t14 (i32.const 12))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:633
    (global.set $__line (i32.const 633))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L224
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L216
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
  ) ;; end func $fn_L214

  ;; BCPL fn key_down (L225)
  (func $fn_L225 (export "fn_L225") (type $bcpl_fn)
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
      ) ;; close $__case_1 — LAB L226
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
  ) ;; end func $fn_L225

  ;; BCPL fn load_palette (L227)
  (func $fn_L227 (export "fn_L227") (type $bcpl_fn)
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
    ;; line 0:642
    (global.set $__line (i32.const 642))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 255))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L229
      ) ;; close $__case_1 — LAB L228
    ;; line 0:643
    (global.set $__line (i32.const 643))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:644
    (global.set $__line (i32.const 644))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:645
    (global.set $__line (i32.const 645))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:646
    (global.set $__line (i32.const 646))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:647
    (global.set $__line (i32.const 647))
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
      ) ;; close $__case_2 — LAB L229
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
  ) ;; end func $fn_L227

  ;; BCPL fn find_tex1_def (L230)
  (func $fn_L230 (export "fn_L230") (type $bcpl_fn)
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
    ;; line 0:656
    (global.set $__line (i32.const 656))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L232
      ) ;; close $__case_1 — LAB L231
    ;; line 0:657
    (global.set $__line (i32.const 657))
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
    (local.set $t12 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:658
    (global.set $__line (i32.const 658))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:659
    (global.set $__line (i32.const 659))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 12))) ;; LF L118
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
    ;; line 0:660
    (global.set $__line (i32.const 660))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L233
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L232
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
  ) ;; end func $fn_L230

  ;; BCPL fn tex_cache_lookup (L234)
  (func $fn_L234 (export "fn_L234") (type $bcpl_fn)
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
    ;; line 0:666
    (global.set $__line (i32.const 666))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L236
      ) ;; close $__case_1 — LAB L235
    ;; line 0:667
    (global.set $__line (i32.const 667))
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
    ;; line 0:668
    (global.set $__line (i32.const 668))
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
    (local.set $t15 (i32.add (global.get $TB) (i32.const 12))) ;; LF L118
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
    ;; line 0:669
    (global.set $__line (i32.const 669))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L237
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L236
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
  ) ;; end func $fn_L234

  ;; BCPL fn tex_put (L238)
  (func $fn_L238 (export "fn_L238") (type $bcpl_fn)
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
    ;; line 0:677
    (global.set $__line (i32.const 677))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:678
    (global.set $__line (i32.const 678))
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L238

  ;; BCPL fn stamp_patch_column (L239)
  (func $fn_L239 (export "fn_L239") (type $bcpl_fn)
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
    ;; line 0:683
    (global.set $__line (i32.const 683))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 8))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:685
    (global.set $__line (i32.const 685))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    ;; line 0:686
    (global.set $__line (i32.const 686))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:687
    (global.set $__line (i32.const 687))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:688
    (global.set $__line (i32.const 688))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:689
    (global.set $__line (i32.const 689))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:690
    (global.set $__line (i32.const 690))
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
      ) ;; close $__case_1 — LAB L241
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L240
    ;; line 0:691
    (global.set $__line (i32.const 691))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t16 (i32.load8_u (i32.add (i32.shl (local.get $t16) (i32.const 2)) (local.get $t17))))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t16))
    (local.set $t15 (local.get $t16))
    ;; line 0:692
    (global.set $__line (i32.const 692))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.const 255))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (if (i32.eq  (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L242
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.const 1))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t16 (i32.load8_u (i32.add (i32.shl (local.get $t16) (i32.const 2)) (local.get $t17))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:694
    (global.set $__line (i32.const 694))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t19 (i32.const 1))
    (local.set $t18 (i32.sub (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L245
      ) ;; close $__case_4 — LAB L244
    ;; line 0:695
    (global.set $__line (i32.const 695))
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
    ;; line 0:696
    (global.set $__line (i32.const 696))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:697
    (global.set $__line (i32.const 697))
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
    ;; line 0:698
    (global.set $__line (i32.const 698))
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
    (local.set $t29 (i32.add (global.get $TB) (i32.const 45))) ;; LF L238
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
      ) ;; close $__case_5 — LAB L246
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.const 1))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t19))
    (local.set $t17 (local.get $t19))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L245
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:699
    (global.set $__line (i32.const 699))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.const 4))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17))
    (local.set $t14 (local.get $t17))
    ;; line 0:701
    (global.set $__line (i32.const 701))
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
      ) ;; close $__case_7 — LAB L243
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
  ) ;; end func $fn_L239

  ;; BCPL fn composite_texture (L247)
  (func $fn_L247 (export "fn_L247") (type $bcpl_fn)
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
    ;; line 0:708
    (global.set $__line (i32.const 708))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 43))) ;; LF L230
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:709
    (global.set $__line (i32.const 709))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:710
    (global.set $__line (i32.const 710))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:711
    (global.set $__line (i32.const 711))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:712
    (global.set $__line (i32.const 712))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:713
    (global.set $__line (i32.const 713))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:714
    (global.set $__line (i32.const 714))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:716
    (global.set $__line (i32.const 716))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L248
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t12 (i32.const 128))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:717
    (global.set $__line (i32.const 717))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L249
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 12))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
    ;; line 0:719
    (global.set $__line (i32.const 719))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 14))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
    ;; line 0:720
    (global.set $__line (i32.const 720))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 20))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
    ;; line 0:721
    (global.set $__line (i32.const 721))
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
      ) ;; close $__case_3 — LAB L251
    ;; line 0:722
    (global.set $__line (i32.const 722))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L250
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
    ;; line 0:724
    (global.set $__line (i32.const 724))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:725
    (global.set $__line (i32.const 725))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L252
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L254
      ) ;; close $__case_6 — LAB L253
    ;; line 0:727
    (global.set $__line (i32.const 727))
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
      ) ;; close $__case_7 — LAB L254
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
      (local.set $__lab (i32.const 12)) (br $__dispatch) ;; JUMP L256
      ) ;; close $__case_8 — LAB L255
    ;; line 0:729
    (global.set $__line (i32.const 729))
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
    ;; line 0:730
    (global.set $__line (i32.const 730))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    ;; line 0:731
    (global.set $__line (i32.const 731))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t19 (i32.const 2))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t20 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 15)))
    (local.set $t15 (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; flush FNAP result
    ;; line 0:732
    (global.set $__line (i32.const 732))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t20 (i32.const 4))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    ;; line 0:733
    (global.set $__line (i32.const 733))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 8))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t17 (i32.mul (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2)))) ;; LL L27
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:734
    (global.set $__line (i32.const 734))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.add (global.get $TB) (i32.const 13))) ;; LF L123
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    ;; line 0:735
    (global.set $__line (i32.const 735))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:736
    (global.set $__line (i32.const 736))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:737
    (global.set $__line (i32.const 737))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    ;; line 0:738
    (global.set $__line (i32.const 738))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t23 (i32.const 0))
    (if (i32.lt_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:739
    (global.set $__line (i32.const 739))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 16))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t22))
    (local.set $t21 (local.get $t22))
    ;; line 0:740
    (global.set $__line (i32.const 740))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:741
    (global.set $__line (i32.const 741))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
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
    ;; line 0:742
    (global.set $__line (i32.const 742))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t24 (i32.const 1))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L259
      ) ;; close $__case_9 — LAB L258
    ;; line 0:743
    (global.set $__line (i32.const 743))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 46))) ;; LF L239
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
      ) ;; close $__case_10 — LAB L259
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (if (i32.le_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L257
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L256
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:744
    (global.set $__line (i32.const 744))
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
    ;; line 0:749
    (global.set $__line (i32.const 749))
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
      ) ;; close $__case_13 — LAB L260
    ;; line 0:750
    (global.set $__line (i32.const 750))
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
      ) ;; close $__case_14 — LAB L261
    ;; line 0:751
    (global.set $__line (i32.const 751))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:752
    (global.set $__line (i32.const 752))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:753
    (global.set $__line (i32.const 753))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:754
    (global.set $__line (i32.const 754))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2))
      (local.get $t11))
    ;; line 0:755
    (global.set $__line (i32.const 755))
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
  ) ;; end func $fn_L247

  ;; BCPL fn ensure_sidedef_tex (L262)
  (func $fn_L262 (export "fn_L262") (type $bcpl_fn)
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
    ;; line 0:762
    (global.set $__line (i32.const 762))
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
    ;; line 0:763
    (global.set $__line (i32.const 763))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:764
    (global.set $__line (i32.const 764))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:765
    (global.set $__line (i32.const 765))
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
    ;; line 0:767
    (global.set $__line (i32.const 767))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L263
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:768
    (global.set $__line (i32.const 768))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L264
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 44))) ;; LF L234
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
    ;; line 0:769
    (global.set $__line (i32.const 769))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 0))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:770
    (global.set $__line (i32.const 770))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L265
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 47))) ;; LF L247
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
  ) ;; end func $fn_L262

  ;; BCPL fn spr_cache_lookup (L266)
  (func $fn_L266 (export "fn_L266") (type $bcpl_fn)
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
    ;; line 0:777
    (global.set $__line (i32.const 777))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (local.set $t4 (i32.load8_u (i32.add (i32.shl (local.get $t4) (i32.const 2)) (local.get $t5))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:778
    (global.set $__line (i32.const 778))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 8)) (br $__dispatch) ;; JUMP L268
      ) ;; close $__case_1 — LAB L267
    ;; line 0:779
    (global.set $__line (i32.const 779))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:780
    (global.set $__line (i32.const 780))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 8))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:781
    (global.set $__line (i32.const 781))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L269
    ;; line 0:782
    (global.set $__line (i32.const 782))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 44)) (i32.const 2)))) ;; LL L54
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:783
    (global.set $__line (i32.const 783))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.ge_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.const 1))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t12 (i32.load8_u (i32.add (i32.shl (local.get $t12) (i32.const 2)) (local.get $t13))))
    ;; RES L271: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L272
    (local.set $t12 (i32.const 0))
    ;; RES L271: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L271
    ;; RSTACK 12
    (local.set $t12 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:784
    (global.set $__line (i32.const 784))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (if (i32.eq  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:785
    (global.set $__line (i32.const 785))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t13))
    (local.set $t7 (local.get $t13))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L270
      ) ;; close $__case_5 — LAB L273
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L270
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:787
    (global.set $__line (i32.const 787))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L274
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L268
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
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L266

  ;; BCPL fn find_lump_bcpl (L275)
  (func $fn_L275 (export "fn_L275") (type $bcpl_fn)
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
    ;; line 0:792
    (global.set $__line (i32.const 792))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (local.set $t4 (i32.load8_u (i32.add (i32.shl (local.get $t4) (i32.const 2)) (local.get $t5))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:793
    (global.set $__line (i32.const 793))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 8)) (br $__dispatch) ;; JUMP L277
      ) ;; close $__case_1 — LAB L276
    ;; line 0:794
    (global.set $__line (i32.const 794))
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
    ;; line 0:795
    (global.set $__line (i32.const 795))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:796
    (global.set $__line (i32.const 796))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L278
    ;; line 0:797
    (global.set $__line (i32.const 797))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:798
    (global.set $__line (i32.const 798))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.ge_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.const 1))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t12 (i32.load8_u (i32.add (i32.shl (local.get $t12) (i32.const 2)) (local.get $t13))))
    ;; RES L280: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L281
    (local.set $t12 (i32.const 0))
    ;; RES L280: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L280
    ;; RSTACK 12
    (local.set $t12 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:799
    (global.set $__line (i32.const 799))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (if (i32.eq  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:800
    (global.set $__line (i32.const 800))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t13))
    (local.set $t8 (local.get $t13))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L279
      ) ;; close $__case_5 — LAB L282
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L279
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:802
    (global.set $__line (i32.const 802))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L283
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L277
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
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L275

  ;; BCPL fn load_sprite (L284)
  (func $fn_L284 (export "fn_L284") (type $bcpl_fn)
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:807
    (global.set $__line (i32.const 807))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:808
    (global.set $__line (i32.const 808))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:809
    (global.set $__line (i32.const 809))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:810
    (global.set $__line (i32.const 810))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:811
    (global.set $__line (i32.const 811))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.const 0))
    (local.set $t12 (i32.load8_u (i32.add (i32.shl (local.get $t12) (i32.const 2)) (local.get $t13))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:812
    (global.set $__line (i32.const 812))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t14 (i32.const 128))
    (if (i32.lt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:814
    (global.set $__line (i32.const 814))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L285
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 50))) ;; LF L275
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t13))
    (local.set $t4 (local.get $t13))
    ;; line 0:815
    (global.set $__line (i32.const 815))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.const 0))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:816
    (global.set $__line (i32.const 816))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L286
    (local.set $t13 (i32.const 16))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t13 (i32.mul (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t13))
    (local.set $t5 (local.get $t13))
    ;; line 0:817
    (global.set $__line (i32.const 817))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t13))
    (local.set $t6 (local.get $t13))
    ;; line 0:818
    (global.set $__line (i32.const 818))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t13))
    (local.set $t7 (local.get $t13))
    ;; line 0:819
    (global.set $__line (i32.const 819))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 2))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t13))
    (local.set $t8 (local.get $t13))
    ;; line 0:820
    (global.set $__line (i32.const 820))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 4))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t13))
    (local.set $t9 (local.get $t13))
    ;; line 0:821
    (global.set $__line (i32.const 821))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 6))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13))
    (local.set $t10 (local.get $t13))
    ;; line 0:822
    (global.set $__line (i32.const 822))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t14 (i32.const 0))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.const 0))
    (if (i32.gt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L288
    ;; line 0:823
    (global.set $__line (i32.const 823))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L287
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t16 (i32.mul (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
    ;; line 0:825
    (global.set $__line (i32.const 825))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (if (i32.ne  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:826
    (global.set $__line (i32.const 826))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L289
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t14 (i32.mul (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.const 1))
    (local.set $t14 (i32.sub (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L291
      ) ;; close $__case_6 — LAB L290
    ;; line 0:827
    (global.set $__line (i32.const 827))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (i32.store (i32.shl (local.get $t16) (i32.const 2)) (local.get $t15))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.const 1))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t15))
    (local.set $t13 (local.get $t15))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L291
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (if (i32.le_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t15 (i32.const 1))
    (local.set $t14 (i32.sub (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L293
      ) ;; close $__case_8 — LAB L292
    ;; line 0:829
    (global.set $__line (i32.const 829))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.add (global.get $TB) (i32.const 46))) ;; LF L239
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t25)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 15)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t25)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.const 1))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t15))
    (local.set $t13 (local.get $t15))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L293
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (if (i32.le_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:830
    (global.set $__line (i32.const 830))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (if (i32.gt_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L294
    ;; line 0:832
    (global.set $__line (i32.const 832))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ge_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.const 1))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t15 (i32.load8_u (i32.add (i32.shl (local.get $t15) (i32.const 2)) (local.get $t16))))
    ;; RES L296: save result, jump to RSTACK
    (local.set $__res (local.get $t15))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L297
    (local.set $t15 (i32.const 0))
    ;; RES L296: save result, jump to RSTACK
    (local.set $__res (local.get $t15))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L296
    ;; RSTACK 15
    (local.set $t15 (local.get $__res)) ;; restore RES result
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 44)) (i32.const 2)))) ;; LL L54
    (local.set $t17 (i32.const 8))
    (local.set $t18 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t17 (i32.mul (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store8 (i32.add (i32.shl (local.get $t16) (i32.const 2)) (local.get $t17)) (local.get $t15))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.const 1))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t15))
    (local.set $t13 (local.get $t15))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (if (i32.le_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L295
    ;; line 0:833
    (global.set $__line (i32.const 833))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 45)) (i32.const 2)))) ;; LL L55
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    ;; line 0:834
    (global.set $__line (i32.const 834))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 46)) (i32.const 2)))) ;; LL L56
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    ;; line 0:835
    (global.set $__line (i32.const 835))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 47)) (i32.const 2)))) ;; LL L57
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    ;; line 0:836
    (global.set $__line (i32.const 836))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 48)) (i32.const 2)))) ;; LL L58
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    ;; line 0:837
    (global.set $__line (i32.const 837))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 49)) (i32.const 2)))) ;; LL L59
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    ;; line 0:838
    (global.set $__line (i32.const 838))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 1))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2))
      (local.get $t13))
    ;; line 0:839
    (global.set $__line (i32.const 839))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.sub (local.get $t13) (local.get $t14)))
    ;; FNRN
    (local.set $__res (local.get $t13))
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
  ) ;; end func $fn_L284

  ;; BCPL fn ensure_sprite (L298)
  (func $fn_L298 (export "fn_L298") (type $bcpl_fn)
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
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:843
    (global.set $__line (i32.const 843))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 49))) ;; LF L266
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 0:844
    (global.set $__line (i32.const 844))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.const 0))
    (if (i32.lt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:845
    (global.set $__line (i32.const 845))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L299
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 51))) ;; LF L284
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
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
  ) ;; end func $fn_L298

  ;; BCPL fn pickup_name (L300)
  (func $fn_L300 (export "fn_L300") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $Pb i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
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
    ;; line 0:850
    (global.set $__line (i32.const 850))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    ;; RES L301: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ;; line 0:851
    (global.set $__line (i32.const 851))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_1 — LAB L302
    ;; line 0:852
    (global.set $__line (i32.const 852))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 73))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L303
    ;; line 0:853
    (global.set $__line (i32.const 853))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L304
    ;; line 0:854
    (global.set $__line (i32.const 854))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 77))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L305
    ;; line 0:855
    (global.set $__line (i32.const 855))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 79))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L306
    ;; line 0:856
    (global.set $__line (i32.const 856))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 81))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L307
    ;; line 0:857
    (global.set $__line (i32.const 857))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 83))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L308
    ;; line 0:858
    (global.set $__line (i32.const 858))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 85))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_8 — LAB L309
    ;; line 0:859
    (global.set $__line (i32.const 859))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 87))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_9 — LAB L310
    ;; line 0:860
    (global.set $__line (i32.const 860))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 89))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_10 — LAB L311
    ;; line 0:861
    (global.set $__line (i32.const 861))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 91))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_11 — LAB L312
    ;; line 0:862
    (global.set $__line (i32.const 862))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 93))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_12 — LAB L313
    ;; line 0:863
    (global.set $__line (i32.const 863))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 95))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_13 — LAB L314
    ;; line 0:864
    (global.set $__line (i32.const 864))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 97))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_14 — LAB L315
    ;; line 0:865
    (global.set $__line (i32.const 865))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 99))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_15 — LAB L316
    ;; line 0:866
    (global.set $__line (i32.const 866))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 101))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_16 — LAB L317
    ;; line 0:867
    (global.set $__line (i32.const 867))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 103))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_17 — LAB L318
    ;; line 0:868
    (global.set $__line (i32.const 868))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 105))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_18 — LAB L319
    ;; line 0:869
    (global.set $__line (i32.const 869))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 107))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_19 — LAB L320
    ;; line 0:870
    (global.set $__line (i32.const 870))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 109))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_20 — LAB L321
    ;; line 0:871
    (global.set $__line (i32.const 871))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 111))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_21 — LAB L322
    ;; line 0:872
    (global.set $__line (i32.const 872))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 113))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_22 — LAB L323
    ;; line 0:873
    (global.set $__line (i32.const 873))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 115))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_23 — LAB L324
    ;; line 0:874
    (global.set $__line (i32.const 874))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 117))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_24 — LAB L325
    ;; line 0:875
    (global.set $__line (i32.const 875))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 119))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_25 — LAB L326
    ;; line 0:876
    (global.set $__line (i32.const 876))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 89))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_26 — LAB L327
    ;; line 0:877
    (global.set $__line (i32.const 877))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_27 — LAB L301
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 25 cases default L327
    (if (i32.eq (local.get $t4) (i32.const 2007)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 8)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2022)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2024)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2025)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 6)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 13)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 5)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2006)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2005)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2003)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2002)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2001)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 17)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2047)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2046)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2048)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2008)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2019)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2018)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2015)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2014)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2012)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2011)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 2035)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L300

  ;; BCPL fn monster_base (L328)
  (func $fn_L328 (export "fn_L328") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $Pb i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
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
    ;; line 0:883
    (global.set $__line (i32.const 883))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    ;; RES L329: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ;; line 0:884
    (global.set $__line (i32.const 884))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_1 — LAB L330
    ;; line 0:885
    (global.set $__line (i32.const 885))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 121))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L331
    ;; line 0:886
    (global.set $__line (i32.const 886))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 123))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L332
    ;; line 0:887
    (global.set $__line (i32.const 887))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 125))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L333
    ;; line 0:888
    (global.set $__line (i32.const 888))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 127))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L334
    ;; line 0:889
    (global.set $__line (i32.const 889))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 129))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L335
    ;; line 0:890
    (global.set $__line (i32.const 890))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $SB) (i32.const 131))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L336
    ;; line 0:891
    (global.set $__line (i32.const 891))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_8 — LAB L329
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 6 cases default L336
    (if (i32.eq (local.get $t4) (i32.const 3006)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 3005)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 3004)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 3002)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 3001)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L328

  ;; BCPL fn viewer_octant (L337)
  (func $fn_L337 (export "fn_L337") (type $bcpl_fn)
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
    ;; line 0:898
    (global.set $__line (i32.const 898))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:899
    (global.set $__line (i32.const 899))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:900
    (global.set $__line (i32.const 900))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 8191))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:901
    (global.set $__line (i32.const 901))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 8191))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.and (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:902
    (global.set $__line (i32.const 902))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.mul (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 1024))
    (local.set $t10 (i32.div_s (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:903
    (global.set $__line (i32.const 903))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 1024))
    (local.set $t11 (i32.div_s (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:904
    (global.set $__line (i32.const 904))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t12
      (if (result i32) (i32.ge_s (local.get $t12) (i32.const 0))
        (then (local.get $t12))
        (else (i32.sub (i32.const 0) (local.get $t12)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:905
    (global.set $__line (i32.const 905))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t13
      (if (result i32) (i32.ge_s (local.get $t13) (i32.const 0))
        (then (local.get $t13))
        (else (i32.sub (i32.const 0) (local.get $t13)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:906
    (global.set $__line (i32.const 906))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.const 2))
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:907
    (global.set $__line (i32.const 907))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t14))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L338
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t15 (i32.const 0))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.const 2))
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:908
    (global.set $__line (i32.const 908))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 4))
    ;; FNRN
    (local.set $__res (local.get $t14))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L339
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t16 (i32.const 2))
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:909
    (global.set $__line (i32.const 909))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 2))
    ;; FNRN
    (local.set $__res (local.get $t14))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L340
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.const 0))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t16 (i32.const 2))
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:910
    (global.set $__line (i32.const 910))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 6))
    ;; FNRN
    (local.set $__res (local.get $t14))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L341
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:911
    (global.set $__line (i32.const 911))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t14))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L342
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t15 (i32.const 0))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:912
    (global.set $__line (i32.const 912))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 3))
    ;; FNRN
    (local.set $__res (local.get $t14))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L343
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t15 (i32.const 0))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.const 0))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:913
    (global.set $__line (i32.const 913))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 5))
    ;; FNRN
    (local.set $__res (local.get $t14))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L344
    (local.set $t14 (i32.const 7))
    ;; FNRN
    (local.set $__res (local.get $t14))
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
  ) ;; end func $fn_L337

  ;; BCPL fn build_monster_name (L345)
  (func $fn_L345 (export "fn_L345") (type $bcpl_fn)
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
    ;; line 0:919
    (global.set $__line (i32.const 919))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 6))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8)) (local.get $t6))
    ;; line 0:920
    (global.set $__line (i32.const 920))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (i32.store8 (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8)) (local.get $t6))
    ;; line 0:921
    (global.set $__line (i32.const 921))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 2))
    (i32.store8 (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8)) (local.get $t6))
    ;; line 0:922
    (global.set $__line (i32.const 922))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 3))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 3))
    (i32.store8 (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8)) (local.get $t6))
    ;; line 0:923
    (global.set $__line (i32.const 923))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 4))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 4))
    (i32.store8 (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8)) (local.get $t6))
    ;; line 0:924
    (global.set $__line (i32.const 924))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 65))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 5))
    (i32.store8 (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8)) (local.get $t6))
    ;; line 0:925
    (global.set $__line (i32.const 925))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.const 49))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 6))
    (i32.store8 (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8)) (local.get $t6))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L345

  ;; BCPL fn prebuild_textures (L346)
  (func $fn_L346 (export "fn_L346") (type $bcpl_fn)
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
    ;; line 0:929
    (global.set $__line (i32.const 929))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L348
      ) ;; close $__case_1 — LAB L347
    ;; line 0:930
    (global.set $__line (i32.const 930))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 4))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 48))) ;; LF L262
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:931
    (global.set $__line (i32.const 931))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 12))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 48))) ;; LF L262
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:932
    (global.set $__line (i32.const 932))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 20))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 48))) ;; LF L262
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
      ) ;; close $__case_2 — LAB L348
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:933
    (global.set $__line (i32.const 933))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 133))) ;; LSTR
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
  ) ;; end func $fn_L346

  ;; BCPL fn cam_x (L349)
  (func $fn_L349 (export "fn_L349") (type $bcpl_fn)
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
    ;; line 0:940
    (global.set $__line (i32.const 940))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:941
    (global.set $__line (i32.const 941))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:942
    (global.set $__line (i32.const 942))
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L349

  ;; BCPL fn cam_y (L350)
  (func $fn_L350 (export "fn_L350") (type $bcpl_fn)
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
    ;; line 0:946
    (global.set $__line (i32.const 946))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:947
    (global.set $__line (i32.const 947))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:948
    (global.set $__line (i32.const 948))
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L350

  ;; BCPL fn front_facing (L351)
  (func $fn_L351 (export "fn_L351") (type $bcpl_fn)
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
    ;; line 0:952
    (global.set $__line (i32.const 952))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:953
    (global.set $__line (i32.const 953))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:954
    (global.set $__line (i32.const 954))
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L351

  ;; BCPL fn light_to_col (L352)
  (func $fn_L352 (export "fn_L352") (type $bcpl_fn)
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
    ;; line 0:958
    (global.set $__line (i32.const 958))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:959
    (global.set $__line (i32.const 959))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.const 40))
    (if (i32.ge_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:960
    (global.set $__line (i32.const 960))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 40))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L353
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.const 255))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:961
    (global.set $__line (i32.const 961))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 255))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L354
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
  ) ;; end func $fn_L352

  ;; BCPL fn light_at_depth (L355)
  (func $fn_L355 (export "fn_L355") (type $bcpl_fn)
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
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:967
    (global.set $__line (i32.const 967))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.const 20))
    (local.set $t5 (i32.div_s (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:968
    (global.set $__line (i32.const 968))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:969
    (global.set $__line (i32.const 969))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 32))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:970
    (global.set $__line (i32.const 970))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 32))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L356
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 255))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:971
    (global.set $__line (i32.const 971))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 255))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L357
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
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
  ) ;; end func $fn_L355

  ;; BCPL fn reset_clip (L358)
  (func $fn_L358 (export "fn_L358") (type $bcpl_fn)
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
    ;; line 0:975
    (global.set $__line (i32.const 975))
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
      ) ;; close $__case_1 — LAB L359
    ;; line 0:976
    (global.set $__line (i32.const 976))
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
      ) ;; close $__case_2 — LAB L360
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
  ) ;; end func $fn_L358

  ;; BCPL fn close_column (L361)
  (func $fn_L361 (export "fn_L361") (type $bcpl_fn)
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
    ;; line 0:980
    (global.set $__line (i32.const 980))
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
    ;; line 0:981
    (global.set $__line (i32.const 981))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2)))) ;; LL L38
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2))
      (local.get $t4))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L362
    (local.set $t4 (i32.const 720))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    ;; line 0:982
    (global.set $__line (i32.const 982))
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
  ) ;; end func $fn_L361

  ;; BCPL fn vline_clipped (L363)
  (func $fn_L363 (export "fn_L363") (type $bcpl_fn)
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
    ;; line 0:986
    (global.set $__line (i32.const 986))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:987
    (global.set $__line (i32.const 987))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:988
    (global.set $__line (i32.const 988))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:989
    (global.set $__line (i32.const 989))
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
      ) ;; close $__case_1 — LAB L364
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:990
    (global.set $__line (i32.const 990))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t9))
    (local.set $t4 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L365
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:991
    (global.set $__line (i32.const 991))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9))
    (local.set $t5 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L366
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:992
    (global.set $__line (i32.const 992))
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
      ) ;; close $__case_4 — LAB L367
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
  ) ;; end func $fn_L363

  ;; BCPL fn project_y (L368)
  (func $fn_L368 (export "fn_L368") (type $bcpl_fn)
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L368

  ;; BCPL fn draw_textured_band (L369)
  (func $fn_L369 (export "fn_L369") (type $bcpl_fn)
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
    ;; line 0:999
    (global.set $__line (i32.const 999))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 0))
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:1001
    (global.set $__line (i32.const 1001))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 65))) ;; LF L363
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
      ) ;; close $__case_1 — LAB L370
    ;; line 0:1002
    (global.set $__line (i32.const 1002))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:1003
    (global.set $__line (i32.const 1003))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:1004
    (global.set $__line (i32.const 1004))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:1005
    (global.set $__line (i32.const 1005))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 65536))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t14 (i32.mul (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.const 480))
    (local.set $t14 (i32.div_s (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:1006
    (global.set $__line (i32.const 1006))
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
    ;; line 0:1007
    (global.set $__line (i32.const 1007))
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
    ;; line 0:1008
    (global.set $__line (i32.const 1008))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:1009
    (global.set $__line (i32.const 1009))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    ;; line 0:1010
    (global.set $__line (i32.const 1010))
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
    ;; line 0:1011
    (global.set $__line (i32.const 1011))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t19))
    (local.set $t17 (local.get $t19))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L371
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t20 (i32.load (i32.shl (local.get $t20) (i32.const 2))))
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:1012
    (global.set $__line (i32.const 1012))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t19))
    (local.set $t18 (local.get $t19))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L372
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (if (i32.gt_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:1013
    (global.set $__line (i32.const 1013))
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
      ) ;; close $__case_4 — LAB L373
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
  ) ;; end func $fn_L369

  ;; BCPL fn draw_textured_band_trans (L374)
  (func $fn_L374 (export "fn_L374") (type $bcpl_fn)
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
    ;; line 0:1023
    (global.set $__line (i32.const 1023))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:1025
    (global.set $__line (i32.const 1025))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:1026
    (global.set $__line (i32.const 1026))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:1027
    (global.set $__line (i32.const 1027))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:1028
    (global.set $__line (i32.const 1028))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:1029
    (global.set $__line (i32.const 1029))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:1030
    (global.set $__line (i32.const 1030))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t19 (i32.const 0))
    (if (i32.ge_s (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L375
    ;; line 0:1031
    (global.set $__line (i32.const 1031))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t18))
    (local.set $t10 (local.get $t18))
    ;; line 0:1032
    (global.set $__line (i32.const 1032))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t18))
    (local.set $t11 (local.get $t18))
    ;; line 0:1033
    (global.set $__line (i32.const 1033))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t18))
    (local.set $t12 (local.get $t18))
    ;; line 0:1034
    (global.set $__line (i32.const 1034))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.const 65536))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t18 (i32.mul (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.const 480))
    (local.set $t18 (i32.div_s (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t18))
    (local.set $t13 (local.get $t18))
    ;; line 0:1035
    (global.set $__line (i32.const 1035))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t18 (i32.rem_s (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t18 (i32.rem_s (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t18))
    (local.set $t14 (local.get $t18))
    ;; line 0:1036
    (global.set $__line (i32.const 1036))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.const 65535))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t18 (i32.and (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t20 (i32.const 16))
    (local.set $t19 (i32.shl (local.get $t19) (local.get $t20)))
    (local.set $t18 (i32.or (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18))
    (local.set $t15 (local.get $t18))
    ;; line 0:1037
    (global.set $__line (i32.const 1037))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (if (i32.ge_s (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:1038
    (global.set $__line (i32.const 1038))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t18))
    (local.set $t16 (local.get $t18))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L376
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (if (i32.le_s (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:1039
    (global.set $__line (i32.const 1039))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t18))
    (local.set $t17 (local.get $t18))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L377
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (if (i32.gt_s (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:1040
    (global.set $__line (i32.const 1040))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 86))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t26 (i32.sub (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_4 — LAB L378
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
  ) ;; end func $fn_L374

  ;; BCPL fn render_seg (L379)
  (func $fn_L379 (export "fn_L379") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_65
      (block $__case_64
      (block $__case_63
      (block $__case_62
      (block $__case_61
      (block $__case_60
      (block $__case_59
      (block $__case_58
      (block $__case_57
      (block $__case_56
      (block $__case_55
      (block $__case_54
      (block $__case_53
      (block $__case_52
      (block $__case_51
      (block $__case_50
      (block $__case_49
      (block $__case_48
      (block $__case_47
      (block $__case_46
      (block $__case_45
      (block $__case_44
      (block $__case_43
      (block $__case_42
      (block $__case_41
      (block $__case_40
      (block $__case_39
      (block $__case_38
      (block $__case_37
      (block $__case_36
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__case_28 $__case_29 $__case_30 $__case_31 $__case_32 $__case_33 $__case_34 $__case_35 $__case_36 $__case_37 $__case_38 $__case_39 $__case_40 $__case_41 $__case_42 $__case_43 $__case_44 $__case_45 $__case_46 $__case_47 $__case_48 $__case_49 $__case_50 $__case_51 $__case_52 $__case_53 $__case_54 $__case_55 $__case_56 $__case_57 $__case_58 $__case_59 $__case_60 $__case_61 $__case_62 $__case_63 $__case_64 $__case_65 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:1047
    (global.set $__line (i32.const 1047))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:1048
    (global.set $__line (i32.const 1048))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:1049
    (global.set $__line (i32.const 1049))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:1050
    (global.set $__line (i32.const 1050))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:1051
    (global.set $__line (i32.const 1051))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    ;; line 0:1052
    (global.set $__line (i32.const 1052))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    ;; line 0:1053
    (global.set $__line (i32.const 1053))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    ;; line 0:1054
    (global.set $__line (i32.const 1054))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    ;; line 0:1055
    (global.set $__line (i32.const 1055))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 0))
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.const 0))
    (local.set $t32 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    ;; line 0:1056
    (global.set $__line (i32.const 1056))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const 0))
    (local.set $t34 (i32.const 0))
    (local.set $t35 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33)) ;; STORE slot 33
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34)) ;; STORE slot 34
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35)) ;; STORE slot 35
    ;; line 0:1057
    (global.set $__line (i32.const 1057))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t36 (i32.const 0))
    (local.set $t37 (i32.const 0))
    (local.set $t38 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36)) ;; STORE slot 36
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; STORE slot 37
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t38)) ;; STORE slot 38
    ;; line 0:1058
    (global.set $__line (i32.const 1058))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t39 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39)) ;; STORE slot 39
    ;; line 0:1059
    (global.set $__line (i32.const 1059))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t40 (i32.const 0))
    (local.set $t41 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40)) ;; STORE slot 40
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41)) ;; STORE slot 41
    ;; line 0:1060
    (global.set $__line (i32.const 1060))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t42 (i32.const 0))
    (local.set $t43 (i32.const 0))
    (local.set $t44 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t42)) ;; STORE slot 42
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t43)) ;; STORE slot 43
    (i32.store (i32.add (local.get $Pb) (i32.const 176)) (local.get $t44)) ;; STORE slot 44
    ;; line 0:1061
    (global.set $__line (i32.const 1061))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t45 (i32.const 0))
    (local.set $t46 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 180)) (local.get $t45)) ;; STORE slot 45
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t46)) ;; STORE slot 46
    ;; line 0:1062
    (global.set $__line (i32.const 1062))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t47 (i32.const -1))
    (local.set $t48 (i32.const -1))
    (local.set $t49 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (local.get $t47)) ;; STORE slot 47
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49)) ;; STORE slot 49
    ;; line 0:1063
    (global.set $__line (i32.const 1063))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 0))
    (local.set $t51 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51)) ;; STORE slot 51
    ;; line 0:1064
    (global.set $__line (i32.const 1064))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t52 (i32.const 0))
    (local.set $t53 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52)) ;; STORE slot 52
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53)) ;; STORE slot 53
    ;; line 0:1065
    (global.set $__line (i32.const 1065))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 0))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t54))
    (local.set $t4 (local.get $t54))
    ;; line 0:1067
    (global.set $__line (i32.const 1067))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 2))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t54))
    (local.set $t5 (local.get $t54))
    ;; line 0:1068
    (global.set $__line (i32.const 1068))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 6))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t54))
    (local.set $t6 (local.get $t54))
    ;; line 0:1069
    (global.set $__line (i32.const 1069))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 8))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t54))
    (local.set $t7 (local.get $t54))
    ;; line 0:1070
    (global.set $__line (i32.const 1070))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 10))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t54))
    (local.set $t8 (local.get $t54))
    ;; line 0:1071
    (global.set $__line (i32.const 1071))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 14))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t54))
    (local.set $t9 (local.get $t54))
    ;; line 0:1072
    (global.set $__line (i32.const 1072))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 4))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t54))
    (local.set $t12 (local.get $t54))
    ;; line 0:1073
    (global.set $__line (i32.const 1073))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 8))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t54 (i32.and (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.const 0))
    (local.set $t54 (i32.sub (i32.const 0) (i32.ne (local.get $t54) (local.get $t55))))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54))
    (local.set $t52 (local.get $t54))
    ;; line 0:1074
    (global.set $__line (i32.const 1074))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 16))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t54 (i32.and (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.const 0))
    (local.set $t54 (i32.sub (i32.const 0) (i32.ne (local.get $t54) (local.get $t55))))
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t54))
    (local.set $t53 (local.get $t54))
    ;; line 0:1075
    (global.set $__line (i32.const 1075))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 0))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ne  (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:1076
    (global.set $__line (i32.const 1076))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 10))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t54))
    (local.set $t10 (local.get $t54))
    ;; line 0:1077
    (global.set $__line (i32.const 1077))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 12))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t54))
    (local.set $t11 (local.get $t54))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L382
      ) ;; close $__case_1 — LAB L380
    ;; line 0:1078
    (global.set $__line (i32.const 1078))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 12))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t54))
    (local.set $t10 (local.get $t54))
    ;; line 0:1079
    (global.set $__line (i32.const 1079))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 10))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t54))
    (local.set $t11 (local.get $t54))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L382
    ;; line 0:1080
    (global.set $__line (i32.const 1080))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t55 (i32.const 0))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_3 — LAB L383
    ;; line 0:1081
    (global.set $__line (i32.const 1081))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 18))) ;; LF L140
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t54))
    (local.set $t13 (local.get $t54))
    ;; line 0:1083
    (global.set $__line (i32.const 1083))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t55 (i32.const 0))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_4 — LAB L384
    ;; line 0:1084
    (global.set $__line (i32.const 1084))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 21))) ;; LF L143
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t54))
    (local.set $t23 (local.get $t54))
    ;; line 0:1085
    (global.set $__line (i32.const 1085))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 22))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t54))
    (local.set $t24 (local.get $t54))
    ;; line 0:1086
    (global.set $__line (i32.const 1086))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 23))) ;; LF L145
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t54))
    (local.set $t25 (local.get $t54))
    ;; line 0:1087
    (global.set $__line (i32.const 1087))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 19))) ;; LF L141
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 180)) (local.get $t54))
    (local.set $t45 (local.get $t54))
    ;; line 0:1088
    (global.set $__line (i32.const 1088))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 20))) ;; LF L142
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t54))
    (local.set $t46 (local.get $t54))
    ;; line 0:1089
    (global.set $__line (i32.const 1089))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t55 (i32.const 0))
    (local.set $t54 (i32.sub (i32.const 0) (i32.ge_s (local.get $t54) (local.get $t55))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t54))
    (local.set $t28 (local.get $t54))
    ;; line 0:1091
    (global.set $__line (i32.const 1091))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (i32.eqz (local.get $t54)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:1092
    (global.set $__line (i32.const 1092))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 18))) ;; LF L140
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t54))
    (local.set $t14 (local.get $t54))
    ;; line 0:1093
    (global.set $__line (i32.const 1093))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t55 (i32.const 0))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:1094
    (global.set $__line (i32.const 1094))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t54))
    (local.set $t28 (local.get $t54))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L386
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (i32.eqz (local.get $t54)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:1095
    (global.set $__line (i32.const 1095))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 21))) ;; LF L143
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t54))
    (local.set $t26 (local.get $t54))
    ;; line 0:1096
    (global.set $__line (i32.const 1096))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 22))) ;; LF L144
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t54))
    (local.set $t27 (local.get $t54))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L387
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L385
    ;; line 0:1097
    (global.set $__line (i32.const 1097))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 4))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    ;; line 0:1101
    (global.set $__line (i32.const 1101))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.const 4))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55)) ;; STORE slot 55
    ;; line 0:1102
    (global.set $__line (i32.const 1102))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t59 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t60 (i32.const 0))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t56))
    (local.set $t15 (local.get $t56))
    ;; line 0:1103
    (global.set $__line (i32.const 1103))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t59 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t60 (i32.const 2))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t56))
    (local.set $t16 (local.get $t56))
    ;; line 0:1104
    (global.set $__line (i32.const 1104))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t59 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t60 (i32.const 0))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t56))
    (local.set $t17 (local.get $t56))
    ;; line 0:1105
    (global.set $__line (i32.const 1105))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t59 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t60 (i32.const 2))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t56))
    (local.set $t18 (local.get $t56))
    ;; line 0:1106
    (global.set $__line (i32.const 1106))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (local.get $t54) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:1109
    (global.set $__line (i32.const 1109))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t58 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 60))) ;; LF L351
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (if (local.get $t54) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_8 — LAB L389
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L388
    ;; line 0:1110
    (global.set $__line (i32.const 1110))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t54 (i32.sub (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    ;; line 0:1113
    (global.set $__line (i32.const 1113))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55)) ;; STORE slot 55
    ;; line 0:1114
    (global.set $__line (i32.const 1114))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t59 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t59 (i32.mul (local.get $t59) (local.get $t60)))
    (local.set $t60 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t60 (i32.mul (local.get $t60) (local.get $t61)))
    (local.set $t59 (i32.add (local.get $t59) (local.get $t60)))
    (local.set $t60 (i32.add (global.get $TB) (i32.const 17))) ;; LF L136
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t60)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t60)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t56))
    (local.set $t39 (local.get $t56))
    ;; line 0:1115
    (global.set $__line (i32.const 1115))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t54))
    (local.set $t40 (local.get $t54))
    ;; line 0:1117
    (global.set $__line (i32.const 1117))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t54))
    (local.set $t41 (local.get $t54))
    ;; line 0:1118
    (global.set $__line (i32.const 1118))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t58 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 58))) ;; LF L349
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t54))
    (local.set $t19 (local.get $t54))
    ;; line 0:1120
    (global.set $__line (i32.const 1120))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t58 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 59))) ;; LF L350
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t54))
    (local.set $t20 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t58 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 58))) ;; LF L349
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t54))
    (local.set $t21 (local.get $t54))
    ;; line 0:1121
    (global.set $__line (i32.const 1121))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t58 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 59))) ;; LF L350
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t54))
    (local.set $t22 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t55 (i32.const 4))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t55 (i32.const 4))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_10 — LAB L390
    ;; line 0:1122
    (global.set $__line (i32.const 1122))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t55 (i32.const 4))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:1124
    (global.set $__line (i32.const 1124))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 4))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t54 (i32.sub (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.const 1024))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t54 (i32.div_s (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    ;; line 0:1125
    (global.set $__line (i32.const 1125))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.const 1024))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t55))
    (local.set $t19 (local.get $t55))
    ;; line 0:1126
    (global.set $__line (i32.const 1126))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 164))))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.const 1024))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t55))
    (local.set $t40 (local.get $t55))
    ;; line 0:1127
    (global.set $__line (i32.const 1127))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.const 4))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t55))
    (local.set $t20 (local.get $t55))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L391
    ;; line 0:1128
    (global.set $__line (i32.const 1128))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t55 (i32.const 4))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 0:1130
    (global.set $__line (i32.const 1130))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 4))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t54 (i32.sub (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.const 1024))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t54 (i32.div_s (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    ;; line 0:1131
    (global.set $__line (i32.const 1131))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.const 1024))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t55))
    (local.set $t21 (local.get $t55))
    ;; line 0:1132
    (global.set $__line (i32.const 1132))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 164))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.const 1024))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 164))))
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t55))
    (local.set $t41 (local.get $t55))
    ;; line 0:1133
    (global.set $__line (i32.const 1133))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.const 4))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t55))
    (local.set $t22 (local.get $t55))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L392
    ;; line 0:1134
    (global.set $__line (i32.const 1134))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 480))
    (local.set $t55 (i32.const 480))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t54))
    (local.set $t29 (local.get $t54))
    ;; line 0:1137
    (global.set $__line (i32.const 1137))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 480))
    (local.set $t55 (i32.const 480))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t54))
    (local.set $t30 (local.get $t54))
    ;; line 0:1138
    (global.set $__line (i32.const 1138))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (if (i32.le_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 0:1140
    (global.set $__line (i32.const 1140))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    ;; line 0:1141
    (global.set $__line (i32.const 1141))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t55))
    (local.set $t29 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t55))
    (local.set $t30 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t55))
    (local.set $t54 (local.get $t55))
    ;; line 0:1142
    (global.set $__line (i32.const 1142))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t55))
    (local.set $t19 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t55))
    (local.set $t21 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t55))
    (local.set $t54 (local.get $t55))
    ;; line 0:1143
    (global.set $__line (i32.const 1143))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t55))
    (local.set $t20 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t55))
    (local.set $t22 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t55))
    (local.set $t54 (local.get $t55))
    ;; line 0:1144
    (global.set $__line (i32.const 1144))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 164))))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t55))
    (local.set $t40 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t55))
    (local.set $t41 (local.get $t55))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L393
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.ne  (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_14 — LAB L394
    ;; line 0:1146
    (global.set $__line (i32.const 1146))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t54))
    (local.set $t31 (local.get $t54))
    ;; line 0:1148
    (global.set $__line (i32.const 1148))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t54))
    (local.set $t32 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (local.set $t55 (i32.const 0))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
    ;; line 0:1149
    (global.set $__line (i32.const 1149))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t54))
    (local.set $t31 (local.get $t54))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L395
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t55 (i32.const 960))
    (if (i32.lt_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
    ;; line 0:1150
    (global.set $__line (i32.const 1150))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t54))
    (local.set $t32 (local.get $t54))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L396
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (if (i32.le_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_17 — LAB L397
    ;; line 0:1151
    (global.set $__line (i32.const 1151))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 1048576))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t54 (i32.div_s (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t54))
    (local.set $t33 (local.get $t54))
    ;; line 0:1153
    (global.set $__line (i32.const 1153))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 1048576))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t54 (i32.div_s (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t54))
    (local.set $t34 (local.get $t54))
    ;; line 0:1154
    (global.set $__line (i32.const 1154))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t54 (i32.sub (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t54))
    (local.set $t35 (local.get $t54))
    ;; line 0:1155
    (global.set $__line (i32.const 1155))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t54))
    (local.set $t42 (local.get $t54))
    ;; line 0:1160
    (global.set $__line (i32.const 1160))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 136))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 164))))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t54))
    (local.set $t43 (local.get $t54))
    ;; line 0:1161
    (global.set $__line (i32.const 1161))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 172))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 168))))
    (local.set $t54 (i32.sub (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 140))))
    (local.set $t54 (i32.div_s (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (local.get $Pb) (i32.const 176)) (local.get $t54))
    (local.set $t44 (local.get $t54))
    ;; line 0:1162
    (global.set $__line (i32.const 1162))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 61))) ;; LF L352
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t54))
    (local.set $t36 (local.get $t54))
    ;; line 0:1164
    (global.set $__line (i32.const 1164))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t58 (i32.const 16))
    (local.set $t57 (i32.sub (local.get $t57) (local.get $t58)))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 61))) ;; LF L352
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t54))
    (local.set $t37 (local.get $t54))
    ;; line 0:1165
    (global.set $__line (i32.const 1165))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t58 (i32.const 32))
    (local.set $t57 (i32.sub (local.get $t57) (local.get $t58)))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 61))) ;; LF L352
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t54))
    (local.set $t38 (local.get $t54))
    ;; line 0:1166
    (global.set $__line (i32.const 1166))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t58 (i32.const 20))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 48))) ;; LF L262
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (local.get $t54))
    (local.set $t47 (local.get $t54))
    ;; line 0:1168
    (global.set $__line (i32.const 1168))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t58 (i32.const 12))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 48))) ;; LF L262
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t54))
    (local.set $t48 (local.get $t54))
    ;; line 0:1169
    (global.set $__line (i32.const 1169))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t58 (i32.const 4))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 48))) ;; LF L262
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t54))
    (local.set $t49 (local.get $t54))
    ;; line 0:1170
    (global.set $__line (i32.const 1170))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57)) ;; flush t57 (pre-stack-up)
    (local.set $t61 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t62 (i32.add (global.get $TB) (i32.const 24))) ;; LF L146
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (local.get $t61))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t62)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 58)))
    (local.set $t58 (call_indirect $ftable (type $bcpl_fn) (local.get $t62)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58)) ;; flush FNAP result
    (local.set $t59 (i32.add (global.get $TB) (i32.const 30))) ;; LF L173
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    ;; line 0:1173
    (global.set $__line (i32.const 1173))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t58 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58)) ;; flush t58 (pre-stack-up)
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t63 (i32.add (global.get $TB) (i32.const 25))) ;; LF L147
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t62))
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (local.get $t63)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 59)))
    (local.set $t59 (call_indirect $ftable (type $bcpl_fn) (local.get $t63)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59)) ;; flush FNAP result
    (local.set $t60 (i32.add (global.get $TB) (i32.const 30))) ;; LF L173
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t60)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 55)))
    (local.set $t55 (call_indirect $ftable (type $bcpl_fn) (local.get $t60)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55)) ;; flush FNAP result
    ;; line 0:1174
    (global.set $__line (i32.const 1174))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t57 (i32.const 0))
    (if (i32.lt_s (local.get $t56) (local.get $t57)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2)))) ;; LL L47
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (local.set $t56 (i32.load (i32.shl (local.get $t56) (i32.const 2))))
    ;; RES L398: save result, jump to RSTACK
    (local.set $__res (local.get $t56))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      (local.set $__lab (i32.const 18)) (br $__dispatch)
      ) ;; close $__case_18 — LAB L399
    (local.set $t56 (i32.const 0))
    ;; RES L398: save result, jump to RSTACK
    (local.set $__res (local.get $t56))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      ) ;; close $__case_19 — LAB L398
    ;; RSTACK 56
    (local.set $t56 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t56))
    (local.set $t50 (local.get $t56))
    ;; line 0:1175
    (global.set $__line (i32.const 1175))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t57 (i32.const 0))
    (if (i32.lt_s (local.get $t56) (local.get $t57)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2)))) ;; LL L47
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (local.set $t56 (i32.load (i32.shl (local.get $t56) (i32.const 2))))
    ;; RES L400: save result, jump to RSTACK
    (local.set $__res (local.get $t56))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L401
    (local.set $t56 (i32.const 0))
    ;; RES L400: save result, jump to RSTACK
    (local.set $__res (local.get $t56))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L400
    ;; RSTACK 56
    (local.set $t56 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t56))
    (local.set $t51 (local.get $t56))
    ;; line 0:1176
    (global.set $__line (i32.const 1176))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55)) ;; STORE slot 55
      (local.set $__lab (i32.const 65)) (br $__dispatch) ;; JUMP L403
      ) ;; close $__case_22 — LAB L402
    ;; line 0:1179
    (global.set $__line (i32.const 1179))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t56 (i32.sub (local.get $t56) (local.get $t57)))
    (local.set $t57 (i32.const 1024))
    (local.set $t56 (i32.mul (local.get $t56) (local.get $t57)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 140))))
    (local.set $t56 (i32.div_s (local.get $t56) (local.get $t57)))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56)) ;; STORE slot 56
    ;; line 0:1180
    (global.set $__line (i32.const 1180))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 136))))
    (local.set $t58 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (local.set $t57 (i32.sub (local.get $t57) (local.get $t58)))
    (local.set $t58 (i32.load (i32.add (local.get $Pb) (i32.const 224))))
    (local.set $t57 (i32.mul (local.get $t57) (local.get $t58)))
    (local.set $t58 (i32.const 1024))
    (local.set $t57 (i32.div_s (local.get $t57) (local.get $t58)))
    (local.set $t58 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (local.set $t57 (i32.add (local.get $t57) (local.get $t58)))
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57)) ;; STORE slot 57
    ;; line 0:1181
    (global.set $__line (i32.const 1181))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t58 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58)) ;; STORE slot 58
    ;; line 0:1182
    (global.set $__line (i32.const 1182))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t59 (i32.const 0))
    (local.set $t60 (i32.const 0))
    (local.set $t61 (i32.const 0))
    (local.set $t62 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59)) ;; STORE slot 59
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60)) ;; STORE slot 60
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (local.get $t61)) ;; STORE slot 61
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t62)) ;; STORE slot 62
    ;; line 0:1183
    (global.set $__line (i32.const 1183))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.const 0))
    (local.set $t64 (i32.const 0))
    (local.set $t65 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63)) ;; STORE slot 63
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t64)) ;; STORE slot 64
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65)) ;; STORE slot 65
    ;; line 0:1184
    (global.set $__line (i32.const 1184))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 228))))
    (local.set $t67 (i32.const 0))
    (if (i32.le_s (local.get $t66) (local.get $t67)) (then
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    ))
    ;; line 0:1185
    (global.set $__line (i32.const 1185))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.const 1048576))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 228))))
    (local.set $t66 (i32.div_s (local.get $t66) (local.get $t67)))
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t66))
    (local.set $t58 (local.get $t66))
    ;; line 0:1186
    (global.set $__line (i32.const 1186))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t71 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t71)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 66)))
    (local.set $t66 (call_indirect $ftable (type $bcpl_fn) (local.get $t71)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t66))
    (local.set $t59 (local.get $t66))
    ;; line 0:1188
    (global.set $__line (i32.const 1188))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t71 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t71)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 66)))
    (local.set $t66 (call_indirect $ftable (type $bcpl_fn) (local.get $t71)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t66))
    (local.set $t60 (local.get $t66))
    ;; line 0:1189
    (global.set $__line (i32.const 1189))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t67 (i32.const 480))
    (local.set $t66 (i32.sub (local.get $t66) (local.get $t67)))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66)) ;; STORE slot 66
    ;; line 0:1192
    (global.set $__line (i32.const 1192))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t67 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 40)) (i32.const 2)))) ;; LL L50
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 264))))
    (local.set $t67 (i32.mul (local.get $t67) (local.get $t68)))
    (local.set $t68 (i32.const 480))
    (local.set $t67 (i32.div_s (local.get $t67) (local.get $t68)))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 38)) (i32.const 2)))) ;; LL L48
    (local.set $t67 (i32.add (local.get $t67) (local.get $t68)))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67)) ;; STORE slot 67
    ;; line 0:1193
    (global.set $__line (i32.const 1193))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 41)) (i32.const 2)))) ;; LL L51
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 264))))
    (local.set $t68 (i32.mul (local.get $t68) (local.get $t69)))
    (local.set $t69 (i32.const 480))
    (local.set $t68 (i32.div_s (local.get $t68) (local.get $t69)))
    (local.set $t69 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 39)) (i32.const 2)))) ;; LL L49
    (local.set $t68 (i32.add (local.get $t68) (local.get $t69)))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68)) ;; STORE slot 68
    ;; line 0:1194
    (global.set $__line (i32.const 1194))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t69 (i32.const 65535))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 268))))
    (local.set $t69 (i32.and (local.get $t69) (local.get $t70)))
    (local.set $t70 (i32.const 65535))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 272))))
    (local.set $t70 (i32.and (local.get $t70) (local.get $t71)))
    (local.set $t71 (i32.const 16))
    (local.set $t70 (i32.shl (local.get $t70) (local.get $t71)))
    (local.set $t69 (i32.or (local.get $t69) (local.get $t70)))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69)) ;; STORE slot 69
    ;; line 0:1195
    (global.set $__line (i32.const 1195))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t75 (i32.add (global.get $TB) (i32.const 62))) ;; LF L355
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t75)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 70)))
    (local.set $t70 (call_indirect $ftable (type $bcpl_fn) (local.get $t75)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70)) ;; flush FNAP result
    ;; line 0:1196
    (global.set $__line (i32.const 1196))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t74 (i32.const 88))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 280))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t76)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 71)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t76)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1197
    (global.set $__line (i32.const 1197))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t72 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t71 (i32.add (local.get $t71) (local.get $t72)))
    (local.set $t71 (i32.load (i32.shl (local.get $t71) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71)) ;; STORE slot 71
    ;; line 0:1201
    (global.set $__line (i32.const 1201))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    ;; line 0:1202
    (global.set $__line (i32.const 1202))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 236))))
    (if (i32.ge_s (local.get $t73) (local.get $t74)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
    ;; line 0:1203
    (global.set $__line (i32.const 1203))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 236))))
    (local.set $t74 (i32.const 1))
    (local.set $t73 (i32.sub (local.get $t73) (local.get $t74)))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    ;; line 0:1204
    (global.set $__line (i32.const 1204))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t78 (i32.add (global.get $TB) (i32.const 27))) ;; LF L155
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t78)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (local.set $t74 (call_indirect $ftable (type $bcpl_fn) (local.get $t78)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74)) ;; flush FNAP result
    (local.set $t75 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 53)) (i32.const 2)))) ;; LL L63
    (local.set $t74 (i32.and (local.get $t74) (local.get $t75)))
    ;; line 0:1205
    (global.set $__line (i32.const 1205))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (if (i32.le_s (local.get $t75) (local.get $t76)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
    ;; line 0:1206
    (global.set $__line (i32.const 1206))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t75))
    (local.set $t73 (local.get $t75))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
      ) ;; close $__case_23 — LAB L406
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (if (i32.gt_s (local.get $t75) (local.get $t76)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    ))
    ;; line 0:1207
    (global.set $__line (i32.const 1207))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 296))))
    (if (i32.eqz (local.get $t75)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
    ;; line 0:1208
    (global.set $__line (i32.const 1208))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t76 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t75 (i32.mul (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.const 2048))
    (local.set $t75 (i32.div_s (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t76 (i32.mul (local.get $t76) (local.get $t77)))
    (local.set $t77 (i32.const 960))
    (local.set $t76 (i32.div_s (local.get $t76) (local.get $t77)))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t75 (i32.rem_s (local.get $t75) (local.get $t76)))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75)) ;; STORE slot 75
    ;; line 0:1209
    (global.set $__line (i32.const 1209))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 300))))
    (local.set $t77 (i32.const 0))
    (if (i32.ge_s (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
    ;; line 0:1210
    (global.set $__line (i32.const 1210))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 300))))
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t76))
    (local.set $t75 (local.get $t76))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
      ) ;; close $__case_24 — LAB L411
    (local.set $t79 (i32.const 88))
    (local.set $t80 (i32.const 255))
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t81)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 76)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t81)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1211
    (global.set $__line (i32.const 1211))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t79 (i32.const 89))
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t83 (i32.load (i32.add (local.get $Pb) (i32.const 300))))
    (local.set $t84 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (local.get $Pb) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t84)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 76)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t84)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 28)) (br $__dispatch) ;; JUMP L410
      (local.set $__lab (i32.const 25)) (br $__dispatch)
      ) ;; close $__case_25 — LAB L408
    ;; line 0:1212
    (global.set $__line (i32.const 1212))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.const 0))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (if (i32.eq  (local.get $t75) (local.get $t76)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    ;; line 0:1214
    (global.set $__line (i32.const 1214))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t78 (i32.const 87))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t82 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 34)) (i32.const 2)))) ;; LL L44
    (local.set $t83 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t82 (i32.sub (local.get $t82) (local.get $t83)))
    (local.set $t83 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t84 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t85 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (local.set $t86 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (local.set $t87 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (local.get $Pb) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (local.get $Pb) (i32.const 336)) (local.get $t84))
    (i32.store (i32.add (local.get $Pb) (i32.const 340)) (local.get $t85))
    (i32.store (i32.add (local.get $Pb) (i32.const 344)) (local.get $t86))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t87)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 75)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t87)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 27)) (br $__dispatch) ;; JUMP L414
      ) ;; close $__case_26 — LAB L412
    ;; line 0:1215
    (global.set $__line (i32.const 1215))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t78 (i32.const 66))
    (local.set $t79 (i32.const 29))
    (local.set $t80 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t83 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t84 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 29)) (i32.const 2)))) ;; LL L39
    (local.set $t85 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (local.get $Pb) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (local.get $Pb) (i32.const 336)) (local.get $t84))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t85)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 75)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t85)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L414
      (local.set $__lab (i32.const 28)) (br $__dispatch)
      ) ;; close $__case_28 — LAB L410
      (local.set $__lab (i32.const 29)) (br $__dispatch)
      ) ;; close $__case_29 — LAB L407
    ;; line 0:1217
    (global.set $__line (i32.const 1217))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 236))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t77 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (i32.store (i32.shl (local.get $t76) (i32.const 2)) (local.get $t75))
      (local.set $__lab (i32.const 30)) (br $__dispatch)
      ) ;; close $__case_30 — LAB L405
    ;; line 0:1219
    (global.set $__line (i32.const 1219))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t72 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t71 (i32.add (local.get $t71) (local.get $t72)))
    (local.set $t71 (i32.load (i32.shl (local.get $t71) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71)) ;; STORE slot 71
    ;; line 0:1223
    (global.set $__line (i32.const 1223))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    ;; line 0:1224
    (global.set $__line (i32.const 1224))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (if (i32.le_s (local.get $t73) (local.get $t74)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    ))
    ;; line 0:1225
    (global.set $__line (i32.const 1225))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.const 1))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    ;; line 0:1226
    (global.set $__line (i32.const 1226))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (if (i32.ge_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
    ;; line 0:1227
    (global.set $__line (i32.const 1227))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t74))
    (local.set $t73 (local.get $t74))
      (local.set $__lab (i32.const 31)) (br $__dispatch)
      ) ;; close $__case_31 — LAB L416
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (if (i32.gt_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    ))
    ;; line 0:1228
    (global.set $__line (i32.const 1228))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t74 (i32.const 0))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (if (i32.eq  (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    ))
    ;; line 0:1229
    (global.set $__line (i32.const 1229))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (i32.const 87))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t81 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 34)) (i32.const 2)))) ;; LL L44
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t81 (i32.sub (local.get $t81) (local.get $t82)))
    (local.set $t82 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t83 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t84 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (local.set $t85 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t86 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (local.get $Pb) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (local.get $Pb) (i32.const 336)) (local.get $t84))
    (i32.store (i32.add (local.get $Pb) (i32.const 340)) (local.get $t85))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t86)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t86)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 33)) (br $__dispatch) ;; JUMP L420
      ) ;; close $__case_32 — LAB L418
    ;; line 0:1230
    (global.set $__line (i32.const 1230))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (i32.const 66))
    (local.set $t78 (i32.const 29))
    (local.set $t79 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t83 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 30)) (i32.const 2)))) ;; LL L40
    (local.set $t84 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (local.get $Pb) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t84)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t84)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
      ) ;; close $__case_33 — LAB L420
      (local.set $__lab (i32.const 34)) (br $__dispatch)
      ) ;; close $__case_34 — LAB L417
    ;; line 0:1232
    (global.set $__line (i32.const 1232))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t76 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (i32.store (i32.shl (local.get $t75) (i32.const 2)) (local.get $t74))
      (local.set $__lab (i32.const 35)) (br $__dispatch)
      ) ;; close $__case_35 — LAB L415
    ;; line 0:1233
    (global.set $__line (i32.const 1233))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t67 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t66 (i32.add (local.get $t66) (local.get $t67)))
    (local.set $t66 (i32.load (i32.shl (local.get $t66) (i32.const 2))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t67 (i32.add (local.get $t67) (local.get $t68)))
    (local.set $t67 (i32.load (i32.shl (local.get $t67) (i32.const 2))))
    (if (i32.le_s (local.get $t66) (local.get $t67)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    ;; line 0:1237
    (global.set $__line (i32.const 1237))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t70 (i32.add (global.get $TB) (i32.const 64))) ;; LF L361
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t70)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 66)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t70)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 64)) (br $__dispatch) ;; JUMP L404
      ) ;; close $__case_36 — LAB L421
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 42)) (i32.const 2)))) ;; LL L52
    (local.set $t67 (i32.add (local.get $t67) (local.get $t68)))
    (local.set $t67 (i32.load (i32.shl (local.get $t67) (i32.const 2))))
    (if (i32.ge_s (local.get $t66) (local.get $t67)) (then
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    ))
    ;; line 0:1240
    (global.set $__line (i32.const 1240))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 42)) (i32.const 2)))) ;; LL L52
    (local.set $t67 (i32.add (local.get $t67) (local.get $t68)))
    (i32.store (i32.shl (local.get $t67) (i32.const 2)) (local.get $t66))
      (local.set $__lab (i32.const 37)) (br $__dispatch)
      ) ;; close $__case_37 — LAB L422
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t66 (i32.sub (local.get $t66) (local.get $t67)))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 176))))
    (local.set $t66 (i32.mul (local.get $t66) (local.get $t67)))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 168))))
    (local.set $t66 (i32.add (local.get $t66) (local.get $t67)))
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t66))
    (local.set $t63 (local.get $t66))
    ;; line 0:1243
    (global.set $__line (i32.const 1243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 252))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 228))))
    (local.set $t66 (i32.div_s (local.get $t66) (local.get $t67)))
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t66))
    (local.set $t64 (local.get $t66))
    ;; line 0:1244
    (global.set $__line (i32.const 1244))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 180))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 256))))
    (local.set $t66 (i32.add (local.get $t66) (local.get $t67)))
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t66))
    (local.set $t65 (local.get $t66))
    ;; line 0:1245
    (global.set $__line (i32.const 1245))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (i32.eqz (local.get $t66)) (then
      (local.set $__lab (i32.const 59)) (br $__dispatch)
    ))
    ;; line 0:1247
    (global.set $__line (i32.const 1247))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66)) ;; STORE slot 66
    ;; line 0:1248
    (global.set $__line (i32.const 1248))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t67 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67)) ;; STORE slot 67
    ;; line 0:1249
    (global.set $__line (i32.const 1249))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t68 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68)) ;; STORE slot 68
    ;; line 0:1250
    (global.set $__line (i32.const 1250))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t69 (i32.const 0))
    (local.set $t70 (i32.const 0))
    (local.set $t71 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69)) ;; STORE slot 69
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70)) ;; STORE slot 70
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71)) ;; STORE slot 71
    ;; line 0:1251
    (global.set $__line (i32.const 1251))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t72))
    (local.set $t62 (local.get $t72))
    ;; line 0:1252
    (global.set $__line (i32.const 1252))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (local.get $t72))
    (local.set $t61 (local.get $t72))
    ;; line 0:1253
    (global.set $__line (i32.const 1253))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 196))))
    (local.set $t73 (i32.const 0))
    (if (i32.lt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 38)) (br $__dispatch)
    ))
    ;; line 0:1254
    (global.set $__line (i32.const 1254))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 196))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t72))
    (local.set $t69 (local.get $t72))
      (local.set $__lab (i32.const 38)) (br $__dispatch)
      ) ;; close $__case_38 — LAB L426
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t73 (i32.const 0))
    (if (i32.lt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ))
    ;; line 0:1255
    (global.set $__line (i32.const 1255))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t72))
    (local.set $t70 (local.get $t72))
      (local.set $__lab (i32.const 39)) (br $__dispatch)
      ) ;; close $__case_39 — LAB L427
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 188))))
    (local.set $t73 (i32.const 0))
    (if (i32.lt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    ))
    ;; line 0:1256
    (global.set $__line (i32.const 1256))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 188))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t72))
    (local.set $t71 (local.get $t72))
      (local.set $__lab (i32.const 40)) (br $__dispatch)
      ) ;; close $__case_40 — LAB L428
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 208))))
    (if (i32.eqz (local.get $t72)) (then
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    ))
    ;; line 0:1260
    (global.set $__line (i32.const 1260))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t72))
    (local.set $t66 (local.get $t72))
      (local.set $__lab (i32.const 42)) (br $__dispatch) ;; JUMP L431
      ) ;; close $__case_41 — LAB L429
    ;; line 0:1261
    (global.set $__line (i32.const 1261))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t72))
    (local.set $t66 (local.get $t72))
      (local.set $__lab (i32.const 42)) (br $__dispatch)
      ) ;; close $__case_42 — LAB L431
    ;; line 0:1262
    (global.set $__line (i32.const 1262))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (if (i32.eqz (local.get $t72)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    ))
    ;; line 0:1266
    (global.set $__line (i32.const 1266))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 280))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t72))
    (local.set $t67 (local.get $t72))
      (local.set $__lab (i32.const 44)) (br $__dispatch) ;; JUMP L434
      ) ;; close $__case_43 — LAB L432
    ;; line 0:1267
    (global.set $__line (i32.const 1267))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t72))
    (local.set $t67 (local.get $t72))
      (local.set $__lab (i32.const 44)) (br $__dispatch)
      ) ;; close $__case_44 — LAB L434
    ;; line 0:1268
    (global.set $__line (i32.const 1268))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (if (i32.eqz (local.get $t72)) (then
      (local.set $__lab (i32.const 45)) (br $__dispatch)
    ))
    ;; line 0:1271
    (global.set $__line (i32.const 1271))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t72))
    (local.set $t68 (local.get $t72))
      (local.set $__lab (i32.const 46)) (br $__dispatch) ;; JUMP L437
      ) ;; close $__case_45 — LAB L435
    ;; line 0:1272
    (global.set $__line (i32.const 1272))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t72))
    (local.set $t68 (local.get $t72))
      (local.set $__lab (i32.const 46)) (br $__dispatch)
      ) ;; close $__case_46 — LAB L437
    ;; line 0:1273
    (global.set $__line (i32.const 1273))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (if (i32.ge_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    ))
    ;; line 0:1275
    (global.set $__line (i32.const 1275))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 236))))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 264))))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 260))))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 196))))
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 152))))
    (local.set $t83 (i32.add (global.get $TB) (i32.const 67))) ;; LF L369
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t83)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t83)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1276
    (global.set $__line (i32.const 1276))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 1))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t73 (i32.load (i32.shl (local.get $t73) (i32.const 2))))
    (if (i32.le_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 47)) (br $__dispatch)
    ))
    ;; line 0:1278
    (global.set $__line (i32.const 1278))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 1))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.shl (local.get $t73) (i32.const 2)) (local.get $t72))
      (local.set $__lab (i32.const 47)) (br $__dispatch)
      ) ;; close $__case_47 — LAB L439
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t73 (i32.load (i32.shl (local.get $t73) (i32.const 2))))
    (if (i32.le_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 48)) (br $__dispatch)
    ))
    ;; line 0:1279
    (global.set $__line (i32.const 1279))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t76 (i32.add (global.get $TB) (i32.const 64))) ;; LF L361
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t76)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t76)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 48)) (br $__dispatch)
      ) ;; close $__case_48 — LAB L440
      (local.set $__lab (i32.const 49)) (br $__dispatch)
      ) ;; close $__case_49 — LAB L438
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (if (i32.le_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 52)) (br $__dispatch)
    ))
    ;; line 0:1281
    (global.set $__line (i32.const 1281))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 268))))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 260))))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 148))))
    (local.set $t83 (i32.add (global.get $TB) (i32.const 67))) ;; LF L369
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t83)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t83)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1282
    (global.set $__line (i32.const 1282))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (local.set $t73 (i32.const 1))
    (local.set $t72 (i32.sub (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t73 (i32.load (i32.shl (local.get $t73) (i32.const 2))))
    (if (i32.ge_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    ))
    ;; line 0:1284
    (global.set $__line (i32.const 1284))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (local.set $t73 (i32.const 1))
    (local.set $t72 (i32.sub (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.shl (local.get $t73) (i32.const 2)) (local.get $t72))
      (local.set $__lab (i32.const 50)) (br $__dispatch)
      ) ;; close $__case_50 — LAB L442
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t73 (i32.load (i32.shl (local.get $t73) (i32.const 2))))
    (if (i32.le_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 51)) (br $__dispatch)
    ))
    ;; line 0:1285
    (global.set $__line (i32.const 1285))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t76 (i32.add (global.get $TB) (i32.const 64))) ;; LF L361
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t76)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t76)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 51)) (br $__dispatch)
      ) ;; close $__case_51 — LAB L443
      (local.set $__lab (i32.const 52)) (br $__dispatch)
      ) ;; close $__case_52 — LAB L441
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 188))))
    (local.set $t73 (i32.const 0))
    (if (i32.lt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 58)) (br $__dispatch)
    ))
    ;; line 0:1290
    (global.set $__line (i32.const 1290))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    ;; line 0:1291
    (global.set $__line (i32.const 1291))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    ;; line 0:1292
    (global.set $__line (i32.const 1292))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t74 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74)) ;; STORE slot 74
    ;; line 0:1293
    (global.set $__line (i32.const 1293))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75)) ;; STORE slot 75
    ;; line 0:1294
    (global.set $__line (i32.const 1294))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t77 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (local.set $t76 (i32.load (i32.shl (local.get $t76) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76)) ;; STORE slot 76
    ;; line 0:1295
    (global.set $__line (i32.const 1295))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t78 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t77 (i32.add (local.get $t77) (local.get $t78)))
    (local.set $t77 (i32.load (i32.shl (local.get $t77) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77)) ;; STORE slot 77
    ;; line 0:1296
    (global.set $__line (i32.const 1296))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (if (i32.eqz (local.get $t78)) (then
      (local.set $__lab (i32.const 53)) (br $__dispatch)
    ))
    ;; line 0:1297
    (global.set $__line (i32.const 1297))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t78 (i32.add (local.get $t78) (local.get $t79)))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t78 (i32.sub (local.get $t78) (local.get $t79)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t78))
    (local.set $t72 (local.get $t78))
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L447
      ) ;; close $__case_53 — LAB L445
    ;; line 0:1298
    (global.set $__line (i32.const 1298))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t78 (i32.sub (local.get $t78) (local.get $t79)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t78))
    (local.set $t72 (local.get $t78))
      (local.set $__lab (i32.const 54)) (br $__dispatch)
      ) ;; close $__case_54 — LAB L447
    ;; line 0:1299
    (global.set $__line (i32.const 1299))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t78 (i32.sub (local.get $t78) (local.get $t79)))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t78))
    (local.set $t73 (local.get $t78))
    ;; line 0:1300
    (global.set $__line (i32.const 1300))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t83 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t83)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 78)))
    (local.set $t78 (call_indirect $ftable (type $bcpl_fn) (local.get $t83)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t78))
    (local.set $t74 (local.get $t78))
    ;; line 0:1301
    (global.set $__line (i32.const 1301))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t83 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t83)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 78)))
    (local.set $t78 (call_indirect $ftable (type $bcpl_fn) (local.get $t83)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t78))
    (local.set $t75 (local.get $t78))
    ;; line 0:1302
    (global.set $__line (i32.const 1302))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 296))))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 304))))
    (if (i32.le_s (local.get $t78) (local.get $t79)) (then
      (local.set $__lab (i32.const 55)) (br $__dispatch)
    ))
    ;; line 0:1303
    (global.set $__line (i32.const 1303))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 296))))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t78))
    (local.set $t76 (local.get $t78))
      (local.set $__lab (i32.const 55)) (br $__dispatch)
      ) ;; close $__case_55 — LAB L448
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 300))))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 308))))
    (if (i32.ge_s (local.get $t78) (local.get $t79)) (then
      (local.set $__lab (i32.const 56)) (br $__dispatch)
    ))
    ;; line 0:1304
    (global.set $__line (i32.const 1304))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 300))))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t78))
    (local.set $t77 (local.get $t78))
      (local.set $__lab (i32.const 56)) (br $__dispatch)
      ) ;; close $__case_56 — LAB L449
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 304))))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 308))))
    (if (i32.gt_s (local.get $t78) (local.get $t79)) (then
      (local.set $__lab (i32.const 57)) (br $__dispatch)
    ))
    ;; line 0:1305
    (global.set $__line (i32.const 1305))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 304))))
    (local.set $t83 (i32.load (i32.add (local.get $Pb) (i32.const 308))))
    (local.set $t84 (i32.load (i32.add (local.get $Pb) (i32.const 272))))
    (local.set $t85 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t86 (i32.load (i32.add (local.get $Pb) (i32.const 260))))
    (local.set $t87 (i32.load (i32.add (local.get $Pb) (i32.const 188))))
    (local.set $t88 (i32.add (global.get $TB) (i32.const 68))) ;; LF L374
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (local.get $Pb) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (local.get $Pb) (i32.const 336)) (local.get $t84))
    (i32.store (i32.add (local.get $Pb) (i32.const 340)) (local.get $t85))
    (i32.store (i32.add (local.get $Pb) (i32.const 344)) (local.get $t86))
    (i32.store (i32.add (local.get $Pb) (i32.const 348)) (local.get $t87))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t88)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 78)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t88)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 63)) (br $__dispatch) ;; JUMP L425
      ) ;; close $__case_57 — LAB L450
      (local.set $__lab (i32.const 63)) (br $__dispatch) ;; JUMP L425
      (local.set $__lab (i32.const 58)) (br $__dispatch)
      ) ;; close $__case_58 — LAB L444
      (local.set $__lab (i32.const 63)) (br $__dispatch) ;; JUMP L425
      (local.set $__lab (i32.const 59)) (br $__dispatch)
      ) ;; close $__case_59 — LAB L423
    ;; line 0:1306
    (global.set $__line (i32.const 1306))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t66 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66)) ;; STORE slot 66
    ;; line 0:1313
    (global.set $__line (i32.const 1313))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t67 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67)) ;; STORE slot 67
    ;; line 0:1314
    (global.set $__line (i32.const 1314))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 188))))
    (local.set $t69 (i32.const 0))
    (if (i32.lt_s (local.get $t68) (local.get $t69)) (then
      (local.set $__lab (i32.const 60)) (br $__dispatch)
    ))
    ;; line 0:1315
    (global.set $__line (i32.const 1315))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 188))))
    (local.set $t69 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t68 (i32.add (local.get $t68) (local.get $t69)))
    (local.set $t68 (i32.load (i32.shl (local.get $t68) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t68))
    (local.set $t66 (local.get $t68))
      (local.set $__lab (i32.const 60)) (br $__dispatch)
      ) ;; close $__case_60 — LAB L451
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (if (i32.eqz (local.get $t68)) (then
      (local.set $__lab (i32.const 61)) (br $__dispatch)
    ))
    ;; line 0:1316
    (global.set $__line (i32.const 1316))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 264))))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t71 (i32.add (local.get $t71) (local.get $t72)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t71 (i32.sub (local.get $t71) (local.get $t72)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t73 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t73)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 68)))
    (local.set $t68 (call_indirect $ftable (type $bcpl_fn) (local.get $t73)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t68))
    (local.set $t67 (local.get $t68))
      (local.set $__lab (i32.const 62)) (br $__dispatch) ;; JUMP L454
      ) ;; close $__case_61 — LAB L452
    ;; line 0:1317
    (global.set $__line (i32.const 1317))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t71 (i32.sub (local.get $t71) (local.get $t72)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t73 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t73)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 68)))
    (local.set $t68 (call_indirect $ftable (type $bcpl_fn) (local.get $t73)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t68))
    (local.set $t67 (local.get $t68))
      (local.set $__lab (i32.const 62)) (br $__dispatch)
      ) ;; close $__case_62 — LAB L454
    ;; line 0:1318
    (global.set $__line (i32.const 1318))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 236))))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 268))))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 260))))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 188))))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 144))))
    (local.set $t79 (i32.add (global.get $TB) (i32.const 67))) ;; LF L369
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t79)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 68)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t79)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1319
    (global.set $__line (i32.const 1319))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t72 (i32.add (global.get $TB) (i32.const 64))) ;; LF L361
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t72)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 68)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t72)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 63)) (br $__dispatch)
      ) ;; close $__case_63 — LAB L425
      (local.set $__lab (i32.const 64)) (br $__dispatch)
      ) ;; close $__case_64 — LAB L404
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t57 (i32.const 1))
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t56))
    (local.set $t54 (local.get $t56))
      (local.set $__lab (i32.const 65)) (br $__dispatch)
      ) ;; close $__case_65 — LAB L403
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (if (i32.le_s (local.get $t56) (local.get $t57)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
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
  ) ;; end func $fn_L379

  ;; BCPL fn render_subsector (L455)
  (func $fn_L455 (export "fn_L455") (type $bcpl_fn)
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
    ;; line 0:1326
    (global.set $__line (i32.const 1326))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 4))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2)))) ;; LL L23
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:1327
    (global.set $__line (i32.const 1327))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:1328
    (global.set $__line (i32.const 1328))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:1329
    (global.set $__line (i32.const 1329))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L457
      ) ;; close $__case_1 — LAB L456
    ;; line 0:1330
    (global.set $__line (i32.const 1330))
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
      ) ;; close $__case_2 — LAB L458
    ;; line 0:1331
    (global.set $__line (i32.const 1331))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 12))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 69))) ;; LF L379
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
      ) ;; close $__case_3 — LAB L457
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
  ) ;; end func $fn_L455

  ;; BCPL fn render_node (L459)
  (func $fn_L459 (export "fn_L459") (type $bcpl_fn)
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
    ;; line 0:1336
    (global.set $__line (i32.const 1336))
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
      ) ;; close $__case_1 — LAB L460
    ;; line 0:1337
    (global.set $__line (i32.const 1337))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 32768))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.and (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.const 0))
    (if (i32.eq  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:1338
    (global.set $__line (i32.const 1338))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const -32769))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 70))) ;; LF L455
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1339
    (global.set $__line (i32.const 1339))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L461
    ;; line 0:1340
    (global.set $__line (i32.const 1340))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 28))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:1342
    (global.set $__line (i32.const 1342))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 32))) ;; LF L178
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
    ;; line 0:1343
    (global.set $__line (i32.const 1343))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 24))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:1344
    (global.set $__line (i32.const 1344))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 26))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:1345
    (global.set $__line (i32.const 1345))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:1346
    (global.set $__line (i32.const 1346))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 71))) ;; LF L459
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1347
    (global.set $__line (i32.const 1347))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 71))) ;; LF L459
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
      ) ;; close $__case_3 — LAB L462
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 71))) ;; LF L459
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1348
    (global.set $__line (i32.const 1348))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 71))) ;; LF L459
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
  ) ;; end func $fn_L459

  ;; BCPL fn fill_remaining (L463)
  (func $fn_L463 (export "fn_L463") (type $bcpl_fn)
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:1352
    (global.set $__line (i32.const 1352))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L465
      ) ;; close $__case_1 — LAB L464
    ;; line 0:1353
    (global.set $__line (i32.const 1353))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:1354
    (global.set $__line (i32.const 1354))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:1355
    (global.set $__line (i32.const 1355))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.gt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:1356
    (global.set $__line (i32.const 1356))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 360))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:1357
    (global.set $__line (i32.const 1357))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:1358
    (global.set $__line (i32.const 1358))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 360))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:1359
    (global.set $__line (i32.const 1359))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 359))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L468
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 53)) (i32.const 2)))) ;; LL L63
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:1360
    (global.set $__line (i32.const 1360))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 2048))
    (local.set $t8 (i32.div_s (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.const 960))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t8 (i32.rem_s (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:1361
    (global.set $__line (i32.const 1361))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t10 (i32.const 0))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:1362
    (global.set $__line (i32.const 1362))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L472
    (local.set $t12 (i32.const 88))
    (local.set $t13 (i32.const 255))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1363
    (global.set $__line (i32.const 1363))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 89))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 5)) (br $__dispatch) ;; JUMP L471
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L469
    ;; line 0:1364
    (global.set $__line (i32.const 1364))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
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
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L471
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L467
    ;; line 0:1366
    (global.set $__line (i32.const 1366))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 360))
    (if (i32.lt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:1368
    (global.set $__line (i32.const 1368))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:1369
    (global.set $__line (i32.const 1369))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 360))
    (if (i32.ge_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:1370
    (global.set $__line (i32.const 1370))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 360))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L474
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
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L473
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L466
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L465
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
  ) ;; end func $fn_L463

  ;; BCPL fn draw_sprite (L475)
  (func $fn_L475 (export "fn_L475") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:1379
    (global.set $__line (i32.const 1379))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:1380
    (global.set $__line (i32.const 1380))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:1381
    (global.set $__line (i32.const 1381))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:1382
    (global.set $__line (i32.const 1382))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:1383
    (global.set $__line (i32.const 1383))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:1384
    (global.set $__line (i32.const 1384))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    ;; line 0:1385
    (global.set $__line (i32.const 1385))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    ;; line 0:1386
    (global.set $__line (i32.const 1386))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 0:1387
    (global.set $__line (i32.const 1387))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 0:1388
    (global.set $__line (i32.const 1388))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    ;; line 0:1389
    (global.set $__line (i32.const 1389))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    ;; line 0:1390
    (global.set $__line (i32.const 1390))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t29 (i32.const 0))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L476
    ;; line 0:1392
    (global.set $__line (i32.const 1392))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t28))
    (local.set $t7 (local.get $t28))
    ;; line 0:1393
    (global.set $__line (i32.const 1393))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t28))
    (local.set $t8 (local.get $t28))
    (local.set $t28 (i32.const 8191))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t28 (i32.and (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 8191))
    (local.set $t30 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t29 (i32.and (local.get $t29) (local.get $t30)))
    (local.set $t30 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (local.set $t29 (i32.load (i32.shl (local.get $t29) (i32.const 2))))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t29 (i32.mul (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t28))
    (local.set $t9 (local.get $t28))
    ;; line 0:1394
    (global.set $__line (i32.const 1394))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 8191))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t28 (i32.and (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 8191))
    (local.set $t30 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t29 (i32.and (local.get $t29) (local.get $t30)))
    (local.set $t30 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (local.set $t29 (i32.load (i32.shl (local.get $t29) (i32.const 2))))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t29 (i32.mul (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t28))
    (local.set $t10 (local.get $t28))
    ;; line 0:1395
    (global.set $__line (i32.const 1395))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t29 (i32.const 4))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L477
    ;; line 0:1396
    (global.set $__line (i32.const 1396))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 46)) (i32.const 2)))) ;; LL L56
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t28))
    (local.set $t11 (local.get $t28))
    ;; line 0:1398
    (global.set $__line (i32.const 1398))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 47)) (i32.const 2)))) ;; LL L57
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t28))
    (local.set $t12 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 48)) (i32.const 2)))) ;; LL L58
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t28))
    (local.set $t13 (local.get $t28))
    ;; line 0:1399
    (global.set $__line (i32.const 1399))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 49)) (i32.const 2)))) ;; LL L59
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t28))
    (local.set $t14 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 45)) (i32.const 2)))) ;; LL L55
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t28))
    (local.set $t15 (local.get $t28))
    ;; line 0:1400
    (global.set $__line (i32.const 1400))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 491520))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t28))
    (local.set $t16 (local.get $t28))
    ;; line 0:1403
    (global.set $__line (i32.const 1403))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t28))
    (local.set $t17 (local.get $t28))
    ;; line 0:1404
    (global.set $__line (i32.const 1404))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t28))
    (local.set $t18 (local.get $t28))
    ;; line 0:1405
    (global.set $__line (i32.const 1405))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t29 (i32.const 0))
    (if (i32.le_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t29 (i32.const 0))
    (if (i32.gt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L479
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_4 — LAB L478
    ;; line 0:1406
    (global.set $__line (i32.const 1406))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 480))
    (local.set $t29 (i32.const 480))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t29 (i32.mul (local.get $t29) (local.get $t30)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t29 (i32.div_s (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t28))
    (local.set $t19 (local.get $t28))
    ;; line 0:1408
    (global.set $__line (i32.const 1408))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t29 (i32.mul (local.get $t29) (local.get $t30)))
    (local.set $t30 (i32.const 1024))
    (local.set $t29 (i32.div_s (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t28))
    (local.set $t20 (local.get $t28))
    ;; line 0:1411
    (global.set $__line (i32.const 1411))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t28))
    (local.set $t21 (local.get $t28))
    ;; line 0:1412
    (global.set $__line (i32.const 1412))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t29 (i32.const 960))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L481
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_6 — LAB L480
    ;; line 0:1413
    (global.set $__line (i32.const 1413))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t28))
    (local.set $t23 (local.get $t28))
    ;; line 0:1418
    (global.set $__line (i32.const 1418))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t28))
    (local.set $t22 (local.get $t28))
    ;; line 0:1419
    (global.set $__line (i32.const 1419))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
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
    ;; line 0:1420
    (global.set $__line (i32.const 1420))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 66))) ;; LF L368
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28))
    (local.set $t25 (local.get $t28))
    ;; line 0:1421
    (global.set $__line (i32.const 1421))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (if (i32.gt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_7 — LAB L482
    ;; line 0:1424
    (global.set $__line (i32.const 1424))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 65536))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
    ;; line 0:1428
    (global.set $__line (i32.const 1428))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 65535))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t28 (i32.and (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t30 (i32.const 16))
    (local.set $t29 (i32.shl (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.or (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t28))
    (local.set $t27 (local.get $t28))
    ;; line 0:1429
    (global.set $__line (i32.const 1429))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 88))
    (local.set $t32 (i32.const 255))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1432
    (global.set $__line (i32.const 1432))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    ;; line 0:1435
    (global.set $__line (i32.const 1435))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    ;; line 0:1436
    (global.set $__line (i32.const 1436))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 0))
    (if (i32.ge_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:1437
    (global.set $__line (i32.const 1437))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L483
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t31 (i32.const 960))
    (if (i32.lt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:1438
    (global.set $__line (i32.const 1438))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30))
    (local.set $t29 (local.get $t30))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L484
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
      (local.set $__lab (i32.const 12)) (br $__dispatch) ;; JUMP L486
      ) ;; close $__case_10 — LAB L485
    ;; line 0:1439
    (global.set $__line (i32.const 1439))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t32 (i32.sub (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t32 (i32.div_s (local.get $t32) (local.get $t33)))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    ;; line 0:1440
    (global.set $__line (i32.const 1440))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t34 (i32.const 0))
    (if (i32.lt_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:1441
    (global.set $__line (i32.const 1441))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t34 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (if (i32.ge_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:1442
    (global.set $__line (i32.const 1442))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t34 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t35 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 42)) (i32.const 2)))) ;; LL L52
    (local.set $t34 (i32.add (local.get $t34) (local.get $t35)))
    (local.set $t34 (i32.load (i32.shl (local.get $t34) (i32.const 2))))
    (if (i32.ge_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:1443
    (global.set $__line (i32.const 1443))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t36 (i32.const 86))
    (local.set $t37 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t38 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t39 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t40 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t41 (i32.const 0))
    (local.set $t42 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t41 (i32.sub (local.get $t41) (local.get $t42)))
    (local.set $t42 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t43 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t44 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t45 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t38))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t42))
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t43))
    (i32.store (i32.add (local.get $Pb) (i32.const 176)) (local.get $t44))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t45)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 33)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t45)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L487
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t33 (i32.const 1))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32))
    (local.set $t30 (local.get $t32))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L486
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (if (i32.le_s (local.get $t32) (local.get $t33)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
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
  ) ;; end func $fn_L475

  ;; BCPL fn sort_visible (L488)
  (func $fn_L488 (export "fn_L488") (type $bcpl_fn)
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
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:1452
    (global.set $__line (i32.const 1452))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2)))) ;; LL L67
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 5)) (br $__dispatch) ;; JUMP L490
      ) ;; close $__case_1 — LAB L489
    ;; line 0:1453
    (global.set $__line (i32.const 1453))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:1454
    (global.set $__line (i32.const 1454))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L491
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 61)) (i32.const 2)))) ;; LL L71
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 61)) (i32.const 2)))) ;; LL L71
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:1456
    (global.set $__line (i32.const 1456))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 58)) (i32.const 2)))) ;; LL L68
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:1457
    (global.set $__line (i32.const 1457))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 58)) (i32.const 2)))) ;; LL L68
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 58)) (i32.const 2)))) ;; LL L68
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 58)) (i32.const 2)))) ;; LL L68
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 59)) (i32.const 2)))) ;; LL L69
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:1458
    (global.set $__line (i32.const 1458))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 59)) (i32.const 2)))) ;; LL L69
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 59)) (i32.const 2)))) ;; LL L69
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 59)) (i32.const 2)))) ;; LL L69
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 60)) (i32.const 2)))) ;; LL L70
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:1459
    (global.set $__line (i32.const 1459))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 60)) (i32.const 2)))) ;; LL L70
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 60)) (i32.const 2)))) ;; LL L70
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 60)) (i32.const 2)))) ;; LL L70
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 61)) (i32.const 2)))) ;; LL L71
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:1460
    (global.set $__line (i32.const 1460))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 61)) (i32.const 2)))) ;; LL L71
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 61)) (i32.const 2)))) ;; LL L71
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 61)) (i32.const 2)))) ;; LL L71
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 62)) (i32.const 2)))) ;; LL L72
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:1461
    (global.set $__line (i32.const 1461))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 62)) (i32.const 2)))) ;; LL L72
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 62)) (i32.const 2)))) ;; LL L72
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 62)) (i32.const 2)))) ;; LL L72
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.shl (local.get $t8) (i32.const 2)) (local.get $t7))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L493
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L492
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L490
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
  ) ;; end func $fn_L488

  ;; BCPL fn draw_sprites (L494)
  (func $fn_L494 (export "fn_L494") (type $bcpl_fn)
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
    ;; line 0:1467
    (global.set $__line (i32.const 1467))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 51)) (i32.const 2)))) ;; LL L61
    (local.set $t4 (i32.const 10))
    (local.set $t3 (i32.div_s (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 0:1468
    (global.set $__line (i32.const 1468))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2))
      (local.get $t4))
    ;; line 0:1469
    (global.set $__line (i32.const 1469))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 5)) (br $__dispatch) ;; JUMP L496
      ) ;; close $__case_1 — LAB L495
    ;; line 0:1470
    (global.set $__line (i32.const 1470))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 10))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 50)) (i32.const 2)))) ;; LL L60
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:1471
    (global.set $__line (i32.const 1471))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:1472
    (global.set $__line (i32.const 1472))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 2))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 6))) ;; LF L92
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 0:1473
    (global.set $__line (i32.const 1473))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 4))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 0:1474
    (global.set $__line (i32.const 1474))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t14 (i32.const 6))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L91
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; line 0:1475
    (global.set $__line (i32.const 1475))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.add (global.get $P) (i32.const 12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush t11 (pre-stack-up)
    ;; line 0:1476
    (global.set $__line (i32.const 1476))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:1477
    (global.set $__line (i32.const 1477))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    ;; line 0:1478
    (global.set $__line (i32.const 1478))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:1479
    (global.set $__line (i32.const 1479))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:1480
    (global.set $__line (i32.const 1480))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t21 (i32.sub (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t21))
    (local.set $t16 (local.get $t21))
    ;; line 0:1482
    (global.set $__line (i32.const 1482))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t21 (i32.sub (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t21))
    (local.set $t17 (local.get $t21))
    ;; line 0:1483
    (global.set $__line (i32.const 1483))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 8191))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t21 (i32.and (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t21 (i32.load (i32.shl (local.get $t21) (i32.const 2))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t21 (i32.mul (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.const 8191))
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t22 (i32.and (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (local.set $t22 (i32.load (i32.shl (local.get $t22) (i32.const 2))))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.const 1024))
    (local.set $t21 (i32.div_s (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t21))
    (local.set $t18 (local.get $t21))
    ;; line 0:1484
    (global.set $__line (i32.const 1484))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t22 (i32.const 4))
    (if (i32.lt_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:1485
    (global.set $__line (i32.const 1485))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t25 (i32.add (global.get $TB) (i32.const 54))) ;; LF L328
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t25)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 21)))
    (local.set $t21 (call_indirect $ftable (type $bcpl_fn) (local.get $t25)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t21))
    (local.set $t19 (local.get $t21))
    ;; line 0:1487
    (global.set $__line (i32.const 1487))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (if (i32.eq  (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:1488
    (global.set $__line (i32.const 1488))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 8192))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t21 (i32.mul (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.const 360))
    (local.set $t21 (i32.div_s (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    ;; line 0:1489
    (global.set $__line (i32.const 1489))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t28 (i32.add (global.get $TB) (i32.const 55))) ;; LF L337
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 22)))
    (local.set $t22 (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; flush FNAP result
    ;; line 0:1490
    (global.set $__line (i32.const 1490))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 56))) ;; LF L345
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1491
    (global.set $__line (i32.const 1491))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t27 (i32.add (global.get $TB) (i32.const 52))) ;; LF L298
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (local.set $t23 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t23))
    (local.set $t15 (local.get $t23))
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L500
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L498
    ;; line 0:1492
    (global.set $__line (i32.const 1492))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t25 (i32.add (global.get $TB) (i32.const 53))) ;; LF L300
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t25)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 21)))
    (local.set $t21 (call_indirect $ftable (type $bcpl_fn) (local.get $t25)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t21))
    (local.set $t20 (local.get $t21))
    ;; line 0:1494
    (global.set $__line (i32.const 1494))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (if (i32.eq  (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:1495
    (global.set $__line (i32.const 1495))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t25 (i32.add (global.get $TB) (i32.const 52))) ;; LF L298
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t25)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 21)))
    (local.set $t21 (call_indirect $ftable (type $bcpl_fn) (local.get $t25)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t21))
    (local.set $t15 (local.get $t21))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L500
    ;; line 0:1496
    (global.set $__line (i32.const 1496))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t22 (i32.const 0))
    (if (i32.lt_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:1498
    (global.set $__line (i32.const 1498))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2)))) ;; LL L67
    (local.set $t22 (i32.const 128))
    (if (i32.ge_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:1499
    (global.set $__line (i32.const 1499))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2)))) ;; LL L67
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 58)) (i32.const 2)))) ;; LL L68
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    ;; line 0:1501
    (global.set $__line (i32.const 1501))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2)))) ;; LL L67
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 59)) (i32.const 2)))) ;; LL L69
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    ;; line 0:1502
    (global.set $__line (i32.const 1502))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t26 (i32.add (global.get $TB) (i32.const 35))) ;; LF L190
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t26)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 21)))
    (local.set $t21 (call_indirect $ftable (type $bcpl_fn) (local.get $t26)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; flush FNAP result
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2)))) ;; LL L67
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 60)) (i32.const 2)))) ;; LL L70
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    ;; line 0:1503
    (global.set $__line (i32.const 1503))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2)))) ;; LL L67
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 61)) (i32.const 2)))) ;; LL L71
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    ;; line 0:1504
    (global.set $__line (i32.const 1504))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2)))) ;; LL L67
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 62)) (i32.const 2)))) ;; LL L72
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    ;; line 0:1505
    (global.set $__line (i32.const 1505))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 1))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2)))) ;; LL L67
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2))
      (local.get $t21))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L497
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L496
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:1506
    (global.set $__line (i32.const 1506))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $TB) (i32.const 74))) ;; LF L488
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1508
    (global.set $__line (i32.const 1508))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 57)) (i32.const 2)))) ;; LL L67
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L502
      ) ;; close $__case_6 — LAB L501
    ;; line 0:1509
    (global.set $__line (i32.const 1509))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 58)) (i32.const 2)))) ;; LL L68
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 59)) (i32.const 2)))) ;; LL L69
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 60)) (i32.const 2)))) ;; LL L70
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 62)) (i32.const 2)))) ;; LL L72
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 73))) ;; LF L475
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L502
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
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
  ) ;; end func $fn_L494

  ;; BCPL fn drawframe (L503)
  (func $fn_L503 (export "fn_L503") (type $bcpl_fn)
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
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:1513
    (global.set $__line (i32.const 1513))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 63))) ;; LF L358
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1514
    (global.set $__line (i32.const 1514))
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
      ) ;; close $__case_1 — LAB L504
    ;; line 0:1516
    (global.set $__line (i32.const 1516))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 2147483647))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 42)) (i32.const 2)))) ;; LL L52
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
      ) ;; close $__case_2 — LAB L505
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t8 (i32.add (global.get $TB) (i32.const 35))) ;; LF L190
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
    ;; line 0:1517
    (global.set $__line (i32.const 1517))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 8191))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (local.set $t3 (i32.load (i32.shl (local.get $t3) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 38)) (i32.const 2))
      (local.get $t3))
    ;; line 0:1518
    (global.set $__line (i32.const 1518))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 8191))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (local.set $t3 (i32.load (i32.shl (local.get $t3) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 39)) (i32.const 2))
      (local.get $t3))
    ;; line 0:1519
    (global.set $__line (i32.const 1519))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 39)) (i32.const 2)))) ;; LL L49
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 40)) (i32.const 2))
      (local.get $t3))
    ;; line 0:1520
    (global.set $__line (i32.const 1520))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 38)) (i32.const 2)))) ;; LL L48
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 41)) (i32.const 2))
      (local.get $t3))
    ;; line 0:1521
    (global.set $__line (i32.const 1521))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t7 (i32.add (global.get $TB) (i32.const 71))) ;; LF L459
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1522
    (global.set $__line (i32.const 1522))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 72))) ;; LF L463
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1523
    (global.set $__line (i32.const 1523))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 75))) ;; LF L494
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1524
    (global.set $__line (i32.const 1524))
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
  ) ;; end func $fn_L503

  ;; BCPL fn start (L506)
  (func $fn_L506 (export "fn_L506") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__case_28 $__case_29 $__case_30 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:1530
    (global.set $__line (i32.const 1530))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    ;; line 0:1531
    (global.set $__line (i32.const 1531))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:1532
    (global.set $__line (i32.const 1532))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:1533
    (global.set $__line (i32.const 1533))
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
    ;; line 0:1534
    (global.set $__line (i32.const 1534))
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
    ;; line 0:1535
    (global.set $__line (i32.const 1535))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:1536
    (global.set $__line (i32.const 1536))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    ;; line 0:1537
    (global.set $__line (i32.const 1537))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 0:1538
    (global.set $__line (i32.const 1538))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    ;; line 0:1539
    (global.set $__line (i32.const 1539))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 3))) ;; LF L80
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
    ;; line 0:1541
    (global.set $__line (i32.const 1541))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 141))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1542
    (global.set $__line (i32.const 1542))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L507
    ;; line 0:1543
    (global.set $__line (i32.const 1543))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t28))
    (local.set $t8 (local.get $t28))
    ;; line 0:1545
    (global.set $__line (i32.const 1545))
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
    ;; line 0:1546
    (global.set $__line (i32.const 1546))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 147))) ;; LSTR
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
      ) ;; close $__case_2 — LAB L508
    (local.set $t28 (i32.const 2))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1547
    (global.set $__line (i32.const 1547))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 4))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1549
    (global.set $__line (i32.const 1549))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 8))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1550
    (global.set $__line (i32.const 1550))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t34 (i32.add (global.get $TB) (i32.const 10))) ;; LF L109
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
    ;; line 0:1552
    (global.set $__line (i32.const 1552))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t29 (i32.const 0))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:1553
    (global.set $__line (i32.const 1553))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 152))) ;; LSTR
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
      ) ;; close $__case_3 — LAB L509
    (local.set $t31 (i32.add (global.get $SB) (i32.const 156))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1554
    (global.set $__line (i32.const 1554))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 9))) ;; LF L105
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
    (local.set $t35 (i32.add (global.get $SB) (i32.const 158))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L113
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
    ;; line 0:1556
    (global.set $__line (i32.const 1556))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 161))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L113
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
    ;; line 0:1557
    (global.set $__line (i32.const 1557))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 164))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L113
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
    ;; line 0:1558
    (global.set $__line (i32.const 1558))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 167))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L113
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
    ;; line 0:1559
    (global.set $__line (i32.const 1559))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 169))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L113
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
    ;; line 0:1560
    (global.set $__line (i32.const 1560))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 171))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L113
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
    ;; line 0:1561
    (global.set $__line (i32.const 1561))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 174))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L113
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
    ;; line 0:1562
    (global.set $__line (i32.const 1562))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 176))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L113
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
    ;; line 0:1563
    (global.set $__line (i32.const 1563))
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
      ) ;; close $__case_4 — LAB L511
    ;; line 0:1564
    (global.set $__line (i32.const 1564))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 178))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1566
    (global.set $__line (i32.const 1566))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L510
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1568
    (global.set $__line (i32.const 1568))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1569
    (global.set $__line (i32.const 1569))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 4))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    ;; line 0:1570
    (global.set $__line (i32.const 1570))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t30 (i32.const 14))
    (local.set $t29 (i32.div_s (local.get $t29) (local.get $t30)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 52)) (i32.const 2))
      (local.get $t29))
    ;; line 0:1571
    (global.set $__line (i32.const 1571))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1573
    (global.set $__line (i32.const 1573))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1574
    (global.set $__line (i32.const 1574))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t29 (i32.const 30))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28))
    (local.set $t25 (local.get $t28))
    ;; line 0:1575
    (global.set $__line (i32.const 1575))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1576
    (global.set $__line (i32.const 1576))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1577
    (global.set $__line (i32.const 1577))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1578
    (global.set $__line (i32.const 1578))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1579
    (global.set $__line (i32.const 1579))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1580
    (global.set $__line (i32.const 1580))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1581
    (global.set $__line (i32.const 1581))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 50)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1582
    (global.set $__line (i32.const 1582))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 51)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1583
    (global.set $__line (i32.const 1583))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1584
    (global.set $__line (i32.const 1584))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 13))) ;; LF L123
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
    ;; line 0:1587
    (global.set $__line (i32.const 1587))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L513
      ) ;; close $__case_6 — LAB L512
    ;; line 0:1589
    (global.set $__line (i32.const 1589))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 16))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t30 (i32.mul (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    ;; line 0:1590
    (global.set $__line (i32.const 1590))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 183))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L94
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
    ;; line 0:1591
    (global.set $__line (i32.const 1591))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t31))
    (local.set $t18 (local.get $t31))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L514
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 185))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L94
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
    ;; line 0:1592
    (global.set $__line (i32.const 1592))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t31))
    (local.set $t19 (local.get $t31))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L515
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 187))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L94
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
    ;; line 0:1593
    (global.set $__line (i32.const 1593))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t31))
    (local.set $t20 (local.get $t31))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L516
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L513
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
      ) ;; close $__case_11 — LAB L518
    ;; line 0:1595
    (global.set $__line (i32.const 1595))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 190))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1596
    (global.set $__line (i32.const 1596))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_12 — LAB L517
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1598
    (global.set $__line (i32.const 1598))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1599
    (global.set $__line (i32.const 1599))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1600
    (global.set $__line (i32.const 1600))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1601
    (global.set $__line (i32.const 1601))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 4))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1602
    (global.set $__line (i32.const 1602))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
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
    ;; line 0:1603
    (global.set $__line (i32.const 1603))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 200))) ;; LSTR
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
    ;; line 0:1604
    (global.set $__line (i32.const 1604))
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
    ;; line 0:1607
    (global.set $__line (i32.const 1607))
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
    ;; line 0:1608
    (global.set $__line (i32.const 1608))
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
    ;; line 0:1609
    (global.set $__line (i32.const 1609))
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
    ;; line 0:1610
    (global.set $__line (i32.const 1610))
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
    ;; line 0:1611
    (global.set $__line (i32.const 1611))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 36)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1612
    (global.set $__line (i32.const 1612))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.const 64))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1613
    (global.set $__line (i32.const 1613))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 44)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1614
    (global.set $__line (i32.const 1614))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 45)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1615
    (global.set $__line (i32.const 1615))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 46)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1616
    (global.set $__line (i32.const 1616))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 47)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1617
    (global.set $__line (i32.const 1617))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 48)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1618
    (global.set $__line (i32.const 1618))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 49)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1619
    (global.set $__line (i32.const 1619))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 42)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1620
    (global.set $__line (i32.const 1620))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 58)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1621
    (global.set $__line (i32.const 1621))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 59)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1622
    (global.set $__line (i32.const 1622))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 60)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1623
    (global.set $__line (i32.const 1623))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 61)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1624
    (global.set $__line (i32.const 1624))
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
      (i32.shl (i32.add (global.get $SB) (i32.const 62)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1625
    (global.set $__line (i32.const 1625))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 42))) ;; LF L227
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1627
    (global.set $__line (i32.const 1627))
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
    ;; line 0:1629
    (global.set $__line (i32.const 1629))
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
    ;; line 0:1630
    (global.set $__line (i32.const 1630))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $TB) (i32.const 16))) ;; LF L133
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1631
    (global.set $__line (i32.const 1631))
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
    ;; line 0:1633
    (global.set $__line (i32.const 1633))
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
    ;; line 0:1634
    (global.set $__line (i32.const 1634))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 39))) ;; LF L210
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
    ;; line 0:1636
    (global.set $__line (i32.const 1636))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 213))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1637
    (global.set $__line (i32.const 1637))
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
      ) ;; close $__case_13 — LAB L519
    (local.set $t31 (i32.add (global.get $SB) (i32.const 218))) ;; LSTR
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
    ;; line 0:1638
    (global.set $__line (i32.const 1638))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 57))) ;; LF L346
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1640
    (global.set $__line (i32.const 1640))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.add (global.get $P) (i32.const 29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush t28 (pre-stack-up)
    ;; line 0:1643
    (global.set $__line (i32.const 1643))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    ;; line 0:1644
    (global.set $__line (i32.const 1644))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const 0))
    (local.set $t34 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33)) ;; STORE slot 33
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34)) ;; STORE slot 34
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (local.set $t36 (i32.load (i32.add (local.get $Pb) (i32.const 136))))
    (if (i32.gt_s (local.get $t35) (local.get $t36)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
      ) ;; close $__case_14 — LAB L520
    ;; line 0:1645
    (global.set $__line (i32.const 1645))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t35 (i32.const 0))
    (local.set $t36 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t37 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (i32.store8 (i32.add (i32.shl (local.get $t36) (i32.const 2)) (local.get $t37)) (local.get $t35))
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (local.set $t36 (i32.const 1))
    (local.set $t35 (i32.add (local.get $t35) (local.get $t36)))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t35))
    (local.set $t33 (local.get $t35))
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (local.set $t36 (i32.load (i32.add (local.get $Pb) (i32.const 136))))
    (if (i32.le_s (local.get $t35) (local.get $t36)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L521
    (local.set $t33 (i32.const 83))
    (local.set $t34 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t35 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t34) (i32.const 2)) (local.get $t35)) (local.get $t33))
    ;; line 0:1646
    (global.set $__line (i32.const 1646))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const 75))
    (local.set $t34 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t35 (i32.const 1))
    (i32.store8 (i32.add (i32.shl (local.get $t34) (i32.const 2)) (local.get $t35)) (local.get $t33))
    ;; line 0:1647
    (global.set $__line (i32.const 1647))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const 89))
    (local.set $t34 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t35 (i32.const 2))
    (i32.store8 (i32.add (i32.shl (local.get $t34) (i32.const 2)) (local.get $t35)) (local.get $t33))
    ;; line 0:1648
    (global.set $__line (i32.const 1648))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const 49))
    (local.set $t34 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t35 (i32.const 3))
    (i32.store8 (i32.add (i32.shl (local.get $t34) (i32.const 2)) (local.get $t35)) (local.get $t33))
    ;; line 0:1649
    (global.set $__line (i32.const 1649))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t36 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t37 (i32.const 0))
    (local.set $t38 (i32.add (global.get $TB) (i32.const 47))) ;; LF L247
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t38)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 33)))
    (local.set $t33 (call_indirect $ftable (type $bcpl_fn) (local.get $t38)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33))
    (local.set $t32 (local.get $t33))
    ;; line 0:1650
    (global.set $__line (i32.const 1650))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t34 (i32.const 0))
    (if (i32.lt_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
    ;; line 0:1651
    (global.set $__line (i32.const 1651))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const -1))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 53)) (i32.const 2))
      (local.get $t33))
    ;; line 0:1652
    (global.set $__line (i32.const 1652))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t33 (i32.add (local.get $t33) (local.get $t34)))
    (local.set $t33 (i32.load (i32.shl (local.get $t33) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2))
      (local.get $t33))
    ;; line 0:1653
    (global.set $__line (i32.const 1653))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t33 (i32.add (local.get $t33) (local.get $t34)))
    (local.set $t33 (i32.load (i32.shl (local.get $t33) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 55)) (i32.const 2))
      (local.get $t33))
    ;; line 0:1654
    (global.set $__line (i32.const 1654))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t33 (i32.add (local.get $t33) (local.get $t34)))
    (local.set $t33 (i32.load (i32.shl (local.get $t33) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 56)) (i32.const 2))
      (local.get $t33))
    ;; line 0:1655
    (global.set $__line (i32.const 1655))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t36 (i32.const 83))
    (local.set $t37 (i32.const 0))
    (local.set $t38 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 56)) (i32.const 2)))) ;; LL L66
    (local.set $t39 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t40 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 55)) (i32.const 2)))) ;; LL L65
    (local.set $t41 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t38))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 33)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1656
    (global.set $__line (i32.const 1656))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 227))) ;; LSTR
    (local.set $t37 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t38 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 55)) (i32.const 2)))) ;; LL L65
    (local.set $t39 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 56)) (i32.const 2)))) ;; LL L66
    (local.set $t40 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t38))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t40)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 33)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t40)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L522
    ;; line 0:1657
    (global.set $__line (i32.const 1657))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 4))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L90
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    ;; line 0:1660
    (global.set $__line (i32.const 1660))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t30 (i32.const 26))
    (local.set $t29 (i32.div_s (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    ;; line 0:1661
    (global.set $__line (i32.const 1661))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 31))) ;; LF L175
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1662
    (global.set $__line (i32.const 1662))
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
    ;; line 0:1665
    (global.set $__line (i32.const 1665))
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
    ;; line 0:1666
    (global.set $__line (i32.const 1666))
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
    ;; line 0:1668
    (global.set $__line (i32.const 1668))
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
    ;; line 0:1669
    (global.set $__line (i32.const 1669))
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
    ;; line 0:1671
    (global.set $__line (i32.const 1671))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.const 512))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
      ) ;; close $__case_17 — LAB L523
    ;; line 0:1672
    (global.set $__line (i32.const 1672))
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
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 18)) (br $__dispatch)
      ) ;; close $__case_18 — LAB L524
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (if (i32.eqz (local.get $t28)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      ) ;; close $__case_19 — LAB L525
    (local.set $t28 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    ;; line 0:1675
    (global.set $__line (i32.const 1675))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    ;; line 0:1676
    (global.set $__line (i32.const 1676))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 40))) ;; LF L214
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1677
    (global.set $__line (i32.const 1677))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const 87))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L225
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 38))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L225
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L528
    ;; line 0:1678
    (global.set $__line (i32.const 1678))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 1))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L527
    (local.set $t33 (i32.const 83))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L225
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 40))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L225
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
      ) ;; close $__case_22 — LAB L530
    ;; line 0:1679
    (global.set $__line (i32.const 1679))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.sub (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
      ) ;; close $__case_23 — LAB L529
    (local.set $t33 (i32.const 65))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L225
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 37))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L225
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
      ) ;; close $__case_24 — LAB L532
    ;; line 0:1680
    (global.set $__line (i32.const 1680))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t31 (i32.const 64))
    (local.set $t30 (i32.sub (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30))
    (local.set $t29 (local.get $t30))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
      ) ;; close $__case_25 — LAB L531
    (local.set $t33 (i32.const 68))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L225
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 39))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L225
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
      ) ;; close $__case_26 — LAB L534
    ;; line 0:1681
    (global.set $__line (i32.const 1681))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 64))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30))
    (local.set $t29 (local.get $t30))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L533
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    ))
    ;; line 0:1683
    (global.set $__line (i32.const 1683))
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
    ;; line 0:1684
    (global.set $__line (i32.const 1684))
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
    ;; line 0:1685
    (global.set $__line (i32.const 1685))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t36 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (local.set $t37 (i32.add (global.get $TB) (i32.const 38))) ;; LF L206
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 32)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 28)) (br $__dispatch)
      ) ;; close $__case_28 — LAB L535
    ;; line 0:1686
    (global.set $__line (i32.const 1686))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    ))
    ;; line 0:1688
    (global.set $__line (i32.const 1688))
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
      (local.set $__lab (i32.const 29)) (br $__dispatch)
      ) ;; close $__case_29 — LAB L536
    (local.set $t33 (i32.add (global.get $TB) (i32.const 76))) ;; LF L503
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1690
    (global.set $__line (i32.const 1690))
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
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 30)) (br $__dispatch)
      ) ;; close $__case_30 — LAB L526
    ;; line 0:1674
    (global.set $__line (i32.const 1674))
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
    ;; line 0:1694
    (global.set $__line (i32.const 1694))
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
    ;; line 0:1695
    (global.set $__line (i32.const 1695))
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
    (local.set $t31 (i32.add (global.get $SB) (i32.const 234))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1696
    (global.set $__line (i32.const 1696))
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
  ) ;; end func $fn_L506

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L73) (ref.func $fn_L75) (ref.func $fn_L78) (ref.func $fn_L80) (ref.func $fn_L90) (ref.func $fn_L91) (ref.func $fn_L92) (ref.func $fn_L94) (ref.func $fn_L102) (ref.func $fn_L105) (ref.func $fn_L109) (ref.func $fn_L113) (ref.func $fn_L118) (ref.func $fn_L123) (ref.func $fn_L127) (ref.func $fn_L132) (ref.func $fn_L133) (ref.func $fn_L136) (ref.func $fn_L140) (ref.func $fn_L141) (ref.func $fn_L142) (ref.func $fn_L143) (ref.func $fn_L144) (ref.func $fn_L145) (ref.func $fn_L146) (ref.func $fn_L147) (ref.func $fn_L148) (ref.func $fn_L155) (ref.func $fn_L157) (ref.func $fn_L161) (ref.func $fn_L173) (ref.func $fn_L175) (ref.func $fn_L178) (ref.func $fn_L180) (ref.func $fn_L186) (ref.func $fn_L190) (ref.func $fn_L192) (ref.func $fn_L194) (ref.func $fn_L206) (ref.func $fn_L210) (ref.func $fn_L214) (ref.func $fn_L225) (ref.func $fn_L227) (ref.func $fn_L230) (ref.func $fn_L234) (ref.func $fn_L238) (ref.func $fn_L239) (ref.func $fn_L247) (ref.func $fn_L262) (ref.func $fn_L266) (ref.func $fn_L275) (ref.func $fn_L284) (ref.func $fn_L298) (ref.func $fn_L300) (ref.func $fn_L328) (ref.func $fn_L337) (ref.func $fn_L345) (ref.func $fn_L346) (ref.func $fn_L349) (ref.func $fn_L350) (ref.func $fn_L351) (ref.func $fn_L352) (ref.func $fn_L355) (ref.func $fn_L358) (ref.func $fn_L361) (ref.func $fn_L363) (ref.func $fn_L368) (ref.func $fn_L369) (ref.func $fn_L374) (ref.func $fn_L379) (ref.func $fn_L455) (ref.func $fn_L459) (ref.func $fn_L463) (ref.func $fn_L475) (ref.func $fn_L488) (ref.func $fn_L494) (ref.func $fn_L503) (ref.func $fn_L506))

  ;; static data — passive segment (238 words)
  (data $stat "\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\6C\6F\61\64\65\64\20\57\41\44\3A\20\00\00\00\17\63\61\63\68\65\64\20\25\6E\20\75\6E\69\71\75\65\20\66\6C\61\74\73\0A\06\42\41\52\31\41\30\00\06\53\54\49\4D\41\30\00\06\4D\45\44\49\41\30\00\06\42\4F\4E\31\41\30\00\06\42\4F\4E\32\41\30\00\06\41\52\4D\31\41\30\00\06\41\52\4D\32\41\30\00\06\43\4C\49\50\41\30\00\06\41\4D\4D\4F\41\30\00\06\42\52\4F\4B\41\30\00\06\43\45\4C\4C\41\30\00\06\43\45\4C\50\41\30\00\06\53\48\4F\54\41\30\00\06\4D\47\55\4E\41\30\00\06\4C\41\55\4E\41\30\00\06\43\53\41\57\41\30\00\06\50\4C\41\53\41\30\00\06\42\4B\45\59\41\30\00\06\52\4B\45\59\41\30\00\06\59\4B\45\59\41\30\00\06\53\55\49\54\41\30\00\06\50\49\4E\53\41\30\00\06\50\49\4E\56\41\30\00\06\42\50\41\4B\41\30\00\04\54\52\4F\4F\00\00\00\04\53\41\52\47\00\00\00\04\50\4F\53\53\00\00\00\04\53\50\4F\53\00\00\00\04\48\45\41\44\00\00\00\04\53\4B\55\4C\00\00\00\1E\63\6F\6D\70\6F\73\69\74\65\64\20\25\6E\20\75\6E\69\71\75\65\20\74\65\78\74\75\72\65\73\0A\00\17\4E\6F\20\57\41\44\20\61\73\73\65\74\20\75\70\6C\6F\61\64\65\64\2E\0A\13\41\73\73\65\74\20\69\73\20\61\6E\20\69\6D\61\67\65\2E\0A\0F\4E\6F\20\6D\61\70\20\6D\61\72\6B\65\72\2E\0A\05\6D\61\70\3A\20\00\00\08\56\45\52\54\45\58\45\53\00\00\00\08\4C\49\4E\45\44\45\46\53\00\00\00\08\53\49\44\45\44\45\46\53\00\00\00\07\53\45\43\54\4F\52\53\05\4E\4F\44\45\53\00\00\08\53\53\45\43\54\4F\52\53\00\00\00\04\53\45\47\53\00\00\00\06\54\48\49\4E\47\53\00\12\4D\69\73\73\69\6E\67\20\6D\61\70\20\6C\75\6D\70\2E\0A\00\07\50\4C\41\59\50\41\4C\06\50\4E\41\4D\45\53\00\08\54\45\58\54\55\52\45\31\00\00\00\25\4D\69\73\73\69\6E\67\20\50\4C\41\59\50\41\4C\20\2F\20\50\4E\41\4D\45\53\20\2F\20\54\45\58\54\55\52\45\31\2E\0A\00\00\30\50\4C\41\59\50\41\4C\20\40\25\6E\20\20\50\4E\41\4D\45\53\20\40\25\6E\20\28\25\6E\29\20\20\54\45\58\54\55\52\45\31\20\40\25\6E\20\28\25\6E\29\0A\00\00\00\12\4E\6F\20\70\6C\61\79\65\72\31\20\73\74\61\72\74\2E\0A\00\20\70\6C\61\79\65\72\20\73\74\61\72\74\20\20\70\78\3D\25\6E\20\70\79\3D\25\6E\20\70\61\3D\25\6E\0A\00\00\00\19\73\6B\79\3A\20\20\20\20\25\6E\78\25\6E\20\61\74\20\62\61\73\65\20\25\6E\0A\00\00\0C\64\77\6C\74\20\65\78\69\74\65\64\0A\00\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 952))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 78))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 77))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 238))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 78))
)
 ;; end module
