(module
  (type $bcpl_fn (func (result i32)))
  (import "env" "mem"    (memory 4))
  (import "env" "ftable" (table $ftable 256 funcref))
  (import "env" "P" (global $P (mut i32)))
  (import "env" "G" (global $G i32))
  (import "env" "static_base" (global $SB i32))
  (import "env" "table_base"  (global $TB i32))

  ;; SECTION: dsky
  ;; BCPL fn lc (L67)
  (func $fn_L67 (export "fn_L67") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 65))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 90))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.const 32))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L68 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L68
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L67

  ;; BCPL fn cp_substr (L69)
  (func $fn_L69 (export "fn_L69") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10)) (local.get $t8))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L71
    )) ;; end block / LAB L70 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L70
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.const 1))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store8 (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12)) (local.get $t10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L71 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L71
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L69

  ;; BCPL fn ends_with_wad (L72)
  (func $fn_L72 (export "fn_L72") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 4))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L73 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L73
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.const 4))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 0))) ;; LF L67
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 46))
    (local.set $t7 (i32.sub (i32.const 0) (i32.eq (local.get $t7) (local.get $t8))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.const 3))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L67
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.const 119))
    (local.set $t8 (i32.sub (i32.const 0) (i32.eq (local.get $t8) (local.get $t9))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.const 2))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L67
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.const 97))
    (local.set $t8 (i32.sub (i32.const 0) (i32.eq (local.get $t8) (local.get $t9))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L67
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L72

  ;; BCPL fn try_load_wad (L74)
  (func $fn_L74 (export "fn_L74") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.add (global.get $P) (i32.const 5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush t4 (pre-stack-up)
    (local.set $t70 (i32.add (global.get $P) (i32.const 71)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (local.get $t70)) ;; flush t70 (pre-stack-up)
    (local.set $t104 (i32.const 0))
    (local.set $t105 (i32.const 0))
    (local.set $t106 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 416)) (local.get $t104)) ;; STORE slot 104
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 420)) (local.get $t105)) ;; STORE slot 105
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424)) (local.get $t106)) ;; STORE slot 106
    (local.set $t110 (i32.const 81))
    (local.set $t111 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444)) (local.get $t111))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436)) (local.get $t112)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t112)))
    (local.set $t107 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t108 (i32.const 0))
    (local.set $t107 (i32.load8_u (i32.add (i32.shl (local.get $t107) (i32.const 2)) (local.get $t108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 416)) (local.get $t107))
    (local.set $t104 (local.get $t107))
    (local.set $t107 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 420)) (local.get $t107))
    (local.set $t105 (local.get $t107))
    (local.set $t107 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424)) (local.get $t107))
    (local.set $t106 (local.get $t107))
    (local.set $t107 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424))))
    (local.set $t108 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 416))))
    (if (i32.gt_s (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L75 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L75
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L78
    )) ;; end block / LAB L77 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L77
    (local.set $t107 (i32.const 1))
    (local.set $t108 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424))))
    (local.set $t107 (i32.add (local.get $t107) (local.get $t108)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424)) (local.get $t107))
    (local.set $t106 (local.get $t107))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L78 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L78
    (local.set $t107 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424))))
    (local.set $t108 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 416))))
    (if (i32.gt_s (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t107 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t108 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424))))
    (local.set $t107 (i32.load8_u (i32.add (i32.shl (local.get $t107) (i32.const 2)) (local.get $t108))))
    (local.set $t108 (i32.const 44))
    (if (i32.ne  (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L79 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L79
    (local.set $t110 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t111 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 420))))
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424))))
    (local.set $t113 (i32.add (global.get $TB) (i32.const 2))) ;; LF L72
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444)) (local.get $t111))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (local.get $t112))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436)) (local.get $t113)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (local.set $t107 (call_indirect $ftable (type $bcpl_fn) (local.get $t113)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428)) (local.get $t107)) ;; flush FNAP result
    (if (i32.eqz (local.get $t107)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t110 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t111 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 420))))
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424))))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280))))
    (local.set $t114 (i32.add (global.get $TB) (i32.const 1))) ;; LF L69
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444)) (local.get $t111))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (local.get $t112))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 452)) (local.get $t113))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436)) (local.get $t114)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t114)))
    (local.set $t110 (i32.const 80))
    (local.set $t111 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280))))
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444)) (local.get $t111))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (local.get $t112))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436)) (local.get $t113)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (local.set $t107 (call_indirect $ftable (type $bcpl_fn) (local.get $t113)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428)) (local.get $t107)) ;; flush FNAP result
    (if (i32.eqz (local.get $t107)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t110 (i32.add (global.get $SB) (i32.const 57))) ;; LSTR
    (local.set $t111 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436)) (local.get $t111)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t111)))
    (local.set $t107 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 420))))
    (local.set $t108 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424))))
    (local.set $t109 (i32.const 1))
    (local.set $t108 (i32.sub (local.get $t108) (local.get $t109)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428)) (local.get $t107)) ;; STORE slot 107
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 432)) (local.get $t108)) ;; STORE slot 108
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L83
    )) ;; end block / LAB L82 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L82
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428))))
    (local.set $t112 (i32.load8_u (i32.add (i32.shl (local.get $t112) (i32.const 2)) (local.get $t113))))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (local.get $t112))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444)) (local.get $t113)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 109)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t113)))
    (local.set $t109 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428))))
    (local.set $t110 (i32.const 1))
    (local.set $t109 (i32.add (local.get $t109) (local.get $t110)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428)) (local.get $t109))
    (local.set $t107 (local.get $t109))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L83 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L83
    (local.set $t109 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428))))
    (local.set $t110 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 432))))
    (if (i32.le_s (local.get $t109) (local.get $t110)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t110 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436)) (local.get $t110)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t110)))
    (local.set $t107 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t107))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L81 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L81
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L80 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L80
    (local.set $t107 (i32.const 1))
    (local.set $t108 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424))))
    (local.set $t107 (i32.add (local.get $t107) (local.get $t108)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424)) (local.get $t107))
    (local.set $t106 (local.get $t107))
    (local.set $t107 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 420)) (local.get $t107))
    (local.set $t105 (local.get $t107))
    (local.set $t107 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 424))))
    (local.set $t108 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 416))))
    (if (i32.le_s (local.get $t107) (local.get $t108)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L76 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L76
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L74

  ;; BCPL fn rd_u32_le (L84)
  (func $fn_L84 (export "fn_L84") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.const 2))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.const 3))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.const 8))
    (local.set $t9 (i32.shl (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t9 (i32.or (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t11 (i32.const 16))
    (local.set $t10 (i32.shl (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.or (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L84

  ;; BCPL fn rd_u16_le (L85)
  (func $fn_L85 (export "fn_L85") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (local $t7 i32)
    (local $t8 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L85

  ;; BCPL fn rd_i16_le (L86)
  (func $fn_L86 (export "fn_L86") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.const 32768))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.const 65536))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L87 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L87
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L86

  ;; BCPL fn lump_name_eq (L88)
  (func $fn_L88 (export "fn_L88") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 8))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L89 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L89
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L91
    )) ;; end block / LAB L90 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L90
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.const 8))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (if (i32.eq  (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L92 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L92
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L91 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L91
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L93 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L93
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.const 8))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (local.set $t10 (i32.const 0))
    (if (i32.eq  (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L95 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L95
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L94 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L94
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L88

  ;; BCPL fn is_map_marker (L96)
  (func $fn_L96 (export "fn_L96") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.const 8))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.const 2))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.const 3))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.const 4))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.const 69))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 77))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L97 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L97
    (local.set $t11 (i32.const 77))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 65))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 80))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t12 (i32.const 48))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t12 (i32.const 57))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L98 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L98
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L96

  ;; BCPL fn pr_lump_name (L99)
  (func $fn_L99 (export "fn_L99") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L101
    )) ;; end block / LAB L100 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L100
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.const 8))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.eq  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L101 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L101
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L102 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L102
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L99

  ;; BCPL fn find_first_map (L103)
  (func $fn_L103 (export "fn_L103") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L105
    )) ;; end block / LAB L104 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L104
    (local.set $t8 (i32.const 16))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 8))) ;; LF L96
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L106 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L106
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L105 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L105
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L103

  ;; BCPL fn find_map_lump (L107)
  (func $fn_L107 (export "fn_L107") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t8 (i32.const 12))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L108 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L108
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L110
    )) ;; end block / LAB L109 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L109
    (local.set $t11 (i32.const 16))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 7))) ;; LF L88
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (if (i32.eqz (local.get $t12)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L111 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L111
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L110 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L110
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L107

  ;; BCPL fn name8_eq (L112)
  (func $fn_L112 (export "fn_L112") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L113 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L113
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L115 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L115
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.eq  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L116 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L116
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L114 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L114
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L112

  ;; BCPL fn find_lump_global (L117)
  (func $fn_L117 (export "fn_L117") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L119
    )) ;; end block / LAB L118 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L118
    (local.set $t7 (i32.const 16))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 8))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 12))) ;; LF L112
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L120 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L120
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L119 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L119
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L117

  ;; BCPL fn fsin (L121)
  (func $fn_L121 (export "fn_L121") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.const 1078530007))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t9))
    (local.set $t4 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.const 1073741824))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t9))
    (local.set $t5 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L123
    )) ;; end block / LAB L122 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L122
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L123 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L123
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.gt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L125
    )) ;; end block / LAB L124 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L124
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L125 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L125
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.lt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1086324736))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1101004800))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1109917696))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1116733440))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L121

  ;; BCPL fn fcos (L126)
  (func $fn_L126 (export "fn_L126") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (local $t7 i32)
    (local $t8 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.const 1070141402))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t7)) (f32.reinterpret_i32 (local.get $t8)))))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 14))) ;; LF L121
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L126

  ;; BCPL fn buildtrig (L127)
  (func $fn_L127 (export "fn_L127") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.const 1174405120))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t8))
    (local.set $t3 (local.get $t8))
    (local.set $t8 (i32.const 1086918615))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t8 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t8))
    (local.set $t4 (local.get $t8))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 8191))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L129
    )) ;; end block / LAB L128 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L128
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 14))) ;; LF L121
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.const 1149239296))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t10))
    (local.set $t5 (local.get $t10))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 15))) ;; LF L126
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.const 1149239296))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t10))
    (local.set $t6 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t10))
    (local.set $t3 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L129 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L129
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L127

  ;; BCPL fn isqrt (L130)
  (func $fn_L130 (export "fn_L130") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (local $t7 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L131 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L131
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    (local.set $t6 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L132 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L132
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L133 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L133
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L130

  ;; BCPL fn sd_sector (L134)
  (func $fn_L134 (export "fn_L134") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 30))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 28))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L134

  ;; BCPL fn sd_texoffx (L135)
  (func $fn_L135 (export "fn_L135") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 30))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 0))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L135

  ;; BCPL fn sd_texoffy (L136)
  (func $fn_L136 (export "fn_L136") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 30))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 2))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L136

  ;; BCPL fn sec_floor (L137)
  (func $fn_L137 (export "fn_L137") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 0))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L137

  ;; BCPL fn sec_ceil (L138)
  (func $fn_L138 (export "fn_L138") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 2))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L138

  ;; BCPL fn sec_light (L139)
  (func $fn_L139 (export "fn_L139") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 20))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L139

  ;; BCPL fn sec_floortex_byte (L140)
  (func $fn_L140 (export "fn_L140") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.const 26))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L140

  ;; BCPL fn sec_ceiltex_byte (L141)
  (func $fn_L141 (export "fn_L141") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.const 26))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L141

  ;; BCPL fn name8_is_sky (L142)
  (func $fn_L142 (export "fn_L142") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (local $t7 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 70))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L143 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L143
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 95))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L144 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L144
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 2))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 83))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L145 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L145
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 75))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L146 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L146
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 4))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 89))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L147 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L147
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 5))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 49))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L148 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L148
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L142

  ;; BCPL fn sector_ceil_is_sky (L149)
  (func $fn_L149 (export "fn_L149") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L150 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L150
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush t7 (pre-stack-up)
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 25))) ;; LF L141
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.add (global.get $TB) (i32.const 26))) ;; LF L142
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L149

  ;; BCPL fn flat_cache_lookup (L151)
  (func $fn_L151 (export "fn_L151") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L153
    )) ;; end block / LAB L152 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L152
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.mul (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 36)) (i32.const 2)))) ;; LL L46
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 12))) ;; LF L112
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (if (i32.eqz (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L154 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L154
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L153 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L153
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L151

  ;; BCPL fn load_flat (L155)
  (func $fn_L155 (export "fn_L155") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L156 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L156
    (local.set $t11 (i32.const 45))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L157 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L157
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 26))) ;; LF L142
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (if (i32.eqz (local.get $t11)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L158 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L158
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t12 (i32.const 64))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L159 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L159
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 13))) ;; LF L117
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t11))
    (local.set $t6 (local.get $t11))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.const 0))
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L160 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L160
    (local.set $t11 (i32.const 16))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t11))
    (local.set $t7 (local.get $t11))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11))
    (local.set $t8 (local.get $t11))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 4096))
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L161 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L161
    (local.set $t14 (i32.const 4096))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11))
    (local.set $t10 (local.get $t11))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L162 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L162
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 4095))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.gt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L163 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L163
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t13 (i32.load8_u (i32.add (i32.shl (local.get $t13) (i32.const 2)) (local.get $t14))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t14 (i32.load (i32.shl (local.get $t14) (i32.const 2))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L164 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L164
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.gt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L165 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L165
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t13 (i32.load8_u (i32.add (i32.shl (local.get $t13) (i32.const 2)) (local.get $t14))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 36)) (i32.const 2)))) ;; LL L46
    (local.set $t15 (i32.const 8))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store8 (i32.add (i32.shl (local.get $t14) (i32.const 2)) (local.get $t15)) (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L166 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L166
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2)))) ;; LL L47
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2))
      (local.get $t11))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L155

  ;; BCPL fn ensure_flat (L167)
  (func $fn_L167 (export "fn_L167") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 28))) ;; LF L151
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L168 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L168
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 29))) ;; LF L155
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L167

  ;; BCPL fn prebuild_flats (L169)
  (func $fn_L169 (export "fn_L169") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L171
    )) ;; end block / LAB L170 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L170
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush t9 (pre-stack-up)
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 24))) ;; LF L140
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.add (global.get $TB) (i32.const 30))) ;; LF L167
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush t9 (pre-stack-up)
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 25))) ;; LF L141
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.add (global.get $TB) (i32.const 30))) ;; LF L167
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L171 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L171
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 61))) ;; LSTR
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L169

  ;; BCPL fn point_on_side (L172)
  (func $fn_L172 (export "fn_L172") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 4))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 6))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t13 (i32.mul (local.get $t13) (local.get $t14)))
    (if (i32.ge_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t12 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L173 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L173
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L172

  ;; BCPL fn point_in_subsector (L174)
  (func $fn_L174 (export "fn_L174") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L176
    )) ;; end block / LAB L175 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L175
    (local.set $t6 (i32.const 28))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 32))) ;; LF L172
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 24))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8))
    (local.set $t5 (local.get $t8))
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L179
    )) ;; end block / LAB L177 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L177
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 26))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8))
    (local.set $t5 (local.get $t8))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L179 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L179
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L176 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L176
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.and (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 0))
    (if (i32.eq  (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.const -32769))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L174

  ;; BCPL fn sector_at (L180)
  (func $fn_L180 (export "fn_L180") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 33))) ;; LF L174
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (i32.const 4))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2)))) ;; LL L23
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 12))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 6))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t14 (i32.const 8))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.const 14))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.ne  (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 10))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; RES L181: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L182 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L182
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 12))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; RES L181: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L181 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L181
    ;; RSTACK 12
    (local.set $t12 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t14 (i32.const 0))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L183 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L183
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 18))) ;; LF L134
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L180

  ;; BCPL fn floor_at (L184)
  (func $fn_L184 (export "fn_L184") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 34))) ;; LF L180
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L185 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L185
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 21))) ;; LF L137
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L184

  ;; BCPL fn ceil_at (L186)
  (func $fn_L186 (export "fn_L186") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 34))) ;; LF L180
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L187 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L187
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 22))) ;; LF L138
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L186

  ;; BCPL fn line_blocks_move (L188)
  (func $fn_L188 (export "fn_L188") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 35))) ;; LF L184
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 52)) (i32.const 2)))) ;; LL L62
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 11)) (br $__dispatch) ;; JUMP L190
    )) ;; end block / LAB L189 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L189
    (local.set $t10 (i32.const 14))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t10 (i32.mul (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 2))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 10))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t18 (i32.const 12))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (local.set $t16 (i32.const 4))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t16 (i32.mul (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 17)))
    (local.set $t17 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; flush FNAP result
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t22 (i32.const 2))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t24)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 19)))
    (local.set $t19 (call_indirect $ftable (type $bcpl_fn) (local.get $t24)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19)) ;; flush FNAP result
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t24 (i32.const 2))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t25)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 20)))
    (local.set $t20 (call_indirect $ftable (type $bcpl_fn) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20)) ;; flush FNAP result
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t21 (i32.sub (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (local.set $t21 (i32.mul (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t21 (i32.sub (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (local.set $t24 (i32.mul (local.get $t24) (local.get $t25)))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (local.set $t24 (i32.mul (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t26 (i32.sub (local.get $t26) (local.get $t27)))
    (local.set $t25 (i32.mul (local.get $t25) (local.get $t26)))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t26 (i32.const 0))
    (local.set $t25 (i32.sub (i32.const 0) (i32.gt_s (local.get $t25) (local.get $t26))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t27 (i32.const 0))
    (local.set $t26 (i32.sub (i32.const 0) (i32.gt_s (local.get $t26) (local.get $t27))))
    (if (i32.eq  (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t26 (i32.const 0))
    (local.set $t25 (i32.sub (i32.const 0) (i32.gt_s (local.get $t25) (local.get $t26))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t27 (i32.const 0))
    (local.set $t26 (i32.sub (i32.const 0) (i32.gt_s (local.get $t26) (local.get $t27))))
    (if (i32.eq  (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t26 (i32.const 0))
    (if (i32.ge_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t25 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t25))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L192 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L192
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t26 (i32.const 0))
    (if (i32.ge_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t25 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t25))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L193 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L193
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 18))) ;; LF L134
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t30 (i32.add (global.get $TB) (i32.const 18))) ;; LF L134
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 26)))
    (local.set $t26 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26)) ;; flush FNAP result
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t31 (i32.add (global.get $TB) (i32.const 21))) ;; LF L137
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 22))) ;; LF L138
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 21))) ;; LF L137
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 29)))
    (local.set $t29 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; flush FNAP result
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 22))) ;; LF L138
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (if (i32.le_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    ;; RES L194: save result, jump to RSTACK
    (local.set $__res (local.get $t31))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L195 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L195
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    ;; RES L194: save result, jump to RSTACK
    (local.set $__res (local.get $t31))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L194 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L194
    ;; RSTACK 31
    (local.set $t31 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (if (i32.ge_s (local.get $t32) (local.get $t33)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    ;; RES L196: save result, jump to RSTACK
    (local.set $__res (local.get $t32))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L197 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L197
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    ;; RES L196: save result, jump to RSTACK
    (local.set $__res (local.get $t32))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L196 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L196
    ;; RSTACK 32
    (local.set $t32 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124))))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t33 (i32.sub (local.get $t33) (local.get $t34)))
    (local.set $t34 (i32.const 24))
    (if (i32.le_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t33))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L198 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L198
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124))))
    (local.set $t33 (i32.sub (local.get $t33) (local.get $t34)))
    (local.set $t34 (i32.const 56))
    (if (i32.ge_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t33))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L199 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L199
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L191 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L191
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L190 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L190
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L188

  ;; BCPL fn try_move (L200)
  (func $fn_L200 (export "fn_L200") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 37))) ;; LF L188
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 0))
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2))
      (local.get $t7))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2))
      (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L201 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L201
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t14 (i32.add (global.get $TB) (i32.const 37))) ;; LF L188
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 0))
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2))
      (local.get $t7))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L202 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L202
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 37))) ;; LF L188
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 0))
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2))
      (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L203 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L203
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L200

  ;; BCPL fn find_player_start (L204)
  (func $fn_L204 (export "fn_L204") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.const 10))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L206
    )) ;; end block / LAB L205 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L205
    (local.set $t9 (i32.const 10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.const 6))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2))
      (local.get $t12))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t16 (i32.const 2))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2))
      (local.get $t12))
    (local.set $t12 (i32.const 8192))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 360))
    (local.set $t12 (i32.div_s (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 8191))
    (local.set $t12 (i32.and (local.get $t12) (local.get $t13)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2))
      (local.get $t12))
    (local.set $t12 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L207 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L207
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L206 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L206
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L204

  ;; BCPL fn poll_events (L208)
  (func $fn_L208 (export "fn_L208") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L210
    )) ;; end block / LAB L209 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L209
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.const 2))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (local.set $t14 (i32.const 2))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t15 (i32.const 512))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t14 (i32.const 1))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L214 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L214
    (local.set $t14 (i32.const 27))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L213
    )) ;; end block / LAB L215 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L215
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L213
    )) ;; end block / LAB L211 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L211
    (local.set $t14 (i32.const 3))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t15 (i32.const 0))
    (if (i32.lt_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t15 (i32.const 512))
    (if (i32.ge_s (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L217 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L217
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L216 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L216
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L213 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L213
    (local.set $t14 (i32.const 12))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L218 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L218
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L210 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L210
    (local.set $t15 (i32.const 66))
    (local.set $t16 (i32.const 20))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (if (local.get $t12) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L208

  ;; BCPL fn key_down (L219)
  (func $fn_L219 (export "fn_L219") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 512))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L220 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L220
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L219

  ;; BCPL fn load_palette (L221)
  (func $fn_L221 (export "fn_L221") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 255))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L223
    )) ;; end block / LAB L222 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L222
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.const 255))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.and (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 24))
    (local.set $t10 (i32.shl (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 255))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.and (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 16))
    (local.set $t11 (i32.shl (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.or (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 255))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t11 (i32.and (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 8))
    (local.set $t11 (i32.shl (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.or (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 255))
    (local.set $t10 (i32.or (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L223 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L223
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L221

  ;; BCPL fn find_tex1_def (L224)
  (func $fn_L224 (export "fn_L224") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L226
    )) ;; end block / LAB L225 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L225
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 4))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 4))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 12))) ;; LF L112
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L227 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L227
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L226 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L226
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L224

  ;; BCPL fn tex_cache_lookup (L228)
  (func $fn_L228 (export "fn_L228") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L230
    )) ;; end block / LAB L229 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L229
    (local.set $t7 (i32.const 2))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 2))
    (local.set $t7 (i32.shl (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 12))) ;; LF L112
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L231 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L231
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L230 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L230
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L228

  ;; BCPL fn tex_put (L232)
  (func $fn_L232 (export "fn_L232") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L232

  ;; BCPL fn stamp_patch_column (L233)
  (func $fn_L233 (export "fn_L233") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t10 (i32.const 8))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (local.set $t15 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t17 (i32.const 0))
    (if (i32.lt_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (if (i32.lt_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L235 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L235
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L234 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L234
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t16 (i32.load8_u (i32.add (i32.shl (local.get $t16) (i32.const 2)) (local.get $t17))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t16))
    (local.set $t15 (local.get $t16))
    (local.set $t16 (i32.const 255))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (if (i32.eq  (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L236 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L236
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.const 1))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t16 (i32.load8_u (i32.add (i32.shl (local.get $t16) (i32.const 2)) (local.get $t17))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t19 (i32.const 1))
    (local.set $t18 (i32.sub (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L239
    )) ;; end block / LAB L238 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L238
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.const 3))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t19 (i32.load8_u (i32.add (i32.shl (local.get $t19) (i32.const 2)) (local.get $t20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t22 (i32.const 0))
    (if (i32.lt_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ge_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2)))) ;; LL L26
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (local.set $t29 (i32.add (global.get $TB) (i32.const 45))) ;; LF L232
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 21)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L240 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L240
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t20 (i32.const 1))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t19))
    (local.set $t17 (local.get $t19))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L239 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L239
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.const 4))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t17))
    (local.set $t14 (local.get $t17))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t17 (i32.load8_u (i32.add (i32.shl (local.get $t17) (i32.const 2)) (local.get $t18))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t17))
    (local.set $t15 (local.get $t17))
    (local.set $t16 (i32.const 255))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (if (i32.ne  (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L237 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L237
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L233

  ;; BCPL fn composite_texture (L241)
  (func $fn_L241 (export "fn_L241") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 43))) ;; LF L224
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L242 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L242
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t12 (i32.const 128))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L243 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L243
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 12))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t11))
    (local.set $t6 (local.get $t11))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 14))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t11))
    (local.set $t7 (local.get $t11))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 20))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11))
    (local.set $t8 (local.get $t11))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.const 0))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.const 0))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L245 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L245
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L244 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L244
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t14 (i32.mul (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L246 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L246
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L248
    )) ;; end block / LAB L247 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L247
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L248 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L248
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
      (local.set $__lab (i32.const 12)) (br $__dispatch) ;; JUMP L250
    )) ;; end block / LAB L249 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L249
    (local.set $t13 (i32.const 22))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.const 10))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.mul (local.get $t14) (local.get $t15)))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    (local.set $t18 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t19 (i32.const 2))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t20 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 15)))
    (local.set $t15 (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; flush FNAP result
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t20 (i32.const 4))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (local.set $t17 (i32.const 8))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t17 (i32.mul (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2)))) ;; LL L27
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.add (global.get $TB) (i32.const 13))) ;; LF L117
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    (local.set $t19 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (local.set $t21 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t23 (i32.const 0))
    (if (i32.lt_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t22 (i32.const 16))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t22))
    (local.set $t21 (local.get $t22))
    (local.set $t25 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 22)))
    (local.set $t22 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t22))
    (local.set $t19 (local.get $t22))
    (local.set $t25 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 22)))
    (local.set $t22 (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22))
    (local.set $t20 (local.get $t22))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t24 (i32.const 1))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L253
    )) ;; end block / LAB L252 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L252
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 46))) ;; LF L233
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t25 (i32.const 1))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t24))
    (local.set $t22 (local.get $t24))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L253 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L253
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (if (i32.le_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L251 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L251
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L250 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L250
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 4))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11))
    (local.set $t10 (local.get $t11))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.gt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L254 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L254
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t13 (i32.load8_u (i32.add (i32.shl (local.get $t13) (i32.const 2)) (local.get $t14))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2)))) ;; LL L32
    (local.set $t15 (i32.const 8))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store8 (i32.add (i32.shl (local.get $t14) (i32.const 2)) (local.get $t15)) (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L255 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L255
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2))
      (local.get $t11))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L241

  ;; BCPL fn ensure_sidedef_tex (L256)
  (func $fn_L256 (export "fn_L256") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.const 30))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.mul (local.get $t5) (local.get $t6)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.const 45))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (local.set $t9 (i32.const 0))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L257 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L257
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L258 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L258
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 44))) ;; LF L228
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9 (i32.const 0))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L259 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L259
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 47))) ;; LF L241
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L256

  ;; BCPL fn spr_cache_lookup (L260)
  (func $fn_L260 (export "fn_L260") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (local.set $t4 (i32.load8_u (i32.add (i32.shl (local.get $t4) (i32.const 2)) (local.get $t5))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 8)) (br $__dispatch) ;; JUMP L262
    )) ;; end block / LAB L261 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L261
    (local.set $t7 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.const 8))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L263 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L263
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 44)) (i32.const 2)))) ;; LL L54
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.ge_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.const 1))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t12 (i32.load8_u (i32.add (i32.shl (local.get $t12) (i32.const 2)) (local.get $t13))))
    ;; RES L265: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L266 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L266
    (local.set $t12 (i32.const 0))
    ;; RES L265: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L265 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L265
    ;; RSTACK 12
    (local.set $t12 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (if (i32.eq  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t13))
    (local.set $t7 (local.get $t13))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L264
    )) ;; end block / LAB L267 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L267
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L264 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L264
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L268 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L268
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L262 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L262
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L260

  ;; BCPL fn find_lump_bcpl (L269)
  (func $fn_L269 (export "fn_L269") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (local.set $t4 (i32.load8_u (i32.add (i32.shl (local.get $t4) (i32.const 2)) (local.get $t5))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 8)) (br $__dispatch) ;; JUMP L271
    )) ;; end block / LAB L270 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L270
    (local.set $t7 (i32.const 16))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 8))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L272 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L272
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.ge_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.const 1))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t12 (i32.load8_u (i32.add (i32.shl (local.get $t12) (i32.const 2)) (local.get $t13))))
    ;; RES L274: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L275 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L275
    (local.set $t12 (i32.const 0))
    ;; RES L274: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L274 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L274
    ;; RSTACK 12
    (local.set $t12 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (if (i32.eq  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t13))
    (local.set $t8 (local.get $t13))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L273
    )) ;; end block / LAB L276 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L276
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L273 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L273
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L277 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L277
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L271 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L271
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L269

  ;; BCPL fn load_sprite (L278)
  (func $fn_L278 (export "fn_L278") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.const 0))
    (local.set $t12 (i32.load8_u (i32.add (i32.shl (local.get $t12) (i32.const 2)) (local.get $t13))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t14 (i32.const 64))
    (if (i32.lt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L279 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L279
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 50))) ;; LF L269
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t13))
    (local.set $t4 (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.const 0))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L280 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L280
    (local.set $t13 (i32.const 16))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t13 (i32.mul (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t13))
    (local.set $t5 (local.get $t13))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t13))
    (local.set $t6 (local.get $t13))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t13))
    (local.set $t7 (local.get $t13))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 2))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t13))
    (local.set $t8 (local.get $t13))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 4))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t13))
    (local.set $t9 (local.get $t13))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.const 6))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t13))
    (local.set $t10 (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t14 (i32.const 0))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t14 (i32.const 0))
    (if (i32.gt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L282 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L282
    (local.set $t13 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L281 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L281
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t16 (i32.mul (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (if (i32.ne  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L283 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L283
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t14 (i32.mul (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.const 1))
    (local.set $t14 (i32.sub (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L285
    )) ;; end block / LAB L284 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L284
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (i32.store (i32.shl (local.get $t16) (i32.const 2)) (local.get $t15))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.const 1))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t15))
    (local.set $t13 (local.get $t15))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L285 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L285
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (if (i32.le_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t15 (i32.const 1))
    (local.set $t14 (i32.sub (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L287
    )) ;; end block / LAB L286 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L286
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.add (global.get $TB) (i32.const 46))) ;; LF L233
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t25)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 15)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t25)))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.const 1))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t15))
    (local.set $t13 (local.get $t15))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L287 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L287
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (if (i32.le_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.const 7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (if (i32.gt_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L288 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L288
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.ge_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t16 (i32.const 1))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t15 (i32.load8_u (i32.add (i32.shl (local.get $t15) (i32.const 2)) (local.get $t16))))
    ;; RES L290: save result, jump to RSTACK
    (local.set $__res (local.get $t15))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L291 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L291
    (local.set $t15 (i32.const 0))
    ;; RES L290: save result, jump to RSTACK
    (local.set $__res (local.get $t15))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L290 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L290
    ;; RSTACK 15
    (local.set $t15 (local.get $__res)) ;; restore RES result
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 44)) (i32.const 2)))) ;; LL L54
    (local.set $t17 (i32.const 8))
    (local.set $t18 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t17 (i32.mul (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store8 (i32.add (i32.shl (local.get $t16) (i32.const 2)) (local.get $t17)) (local.get $t15))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.const 1))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t15))
    (local.set $t13 (local.get $t15))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (if (i32.le_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L289 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L289
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 45)) (i32.const 2)))) ;; LL L55
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 46)) (i32.const 2)))) ;; LL L56
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 47)) (i32.const 2)))) ;; LL L57
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 48)) (i32.const 2)))) ;; LL L58
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 49)) (i32.const 2)))) ;; LL L59
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    (local.set $t13 (i32.const 1))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2)))) ;; LL L53
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 43)) (i32.const 2))
      (local.get $t13))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L278

  ;; BCPL fn ensure_sprite (L292)
  (func $fn_L292 (export "fn_L292") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 49))) ;; LF L260
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 0))
    (if (i32.lt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L293 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L293
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 51))) ;; LF L278
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L292

  ;; BCPL fn thing_sprite_name (L294)
  (func $fn_L294 (export "fn_L294") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    ;; RES L295: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L296 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L296
    (local.set $t4 (i32.add (global.get $SB) (i32.const 67))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L297 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L297
    (local.set $t4 (i32.add (global.get $SB) (i32.const 69))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L298 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L298
    (local.set $t4 (i32.add (global.get $SB) (i32.const 71))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L299 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L299
    (local.set $t4 (i32.add (global.get $SB) (i32.const 73))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L300 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L300
    (local.set $t4 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L301 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L301
    (local.set $t4 (i32.add (global.get $SB) (i32.const 77))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L302 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L302
    (local.set $t4 (i32.add (global.get $SB) (i32.const 79))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L303 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L303
    (local.set $t4 (i32.add (global.get $SB) (i32.const 81))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L304 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L304
    (local.set $t4 (i32.add (global.get $SB) (i32.const 83))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L305 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L305
    (local.set $t4 (i32.add (global.get $SB) (i32.const 85))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L306 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L306
    (local.set $t4 (i32.add (global.get $SB) (i32.const 87))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L307 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L307
    (local.set $t4 (i32.add (global.get $SB) (i32.const 89))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L308 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L308
    (local.set $t4 (i32.add (global.get $SB) (i32.const 91))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L309 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L309
    (local.set $t4 (i32.add (global.get $SB) (i32.const 93))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L310 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L310
    (local.set $t4 (i32.add (global.get $SB) (i32.const 95))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L311 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L311
    (local.set $t4 (i32.add (global.get $SB) (i32.const 97))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L312 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L312
    (local.set $t4 (i32.add (global.get $SB) (i32.const 99))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L313 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L313
    (local.set $t4 (i32.add (global.get $SB) (i32.const 101))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L314 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L314
    (local.set $t4 (i32.add (global.get $SB) (i32.const 103))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L315 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L315
    (local.set $t4 (i32.add (global.get $SB) (i32.const 105))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L316 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L316
    (local.set $t4 (i32.add (global.get $SB) (i32.const 107))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L317 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L317
    (local.set $t4 (i32.add (global.get $SB) (i32.const 109))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L318 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L318
    (local.set $t4 (i32.add (global.get $SB) (i32.const 111))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L319 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L319
    (local.set $t4 (i32.add (global.get $SB) (i32.const 113))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L320 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L320
    (local.set $t4 (i32.add (global.get $SB) (i32.const 83))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L321 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L321
    (local.set $t4 (i32.add (global.get $SB) (i32.const 115))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L322 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L322
    (local.set $t4 (i32.add (global.get $SB) (i32.const 117))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L323 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L323
    (local.set $t4 (i32.add (global.get $SB) (i32.const 119))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L324 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L324
    (local.set $t4 (i32.add (global.get $SB) (i32.const 121))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L325 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L325
    (local.set $t4 (i32.add (global.get $SB) (i32.const 123))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L326 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L326
    (local.set $t4 (i32.add (global.get $SB) (i32.const 125))) ;; LSTR
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L327 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L327
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L295 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L295
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 31 cases default L327
    (if (i32.eq (local.get $t4) (i32.const 3006)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 3005)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 9)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 3004)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 3002)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 3001)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)))
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
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L294

  ;; BCPL fn prebuild_textures (L328)
  (func $fn_L328 (export "fn_L328") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L330
    )) ;; end block / LAB L329 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L329
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.const 4))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 48))) ;; LF L256
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.const 12))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 48))) ;; LF L256
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.const 20))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 48))) ;; LF L256
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L330 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L330
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 127))) ;; LSTR
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L328

  ;; BCPL fn cam_x (L331)
  (func $fn_L331 (export "fn_L331") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 8191))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 8191))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L331

  ;; BCPL fn cam_y (L332)
  (func $fn_L332 (export "fn_L332") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 8191))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.const 8191))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L332

  ;; BCPL fn front_facing (L333)
  (func $fn_L333 (export "fn_L333") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L333

  ;; BCPL fn light_to_col (L334)
  (func $fn_L334 (export "fn_L334") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 40))
    (if (i32.ge_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 40))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L335 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L335
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 255))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 255))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L336 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L336
    (local.set $t8 (i32.const 66))
    (local.set $t9 (i32.const 26))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L334

  ;; BCPL fn light_at_depth (L337)
  (func $fn_L337 (export "fn_L337") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (local $t7 i32)
    (local $t8 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 20))
    (local.set $t5 (i32.div_s (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 32))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t7 (i32.const 32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L338 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L338
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 255))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t7 (i32.const 255))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L339 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L339
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L337

  ;; BCPL fn reset_clip (L340)
  (func $fn_L340 (export "fn_L340") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (local $t7 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 959))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.gt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L341 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L341
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    (local.set $t5 (i32.const 719))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L342 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L342
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L340

  ;; BCPL fn close_column (L343)
  (func $fn_L343 (export "fn_L343") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2)))) ;; LL L38
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2))
      (local.get $t4))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L344 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L344
    (local.set $t4 (i32.const 720))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    (local.set $t4 (i32.const -1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L343

  ;; BCPL fn vline_clipped (L345)
  (func $fn_L345 (export "fn_L345") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t10))
    (local.set $t4 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t10))
    (local.set $t5 (local.get $t10))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L346 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L346
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t9))
    (local.set $t4 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L347 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L347
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t9))
    (local.set $t5 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L348 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L348
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t12 (i32.const 66))
    (local.set $t13 (i32.const 29))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L349 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L349
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L345

  ;; BCPL fn project_y (L350)
  (func $fn_L350 (export "fn_L350") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (local $t7 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.const 360))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 34)) (i32.const 2)))) ;; LL L44
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 480))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L350

  ;; BCPL fn draw_textured_band (L351)
  (func $fn_L351 (export "fn_L351") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 0))
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 62))) ;; LF L345
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L352 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L352
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (local.set $t14 (i32.const 65536))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t14 (i32.mul (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.const 480))
    (local.set $t14 (i32.div_s (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t15 (i32.rem_s (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t15 (i32.rem_s (local.get $t15) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (local.set $t16 (i32.const 65535))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t16 (i32.and (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t18 (i32.const 16))
    (local.set $t17 (i32.shl (local.get $t17) (local.get $t18)))
    (local.set $t16 (i32.or (local.get $t16) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t20 (i32.load (i32.shl (local.get $t20) (i32.const 2))))
    (if (i32.ge_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t19))
    (local.set $t17 (local.get $t19))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L353 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L353
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t20 (i32.load (i32.shl (local.get $t20) (i32.const 2))))
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t19))
    (local.set $t18 (local.get $t19))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L354 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L354
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (if (i32.gt_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t22 (i32.const 86))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 19)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L355 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L355
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L351

  ;; BCPL fn draw_textured_band_trans (L356)
  (func $fn_L356 (export "fn_L356") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (local.set $t15 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t19 (i32.const 0))
    (if (i32.ge_s (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L357 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L357
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t18))
    (local.set $t10 (local.get $t18))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t18))
    (local.set $t11 (local.get $t18))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t18))
    (local.set $t12 (local.get $t18))
    (local.set $t18 (i32.const 65536))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t18 (i32.mul (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.const 480))
    (local.set $t18 (i32.div_s (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t18))
    (local.set $t13 (local.get $t18))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t18 (i32.rem_s (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t18 (i32.rem_s (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t18))
    (local.set $t14 (local.get $t18))
    (local.set $t18 (i32.const 65535))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t18 (i32.and (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t20 (i32.const 16))
    (local.set $t19 (i32.shl (local.get $t19) (local.get $t20)))
    (local.set $t18 (i32.or (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t18))
    (local.set $t15 (local.get $t18))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (if (i32.ge_s (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t18))
    (local.set $t16 (local.get $t18))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L358 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L358
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (if (i32.le_s (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t18))
    (local.set $t17 (local.get $t18))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L359 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L359
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (if (i32.gt_s (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t21 (i32.const 86))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t26 (i32.sub (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L360 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L360
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L356

  ;; BCPL fn render_seg (L361)
  (func $fn_L361 (export "fn_L361") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    (local.set $t28 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (local.set $t29 (i32.const 0))
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.const 0))
    (local.set $t32 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    (local.set $t33 (i32.const 0))
    (local.set $t34 (i32.const 0))
    (local.set $t35 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33)) ;; STORE slot 33
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34)) ;; STORE slot 34
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35)) ;; STORE slot 35
    (local.set $t36 (i32.const 0))
    (local.set $t37 (i32.const 0))
    (local.set $t38 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36)) ;; STORE slot 36
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 148)) (local.get $t37)) ;; STORE slot 37
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 152)) (local.get $t38)) ;; STORE slot 38
    (local.set $t39 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 156)) (local.get $t39)) ;; STORE slot 39
    (local.set $t40 (i32.const 0))
    (local.set $t41 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160)) (local.get $t40)) ;; STORE slot 40
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 164)) (local.get $t41)) ;; STORE slot 41
    (local.set $t42 (i32.const 0))
    (local.set $t43 (i32.const 0))
    (local.set $t44 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 168)) (local.get $t42)) ;; STORE slot 42
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 172)) (local.get $t43)) ;; STORE slot 43
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 176)) (local.get $t44)) ;; STORE slot 44
    (local.set $t45 (i32.const 0))
    (local.set $t46 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 180)) (local.get $t45)) ;; STORE slot 45
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184)) (local.get $t46)) ;; STORE slot 46
    (local.set $t47 (i32.const -1))
    (local.set $t48 (i32.const -1))
    (local.set $t49 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 188)) (local.get $t47)) ;; STORE slot 47
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 196)) (local.get $t49)) ;; STORE slot 49
    (local.set $t50 (i32.const 0))
    (local.set $t51 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (local.get $t51)) ;; STORE slot 51
    (local.set $t52 (i32.const 0))
    (local.set $t53 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t52)) ;; STORE slot 52
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53)) ;; STORE slot 53
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 0))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t54))
    (local.set $t4 (local.get $t54))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 2))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t54))
    (local.set $t5 (local.get $t54))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 6))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t54))
    (local.set $t6 (local.get $t54))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 8))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t54))
    (local.set $t7 (local.get $t54))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 10))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t54))
    (local.set $t8 (local.get $t54))
    (local.set $t54 (i32.const 14))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t54))
    (local.set $t9 (local.get $t54))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 4))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t54))
    (local.set $t12 (local.get $t54))
    (local.set $t54 (i32.const 8))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t54 (i32.and (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.const 0))
    (local.set $t54 (i32.sub (i32.const 0) (i32.ne (local.get $t54) (local.get $t55))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54))
    (local.set $t52 (local.get $t54))
    (local.set $t54 (i32.const 16))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t54 (i32.and (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.const 0))
    (local.set $t54 (i32.sub (i32.const 0) (i32.ne (local.get $t54) (local.get $t55))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t54))
    (local.set $t53 (local.get $t54))
    (local.set $t54 (i32.const 0))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ne  (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 10))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t54))
    (local.set $t10 (local.get $t54))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 12))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t54))
    (local.set $t11 (local.get $t54))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L364
    )) ;; end block / LAB L362 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L362
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 12))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t54))
    (local.set $t10 (local.get $t54))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t58 (i32.const 10))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t58 (i32.add (local.get $t58) (local.get $t59)))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t54))
    (local.set $t11 (local.get $t54))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L364 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L364
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t55 (i32.const 0))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L365 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L365
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 18))) ;; LF L134
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t54))
    (local.set $t13 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t55 (i32.const 0))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L366 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L366
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 21))) ;; LF L137
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t54))
    (local.set $t23 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 22))) ;; LF L138
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t54))
    (local.set $t24 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 23))) ;; LF L139
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t54))
    (local.set $t25 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 19))) ;; LF L135
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 180)) (local.get $t54))
    (local.set $t45 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 20))) ;; LF L136
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184)) (local.get $t54))
    (local.set $t46 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t55 (i32.const 0))
    (local.set $t54 (i32.sub (i32.const 0) (i32.ge_s (local.get $t54) (local.get $t55))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t54))
    (local.set $t28 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (if (i32.eqz (local.get $t54)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 18))) ;; LF L134
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t54))
    (local.set $t14 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t55 (i32.const 0))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t54 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t54))
    (local.set $t28 (local.get $t54))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L368 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L368
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (if (i32.eqz (local.get $t54)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 21))) ;; LF L137
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t54))
    (local.set $t26 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 22))) ;; LF L138
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t54))
    (local.set $t27 (local.get $t54))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L369 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L369
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L367 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L367
    (local.set $t54 (i32.const 4))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    (local.set $t55 (i32.const 4))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55)) ;; STORE slot 55
    (local.set $t59 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t60 (i32.const 0))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t56))
    (local.set $t15 (local.get $t56))
    (local.set $t59 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t60 (i32.const 2))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t56))
    (local.set $t16 (local.get $t56))
    (local.set $t59 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t60 (i32.const 0))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t56))
    (local.set $t17 (local.get $t56))
    (local.set $t59 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t60 (i32.const 2))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t56))
    (local.set $t18 (local.get $t56))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (if (local.get $t54) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t58 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t60 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 57))) ;; LF L333
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (if (local.get $t54) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L371 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L371
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L370 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L370
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t54 (i32.sub (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55)) ;; STORE slot 55
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t60 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t59 (i32.mul (local.get $t59) (local.get $t60)))
    (local.set $t60 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220))))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220))))
    (local.set $t60 (i32.mul (local.get $t60) (local.get $t61)))
    (local.set $t59 (i32.add (local.get $t59) (local.get $t60)))
    (local.set $t60 (i32.add (global.get $TB) (i32.const 17))) ;; LF L130
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t60)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t60)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 156)) (local.get $t56))
    (local.set $t39 (local.get $t56))
    (local.set $t54 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160)) (local.get $t54))
    (local.set $t40 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 156))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 164)) (local.get $t54))
    (local.set $t41 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t58 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 55))) ;; LF L331
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t54))
    (local.set $t19 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t58 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 56))) ;; LF L332
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t54))
    (local.set $t20 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t58 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 55))) ;; LF L331
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t54))
    (local.set $t21 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t58 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 56))) ;; LF L332
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t54))
    (local.set $t22 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t55 (i32.const 4))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t55 (i32.const 4))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L372 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L372
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t55 (i32.const 4))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t54 (i32.const 4))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t54 (i32.sub (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.const 1024))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t54 (i32.div_s (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.const 1024))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t55))
    (local.set $t19 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 164))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.const 1024))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160))))
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160)) (local.get $t55))
    (local.set $t40 (local.get $t55))
    (local.set $t55 (i32.const 4))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t55))
    (local.set $t20 (local.get $t55))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L373 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L373
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t55 (i32.const 4))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    (local.set $t54 (i32.const 4))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t54 (i32.sub (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.const 1024))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t54 (i32.div_s (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.const 1024))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t55))
    (local.set $t21 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 164))))
    (local.set $t55 (i32.sub (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.const 1024))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 164))))
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 164)) (local.get $t55))
    (local.set $t41 (local.get $t55))
    (local.set $t55 (i32.const 4))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t55))
    (local.set $t22 (local.get $t55))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L374 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L374
    (local.set $t54 (i32.const 480))
    (local.set $t55 (i32.const 480))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t54))
    (local.set $t29 (local.get $t54))
    (local.set $t54 (i32.const 480))
    (local.set $t55 (i32.const 480))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t55 (i32.div_s (local.get $t55) (local.get $t56)))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t54))
    (local.set $t30 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (if (i32.le_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t55))
    (local.set $t29 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t55))
    (local.set $t30 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t55))
    (local.set $t54 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t55))
    (local.set $t19 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t55))
    (local.set $t21 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t55))
    (local.set $t54 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t55))
    (local.set $t20 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t55))
    (local.set $t22 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t55))
    (local.set $t54 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160)) (local.get $t55))
    (local.set $t40 (local.get $t55))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 164)) (local.get $t55))
    (local.set $t41 (local.get $t55))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L375 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L375
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.ne  (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L376 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L376
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t54))
    (local.set $t31 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t54))
    (local.set $t32 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124))))
    (local.set $t55 (i32.const 0))
    (if (i32.ge_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
    (local.set $t54 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t54))
    (local.set $t31 (local.get $t54))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L377 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L377
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (local.set $t55 (i32.const 960))
    (if (i32.lt_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
    (local.set $t54 (i32.const 959))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t54))
    (local.set $t32 (local.get $t54))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L378 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L378
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124))))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (if (i32.le_s (local.get $t54) (local.get $t55)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L379 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L379
    (local.set $t54 (i32.const 1048576))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t54 (i32.div_s (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t54))
    (local.set $t33 (local.get $t54))
    (local.set $t54 (i32.const 1048576))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t54 (i32.div_s (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t54))
    (local.set $t34 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t54 (i32.sub (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t54))
    (local.set $t35 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132))))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160))))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 168)) (local.get $t54))
    (local.set $t42 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136))))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 164))))
    (local.set $t54 (i32.mul (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 172)) (local.get $t54))
    (local.set $t43 (local.get $t54))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 172))))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 168))))
    (local.set $t54 (i32.sub (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140))))
    (local.set $t54 (i32.div_s (local.get $t54) (local.get $t55)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 176)) (local.get $t54))
    (local.set $t44 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 58))) ;; LF L334
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t54))
    (local.set $t36 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t58 (i32.const 16))
    (local.set $t57 (i32.sub (local.get $t57) (local.get $t58)))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 58))) ;; LF L334
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 148)) (local.get $t54))
    (local.set $t37 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t58 (i32.const 32))
    (local.set $t57 (i32.sub (local.get $t57) (local.get $t58)))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 58))) ;; LF L334
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 152)) (local.get $t54))
    (local.set $t38 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t58 (i32.const 20))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 48))) ;; LF L256
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 188)) (local.get $t54))
    (local.set $t47 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t58 (i32.const 12))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 48))) ;; LF L256
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 192)) (local.get $t54))
    (local.set $t48 (local.get $t54))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t58 (i32.const 4))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 48))) ;; LF L256
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 196)) (local.get $t54))
    (local.set $t49 (local.get $t54))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57)) ;; flush t57 (pre-stack-up)
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t62 (i32.add (global.get $TB) (i32.const 24))) ;; LF L140
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 244)) (local.get $t61))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t62)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 58)))
    (local.set $t58 (call_indirect $ftable (type $bcpl_fn) (local.get $t62)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58)) ;; flush FNAP result
    (local.set $t59 (i32.add (global.get $TB) (i32.const 30))) ;; LF L167
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (local.set $t58 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58)) ;; flush t58 (pre-stack-up)
    (local.set $t62 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t63 (i32.add (global.get $TB) (i32.const 25))) ;; LF L141
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 248)) (local.get $t62))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 244)) (local.get $t63)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 59)))
    (local.set $t59 (call_indirect $ftable (type $bcpl_fn) (local.get $t63)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59)) ;; flush FNAP result
    (local.set $t60 (i32.add (global.get $TB) (i32.const 30))) ;; LF L167
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t60)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 55)))
    (local.set $t55 (call_indirect $ftable (type $bcpl_fn) (local.get $t60)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55)) ;; flush FNAP result
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t57 (i32.const 0))
    (if (i32.lt_s (local.get $t56) (local.get $t57)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2)))) ;; LL L47
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (local.set $t56 (i32.load (i32.shl (local.get $t56) (i32.const 2))))
    ;; RES L380: save result, jump to RSTACK
    (local.set $__res (local.get $t56))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L381 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L381
    (local.set $t56 (i32.const 0))
    ;; RES L380: save result, jump to RSTACK
    (local.set $__res (local.get $t56))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L380 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L380
    ;; RSTACK 56
    (local.set $t56 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t56))
    (local.set $t50 (local.get $t56))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220))))
    (local.set $t57 (i32.const 0))
    (if (i32.lt_s (local.get $t56) (local.get $t57)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220))))
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2)))) ;; LL L47
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (local.set $t56 (i32.load (i32.shl (local.get $t56) (i32.const 2))))
    ;; RES L382: save result, jump to RSTACK
    (local.set $__res (local.get $t56))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L383 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L383
    (local.set $t56 (i32.const 0))
    ;; RES L382: save result, jump to RSTACK
    (local.set $__res (local.get $t56))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L382 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L382
    ;; RSTACK 56
    (local.set $t56 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (local.get $t56))
    (local.set $t51 (local.get $t56))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124))))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55)) ;; STORE slot 55
      (local.set $__lab (i32.const 65)) (br $__dispatch) ;; JUMP L385
    )) ;; end block / LAB L384 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L384
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t56 (i32.sub (local.get $t56) (local.get $t57)))
    (local.set $t57 (i32.const 1024))
    (local.set $t56 (i32.mul (local.get $t56) (local.get $t57)))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140))))
    (local.set $t56 (i32.div_s (local.get $t56) (local.get $t57)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56)) ;; STORE slot 56
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136))))
    (local.set $t58 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132))))
    (local.set $t57 (i32.sub (local.get $t57) (local.get $t58)))
    (local.set $t58 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224))))
    (local.set $t57 (i32.mul (local.get $t57) (local.get $t58)))
    (local.set $t58 (i32.const 1024))
    (local.set $t57 (i32.div_s (local.get $t57) (local.get $t58)))
    (local.set $t58 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132))))
    (local.set $t57 (i32.add (local.get $t57) (local.get $t58)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57)) ;; STORE slot 57
    (local.set $t58 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58)) ;; STORE slot 58
    (local.set $t59 (i32.const 0))
    (local.set $t60 (i32.const 0))
    (local.set $t61 (i32.const 0))
    (local.set $t62 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59)) ;; STORE slot 59
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60)) ;; STORE slot 60
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 244)) (local.get $t61)) ;; STORE slot 61
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 248)) (local.get $t62)) ;; STORE slot 62
    (local.set $t63 (i32.const 0))
    (local.set $t64 (i32.const 0))
    (local.set $t65 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 252)) (local.get $t63)) ;; STORE slot 63
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 256)) (local.get $t64)) ;; STORE slot 64
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 260)) (local.get $t65)) ;; STORE slot 65
    (local.set $t66 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228))))
    (local.set $t67 (i32.const 0))
    (if (i32.le_s (local.get $t66) (local.get $t67)) (then
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    ))
    (local.set $t66 (i32.const 1048576))
    (local.set $t67 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228))))
    (local.set $t66 (i32.div_s (local.get $t66) (local.get $t67)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t66))
    (local.set $t58 (local.get $t66))
    (local.set $t69 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t70 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t71 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (local.get $t71)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 66)))
    (local.set $t66 (call_indirect $ftable (type $bcpl_fn) (local.get $t71)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (local.get $t66)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t66))
    (local.set $t59 (local.get $t66))
    (local.set $t69 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t70 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t71 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (local.get $t71)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 66)))
    (local.set $t66 (call_indirect $ftable (type $bcpl_fn) (local.get $t71)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (local.get $t66)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t66))
    (local.set $t60 (local.get $t66))
    (local.set $t66 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t67 (i32.const 480))
    (local.set $t66 (i32.sub (local.get $t66) (local.get $t67)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (local.get $t66)) ;; STORE slot 66
    (local.set $t67 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 40)) (i32.const 2)))) ;; LL L50
    (local.set $t68 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264))))
    (local.set $t67 (i32.mul (local.get $t67) (local.get $t68)))
    (local.set $t68 (i32.const 480))
    (local.set $t67 (i32.div_s (local.get $t67) (local.get $t68)))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 38)) (i32.const 2)))) ;; LL L48
    (local.set $t67 (i32.add (local.get $t67) (local.get $t68)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268)) (local.get $t67)) ;; STORE slot 67
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 41)) (i32.const 2)))) ;; LL L51
    (local.set $t69 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264))))
    (local.set $t68 (i32.mul (local.get $t68) (local.get $t69)))
    (local.set $t69 (i32.const 480))
    (local.set $t68 (i32.div_s (local.get $t68) (local.get $t69)))
    (local.set $t69 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 39)) (i32.const 2)))) ;; LL L49
    (local.set $t68 (i32.add (local.get $t68) (local.get $t69)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (local.get $t68)) ;; STORE slot 68
    (local.set $t69 (i32.const 65535))
    (local.set $t70 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268))))
    (local.set $t69 (i32.and (local.get $t69) (local.get $t70)))
    (local.set $t70 (i32.const 65535))
    (local.set $t71 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272))))
    (local.set $t70 (i32.and (local.get $t70) (local.get $t71)))
    (local.set $t71 (i32.const 16))
    (local.set $t70 (i32.shl (local.get $t70) (local.get $t71)))
    (local.set $t69 (i32.or (local.get $t69) (local.get $t70)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276)) (local.get $t69)) ;; STORE slot 69
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t75 (i32.add (global.get $TB) (i32.const 59))) ;; LF L337
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t73))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t74))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t75)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 70)))
    (local.set $t70 (call_indirect $ftable (type $bcpl_fn) (local.get $t75)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (local.get $t70)) ;; flush FNAP result
    (local.set $t74 (i32.const 88))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t74))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t76)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 71)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t76)))
    (local.set $t71 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t72 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t71 (i32.add (local.get $t71) (local.get $t72)))
    (local.set $t71 (i32.load (i32.shl (local.get $t71) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t71)) ;; STORE slot 71
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236))))
    (if (i32.ge_s (local.get $t73) (local.get $t74)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236))))
    (local.set $t74 (i32.const 1))
    (local.set $t73 (i32.sub (local.get $t73) (local.get $t74)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t78 (i32.add (global.get $TB) (i32.const 27))) ;; LF L149
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t78)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (local.set $t74 (call_indirect $ftable (type $bcpl_fn) (local.get $t78)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t74)) ;; flush FNAP result
    (local.set $t75 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 53)) (i32.const 2)))) ;; LL L63
    (local.set $t74 (i32.and (local.get $t74) (local.get $t75)))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (if (i32.le_s (local.get $t75) (local.get $t76)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t75))
    (local.set $t73 (local.get $t75))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L388 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L388
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (if (i32.gt_s (local.get $t75) (local.get $t76)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    ))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296))))
    (if (i32.eqz (local.get $t75)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
    (local.set $t75 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t76 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t75 (i32.mul (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.const 2048))
    (local.set $t75 (i32.div_s (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t76 (i32.mul (local.get $t76) (local.get $t77)))
    (local.set $t77 (i32.const 960))
    (local.set $t76 (i32.div_s (local.get $t76) (local.get $t77)))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t75 (i32.rem_s (local.get $t75) (local.get $t76)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75)) ;; STORE slot 75
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (local.set $t77 (i32.const 0))
    (if (i32.ge_s (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
    (local.set $t76 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t76))
    (local.set $t75 (local.get $t76))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L393 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L393
    (local.set $t79 (i32.const 88))
    (local.set $t80 (i32.const 255))
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t81)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 76)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t81)))
    (local.set $t79 (i32.const 89))
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t83 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (local.set $t84 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t84)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 76)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t84)))
      (local.set $__lab (i32.const 28)) (br $__dispatch) ;; JUMP L392
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L390 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L390
    (local.set $t75 (i32.const 0))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204))))
    (if (i32.eq  (local.get $t75) (local.get $t76)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    (local.set $t78 (i32.const 87))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t82 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 34)) (i32.const 2)))) ;; LL L44
    (local.set $t83 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t82 (i32.sub (local.get $t82) (local.get $t83)))
    (local.set $t83 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t84 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t85 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276))))
    (local.set $t86 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204))))
    (local.set $t87 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 336)) (local.get $t84))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 340)) (local.get $t85))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 344)) (local.get $t86))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t87)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 75)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t87)))
      (local.set $__lab (i32.const 27)) (br $__dispatch) ;; JUMP L396
    )) ;; end block / LAB L394 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L394
    (local.set $t78 (i32.const 66))
    (local.set $t79 (i32.const 29))
    (local.set $t80 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t83 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t84 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 29)) (i32.const 2)))) ;; LL L39
    (local.set $t85 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 336)) (local.get $t84))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t85)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 75)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t85)))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L396 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L396
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L392 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L392
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L389 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L389
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t77 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (i32.store (i32.shl (local.get $t76) (i32.const 2)) (local.get $t75))
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L387 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L387
    (local.set $t71 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t72 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t71 (i32.add (local.get $t71) (local.get $t72)))
    (local.set $t71 (i32.load (i32.shl (local.get $t71) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t71)) ;; STORE slot 71
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240))))
    (if (i32.le_s (local.get $t73) (local.get $t74)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    ))
    (local.set $t73 (i32.const 1))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (if (i32.ge_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t74))
    (local.set $t73 (local.get $t74))
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    )) ;; end block / LAB L398 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L398
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (if (i32.gt_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    ))
    (local.set $t74 (i32.const 0))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (if (i32.eq  (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    ))
    (local.set $t77 (i32.const 87))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t81 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 34)) (i32.const 2)))) ;; LL L44
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t81 (i32.sub (local.get $t81) (local.get $t82)))
    (local.set $t82 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t83 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t84 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276))))
    (local.set $t85 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (local.set $t86 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 336)) (local.get $t84))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 340)) (local.get $t85))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t86)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t86)))
      (local.set $__lab (i32.const 33)) (br $__dispatch) ;; JUMP L402
    )) ;; end block / LAB L400 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L400
    (local.set $t77 (i32.const 66))
    (local.set $t78 (i32.const 29))
    (local.set $t79 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t83 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 30)) (i32.const 2)))) ;; LL L40
    (local.set $t84 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t84)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t84)))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L402 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L402
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    )) ;; end block / LAB L399 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L399
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240))))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t76 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (i32.store (i32.shl (local.get $t75) (i32.const 2)) (local.get $t74))
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    )) ;; end block / LAB L397 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L397
    (local.set $t66 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t67 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t66 (i32.add (local.get $t66) (local.get $t67)))
    (local.set $t66 (i32.load (i32.shl (local.get $t66) (i32.const 2))))
    (local.set $t67 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t67 (i32.add (local.get $t67) (local.get $t68)))
    (local.set $t67 (i32.load (i32.shl (local.get $t67) (i32.const 2))))
    (if (i32.le_s (local.get $t66) (local.get $t67)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    (local.set $t69 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t70 (i32.add (global.get $TB) (i32.const 61))) ;; LF L343
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (local.get $t70)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 66)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t70)))
      (local.set $__lab (i32.const 64)) (br $__dispatch) ;; JUMP L386
    )) ;; end block / LAB L403 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L403
    (local.set $t66 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t67 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 42)) (i32.const 2)))) ;; LL L52
    (local.set $t67 (i32.add (local.get $t67) (local.get $t68)))
    (local.set $t67 (i32.load (i32.shl (local.get $t67) (i32.const 2))))
    (if (i32.ge_s (local.get $t66) (local.get $t67)) (then
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    ))
    (local.set $t66 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t67 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 42)) (i32.const 2)))) ;; LL L52
    (local.set $t67 (i32.add (local.get $t67) (local.get $t68)))
    (i32.store (i32.shl (local.get $t67) (i32.const 2)) (local.get $t66))
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    )) ;; end block / LAB L404 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L404
    (local.set $t66 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t67 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t66 (i32.sub (local.get $t66) (local.get $t67)))
    (local.set $t67 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 176))))
    (local.set $t66 (i32.mul (local.get $t66) (local.get $t67)))
    (local.set $t67 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 168))))
    (local.set $t66 (i32.add (local.get $t66) (local.get $t67)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 252)) (local.get $t66))
    (local.set $t63 (local.get $t66))
    (local.set $t66 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 252))))
    (local.set $t67 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228))))
    (local.set $t66 (i32.div_s (local.get $t66) (local.get $t67)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 256)) (local.get $t66))
    (local.set $t64 (local.get $t66))
    (local.set $t66 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 180))))
    (local.set $t67 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 256))))
    (local.set $t66 (i32.add (local.get $t66) (local.get $t67)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 260)) (local.get $t66))
    (local.set $t65 (local.get $t66))
    (local.set $t66 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (if (i32.eqz (local.get $t66)) (then
      (local.set $__lab (i32.const 59)) (br $__dispatch)
    ))
    (local.set $t66 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (local.get $t66)) ;; STORE slot 66
    (local.set $t67 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268)) (local.get $t67)) ;; STORE slot 67
    (local.set $t68 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (local.get $t68)) ;; STORE slot 68
    (local.set $t69 (i32.const 0))
    (local.set $t70 (i32.const 0))
    (local.set $t71 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276)) (local.get $t69)) ;; STORE slot 69
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (local.get $t70)) ;; STORE slot 70
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t71)) ;; STORE slot 71
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 248)) (local.get $t72))
    (local.set $t62 (local.get $t72))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 244)) (local.get $t72))
    (local.set $t61 (local.get $t72))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 196))))
    (local.set $t73 (i32.const 0))
    (if (i32.lt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 38)) (br $__dispatch)
    ))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 196))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276)) (local.get $t72))
    (local.set $t69 (local.get $t72))
      (local.set $__lab (i32.const 38)) (br $__dispatch)
    )) ;; end block / LAB L408 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L408
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 192))))
    (local.set $t73 (i32.const 0))
    (if (i32.lt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 192))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (local.get $t72))
    (local.set $t70 (local.get $t72))
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    )) ;; end block / LAB L409 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L409
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 188))))
    (local.set $t73 (i32.const 0))
    (if (i32.lt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    ))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 188))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t72))
    (local.set $t71 (local.get $t72))
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    )) ;; end block / LAB L410 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L410
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208))))
    (if (i32.eqz (local.get $t72)) (then
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    ))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (local.get $t72))
    (local.set $t66 (local.get $t72))
      (local.set $__lab (i32.const 42)) (br $__dispatch) ;; JUMP L413
    )) ;; end block / LAB L411 = idx 41
    (if (i32.eq (local.get $__lab) (i32.const 41)) (then ;; L411
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (local.get $t72))
    (local.set $t66 (local.get $t72))
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    )) ;; end block / LAB L413 = idx 42
    (if (i32.eq (local.get $__lab) (i32.const 42)) (then ;; L413
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212))))
    (if (i32.eqz (local.get $t72)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    ))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268)) (local.get $t72))
    (local.set $t67 (local.get $t72))
      (local.set $__lab (i32.const 44)) (br $__dispatch) ;; JUMP L416
    )) ;; end block / LAB L414 = idx 43
    (if (i32.eq (local.get $__lab) (i32.const 43)) (then ;; L414
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268)) (local.get $t72))
    (local.set $t67 (local.get $t72))
      (local.set $__lab (i32.const 44)) (br $__dispatch)
    )) ;; end block / LAB L416 = idx 44
    (if (i32.eq (local.get $__lab) (i32.const 44)) (then ;; L416
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212))))
    (if (i32.eqz (local.get $t72)) (then
      (local.set $__lab (i32.const 45)) (br $__dispatch)
    ))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (local.get $t72))
    (local.set $t68 (local.get $t72))
      (local.set $__lab (i32.const 46)) (br $__dispatch) ;; JUMP L419
    )) ;; end block / LAB L417 = idx 45
    (if (i32.eq (local.get $__lab) (i32.const 45)) (then ;; L417
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184))))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t77 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (local.set $t72 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (local.get $t72))
    (local.set $t68 (local.get $t72))
      (local.set $__lab (i32.const 46)) (br $__dispatch)
    )) ;; end block / LAB L419 = idx 46
    (if (i32.eq (local.get $__lab) (i32.const 46)) (then ;; L419
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (if (i32.ge_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    ))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236))))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 248))))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264))))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 260))))
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 196))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 152))))
    (local.set $t83 (i32.add (global.get $TB) (i32.const 64))) ;; LF L351
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t83)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t83)))
    (local.set $t72 (i32.const 1))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 248))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t73 (i32.load (i32.shl (local.get $t73) (i32.const 2))))
    (if (i32.le_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 47)) (br $__dispatch)
    ))
    (local.set $t72 (i32.const 1))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 248))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.shl (local.get $t73) (i32.const 2)) (local.get $t72))
      (local.set $__lab (i32.const 47)) (br $__dispatch)
    )) ;; end block / LAB L421 = idx 47
    (if (i32.eq (local.get $__lab) (i32.const 47)) (then ;; L421
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t73 (i32.load (i32.shl (local.get $t73) (i32.const 2))))
    (if (i32.le_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 48)) (br $__dispatch)
    ))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t76 (i32.add (global.get $TB) (i32.const 61))) ;; LF L343
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t76)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t76)))
      (local.set $__lab (i32.const 48)) (br $__dispatch)
    )) ;; end block / LAB L422 = idx 48
    (if (i32.eq (local.get $__lab) (i32.const 48)) (then ;; L422
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    )) ;; end block / LAB L420 = idx 49
    (if (i32.eq (local.get $__lab) (i32.const 49)) (then ;; L420
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (if (i32.le_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 52)) (br $__dispatch)
    ))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 244))))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240))))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268))))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 260))))
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 192))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 148))))
    (local.set $t83 (i32.add (global.get $TB) (i32.const 64))) ;; LF L351
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t83)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t83)))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 244))))
    (local.set $t73 (i32.const 1))
    (local.set $t72 (i32.sub (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t73 (i32.load (i32.shl (local.get $t73) (i32.const 2))))
    (if (i32.ge_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    ))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 244))))
    (local.set $t73 (i32.const 1))
    (local.set $t72 (i32.sub (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.shl (local.get $t73) (i32.const 2)) (local.get $t72))
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    )) ;; end block / LAB L424 = idx 50
    (if (i32.eq (local.get $__lab) (i32.const 50)) (then ;; L424
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t73 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t72 (i32.load (i32.shl (local.get $t72) (i32.const 2))))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t74 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t73 (i32.load (i32.shl (local.get $t73) (i32.const 2))))
    (if (i32.le_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 51)) (br $__dispatch)
    ))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t76 (i32.add (global.get $TB) (i32.const 61))) ;; LF L343
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t76)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t76)))
      (local.set $__lab (i32.const 51)) (br $__dispatch)
    )) ;; end block / LAB L425 = idx 51
    (if (i32.eq (local.get $__lab) (i32.const 51)) (then ;; L425
      (local.set $__lab (i32.const 52)) (br $__dispatch)
    )) ;; end block / LAB L423 = idx 52
    (if (i32.eq (local.get $__lab) (i32.const 52)) (then ;; L423
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 188))))
    (local.set $t73 (i32.const 0))
    (if (i32.lt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 58)) (br $__dispatch)
    ))
    (local.set $t72 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    (local.set $t73 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    (local.set $t74 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t74)) ;; STORE slot 74
    (local.set $t75 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75)) ;; STORE slot 75
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t77 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (local.set $t76 (i32.load (i32.shl (local.get $t76) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76)) ;; STORE slot 76
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t78 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t77 (i32.add (local.get $t77) (local.get $t78)))
    (local.set $t77 (i32.load (i32.shl (local.get $t77) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t77)) ;; STORE slot 77
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212))))
    (if (i32.eqz (local.get $t78)) (then
      (local.set $__lab (i32.const 53)) (br $__dispatch)
    ))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t78 (i32.add (local.get $t78) (local.get $t79)))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184))))
    (local.set $t78 (i32.sub (local.get $t78) (local.get $t79)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t78))
    (local.set $t72 (local.get $t78))
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L429
    )) ;; end block / LAB L427 = idx 53
    (if (i32.eq (local.get $__lab) (i32.const 53)) (then ;; L427
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184))))
    (local.set $t78 (i32.sub (local.get $t78) (local.get $t79)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t78))
    (local.set $t72 (local.get $t78))
      (local.set $__lab (i32.const 54)) (br $__dispatch)
    )) ;; end block / LAB L429 = idx 54
    (if (i32.eq (local.get $__lab) (i32.const 54)) (then ;; L429
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t78 (i32.sub (local.get $t78) (local.get $t79)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t78))
    (local.set $t73 (local.get $t78))
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t83 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t83)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 78)))
    (local.set $t78 (call_indirect $ftable (type $bcpl_fn) (local.get $t83)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t78))
    (local.set $t74 (local.get $t78))
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t83 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t83)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 78)))
    (local.set $t78 (call_indirect $ftable (type $bcpl_fn) (local.get $t83)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t78))
    (local.set $t75 (local.get $t78))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296))))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304))))
    (if (i32.le_s (local.get $t78) (local.get $t79)) (then
      (local.set $__lab (i32.const 55)) (br $__dispatch)
    ))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t78))
    (local.set $t76 (local.get $t78))
      (local.set $__lab (i32.const 55)) (br $__dispatch)
    )) ;; end block / LAB L430 = idx 55
    (if (i32.eq (local.get $__lab) (i32.const 55)) (then ;; L430
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308))))
    (if (i32.ge_s (local.get $t78) (local.get $t79)) (then
      (local.set $__lab (i32.const 56)) (br $__dispatch)
    ))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t78))
    (local.set $t77 (local.get $t78))
      (local.set $__lab (i32.const 56)) (br $__dispatch)
    )) ;; end block / LAB L431 = idx 56
    (if (i32.eq (local.get $__lab) (i32.const 56)) (then ;; L431
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304))))
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308))))
    (if (i32.gt_s (local.get $t78) (local.get $t79)) (then
      (local.set $__lab (i32.const 57)) (br $__dispatch)
    ))
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304))))
    (local.set $t83 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308))))
    (local.set $t84 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272))))
    (local.set $t85 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t86 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 260))))
    (local.set $t87 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 188))))
    (local.set $t88 (i32.add (global.get $TB) (i32.const 65))) ;; LF L356
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 328)) (local.get $t82))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 332)) (local.get $t83))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 336)) (local.get $t84))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 340)) (local.get $t85))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 344)) (local.get $t86))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 348)) (local.get $t87))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t88)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 78)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t88)))
      (local.set $__lab (i32.const 63)) (br $__dispatch) ;; JUMP L407
    )) ;; end block / LAB L432 = idx 57
    (if (i32.eq (local.get $__lab) (i32.const 57)) (then ;; L432
      (local.set $__lab (i32.const 63)) (br $__dispatch) ;; JUMP L407
      (local.set $__lab (i32.const 58)) (br $__dispatch)
    )) ;; end block / LAB L426 = idx 58
    (if (i32.eq (local.get $__lab) (i32.const 58)) (then ;; L426
      (local.set $__lab (i32.const 63)) (br $__dispatch) ;; JUMP L407
      (local.set $__lab (i32.const 59)) (br $__dispatch)
    )) ;; end block / LAB L405 = idx 59
    (if (i32.eq (local.get $__lab) (i32.const 59)) (then ;; L405
    (local.set $t66 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (local.get $t66)) ;; STORE slot 66
    (local.set $t67 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268)) (local.get $t67)) ;; STORE slot 67
    (local.set $t68 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 188))))
    (local.set $t69 (i32.const 0))
    (if (i32.lt_s (local.get $t68) (local.get $t69)) (then
      (local.set $__lab (i32.const 60)) (br $__dispatch)
    ))
    (local.set $t68 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 188))))
    (local.set $t69 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t68 (i32.add (local.get $t68) (local.get $t69)))
    (local.set $t68 (i32.load (i32.shl (local.get $t68) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264)) (local.get $t68))
    (local.set $t66 (local.get $t68))
      (local.set $__lab (i32.const 60)) (br $__dispatch)
    )) ;; end block / LAB L433 = idx 60
    (if (i32.eq (local.get $__lab) (i32.const 60)) (then ;; L433
    (local.set $t68 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212))))
    (if (i32.eqz (local.get $t68)) (then
      (local.set $__lab (i32.const 61)) (br $__dispatch)
    ))
    (local.set $t71 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 264))))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t71 (i32.add (local.get $t71) (local.get $t72)))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184))))
    (local.set $t71 (i32.sub (local.get $t71) (local.get $t72)))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t73 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (local.get $t73)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 68)))
    (local.set $t68 (call_indirect $ftable (type $bcpl_fn) (local.get $t73)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (local.get $t68)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268)) (local.get $t68))
    (local.set $t67 (local.get $t68))
      (local.set $__lab (i32.const 62)) (br $__dispatch) ;; JUMP L436
    )) ;; end block / LAB L434 = idx 61
    (if (i32.eq (local.get $__lab) (i32.const 61)) (then ;; L434
    (local.set $t71 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 184))))
    (local.set $t71 (i32.sub (local.get $t71) (local.get $t72)))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t73 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (local.get $t73)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 68)))
    (local.set $t68 (call_indirect $ftable (type $bcpl_fn) (local.get $t73)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (local.get $t68)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268)) (local.get $t68))
    (local.set $t67 (local.get $t68))
      (local.set $__lab (i32.const 62)) (br $__dispatch)
    )) ;; end block / LAB L436 = idx 62
    (if (i32.eq (local.get $__lab) (i32.const 62)) (then ;; L436
    (local.set $t71 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236))))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240))))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 268))))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 260))))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 188))))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144))))
    (local.set $t79 (i32.add (global.get $TB) (i32.const 64))) ;; LF L351
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t73))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t74))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (local.get $t79)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 68)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t79)))
    (local.set $t71 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t72 (i32.add (global.get $TB) (i32.const 61))) ;; LF L343
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 272)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 276)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 280)) (local.get $t72)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 68)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t72)))
      (local.set $__lab (i32.const 63)) (br $__dispatch)
    )) ;; end block / LAB L407 = idx 63
    (if (i32.eq (local.get $__lab) (i32.const 63)) (then ;; L407
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    )) ;; end block / LAB L386 = idx 64
    (if (i32.eq (local.get $__lab) (i32.const 64)) (then ;; L386
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t57 (i32.const 1))
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t56))
    (local.set $t54 (local.get $t56))
      (local.set $__lab (i32.const 65)) (br $__dispatch)
    )) ;; end block / LAB L385 = idx 65
    (if (i32.eq (local.get $__lab) (i32.const 65)) (then ;; L385
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216))))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220))))
    (if (i32.le_s (local.get $t56) (local.get $t57)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L361

  ;; BCPL fn render_subsector (L437)
  (func $fn_L437 (export "fn_L437") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.const 4))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2)))) ;; LL L23
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L439
    )) ;; end block / LAB L438 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L438
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2)))) ;; LL L38
    (local.set $t10 (i32.const 0))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L440 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L440
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 12))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 66))) ;; LF L361
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L439 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L439
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L437

  ;; BCPL fn render_node (L441)
  (func $fn_L441 (export "fn_L441") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2)))) ;; LL L38
    (local.set $t5 (i32.const 0))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L442 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L442
    (local.set $t4 (i32.const 32768))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t4 (i32.and (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.const 0))
    (if (i32.eq  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t7 (i32.const -32769))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 67))) ;; LF L437
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L443 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L443
    (local.set $t4 (i32.const 28))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 32))) ;; LF L172
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 24))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 26))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 68))) ;; LF L441
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 68))) ;; LF L441
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L444 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L444
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 68))) ;; LF L441
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 68))) ;; LF L441
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L441

  ;; BCPL fn fill_remaining (L445)
  (func $fn_L445 (export "fn_L445") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 959))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L447
    )) ;; end block / LAB L446 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L446
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (if (i32.gt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.const 360))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9 (i32.const 360))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const 359))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L450 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L450
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 53)) (i32.const 2)))) ;; LL L63
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 2048))
    (local.set $t8 (i32.div_s (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.const 960))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t8 (i32.rem_s (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t10 (i32.const 0))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L454 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L454
    (local.set $t12 (i32.const 88))
    (local.set $t13 (i32.const 255))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $t12 (i32.const 89))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
      (local.set $__lab (i32.const 5)) (br $__dispatch) ;; JUMP L453
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L451 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L451
    (local.set $t11 (i32.const 66))
    (local.set $t12 (i32.const 29))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 29)) (i32.const 2)))) ;; LL L39
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L453 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L453
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L449 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L449
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 360))
    (if (i32.lt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9 (i32.const 360))
    (if (i32.ge_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const 360))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L456 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L456
    (local.set $t11 (i32.const 66))
    (local.set $t12 (i32.const 29))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 30)) (i32.const 2)))) ;; LL L40
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L455 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L455
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L448 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L448
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L447 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L447
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L445

  ;; BCPL fn draw_sprite (L457)
  (func $fn_L457 (export "fn_L457") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (local.set $t15 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (local.set $t16 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    (local.set $t26 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t29 (i32.const 0))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L458 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L458
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t28))
    (local.set $t7 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t28))
    (local.set $t8 (local.get $t28))
    (local.set $t28 (i32.const 8191))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t28 (i32.and (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 8191))
    (local.set $t30 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t29 (i32.and (local.get $t29) (local.get $t30)))
    (local.set $t30 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (local.set $t29 (i32.load (i32.shl (local.get $t29) (i32.const 2))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t29 (i32.mul (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t28))
    (local.set $t9 (local.get $t28))
    (local.set $t28 (i32.const 8191))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t28 (i32.and (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 8191))
    (local.set $t30 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t29 (i32.and (local.get $t29) (local.get $t30)))
    (local.set $t30 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (local.set $t29 (i32.load (i32.shl (local.get $t29) (i32.const 2))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t29 (i32.mul (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t28))
    (local.set $t10 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t29 (i32.const 4))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L459 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L459
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 46)) (i32.const 2)))) ;; LL L56
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t28))
    (local.set $t11 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 47)) (i32.const 2)))) ;; LL L57
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t28))
    (local.set $t12 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 48)) (i32.const 2)))) ;; LL L58
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t28))
    (local.set $t13 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 49)) (i32.const 2)))) ;; LL L59
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t28))
    (local.set $t14 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 45)) (i32.const 2)))) ;; LL L55
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t28))
    (local.set $t15 (local.get $t28))
    (local.set $t28 (i32.const 491520))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t28))
    (local.set $t16 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t28))
    (local.set $t17 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t28))
    (local.set $t18 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t29 (i32.const 0))
    (if (i32.le_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t29 (i32.const 0))
    (if (i32.gt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L461 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L461
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L460 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L460
    (local.set $t28 (i32.const 480))
    (local.set $t29 (i32.const 480))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t29 (i32.mul (local.get $t29) (local.get $t30)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t29 (i32.div_s (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t28))
    (local.set $t19 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t29 (i32.mul (local.get $t29) (local.get $t30)))
    (local.set $t30 (i32.const 1024))
    (local.set $t29 (i32.div_s (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t28))
    (local.set $t20 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t28))
    (local.set $t21 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t29 (i32.const 960))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L463 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L463
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L462 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L462
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t28))
    (local.set $t23 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t28))
    (local.set $t22 (local.get $t28))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t28))
    (local.set $t24 (local.get $t28))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 63))) ;; LF L350
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t28))
    (local.set $t25 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (if (i32.gt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L464 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L464
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 65536))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
    (local.set $t28 (i32.const 65535))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t28 (i32.and (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t30 (i32.const 16))
    (local.set $t29 (i32.shl (local.get $t29) (local.get $t30)))
    (local.set $t28 (i32.or (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t28))
    (local.set $t27 (local.get $t28))
    (local.set $t31 (i32.const 88))
    (local.set $t32 (i32.const 255))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.const 0))
    (if (i32.ge_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t30 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L465 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L465
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t31 (i32.const 960))
    (if (i32.lt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    (local.set $t30 (i32.const 959))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30))
    (local.set $t29 (local.get $t30))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L466 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L466
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
      (local.set $__lab (i32.const 12)) (br $__dispatch) ;; JUMP L468
    )) ;; end block / LAB L467 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L467
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t32 (i32.sub (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t32 (i32.div_s (local.get $t32) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (local.set $t34 (i32.const 0))
    (if (i32.lt_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (if (i32.ge_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t35 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 42)) (i32.const 2)))) ;; LL L52
    (local.set $t34 (i32.add (local.get $t34) (local.get $t35)))
    (local.set $t34 (i32.load (i32.shl (local.get $t34) (i32.const 2))))
    (if (i32.ge_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t36 (i32.const 86))
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t38 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t39 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t40 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t41 (i32.const 0))
    (local.set $t42 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t41 (i32.sub (local.get $t41) (local.get $t42)))
    (local.set $t42 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (local.set $t43 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t44 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t45 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 152)) (local.get $t38))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 156)) (local.get $t39))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 164)) (local.get $t41))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 168)) (local.get $t42))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 172)) (local.get $t43))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 176)) (local.get $t44))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t45)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 33)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t45)))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L469 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L469
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t33 (i32.const 1))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32))
    (local.set $t30 (local.get $t32))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L468 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L468
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124))))
    (if (i32.le_s (local.get $t32) (local.get $t33)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L457

  ;; BCPL fn draw_sprites (L470)
  (func $fn_L470 (export "fn_L470") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 51)) (i32.const 2)))) ;; LL L61
    (local.set $t4 (i32.const 10))
    (local.set $t3 (i32.div_s (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L472
    )) ;; end block / LAB L471 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L471
    (local.set $t9 (i32.const 10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 50)) (i32.const 2)))) ;; LL L60
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 2))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L86
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 6))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 5))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 53))) ;; LF L294
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t13))
    (local.set $t4 (local.get $t13))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eq  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 52))) ;; LF L292
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t13))
    (local.set $t5 (local.get $t13))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t14 (i32.const 0))
    (if (i32.lt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 35))) ;; LF L184
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (local.set $t13 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t13))
    (local.set $t6 (local.get $t13))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t20 (i32.add (global.get $TB) (i32.const 70))) ;; LF L457
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L473 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L473
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L472 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L472
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L470

  ;; BCPL fn drawframe (L474)
  (func $fn_L474 (export "fn_L474") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t6 (i32.add (global.get $TB) (i32.const 60))) ;; LF L340
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 959))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.gt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L475 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L475
    (local.set $t5 (i32.const 2147483647))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 42)) (i32.const 2)))) ;; LL L52
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L476 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L476
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t8 (i32.add (global.get $TB) (i32.const 35))) ;; LF L184
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t4 (i32.const 41))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 34)) (i32.const 2))
      (local.get $t3))
    (local.set $t3 (i32.const 8191))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (local.set $t3 (i32.load (i32.shl (local.get $t3) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 38)) (i32.const 2))
      (local.get $t3))
    (local.set $t3 (i32.const 8191))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (local.set $t3 (i32.load (i32.shl (local.get $t3) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 39)) (i32.const 2))
      (local.get $t3))
    (local.set $t3 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 39)) (i32.const 2)))) ;; LL L49
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 40)) (i32.const 2))
      (local.get $t3))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 38)) (i32.const 2)))) ;; LL L48
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 41)) (i32.const 2))
      (local.get $t3))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t7 (i32.add (global.get $TB) (i32.const 68))) ;; LF L441
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 69))) ;; LF L445
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 71))) ;; LF L470
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.const 66))
    (local.set $t7 (i32.const 17))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L474

  ;; BCPL fn start (L477)
  (func $fn_L477 (export "fn_L477") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 3))) ;; LF L74
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (if (local.get $t28) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 135))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L478 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L478
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t28))
    (local.set $t8 (local.get $t28))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (local.set $t29 (i32.const 0))
    (if (i32.eq  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 141))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L479 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L479
    (local.set $t28 (i32.const 2))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 4))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 8))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t34 (i32.add (global.get $TB) (i32.const 10))) ;; LF L103
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t28))
    (local.set $t9 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t29 (i32.const 0))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 146))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L480 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L480
    (local.set $t31 (i32.add (global.get $SB) (i32.const 150))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 9))) ;; LF L99
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 152))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L107
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t28))
    (local.set $t10 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 155))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L107
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t28))
    (local.set $t11 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 158))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L107
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t28))
    (local.set $t12 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 161))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L107
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t28))
    (local.set $t13 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 163))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L107
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t28))
    (local.set $t14 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 165))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L107
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t28))
    (local.set $t15 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 168))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L107
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t28))
    (local.set $t16 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 170))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L107
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t36)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t36)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t28))
    (local.set $t17 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t29 (i32.const 0))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L482 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L482
    (local.set $t31 (i32.add (global.get $SB) (i32.const 172))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L481 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L481
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 4))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t30 (i32.const 14))
    (local.set $t29 (i32.div_s (local.get $t29) (local.get $t30)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 52)) (i32.const 2))
      (local.get $t29))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 4))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t28))
    (local.set $t24 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t29 (i32.const 30))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t28))
    (local.set $t25 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t28))
    (local.set $t21 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 4))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t28))
    (local.set $t22 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 50)) (i32.const 2))
      (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 51)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 4))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (local.set $t29 (i32.const 28))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 13))) ;; LF L117
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t28))
    (local.set $t18 (local.get $t28))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L484
    )) ;; end block / LAB L483 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L483
    (local.set $t30 (i32.const 16))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t30 (i32.mul (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 177))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L88
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (local.set $t31 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31)) ;; flush FNAP result
    (if (i32.eqz (local.get $t31)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t31))
    (local.set $t18 (local.get $t31))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L485 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L485
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 179))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L88
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (local.set $t31 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31)) ;; flush FNAP result
    (if (i32.eqz (local.get $t31)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t31))
    (local.set $t19 (local.get $t31))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L486 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L486
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 181))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L88
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (local.set $t31 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31)) ;; flush FNAP result
    (if (i32.eqz (local.get $t31)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t31))
    (local.set $t20 (local.get $t31))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L487 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L487
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L484 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L484
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t29 (i32.const 0))
    (if (i32.lt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (if (i32.eq  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L489 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L489
    (local.set $t31 (i32.add (global.get $SB) (i32.const 184))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L488 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L488
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t28))
    (local.set $t27 (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 18)) (i32.const 2))
      (local.get $t28))
    (local.set $t28 (i32.const 4))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 194))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 18)) (i32.const 2)))) ;; LL L28
    (local.set $t35 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t36 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (local.set $t31 (i32.const 256))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 16)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 256))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 22)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 128))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 128))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 128))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 128))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 36)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 64))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 128))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 44)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 64))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 45)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 64))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 46)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 64))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 47)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 64))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 48)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 64))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 49)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 960))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 42)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 42))) ;; LF L221
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t31 (i32.const 8192))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 8192))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.add (global.get $TB) (i32.const 16))) ;; LF L127
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $t31 (i32.const 960))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 960))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 39))) ;; LF L204
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (if (local.get $t28) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 207))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
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
    )) ;; end block / LAB L490 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L490
    (local.set $t31 (i32.add (global.get $SB) (i32.const 212))) ;; LSTR
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t35)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t35)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 54))) ;; LF L328
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t28 (i32.add (global.get $P) (i32.const 29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush t28 (pre-stack-up)
    (local.set $t32 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    (local.set $t33 (i32.const 0))
    (local.set $t34 (i32.const 7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33)) ;; STORE slot 33
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34)) ;; STORE slot 34
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132))))
    (local.set $t36 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136))))
    (if (i32.gt_s (local.get $t35) (local.get $t36)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L491 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L491
    (local.set $t35 (i32.const 0))
    (local.set $t36 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132))))
    (i32.store8 (i32.add (i32.shl (local.get $t36) (i32.const 2)) (local.get $t37)) (local.get $t35))
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132))))
    (local.set $t36 (i32.const 1))
    (local.set $t35 (i32.add (local.get $t35) (local.get $t36)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t35))
    (local.set $t33 (local.get $t35))
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132))))
    (local.set $t36 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136))))
    (if (i32.le_s (local.get $t35) (local.get $t36)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L492 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L492
    (local.set $t33 (i32.const 83))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t35 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t34) (i32.const 2)) (local.get $t35)) (local.get $t33))
    (local.set $t33 (i32.const 75))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t35 (i32.const 1))
    (i32.store8 (i32.add (i32.shl (local.get $t34) (i32.const 2)) (local.get $t35)) (local.get $t33))
    (local.set $t33 (i32.const 89))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t35 (i32.const 2))
    (i32.store8 (i32.add (i32.shl (local.get $t34) (i32.const 2)) (local.get $t35)) (local.get $t33))
    (local.set $t33 (i32.const 49))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t35 (i32.const 3))
    (i32.store8 (i32.add (i32.shl (local.get $t34) (i32.const 2)) (local.get $t35)) (local.get $t33))
    (local.set $t36 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t37 (i32.const 0))
    (local.set $t38 (i32.add (global.get $TB) (i32.const 47))) ;; LF L241
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t38)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 33)))
    (local.set $t33 (call_indirect $ftable (type $bcpl_fn) (local.get $t38)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t33))
    (local.set $t32 (local.get $t33))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (local.set $t34 (i32.const 0))
    (if (i32.lt_s (local.get $t33) (local.get $t34)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const -1))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 53)) (i32.const 2))
      (local.get $t33))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t33 (i32.add (local.get $t33) (local.get $t34)))
    (local.set $t33 (i32.load (i32.shl (local.get $t33) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2))
      (local.get $t33))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t33 (i32.add (local.get $t33) (local.get $t34)))
    (local.set $t33 (i32.load (i32.shl (local.get $t33) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 55)) (i32.const 2))
      (local.get $t33))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t33 (i32.add (local.get $t33) (local.get $t34)))
    (local.set $t33 (i32.load (i32.shl (local.get $t33) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 56)) (i32.const 2))
      (local.get $t33))
    (local.set $t36 (i32.const 83))
    (local.set $t37 (i32.const 0))
    (local.set $t38 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 56)) (i32.const 2)))) ;; LL L66
    (local.set $t39 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t40 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 55)) (i32.const 2)))) ;; LL L65
    (local.set $t41 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 152)) (local.get $t38))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 156)) (local.get $t39))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 33)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 221))) ;; LSTR
    (local.set $t37 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 54)) (i32.const 2)))) ;; LL L64
    (local.set $t38 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 55)) (i32.const 2)))) ;; LL L65
    (local.set $t39 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 56)) (i32.const 2)))) ;; LL L66
    (local.set $t40 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 152)) (local.get $t38))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 156)) (local.get $t39))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t40)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 33)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t40)))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L493 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L493
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 4))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t30 (i32.const 26))
    (local.set $t29 (i32.div_s (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 31))) ;; LF L169
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $t31 (i32.const 66))
    (local.set $t32 (i32.const 1))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $t31 (i32.const 66))
    (local.set $t32 (i32.const 2))
    (local.set $t33 (i32.const 960))
    (local.set $t34 (i32.const 720))
    (local.set $t35 (i32.const 0))
    (local.set $t36 (i32.const 0))
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 66))
    (local.set $t32 (i32.const 26))
    (local.set $t33 (i32.const 0))
    (local.set $t34 (i32.const 60))
    (local.set $t35 (i32.const 110))
    (local.set $t36 (i32.const 180))
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 29)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 66))
    (local.set $t32 (i32.const 26))
    (local.set $t33 (i32.const 0))
    (local.set $t34 (i32.const 40))
    (local.set $t35 (i32.const 40))
    (local.set $t36 (i32.const 40))
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 30)) (i32.const 2))
      (local.get $t28))
    (local.set $t31 (i32.const 512))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2))
      (local.get $t28))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.const 512))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L494 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L494
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (i32.store (i32.shl (local.get $t31) (i32.const 2)) (local.get $t30))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L495 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L495
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (if (i32.eqz (local.get $t28)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L496 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L496
    (local.set $t28 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (local.set $t29 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t33 (i32.add (global.get $TB) (i32.const 40))) ;; LF L208
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $t33 (i32.const 87))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L219
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 38))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L219
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L499 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L499
    (local.set $t30 (i32.const 1))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L498 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L498
    (local.set $t33 (i32.const 83))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L219
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 40))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L219
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L501 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L501
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.sub (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L500 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L500
    (local.set $t33 (i32.const 65))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L219
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 37))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L219
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L503 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L503
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t31 (i32.const 64))
    (local.set $t30 (i32.sub (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30))
    (local.set $t29 (local.get $t30))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L502 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L502
    (local.set $t33 (i32.const 68))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L219
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    (local.set $t33 (i32.const 39))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 41))) ;; LF L219
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (local.set $t30 (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; flush FNAP result
    (if (i32.eqz (local.get $t30)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    )) ;; end block / LAB L505 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L505
    (local.set $t30 (i32.const 64))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30))
    (local.set $t29 (local.get $t30))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L504 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L504
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    ))
    (local.set $t30 (i32.const 8191))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t30 (i32.and (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (local.set $t30 (i32.load (i32.shl (local.get $t30) (i32.const 2))))
    (local.set $t31 (i32.const 16))
    (local.set $t30 (i32.mul (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t30 (i32.mul (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.const 1024))
    (local.set $t30 (i32.div_s (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (local.set $t31 (i32.const 8191))
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t31 (i32.and (local.get $t31) (local.get $t32)))
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (local.set $t31 (i32.load (i32.shl (local.get $t31) (i32.const 2))))
    (local.set $t32 (i32.const 16))
    (local.set $t31 (i32.mul (local.get $t31) (local.get $t32)))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.mul (local.get $t31) (local.get $t32)))
    (local.set $t32 (i32.const 1024))
    (local.set $t31 (i32.div_s (local.get $t31) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (local.set $t36 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124))))
    (local.set $t37 (i32.add (global.get $TB) (i32.const 38))) ;; LF L200
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 32)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L506 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L506
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    ))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2)))) ;; LL L43
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.const 8191))
    (local.set $t30 (i32.and (local.get $t30) (local.get $t31)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 33)) (i32.const 2))
      (local.get $t30))
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L507 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L507
    (local.set $t33 (i32.add (global.get $TB) (i32.const 72))) ;; LF L474
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $t33 (i32.const 16))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 512))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (if (local.get $t28) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L497 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L497
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 228))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
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
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L477

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L67) (ref.func $fn_L69) (ref.func $fn_L72) (ref.func $fn_L74) (ref.func $fn_L84) (ref.func $fn_L85) (ref.func $fn_L86) (ref.func $fn_L88) (ref.func $fn_L96) (ref.func $fn_L99) (ref.func $fn_L103) (ref.func $fn_L107) (ref.func $fn_L112) (ref.func $fn_L117) (ref.func $fn_L121) (ref.func $fn_L126) (ref.func $fn_L127) (ref.func $fn_L130) (ref.func $fn_L134) (ref.func $fn_L135) (ref.func $fn_L136) (ref.func $fn_L137) (ref.func $fn_L138) (ref.func $fn_L139) (ref.func $fn_L140) (ref.func $fn_L141) (ref.func $fn_L142) (ref.func $fn_L149) (ref.func $fn_L151) (ref.func $fn_L155) (ref.func $fn_L167) (ref.func $fn_L169) (ref.func $fn_L172) (ref.func $fn_L174) (ref.func $fn_L180) (ref.func $fn_L184) (ref.func $fn_L186) (ref.func $fn_L188) (ref.func $fn_L200) (ref.func $fn_L204) (ref.func $fn_L208) (ref.func $fn_L219) (ref.func $fn_L221) (ref.func $fn_L224) (ref.func $fn_L228) (ref.func $fn_L232) (ref.func $fn_L233) (ref.func $fn_L241) (ref.func $fn_L256) (ref.func $fn_L260) (ref.func $fn_L269) (ref.func $fn_L278) (ref.func $fn_L292) (ref.func $fn_L294) (ref.func $fn_L328) (ref.func $fn_L331) (ref.func $fn_L332) (ref.func $fn_L333) (ref.func $fn_L334) (ref.func $fn_L337) (ref.func $fn_L340) (ref.func $fn_L343) (ref.func $fn_L345) (ref.func $fn_L350) (ref.func $fn_L351) (ref.func $fn_L356) (ref.func $fn_L361) (ref.func $fn_L437) (ref.func $fn_L441) (ref.func $fn_L445) (ref.func $fn_L457) (ref.func $fn_L470) (ref.func $fn_L474) (ref.func $fn_L477))

  ;; static data — passive segment (232 words)
  (data $stat "\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\6C\6F\61\64\65\64\20\57\41\44\3A\20\00\00\00\17\63\61\63\68\65\64\20\25\6E\20\75\6E\69\71\75\65\20\66\6C\61\74\73\0A\06\42\41\52\31\41\30\00\06\53\54\49\4D\41\30\00\06\4D\45\44\49\41\30\00\06\42\4F\4E\31\41\30\00\06\42\4F\4E\32\41\30\00\06\41\52\4D\31\41\30\00\06\41\52\4D\32\41\30\00\06\43\4C\49\50\41\30\00\06\41\4D\4D\4F\41\30\00\06\42\52\4F\4B\41\30\00\06\43\45\4C\4C\41\30\00\06\43\45\4C\50\41\30\00\06\53\48\4F\54\41\30\00\06\4D\47\55\4E\41\30\00\06\4C\41\55\4E\41\30\00\06\43\53\41\57\41\30\00\06\50\4C\41\53\41\30\00\06\42\4B\45\59\41\30\00\06\52\4B\45\59\41\30\00\06\59\4B\45\59\41\30\00\06\53\55\49\54\41\30\00\06\50\49\4E\53\41\30\00\06\50\49\4E\56\41\30\00\06\42\50\41\4B\41\30\00\06\54\52\4F\4F\41\31\00\06\53\41\52\47\41\31\00\06\50\4F\53\53\41\31\00\06\53\50\4F\53\41\31\00\06\48\45\41\44\41\31\00\06\53\4B\55\4C\41\31\00\1E\63\6F\6D\70\6F\73\69\74\65\64\20\25\6E\20\75\6E\69\71\75\65\20\74\65\78\74\75\72\65\73\0A\00\17\4E\6F\20\57\41\44\20\61\73\73\65\74\20\75\70\6C\6F\61\64\65\64\2E\0A\13\41\73\73\65\74\20\69\73\20\61\6E\20\69\6D\61\67\65\2E\0A\0F\4E\6F\20\6D\61\70\20\6D\61\72\6B\65\72\2E\0A\05\6D\61\70\3A\20\00\00\08\56\45\52\54\45\58\45\53\00\00\00\08\4C\49\4E\45\44\45\46\53\00\00\00\08\53\49\44\45\44\45\46\53\00\00\00\07\53\45\43\54\4F\52\53\05\4E\4F\44\45\53\00\00\08\53\53\45\43\54\4F\52\53\00\00\00\04\53\45\47\53\00\00\00\06\54\48\49\4E\47\53\00\12\4D\69\73\73\69\6E\67\20\6D\61\70\20\6C\75\6D\70\2E\0A\00\07\50\4C\41\59\50\41\4C\06\50\4E\41\4D\45\53\00\08\54\45\58\54\55\52\45\31\00\00\00\25\4D\69\73\73\69\6E\67\20\50\4C\41\59\50\41\4C\20\2F\20\50\4E\41\4D\45\53\20\2F\20\54\45\58\54\55\52\45\31\2E\0A\00\00\30\50\4C\41\59\50\41\4C\20\40\25\6E\20\20\50\4E\41\4D\45\53\20\40\25\6E\20\28\25\6E\29\20\20\54\45\58\54\55\52\45\31\20\40\25\6E\20\28\25\6E\29\0A\00\00\00\12\4E\6F\20\70\6C\61\79\65\72\31\20\73\74\61\72\74\2E\0A\00\20\70\6C\61\79\65\72\20\73\74\61\72\74\20\20\70\78\3D\25\6E\20\70\79\3D\25\6E\20\70\61\3D\25\6E\0A\00\00\00\19\73\6B\79\3A\20\20\20\20\25\6E\78\25\6E\20\61\74\20\62\61\73\65\20\25\6E\0A\00\00\0C\64\77\6C\74\20\65\78\69\74\65\64\0A\00\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 928))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 74))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 73))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 232))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 74))
)
 ;; end module
