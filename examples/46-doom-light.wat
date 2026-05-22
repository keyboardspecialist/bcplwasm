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

  ;; SECTION: dlig
  ;; BCPL fn lc (L52)
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
      ) ;; close $__case_1 — LAB L53
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
  ) ;; end func $fn_L52

  ;; BCPL fn cp_substr (L54)
  (func $fn_L54 (export "fn_L54") (type $bcpl_fn)
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
    ;; line 0:187
    (global.set $__line (i32.const 187))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:188
    (global.set $__line (i32.const 188))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10)) (local.get $t8))
    ;; line 0:189
    (global.set $__line (i32.const 189))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L56
      ) ;; close $__case_1 — LAB L55
    ;; line 0:190
    (global.set $__line (i32.const 190))
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
      ) ;; close $__case_2 — LAB L56
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
  ) ;; end func $fn_L54

  ;; BCPL fn ends_with_wad (L57)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:193
    (global.set $__line (i32.const 193))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:194
    (global.set $__line (i32.const 194))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 4))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:195
    (global.set $__line (i32.const 195))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L58
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.const 4))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 0))) ;; LF L52
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
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L52
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
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L52
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
    (local.set $t12 (i32.add (global.get $TB) (i32.const 0))) ;; LF L52
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
  ) ;; end func $fn_L57

  ;; BCPL fn try_load_wad (L59)
  (func $fn_L59 (export "fn_L59") (type $bcpl_fn)
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
    ;; line 0:202
    (global.set $__line (i32.const 202))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.add (global.get $P) (i32.const 5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush t4 (pre-stack-up)
    ;; line 0:203
    (global.set $__line (i32.const 203))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.add (global.get $P) (i32.const 71)))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70)) ;; flush t70 (pre-stack-up)
    ;; line 0:204
    (global.set $__line (i32.const 204))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t104 (i32.const 0))
    (local.set $t105 (i32.const 0))
    (local.set $t106 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 416)) (local.get $t104)) ;; STORE slot 104
    (i32.store (i32.add (local.get $Pb) (i32.const 420)) (local.get $t105)) ;; STORE slot 105
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t106)) ;; STORE slot 106
    ;; line 0:205
    (global.set $__line (i32.const 205))
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
    ;; line 0:206
    (global.set $__line (i32.const 206))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t108 (i32.const 0))
    (local.set $t107 (i32.load8_u (i32.add (i32.shl (local.get $t107) (i32.const 2)) (local.get $t108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 416)) (local.get $t107))
    (local.set $t104 (local.get $t107))
    ;; line 0:207
    (global.set $__line (i32.const 207))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 420)) (local.get $t107))
    (local.set $t105 (local.get $t107))
    ;; line 0:208
    (global.set $__line (i32.const 208))
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
      ) ;; close $__case_1 — LAB L60
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L63
      ) ;; close $__case_2 — LAB L62
    (local.set $t107 (i32.const 1))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t107 (i32.add (local.get $t107) (local.get $t108)))
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t107))
    (local.set $t106 (local.get $t107))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L63
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
      ) ;; close $__case_4 — LAB L64
    ;; line 0:210
    (global.set $__line (i32.const 210))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t111 (i32.load (i32.add (local.get $Pb) (i32.const 420))))
    (local.set $t112 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t113 (i32.add (global.get $TB) (i32.const 2))) ;; LF L57
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
    ;; line 0:211
    (global.set $__line (i32.const 211))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t111 (i32.load (i32.add (local.get $Pb) (i32.const 420))))
    (local.set $t112 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t113 (i32.load (i32.add (local.get $Pb) (i32.const 280))))
    (local.set $t114 (i32.add (global.get $TB) (i32.const 1))) ;; LF L54
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
    ;; line 0:212
    (global.set $__line (i32.const 212))
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
    ;; line 0:213
    (global.set $__line (i32.const 213))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t110 (i32.add (global.get $SB) (i32.const 42))) ;; LSTR
    (local.set $t111 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 440)) (local.get $t110))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 436)) (local.get $t111)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 107)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t111)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:214
    (global.set $__line (i32.const 214))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.load (i32.add (local.get $Pb) (i32.const 420))))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t109 (i32.const 1))
    (local.set $t108 (i32.sub (local.get $t108) (local.get $t109)))
    (i32.store (i32.add (local.get $Pb) (i32.const 428)) (local.get $t107)) ;; STORE slot 107
    (i32.store (i32.add (local.get $Pb) (i32.const 432)) (local.get $t108)) ;; STORE slot 108
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L68
      ) ;; close $__case_5 — LAB L67
    ;; line 0:215
    (global.set $__line (i32.const 215))
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
      ) ;; close $__case_6 — LAB L68
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
    ;; line 0:216
    (global.set $__line (i32.const 216))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t107))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L66
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L65
    ;; line 0:217
    (global.set $__line (i32.const 217))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t107 (i32.const 1))
    (local.set $t108 (i32.load (i32.add (local.get $Pb) (i32.const 424))))
    (local.set $t107 (i32.add (local.get $t107) (local.get $t108)))
    (i32.store (i32.add (local.get $Pb) (i32.const 424)) (local.get $t107))
    (local.set $t106 (local.get $t107))
    ;; line 0:220
    (global.set $__line (i32.const 220))
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
      ) ;; close $__case_9 — LAB L61
    ;; line 0:209
    (global.set $__line (i32.const 209))
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
  ) ;; end func $fn_L59

  ;; BCPL fn rd_u32_le (L69)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:225
    (global.set $__line (i32.const 225))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:226
    (global.set $__line (i32.const 226))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:227
    (global.set $__line (i32.const 227))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.const 2))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:228
    (global.set $__line (i32.const 228))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.const 3))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:229
    (global.set $__line (i32.const 229))
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
  ) ;; end func $fn_L69

  ;; BCPL fn rd_u16_le (L70)
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
  ) ;; end func $fn_L70

  ;; BCPL fn rd_i16_le (L71)
  (func $fn_L71 (export "fn_L71") (type $bcpl_fn)
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
    ;; line 0:235
    (global.set $__line (i32.const 235))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:236
    (global.set $__line (i32.const 236))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 32768))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:237
    (global.set $__line (i32.const 237))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 65536))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L72
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
  ) ;; end func $fn_L71

  ;; BCPL fn lump_name_eq (L73)
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
    ;; line 0:241
    (global.set $__line (i32.const 241))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:242
    (global.set $__line (i32.const 242))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 8))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:243
    (global.set $__line (i32.const 243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L74
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L76
      ) ;; close $__case_2 — LAB L75
    ;; line 0:244
    (global.set $__line (i32.const 244))
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
    ;; line 0:245
    (global.set $__line (i32.const 245))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L77
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L76
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
      ) ;; close $__case_5 — LAB L78
    ;; line 0:246
    (global.set $__line (i32.const 246))
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
    ;; line 0:247
    (global.set $__line (i32.const 247))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L80
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
      ) ;; close $__case_7 — LAB L79
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
  ) ;; end func $fn_L73

  ;; BCPL fn is_map_marker (L81)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:251
    (global.set $__line (i32.const 251))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 8))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:252
    (global.set $__line (i32.const 252))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:253
    (global.set $__line (i32.const 253))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:254
    (global.set $__line (i32.const 254))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.const 2))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:255
    (global.set $__line (i32.const 255))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.const 3))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:256
    (global.set $__line (i32.const 256))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.const 4))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:257
    (global.set $__line (i32.const 257))
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
    ;; line 0:258
    (global.set $__line (i32.const 258))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L82
    ;; line 0:259
    (global.set $__line (i32.const 259))
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
    ;; line 0:260
    (global.set $__line (i32.const 260))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L83
    ;; line 0:261
    (global.set $__line (i32.const 261))
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
  ) ;; end func $fn_L81

  ;; BCPL fn pr_lump_name (L84)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:265
    (global.set $__line (i32.const 265))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 7))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L86
      ) ;; close $__case_1 — LAB L85
    ;; line 0:266
    (global.set $__line (i32.const 266))
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
    ;; line 0:267
    (global.set $__line (i32.const 267))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.eq  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:268
    (global.set $__line (i32.const 268))
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
      ) ;; close $__case_2 — LAB L86
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L87
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
  ) ;; end func $fn_L84

  ;; BCPL fn find_first_map (L88)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:272
    (global.set $__line (i32.const 272))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L90
      ) ;; close $__case_1 — LAB L89
    ;; line 0:273
    (global.set $__line (i32.const 273))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 16))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:274
    (global.set $__line (i32.const 274))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 8))) ;; LF L81
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
    ;; line 0:275
    (global.set $__line (i32.const 275))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L91
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L90
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
  ) ;; end func $fn_L88

  ;; BCPL fn find_map_lump (L92)
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
    ;; line 0:280
    (global.set $__line (i32.const 280))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 12))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:281
    (global.set $__line (i32.const 281))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:282
    (global.set $__line (i32.const 282))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L93
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L95
      ) ;; close $__case_2 — LAB L94
    ;; line 0:283
    (global.set $__line (i32.const 283))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 16))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:284
    (global.set $__line (i32.const 284))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 7))) ;; LF L73
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
    ;; line 0:285
    (global.set $__line (i32.const 285))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L96
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L95
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
  ) ;; end func $fn_L92

  ;; BCPL fn name8_eq (L97)
  (func $fn_L97 (export "fn_L97") (type $bcpl_fn)
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
    ;; line 0:292
    (global.set $__line (i32.const 292))
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
      ) ;; close $__case_1 — LAB L98
    ;; line 0:293
    (global.set $__line (i32.const 293))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:294
    (global.set $__line (i32.const 294))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:295
    (global.set $__line (i32.const 295))
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
    ;; line 0:296
    (global.set $__line (i32.const 296))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L100
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.eq  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:297
    (global.set $__line (i32.const 297))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L101
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
      ) ;; close $__case_4 — LAB L99
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
  ) ;; end func $fn_L97

  ;; BCPL fn find_lump_global (L102)
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
    ;; line 0:304
    (global.set $__line (i32.const 304))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L104
      ) ;; close $__case_1 — LAB L103
    ;; line 0:305
    (global.set $__line (i32.const 305))
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
    ;; line 0:306
    (global.set $__line (i32.const 306))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 12))) ;; LF L97
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
    ;; line 0:307
    (global.set $__line (i32.const 307))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L105
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L104
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
  ) ;; end func $fn_L102

  ;; BCPL fn fsin (L106)
  (func $fn_L106 (export "fn_L106") (type $bcpl_fn)
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
    ;; line 0:314
    (global.set $__line (i32.const 314))
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
    ;; line 0:315
    (global.set $__line (i32.const 315))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1078530007))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t9))
    (local.set $t4 (local.get $t9))
    ;; line 0:316
    (global.set $__line (i32.const 316))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 1073741824))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9))
    (local.set $t5 (local.get $t9))
    ;; line 0:317
    (global.set $__line (i32.const 317))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L108
      ) ;; close $__case_1 — LAB L107
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L108
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.gt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:318
    (global.set $__line (i32.const 318))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L110
      ) ;; close $__case_3 — LAB L109
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L110
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.lt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:319
    (global.set $__line (i32.const 319))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    ;; line 0:320
    (global.set $__line (i32.const 320))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:321
    (global.set $__line (i32.const 321))
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
    ;; line 0:322
    (global.set $__line (i32.const 322))
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
    ;; line 0:323
    (global.set $__line (i32.const 323))
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
    ;; line 0:324
    (global.set $__line (i32.const 324))
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
    ;; line 0:325
    (global.set $__line (i32.const 325))
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
  ) ;; end func $fn_L106

  ;; BCPL fn fcos (L111)
  (func $fn_L111 (export "fn_L111") (type $bcpl_fn)
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
    (local.set $t8 (i32.add (global.get $TB) (i32.const 14))) ;; LF L106
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
  ) ;; end func $fn_L111

  ;; BCPL fn buildtrig (L112)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:331
    (global.set $__line (i32.const 331))
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
    ;; line 0:332
    (global.set $__line (i32.const 332))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:333
    (global.set $__line (i32.const 333))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1174405120))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
    ;; line 0:334
    (global.set $__line (i32.const 334))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t8))
    (local.set $t3 (local.get $t8))
    ;; line 0:335
    (global.set $__line (i32.const 335))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1086918615))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t8 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t8))
    (local.set $t4 (local.get $t8))
    ;; line 0:336
    (global.set $__line (i32.const 336))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 8191))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L114
      ) ;; close $__case_1 — LAB L113
    ;; line 0:337
    (global.set $__line (i32.const 337))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 14))) ;; LF L106
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
    ;; line 0:338
    (global.set $__line (i32.const 338))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 15))) ;; LF L111
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
    ;; line 0:339
    (global.set $__line (i32.const 339))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:340
    (global.set $__line (i32.const 340))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:341
    (global.set $__line (i32.const 341))
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
      ) ;; close $__case_2 — LAB L114
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
  ) ;; end func $fn_L112

  ;; BCPL fn isqrt (L115)
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
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:348
    (global.set $__line (i32.const 348))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:349
    (global.set $__line (i32.const 349))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:350
    (global.set $__line (i32.const 350))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L116
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    ;; line 0:351
    (global.set $__line (i32.const 351))
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
      ) ;; close $__case_2 — LAB L117
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    ;; line 0:353
    (global.set $__line (i32.const 353))
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
      ) ;; close $__case_3 — LAB L118
    ;; line 0:352
    (global.set $__line (i32.const 352))
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
  ) ;; end func $fn_L115

  ;; BCPL fn sd_sector (L119)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 30))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 28))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
  ) ;; end func $fn_L119

  ;; BCPL fn sd_texoffx (L120)
  (func $fn_L120 (export "fn_L120") (type $bcpl_fn)
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
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
  ) ;; end func $fn_L120

  ;; BCPL fn sec_floor (L121)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 0))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
  ) ;; end func $fn_L121

  ;; BCPL fn sec_ceil (L122)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 2))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
  ) ;; end func $fn_L122

  ;; BCPL fn sec_light (L123)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 26))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 20))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
  ) ;; end func $fn_L123

  ;; BCPL fn sec_floortex_byte (L124)
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
  ) ;; end func $fn_L124

  ;; BCPL fn sec_ceiltex_byte (L125)
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
  ) ;; end func $fn_L125

  ;; BCPL fn name8_is_sky (L126)
  (func $fn_L126 (export "fn_L126") (type $bcpl_fn)
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
    ;; line 0:384
    (global.set $__line (i32.const 384))
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
    ;; line 0:386
    (global.set $__line (i32.const 386))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L127
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 95))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:387
    (global.set $__line (i32.const 387))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L128
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 2))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 83))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:388
    (global.set $__line (i32.const 388))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L129
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 75))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:389
    (global.set $__line (i32.const 389))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L130
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 4))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 89))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:390
    (global.set $__line (i32.const 390))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L131
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 5))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (local.set $t6 (i32.const 49))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:391
    (global.set $__line (i32.const 391))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L132
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
  ) ;; end func $fn_L126

  ;; BCPL fn flat_cache_lookup (L133)
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
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L135
      ) ;; close $__case_1 — LAB L134
    ;; line 0:396
    (global.set $__line (i32.const 396))
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
    (local.set $t14 (i32.add (global.get $TB) (i32.const 12))) ;; LF L97
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
    ;; line 0:397
    (global.set $__line (i32.const 397))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L136
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L135
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
  ) ;; end func $fn_L133

  ;; BCPL fn load_flat (L137)
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
    ;; line 0:403
    (global.set $__line (i32.const 403))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:404
    (global.set $__line (i32.const 404))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:405
    (global.set $__line (i32.const 405))
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
    ;; line 0:406
    (global.set $__line (i32.const 406))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:407
    (global.set $__line (i32.const 407))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L138
    (local.set $t11 (i32.const 45))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:408
    (global.set $__line (i32.const 408))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L139
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 25))) ;; LF L126
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
    ;; line 0:409
    (global.set $__line (i32.const 409))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L140
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t12 (i32.const 64))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:410
    (global.set $__line (i32.const 410))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L141
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 13))) ;; LF L102
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
    ;; line 0:412
    (global.set $__line (i32.const 412))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.const 0))
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:413
    (global.set $__line (i32.const 413))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L142
    (local.set $t11 (i32.const 16))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t11))
    (local.set $t7 (local.get $t11))
    ;; line 0:414
    (global.set $__line (i32.const 414))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:415
    (global.set $__line (i32.const 415))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:416
    (global.set $__line (i32.const 416))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 4096))
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:417
    (global.set $__line (i32.const 417))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_6 — LAB L143
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
    ;; line 0:419
    (global.set $__line (i32.const 419))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:420
    (global.set $__line (i32.const 420))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_7 — LAB L144
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
      ) ;; close $__case_8 — LAB L145
    ;; line 0:421
    (global.set $__line (i32.const 421))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t13 (i32.load8_u (i32.add (i32.shl (local.get $t13) (i32.const 2)) (local.get $t14))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:422
    (global.set $__line (i32.const 422))
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
      ) ;; close $__case_9 — LAB L146
    ;; line 0:423
    (global.set $__line (i32.const 423))
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
      ) ;; close $__case_10 — LAB L147
    ;; line 0:426
    (global.set $__line (i32.const 426))
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
      ) ;; close $__case_11 — LAB L148
    ;; line 0:427
    (global.set $__line (i32.const 427))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2)))) ;; LL L47
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:428
    (global.set $__line (i32.const 428))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2)))) ;; LL L45
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 35)) (i32.const 2))
      (local.get $t11))
    ;; line 0:429
    (global.set $__line (i32.const 429))
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
  ) ;; end func $fn_L137

  ;; BCPL fn ensure_flat (L149)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:433
    (global.set $__line (i32.const 433))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 26))) ;; LF L133
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:434
    (global.set $__line (i32.const 434))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:435
    (global.set $__line (i32.const 435))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L150
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 27))) ;; LF L137
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
  ) ;; end func $fn_L149

  ;; BCPL fn prebuild_flats (L151)
  (func $fn_L151 (export "fn_L151") (type $bcpl_fn)
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
    ;; line 0:439
    (global.set $__line (i32.const 439))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L153
      ) ;; close $__case_1 — LAB L152
    ;; line 0:440
    (global.set $__line (i32.const 440))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush t9 (pre-stack-up)
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 23))) ;; LF L124
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.add (global.get $TB) (i32.const 28))) ;; LF L149
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:441
    (global.set $__line (i32.const 441))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush t9 (pre-stack-up)
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 24))) ;; LF L125
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (local.set $t11 (i32.add (global.get $TB) (i32.const 28))) ;; LF L149
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
      ) ;; close $__case_2 — LAB L153
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:442
    (global.set $__line (i32.const 442))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 46))) ;; LSTR
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
  ) ;; end func $fn_L151

  ;; BCPL fn point_on_side (L154)
  (func $fn_L154 (export "fn_L154") (type $bcpl_fn)
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
    ;; line 0:447
    (global.set $__line (i32.const 447))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:448
    (global.set $__line (i32.const 448))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:449
    (global.set $__line (i32.const 449))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 4))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 0:450
    (global.set $__line (i32.const 450))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 6))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 0:451
    (global.set $__line (i32.const 451))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:452
    (global.set $__line (i32.const 452))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:453
    (global.set $__line (i32.const 453))
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
    ;; line 0:454
    (global.set $__line (i32.const 454))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L155
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
  ) ;; end func $fn_L154

  ;; BCPL fn point_in_subsector (L156)
  (func $fn_L156 (export "fn_L156") (type $bcpl_fn)
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
    ;; line 0:458
    (global.set $__line (i32.const 458))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:459
    (global.set $__line (i32.const 459))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L158
      ) ;; close $__case_1 — LAB L157
    (local.set $t6 (i32.const 28))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:461
    (global.set $__line (i32.const 461))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 30))) ;; LF L154
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
    ;; line 0:462
    (global.set $__line (i32.const 462))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:463
    (global.set $__line (i32.const 463))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 24))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
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
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L161
      ) ;; close $__case_2 — LAB L159
    ;; line 0:464
    (global.set $__line (i32.const 464))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.const 26))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
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
      ) ;; close $__case_3 — LAB L161
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L158
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.and (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 0))
    (if (i32.eq  (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:460
    (global.set $__line (i32.const 460))
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
  ) ;; end func $fn_L156

  ;; BCPL fn floor_at (L162)
  (func $fn_L162 (export "fn_L162") (type $bcpl_fn)
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
    ;; line 0:470
    (global.set $__line (i32.const 470))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 31))) ;; LF L156
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:471
    (global.set $__line (i32.const 471))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 4))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2)))) ;; LL L23
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:472
    (global.set $__line (i32.const 472))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:473
    (global.set $__line (i32.const 473))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 12))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:474
    (global.set $__line (i32.const 474))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.const 6))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 0:475
    (global.set $__line (i32.const 475))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t14 (i32.const 8))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; line 0:476
    (global.set $__line (i32.const 476))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 14))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t11 (i32.mul (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:477
    (global.set $__line (i32.const 477))
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
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; RES L163: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L164
    (local.set $t15 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t16 (i32.const 12))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 12)))
    (local.set $t12 (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; flush FNAP result
    ;; RES L163: save result, jump to RSTACK
    (local.set $__res (local.get $t12))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L163
    ;; RSTACK 12
    (local.set $t12 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:478
    (global.set $__line (i32.const 478))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t14 (i32.const 0))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:480
    (global.set $__line (i32.const 480))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t13))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L165
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t20 (i32.add (global.get $TB) (i32.const 18))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (local.set $t17 (i32.add (global.get $TB) (i32.const 20))) ;; LF L121
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
  ) ;; end func $fn_L162

  ;; BCPL fn find_player_start (L166)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:486
    (global.set $__line (i32.const 486))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.const 10))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:487
    (global.set $__line (i32.const 487))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L168
      ) ;; close $__case_1 — LAB L167
    ;; line 0:488
    (global.set $__line (i32.const 488))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 10))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:489
    (global.set $__line (i32.const 489))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.const 6))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t14 (i32.add (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; line 0:490
    (global.set $__line (i32.const 490))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:491
    (global.set $__line (i32.const 491))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    ;; line 0:492
    (global.set $__line (i32.const 492))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
    ;; line 0:493
    (global.set $__line (i32.const 493))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t16 (i32.const 2))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
    ;; line 0:494
    (global.set $__line (i32.const 494))
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
    ;; line 0:495
    (global.set $__line (i32.const 495))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t12))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L169
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L168
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:496
    (global.set $__line (i32.const 496))
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
  ) ;; end func $fn_L166

  ;; BCPL fn poll_events (L170)
  (func $fn_L170 (export "fn_L170") (type $bcpl_fn)
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
    ;; line 0:502
    (global.set $__line (i32.const 502))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    ;; line 0:503
    (global.set $__line (i32.const 503))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L172
      ) ;; close $__case_1 — LAB L171
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:505
    (global.set $__line (i32.const 505))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 2))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:506
    (global.set $__line (i32.const 506))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 2))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:507
    (global.set $__line (i32.const 507))
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
    ;; line 0:508
    (global.set $__line (i32.const 508))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 1))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L176
    (local.set $t14 (i32.const 27))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:509
    (global.set $__line (i32.const 509))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L175
      ) ;; close $__case_3 — LAB L177
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L175
      ) ;; close $__case_4 — LAB L173
    (local.set $t14 (i32.const 3))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:511
    (global.set $__line (i32.const 511))
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
    ;; line 0:512
    (global.set $__line (i32.const 512))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L179
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L178
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L175
    (local.set $t14 (i32.const 12))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:513
    (global.set $__line (i32.const 513))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L180
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L172
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
  ) ;; end func $fn_L170

  ;; BCPL fn key_down (L181)
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
      ) ;; close $__case_1 — LAB L182
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
  ) ;; end func $fn_L181

  ;; BCPL fn load_palette (L183)
  (func $fn_L183 (export "fn_L183") (type $bcpl_fn)
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
    ;; line 0:522
    (global.set $__line (i32.const 522))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 255))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L185
      ) ;; close $__case_1 — LAB L184
    ;; line 0:523
    (global.set $__line (i32.const 523))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.mul (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:524
    (global.set $__line (i32.const 524))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:525
    (global.set $__line (i32.const 525))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.load8_u (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:526
    (global.set $__line (i32.const 526))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t9 (i32.load8_u (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:527
    (global.set $__line (i32.const 527))
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
      ) ;; close $__case_2 — LAB L185
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
  ) ;; end func $fn_L183

  ;; BCPL fn find_tex1_def (L186)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:536
    (global.set $__line (i32.const 536))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 20)) (i32.const 2)))) ;; LL L30
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L188
      ) ;; close $__case_1 — LAB L187
    ;; line 0:537
    (global.set $__line (i32.const 537))
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
    (local.set $t12 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:538
    (global.set $__line (i32.const 538))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:539
    (global.set $__line (i32.const 539))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 12))) ;; LF L97
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
    ;; line 0:540
    (global.set $__line (i32.const 540))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L189
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L188
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
  ) ;; end func $fn_L186

  ;; BCPL fn tex_cache_lookup (L190)
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
    ;; line 0:546
    (global.set $__line (i32.const 546))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L192
      ) ;; close $__case_1 — LAB L191
    ;; line 0:547
    (global.set $__line (i32.const 547))
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
    ;; line 0:548
    (global.set $__line (i32.const 548))
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
    (local.set $t15 (i32.add (global.get $TB) (i32.const 12))) ;; LF L97
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
    ;; line 0:549
    (global.set $__line (i32.const 549))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L193
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L192
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
  ) ;; end func $fn_L190

  ;; BCPL fn tex_put (L194)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:557
    (global.set $__line (i32.const 557))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:558
    (global.set $__line (i32.const 558))
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
  ) ;; end func $fn_L194

  ;; BCPL fn stamp_patch_column (L195)
  (func $fn_L195 (export "fn_L195") (type $bcpl_fn)
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
    ;; line 0:563
    (global.set $__line (i32.const 563))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 8))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:565
    (global.set $__line (i32.const 565))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 4))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t15 (i32.mul (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    ;; line 0:566
    (global.set $__line (i32.const 566))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:567
    (global.set $__line (i32.const 567))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:568
    (global.set $__line (i32.const 568))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:569
    (global.set $__line (i32.const 569))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:570
    (global.set $__line (i32.const 570))
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
      ) ;; close $__case_1 — LAB L197
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L196
    ;; line 0:571
    (global.set $__line (i32.const 571))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t16 (i32.load8_u (i32.add (i32.shl (local.get $t16) (i32.const 2)) (local.get $t17))))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t16))
    (local.set $t15 (local.get $t16))
    ;; line 0:572
    (global.set $__line (i32.const 572))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.const 255))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (if (i32.eq  (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L198
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.const 1))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t16 (i32.load8_u (i32.add (i32.shl (local.get $t16) (i32.const 2)) (local.get $t17))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:574
    (global.set $__line (i32.const 574))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t19 (i32.const 1))
    (local.set $t18 (i32.sub (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L201
      ) ;; close $__case_4 — LAB L200
    ;; line 0:575
    (global.set $__line (i32.const 575))
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
    ;; line 0:576
    (global.set $__line (i32.const 576))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:577
    (global.set $__line (i32.const 577))
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
    ;; line 0:578
    (global.set $__line (i32.const 578))
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
    (local.set $t29 (i32.add (global.get $TB) (i32.const 39))) ;; LF L194
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
      ) ;; close $__case_5 — LAB L202
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.const 1))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t19))
    (local.set $t17 (local.get $t19))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L201
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:579
    (global.set $__line (i32.const 579))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.const 4))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t17))
    (local.set $t14 (local.get $t17))
    ;; line 0:581
    (global.set $__line (i32.const 581))
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
      ) ;; close $__case_7 — LAB L199
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
  ) ;; end func $fn_L195

  ;; BCPL fn composite_texture (L203)
  (func $fn_L203 (export "fn_L203") (type $bcpl_fn)
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
    ;; line 0:588
    (global.set $__line (i32.const 588))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 37))) ;; LF L186
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:589
    (global.set $__line (i32.const 589))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:590
    (global.set $__line (i32.const 590))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:591
    (global.set $__line (i32.const 591))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:592
    (global.set $__line (i32.const 592))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:593
    (global.set $__line (i32.const 593))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:594
    (global.set $__line (i32.const 594))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:596
    (global.set $__line (i32.const 596))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L204
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t12 (i32.const 128))
    (if (i32.lt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:597
    (global.set $__line (i32.const 597))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L205
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 12))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
    ;; line 0:599
    (global.set $__line (i32.const 599))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 14))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
    ;; line 0:600
    (global.set $__line (i32.const 600))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t15 (i32.const 20))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
    ;; line 0:601
    (global.set $__line (i32.const 601))
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
      ) ;; close $__case_3 — LAB L207
    ;; line 0:602
    (global.set $__line (i32.const 602))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_4 — LAB L206
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
    ;; line 0:604
    (global.set $__line (i32.const 604))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:605
    (global.set $__line (i32.const 605))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t11))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L208
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L210
      ) ;; close $__case_6 — LAB L209
    ;; line 0:607
    (global.set $__line (i32.const 607))
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
      ) ;; close $__case_7 — LAB L210
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
      (local.set $__lab (i32.const 12)) (br $__dispatch) ;; JUMP L212
      ) ;; close $__case_8 — LAB L211
    ;; line 0:609
    (global.set $__line (i32.const 609))
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
    ;; line 0:610
    (global.set $__line (i32.const 610))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    ;; line 0:611
    (global.set $__line (i32.const 611))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t19 (i32.const 2))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t20 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 15)))
    (local.set $t15 (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; flush FNAP result
    ;; line 0:612
    (global.set $__line (i32.const 612))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t20 (i32.const 4))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    ;; line 0:613
    (global.set $__line (i32.const 613))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 8))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t17 (i32.mul (local.get $t17) (local.get $t18)))
    (local.set $t18 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2)))) ;; LL L27
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:614
    (global.set $__line (i32.const 614))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.add (global.get $TB) (i32.const 13))) ;; LF L102
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    ;; line 0:615
    (global.set $__line (i32.const 615))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:616
    (global.set $__line (i32.const 616))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:617
    (global.set $__line (i32.const 617))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    ;; line 0:618
    (global.set $__line (i32.const 618))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t23 (i32.const 0))
    (if (i32.lt_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:619
    (global.set $__line (i32.const 619))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 16))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t22))
    (local.set $t21 (local.get $t22))
    ;; line 0:620
    (global.set $__line (i32.const 620))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:621
    (global.set $__line (i32.const 621))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
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
    ;; line 0:622
    (global.set $__line (i32.const 622))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t24 (i32.const 1))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L215
      ) ;; close $__case_9 — LAB L214
    ;; line 0:623
    (global.set $__line (i32.const 623))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 40))) ;; LF L195
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
      ) ;; close $__case_10 — LAB L215
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (if (i32.le_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L213
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L212
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:624
    (global.set $__line (i32.const 624))
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
    ;; line 0:629
    (global.set $__line (i32.const 629))
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
      ) ;; close $__case_13 — LAB L216
    ;; line 0:630
    (global.set $__line (i32.const 630))
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
      ) ;; close $__case_14 — LAB L217
    ;; line 0:631
    (global.set $__line (i32.const 631))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:632
    (global.set $__line (i32.const 632))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:633
    (global.set $__line (i32.const 633))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.shl (local.get $t12) (i32.const 2)) (local.get $t11))
    ;; line 0:634
    (global.set $__line (i32.const 634))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2)))) ;; LL L31
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 21)) (i32.const 2))
      (local.get $t11))
    ;; line 0:635
    (global.set $__line (i32.const 635))
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
  ) ;; end func $fn_L203

  ;; BCPL fn ensure_sidedef_tex (L218)
  (func $fn_L218 (export "fn_L218") (type $bcpl_fn)
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
    ;; line 0:642
    (global.set $__line (i32.const 642))
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
    ;; line 0:643
    (global.set $__line (i32.const 643))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.load8_u (i32.add (i32.shl (local.get $t6) (i32.const 2)) (local.get $t7))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:644
    (global.set $__line (i32.const 644))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:645
    (global.set $__line (i32.const 645))
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
    ;; line 0:647
    (global.set $__line (i32.const 647))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L219
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:648
    (global.set $__line (i32.const 648))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L220
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 38))) ;; LF L190
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
    ;; line 0:649
    (global.set $__line (i32.const 649))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 0))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:650
    (global.set $__line (i32.const 650))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_3 — LAB L221
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 41))) ;; LF L203
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
  ) ;; end func $fn_L218

  ;; BCPL fn prebuild_textures (L222)
  (func $fn_L222 (export "fn_L222") (type $bcpl_fn)
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
    ;; line 0:655
    (global.set $__line (i32.const 655))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L224
      ) ;; close $__case_1 — LAB L223
    ;; line 0:656
    (global.set $__line (i32.const 656))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 4))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 42))) ;; LF L218
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:657
    (global.set $__line (i32.const 657))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 12))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 42))) ;; LF L218
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:658
    (global.set $__line (i32.const 658))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 20))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 42))) ;; LF L218
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
      ) ;; close $__case_2 — LAB L224
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:659
    (global.set $__line (i32.const 659))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 52))) ;; LSTR
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
  ) ;; end func $fn_L222

  ;; BCPL fn cam_x (L225)
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
    (local $t6 i32)
    (local $t7 i32)
    (local $t8 i32)
    (local $t9 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:666
    (global.set $__line (i32.const 666))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:667
    (global.set $__line (i32.const 667))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:668
    (global.set $__line (i32.const 668))
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
  ) ;; end func $fn_L225

  ;; BCPL fn cam_y (L226)
  (func $fn_L226 (export "fn_L226") (type $bcpl_fn)
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
    ;; line 0:672
    (global.set $__line (i32.const 672))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:673
    (global.set $__line (i32.const 673))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:674
    (global.set $__line (i32.const 674))
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
  ) ;; end func $fn_L226

  ;; BCPL fn front_facing (L227)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:678
    (global.set $__line (i32.const 678))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:679
    (global.set $__line (i32.const 679))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:680
    (global.set $__line (i32.const 680))
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
  ) ;; end func $fn_L227

  ;; BCPL fn light_to_col (L228)
  (func $fn_L228 (export "fn_L228") (type $bcpl_fn)
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
    ;; line 0:684
    (global.set $__line (i32.const 684))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:685
    (global.set $__line (i32.const 685))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.const 40))
    (if (i32.ge_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:686
    (global.set $__line (i32.const 686))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 40))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L229
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.const 255))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:687
    (global.set $__line (i32.const 687))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 255))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L230
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
  ) ;; end func $fn_L228

  ;; BCPL fn light_at_depth (L231)
  (func $fn_L231 (export "fn_L231") (type $bcpl_fn)
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
    ;; line 0:693
    (global.set $__line (i32.const 693))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.const 20))
    (local.set $t5 (i32.div_s (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:694
    (global.set $__line (i32.const 694))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:695
    (global.set $__line (i32.const 695))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 32))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:696
    (global.set $__line (i32.const 696))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 32))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L232
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 255))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:697
    (global.set $__line (i32.const 697))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 255))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L233
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
  ) ;; end func $fn_L231

  ;; BCPL fn reset_clip (L234)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:701
    (global.set $__line (i32.const 701))
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
      ) ;; close $__case_1 — LAB L235
    ;; line 0:702
    (global.set $__line (i32.const 702))
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
      ) ;; close $__case_2 — LAB L236
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
  ) ;; end func $fn_L234

  ;; BCPL fn close_column (L237)
  (func $fn_L237 (export "fn_L237") (type $bcpl_fn)
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
    ;; line 0:706
    (global.set $__line (i32.const 706))
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
    ;; line 0:707
    (global.set $__line (i32.const 707))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2)))) ;; LL L38
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 28)) (i32.const 2))
      (local.get $t4))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L238
    (local.set $t4 (i32.const 720))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    ;; line 0:708
    (global.set $__line (i32.const 708))
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
  ) ;; end func $fn_L237

  ;; BCPL fn vline_clipped (L239)
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
    ;; line 0:712
    (global.set $__line (i32.const 712))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:713
    (global.set $__line (i32.const 713))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:714
    (global.set $__line (i32.const 714))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:715
    (global.set $__line (i32.const 715))
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
      ) ;; close $__case_1 — LAB L240
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:716
    (global.set $__line (i32.const 716))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t9))
    (local.set $t4 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L241
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:717
    (global.set $__line (i32.const 717))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9))
    (local.set $t5 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L242
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:718
    (global.set $__line (i32.const 718))
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
      ) ;; close $__case_4 — LAB L243
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

  ;; BCPL fn project_y (L244)
  (func $fn_L244 (export "fn_L244") (type $bcpl_fn)
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
  ) ;; end func $fn_L244

  ;; BCPL fn draw_textured_band (L245)
  (func $fn_L245 (export "fn_L245") (type $bcpl_fn)
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
    ;; line 0:725
    (global.set $__line (i32.const 725))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 0))
    (if (i32.ge_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:727
    (global.set $__line (i32.const 727))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t18 (i32.add (global.get $TB) (i32.const 51))) ;; LF L239
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
      ) ;; close $__case_1 — LAB L246
    ;; line 0:728
    (global.set $__line (i32.const 728))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 24)) (i32.const 2)))) ;; LL L34
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:729
    (global.set $__line (i32.const 729))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 25)) (i32.const 2)))) ;; LL L35
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:730
    (global.set $__line (i32.const 730))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 23)) (i32.const 2)))) ;; LL L33
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:731
    (global.set $__line (i32.const 731))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 65536))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t14 (i32.mul (local.get $t14) (local.get $t15)))
    (local.set $t15 (i32.const 480))
    (local.set $t14 (i32.div_s (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:732
    (global.set $__line (i32.const 732))
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
    ;; line 0:735
    (global.set $__line (i32.const 735))
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
    ;; line 0:736
    (global.set $__line (i32.const 736))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:737
    (global.set $__line (i32.const 737))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    ;; line 0:738
    (global.set $__line (i32.const 738))
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
    ;; line 0:739
    (global.set $__line (i32.const 739))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t19))
    (local.set $t17 (local.get $t19))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L247
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t20 (i32.load (i32.shl (local.get $t20) (i32.const 2))))
    (if (i32.le_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:740
    (global.set $__line (i32.const 740))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t19))
    (local.set $t18 (local.get $t19))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L248
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (if (i32.gt_s (local.get $t19) (local.get $t20)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:741
    (global.set $__line (i32.const 741))
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
      ) ;; close $__case_4 — LAB L249
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
  ) ;; end func $fn_L245

  ;; BCPL fn render_seg (L250)
  (func $fn_L250 (export "fn_L250") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__case_28 $__case_29 $__case_30 $__case_31 $__case_32 $__case_33 $__case_34 $__case_35 $__case_36 $__case_37 $__case_38 $__case_39 $__case_40 $__case_41 $__case_42 $__case_43 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:749
    (global.set $__line (i32.const 749))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:750
    (global.set $__line (i32.const 750))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:751
    (global.set $__line (i32.const 751))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:752
    (global.set $__line (i32.const 752))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:753
    (global.set $__line (i32.const 753))
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
    ;; line 0:754
    (global.set $__line (i32.const 754))
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
    ;; line 0:755
    (global.set $__line (i32.const 755))
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
    ;; line 0:756
    (global.set $__line (i32.const 756))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    ;; line 0:757
    (global.set $__line (i32.const 757))
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
    ;; line 0:758
    (global.set $__line (i32.const 758))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.const 0))
    (local.set $t34 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32)) ;; STORE slot 32
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33)) ;; STORE slot 33
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34)) ;; STORE slot 34
    ;; line 0:759
    (global.set $__line (i32.const 759))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t35 (i32.const 0))
    (local.set $t36 (i32.const 0))
    (local.set $t37 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35)) ;; STORE slot 35
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36)) ;; STORE slot 36
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37)) ;; STORE slot 37
    ;; line 0:760
    (global.set $__line (i32.const 760))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t38 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t38)) ;; STORE slot 38
    ;; line 0:761
    (global.set $__line (i32.const 761))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t39 (i32.const 0))
    (local.set $t40 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39)) ;; STORE slot 39
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40)) ;; STORE slot 40
    ;; line 0:762
    (global.set $__line (i32.const 762))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t41 (i32.const 0))
    (local.set $t42 (i32.const 0))
    (local.set $t43 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t41)) ;; STORE slot 41
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t42)) ;; STORE slot 42
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t43)) ;; STORE slot 43
    ;; line 0:763
    (global.set $__line (i32.const 763))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t44 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 176)) (local.get $t44)) ;; STORE slot 44
    ;; line 0:764
    (global.set $__line (i32.const 764))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t45 (i32.const -1))
    (local.set $t46 (i32.const -1))
    (local.set $t47 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 180)) (local.get $t45)) ;; STORE slot 45
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t46)) ;; STORE slot 46
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (local.get $t47)) ;; STORE slot 47
    ;; line 0:765
    (global.set $__line (i32.const 765))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t48 (i32.const 0))
    (local.set $t49 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t48)) ;; STORE slot 48
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t49)) ;; STORE slot 49
    ;; line 0:766
    (global.set $__line (i32.const 766))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 0))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t50))
    (local.set $t4 (local.get $t50))
    ;; line 0:768
    (global.set $__line (i32.const 768))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 2))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t50))
    (local.set $t5 (local.get $t50))
    ;; line 0:769
    (global.set $__line (i32.const 769))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 6))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t50))
    (local.set $t6 (local.get $t50))
    ;; line 0:770
    (global.set $__line (i32.const 770))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 8))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t50))
    (local.set $t7 (local.get $t50))
    ;; line 0:771
    (global.set $__line (i32.const 771))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 10))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t50))
    (local.set $t8 (local.get $t50))
    ;; line 0:772
    (global.set $__line (i32.const 772))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 14))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t50 (i32.mul (local.get $t50) (local.get $t51)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t50))
    (local.set $t9 (local.get $t50))
    ;; line 0:773
    (global.set $__line (i32.const 773))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 0))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ne  (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:774
    (global.set $__line (i32.const 774))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 10))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t50))
    (local.set $t10 (local.get $t50))
    ;; line 0:775
    (global.set $__line (i32.const 775))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 12))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t50))
    (local.set $t11 (local.get $t50))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L253
      ) ;; close $__case_1 — LAB L251
    ;; line 0:776
    (global.set $__line (i32.const 776))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 12))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t50))
    (local.set $t10 (local.get $t50))
    ;; line 0:777
    (global.set $__line (i32.const 777))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t54 (i32.const 10))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t54 (i32.add (local.get $t54) (local.get $t55)))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t50))
    (local.set $t11 (local.get $t50))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L253
    ;; line 0:778
    (global.set $__line (i32.const 778))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t51 (i32.const 0))
    (if (i32.ge_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_3 — LAB L254
    ;; line 0:779
    (global.set $__line (i32.const 779))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 18))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t50))
    (local.set $t12 (local.get $t50))
    ;; line 0:781
    (global.set $__line (i32.const 781))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t51 (i32.const 0))
    (if (i32.ge_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_4 — LAB L255
    ;; line 0:782
    (global.set $__line (i32.const 782))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 20))) ;; LF L121
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t50))
    (local.set $t22 (local.get $t50))
    ;; line 0:783
    (global.set $__line (i32.const 783))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 21))) ;; LF L122
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t50))
    (local.set $t23 (local.get $t50))
    ;; line 0:784
    (global.set $__line (i32.const 784))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 22))) ;; LF L123
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t50))
    (local.set $t24 (local.get $t50))
    ;; line 0:785
    (global.set $__line (i32.const 785))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 19))) ;; LF L120
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 176)) (local.get $t50))
    (local.set $t44 (local.get $t50))
    ;; line 0:786
    (global.set $__line (i32.const 786))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t51 (i32.const 0))
    (local.set $t50 (i32.sub (i32.const 0) (i32.ge_s (local.get $t50) (local.get $t51))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t50))
    (local.set $t27 (local.get $t50))
    ;; line 0:788
    (global.set $__line (i32.const 788))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:789
    (global.set $__line (i32.const 789))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 18))) ;; LF L119
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t50))
    (local.set $t13 (local.get $t50))
    ;; line 0:790
    (global.set $__line (i32.const 790))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t51 (i32.const 0))
    (if (i32.ge_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:791
    (global.set $__line (i32.const 791))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t50))
    (local.set $t27 (local.get $t50))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L257
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:792
    (global.set $__line (i32.const 792))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 20))) ;; LF L121
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t50))
    (local.set $t25 (local.get $t50))
    ;; line 0:793
    (global.set $__line (i32.const 793))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 21))) ;; LF L122
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t50))
    (local.set $t26 (local.get $t50))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L258
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L256
    ;; line 0:794
    (global.set $__line (i32.const 794))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 4))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t50 (i32.mul (local.get $t50) (local.get $t51)))
    (local.set $t51 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    ;; line 0:798
    (global.set $__line (i32.const 798))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.const 4))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t51 (i32.mul (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t51 (i32.add (local.get $t51) (local.get $t52)))
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51)) ;; STORE slot 51
    ;; line 0:799
    (global.set $__line (i32.const 799))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t56 (i32.const 0))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (local.set $t57 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t57)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t57)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t52))
    (local.set $t14 (local.get $t52))
    ;; line 0:800
    (global.set $__line (i32.const 800))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t56 (i32.const 2))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (local.set $t57 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t57)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t57)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t52))
    (local.set $t15 (local.get $t52))
    ;; line 0:801
    (global.set $__line (i32.const 801))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t56 (i32.const 0))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (local.set $t57 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t57)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t57)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t52))
    (local.set $t16 (local.get $t52))
    ;; line 0:802
    (global.set $__line (i32.const 802))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t56 (i32.const 2))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (local.set $t57 (i32.add (global.get $TB) (i32.const 6))) ;; LF L71
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t57)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t57)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t52))
    (local.set $t17 (local.get $t52))
    ;; line 0:803
    (global.set $__line (i32.const 803))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (if (local.get $t50) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:806
    (global.set $__line (i32.const 806))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t57 (i32.add (global.get $TB) (i32.const 46))) ;; LF L227
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t57)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t57)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (local.get $t50) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_8 — LAB L260
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L259
    ;; line 0:807
    (global.set $__line (i32.const 807))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t50 (i32.sub (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    ;; line 0:810
    (global.set $__line (i32.const 810))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t51 (i32.sub (local.get $t51) (local.get $t52)))
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51)) ;; STORE slot 51
    ;; line 0:811
    (global.set $__line (i32.const 811))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t55 (i32.mul (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (local.set $t56 (i32.mul (local.get $t56) (local.get $t57)))
    (local.set $t55 (i32.add (local.get $t55) (local.get $t56)))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 17))) ;; LF L115
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t52))
    (local.set $t38 (local.get $t52))
    ;; line 0:812
    (global.set $__line (i32.const 812))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t50))
    (local.set $t39 (local.get $t50))
    ;; line 0:814
    (global.set $__line (i32.const 814))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 152))))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t50))
    (local.set $t40 (local.get $t50))
    ;; line 0:815
    (global.set $__line (i32.const 815))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 44))) ;; LF L225
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t50))
    (local.set $t18 (local.get $t50))
    ;; line 0:817
    (global.set $__line (i32.const 817))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 45))) ;; LF L226
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t50))
    (local.set $t19 (local.get $t50))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 44))) ;; LF L225
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t50))
    (local.set $t20 (local.get $t50))
    ;; line 0:818
    (global.set $__line (i32.const 818))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 45))) ;; LF L226
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t50))
    (local.set $t21 (local.get $t50))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t51 (i32.const 4))
    (if (i32.ge_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t51 (i32.const 4))
    (if (i32.ge_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_10 — LAB L261
    ;; line 0:819
    (global.set $__line (i32.const 819))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t51 (i32.const 4))
    (if (i32.ge_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:821
    (global.set $__line (i32.const 821))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 4))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t50 (i32.sub (local.get $t50) (local.get $t51)))
    (local.set $t51 (i32.const 1024))
    (local.set $t50 (i32.mul (local.get $t50) (local.get $t51)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t51 (i32.sub (local.get $t51) (local.get $t52)))
    (local.set $t50 (i32.div_s (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    ;; line 0:822
    (global.set $__line (i32.const 822))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t51 (i32.sub (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t51 (i32.mul (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.const 1024))
    (local.set $t51 (i32.div_s (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t51 (i32.add (local.get $t51) (local.get $t52)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t51))
    (local.set $t18 (local.get $t51))
    ;; line 0:823
    (global.set $__line (i32.const 823))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (local.set $t51 (i32.sub (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t51 (i32.mul (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.const 1024))
    (local.set $t51 (i32.div_s (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (local.set $t51 (i32.add (local.get $t51) (local.get $t52)))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t51))
    (local.set $t39 (local.get $t51))
    ;; line 0:824
    (global.set $__line (i32.const 824))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.const 4))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t51))
    (local.set $t19 (local.get $t51))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L262
    ;; line 0:825
    (global.set $__line (i32.const 825))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t51 (i32.const 4))
    (if (i32.ge_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 0:827
    (global.set $__line (i32.const 827))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 4))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t50 (i32.sub (local.get $t50) (local.get $t51)))
    (local.set $t51 (i32.const 1024))
    (local.set $t50 (i32.mul (local.get $t50) (local.get $t51)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t51 (i32.sub (local.get $t51) (local.get $t52)))
    (local.set $t50 (i32.div_s (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    ;; line 0:828
    (global.set $__line (i32.const 828))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t51 (i32.sub (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t51 (i32.mul (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.const 1024))
    (local.set $t51 (i32.div_s (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t51 (i32.add (local.get $t51) (local.get $t52)))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t51))
    (local.set $t20 (local.get $t51))
    ;; line 0:829
    (global.set $__line (i32.const 829))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t51 (i32.sub (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t51 (i32.mul (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.const 1024))
    (local.set $t51 (i32.div_s (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t51 (i32.add (local.get $t51) (local.get $t52)))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t51))
    (local.set $t40 (local.get $t51))
    ;; line 0:830
    (global.set $__line (i32.const 830))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.const 4))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t51))
    (local.set $t21 (local.get $t51))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L263
    ;; line 0:831
    (global.set $__line (i32.const 831))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 480))
    (local.set $t51 (i32.const 480))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t51 (i32.mul (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t51 (i32.div_s (local.get $t51) (local.get $t52)))
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t50))
    (local.set $t28 (local.get $t50))
    ;; line 0:834
    (global.set $__line (i32.const 834))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 480))
    (local.set $t51 (i32.const 480))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t51 (i32.mul (local.get $t51) (local.get $t52)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t51 (i32.div_s (local.get $t51) (local.get $t52)))
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t50))
    (local.set $t29 (local.get $t50))
    ;; line 0:835
    (global.set $__line (i32.const 835))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.le_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 0:837
    (global.set $__line (i32.const 837))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    ;; line 0:838
    (global.set $__line (i32.const 838))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t51))
    (local.set $t28 (local.get $t51))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t51))
    (local.set $t29 (local.get $t51))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t51))
    (local.set $t50 (local.get $t51))
    ;; line 0:839
    (global.set $__line (i32.const 839))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t51))
    (local.set $t18 (local.get $t51))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t51))
    (local.set $t20 (local.get $t51))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t51))
    (local.set $t50 (local.get $t51))
    ;; line 0:840
    (global.set $__line (i32.const 840))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t51))
    (local.set $t19 (local.get $t51))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t51))
    (local.set $t21 (local.get $t51))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t51))
    (local.set $t50 (local.get $t51))
    ;; line 0:841
    (global.set $__line (i32.const 841))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t51))
    (local.set $t39 (local.get $t51))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t51))
    (local.set $t40 (local.get $t51))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L264
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (i32.ne  (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_14 — LAB L265
    ;; line 0:843
    (global.set $__line (i32.const 843))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t50))
    (local.set $t30 (local.get $t50))
    ;; line 0:845
    (global.set $__line (i32.const 845))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t50))
    (local.set $t31 (local.get $t50))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t51 (i32.const 0))
    (if (i32.ge_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
    ;; line 0:846
    (global.set $__line (i32.const 846))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t50))
    (local.set $t30 (local.get $t50))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L266
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (local.set $t51 (i32.const 960))
    (if (i32.lt_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
    ;; line 0:847
    (global.set $__line (i32.const 847))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t50))
    (local.set $t31 (local.get $t50))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L267
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (if (i32.le_s (local.get $t50) (local.get $t51)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_17 — LAB L268
    ;; line 0:848
    (global.set $__line (i32.const 848))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 1048576))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t50 (i32.div_s (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t50))
    (local.set $t32 (local.get $t50))
    ;; line 0:850
    (global.set $__line (i32.const 850))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.const 1048576))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t50 (i32.div_s (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t50))
    (local.set $t33 (local.get $t50))
    ;; line 0:851
    (global.set $__line (i32.const 851))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t50 (i32.sub (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t50))
    (local.set $t34 (local.get $t50))
    ;; line 0:852
    (global.set $__line (i32.const 852))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 156))))
    (local.set $t50 (i32.mul (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 164)) (local.get $t50))
    (local.set $t41 (local.get $t50))
    ;; line 0:857
    (global.set $__line (i32.const 857))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 160))))
    (local.set $t50 (i32.mul (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 168)) (local.get $t50))
    (local.set $t42 (local.get $t50))
    ;; line 0:858
    (global.set $__line (i32.const 858))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 168))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 164))))
    (local.set $t50 (i32.sub (local.get $t50) (local.get $t51)))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 136))))
    (local.set $t50 (i32.div_s (local.get $t50) (local.get $t51)))
    (i32.store (i32.add (local.get $Pb) (i32.const 172)) (local.get $t50))
    (local.set $t43 (local.get $t50))
    ;; line 0:859
    (global.set $__line (i32.const 859))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 47))) ;; LF L228
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t50))
    (local.set $t35 (local.get $t50))
    ;; line 0:861
    (global.set $__line (i32.const 861))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t54 (i32.const 16))
    (local.set $t53 (i32.sub (local.get $t53) (local.get $t54)))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 47))) ;; LF L228
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t50))
    (local.set $t36 (local.get $t50))
    ;; line 0:862
    (global.set $__line (i32.const 862))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t54 (i32.const 32))
    (local.set $t53 (i32.sub (local.get $t53) (local.get $t54)))
    (local.set $t54 (i32.add (global.get $TB) (i32.const 47))) ;; LF L228
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t50))
    (local.set $t37 (local.get $t50))
    ;; line 0:863
    (global.set $__line (i32.const 863))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t54 (i32.const 20))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 42))) ;; LF L218
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 180)) (local.get $t50))
    (local.set $t45 (local.get $t50))
    ;; line 0:865
    (global.set $__line (i32.const 865))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t54 (i32.const 12))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 42))) ;; LF L218
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 184)) (local.get $t50))
    (local.set $t46 (local.get $t50))
    ;; line 0:866
    (global.set $__line (i32.const 866))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t54 (i32.const 4))
    (local.set $t55 (i32.add (global.get $TB) (i32.const 42))) ;; LF L218
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 188)) (local.get $t50))
    (local.set $t47 (local.get $t50))
    ;; line 0:867
    (global.set $__line (i32.const 867))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53)) ;; flush t53 (pre-stack-up)
    (local.set $t57 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 23))) ;; LF L124
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (local.set $t54 (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush FNAP result
    (local.set $t55 (i32.add (global.get $TB) (i32.const 28))) ;; LF L149
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    ;; line 0:870
    (global.set $__line (i32.const 870))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; flush t54 (pre-stack-up)
    (local.set $t58 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 24))) ;; LF L125
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 55)))
    (local.set $t55 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55)) ;; flush FNAP result
    (local.set $t56 (i32.add (global.get $TB) (i32.const 28))) ;; LF L149
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 51)))
    (local.set $t51 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51)) ;; flush FNAP result
    ;; line 0:871
    (global.set $__line (i32.const 871))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t53 (i32.const 0))
    (if (i32.lt_s (local.get $t52) (local.get $t53)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2)))) ;; LL L47
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t52 (i32.load (i32.shl (local.get $t52) (i32.const 2))))
    ;; RES L269: save result, jump to RSTACK
    (local.set $__res (local.get $t52))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      (local.set $__lab (i32.const 18)) (br $__dispatch)
      ) ;; close $__case_18 — LAB L270
    (local.set $t52 (i32.const 0))
    ;; RES L269: save result, jump to RSTACK
    (local.set $__res (local.get $t52))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      ) ;; close $__case_19 — LAB L269
    ;; RSTACK 52
    (local.set $t52 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 192)) (local.get $t52))
    (local.set $t48 (local.get $t52))
    ;; line 0:872
    (global.set $__line (i32.const 872))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (local.set $t53 (i32.const 0))
    (if (i32.lt_s (local.get $t52) (local.get $t53)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 37)) (i32.const 2)))) ;; LL L47
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t52 (i32.load (i32.shl (local.get $t52) (i32.const 2))))
    ;; RES L271: save result, jump to RSTACK
    (local.set $__res (local.get $t52))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L272
    (local.set $t52 (i32.const 0))
    ;; RES L271: save result, jump to RSTACK
    (local.set $__res (local.get $t52))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L271
    ;; RSTACK 52
    (local.set $t52 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 196)) (local.get $t52))
    (local.set $t49 (local.get $t52))
    ;; line 0:873
    (global.set $__line (i32.const 873))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t50 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t51 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    (i32.store (i32.add (local.get $Pb) (i32.const 204)) (local.get $t51)) ;; STORE slot 51
      (local.set $__lab (i32.const 43)) (br $__dispatch) ;; JUMP L274
      ) ;; close $__case_22 — LAB L273
    ;; line 0:876
    (global.set $__line (i32.const 876))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t52 (i32.sub (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.const 1024))
    (local.set $t52 (i32.mul (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 136))))
    (local.set $t52 (i32.div_s (local.get $t52) (local.get $t53)))
    (i32.store (i32.add (local.get $Pb) (i32.const 208)) (local.get $t52)) ;; STORE slot 52
    ;; line 0:877
    (global.set $__line (i32.const 877))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 132))))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t53 (i32.sub (local.get $t53) (local.get $t54)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 208))))
    (local.set $t53 (i32.mul (local.get $t53) (local.get $t54)))
    (local.set $t54 (i32.const 1024))
    (local.set $t53 (i32.div_s (local.get $t53) (local.get $t54)))
    (local.set $t54 (i32.load (i32.add (local.get $Pb) (i32.const 128))))
    (local.set $t53 (i32.add (local.get $t53) (local.get $t54)))
    (i32.store (i32.add (local.get $Pb) (i32.const 212)) (local.get $t53)) ;; STORE slot 53
    ;; line 0:878
    (global.set $__line (i32.const 878))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t54 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t54)) ;; STORE slot 54
    ;; line 0:879
    (global.set $__line (i32.const 879))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t55 (i32.const 0))
    (local.set $t56 (i32.const 0))
    (local.set $t57 (i32.const 0))
    (local.set $t58 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t55)) ;; STORE slot 55
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t56)) ;; STORE slot 56
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t57)) ;; STORE slot 57
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t58)) ;; STORE slot 58
    ;; line 0:880
    (global.set $__line (i32.const 880))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t59 (i32.const 0))
    (local.set $t60 (i32.const 0))
    (local.set $t61 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t59)) ;; STORE slot 59
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t60)) ;; STORE slot 60
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (local.get $t61)) ;; STORE slot 61
    ;; line 0:881
    (global.set $__line (i32.const 881))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (local.set $t63 (i32.const 0))
    (if (i32.le_s (local.get $t62) (local.get $t63)) (then
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    ))
    ;; line 0:882
    (global.set $__line (i32.const 882))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.const 1048576))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (local.set $t62 (i32.div_s (local.get $t62) (local.get $t63)))
    (i32.store (i32.add (local.get $Pb) (i32.const 216)) (local.get $t62))
    (local.set $t54 (local.get $t62))
    ;; line 0:883
    (global.set $__line (i32.const 883))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t67 (i32.add (global.get $TB) (i32.const 52))) ;; LF L244
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t67)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (local.set $t62 (call_indirect $ftable (type $bcpl_fn) (local.get $t67)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t62)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 220)) (local.get $t62))
    (local.set $t55 (local.get $t62))
    ;; line 0:885
    (global.set $__line (i32.const 885))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t67 (i32.add (global.get $TB) (i32.const 52))) ;; LF L244
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t67)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (local.set $t62 (call_indirect $ftable (type $bcpl_fn) (local.get $t67)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t62)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 224)) (local.get $t62))
    (local.set $t56 (local.get $t62))
    ;; line 0:886
    (global.set $__line (i32.const 886))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t63 (i32.const 480))
    (local.set $t62 (i32.sub (local.get $t62) (local.get $t63)))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t62)) ;; STORE slot 62
    ;; line 0:889
    (global.set $__line (i32.const 889))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t63 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 40)) (i32.const 2)))) ;; LL L50
    (local.set $t64 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (local.set $t63 (i32.mul (local.get $t63) (local.get $t64)))
    (local.set $t64 (i32.const 480))
    (local.set $t63 (i32.div_s (local.get $t63) (local.get $t64)))
    (local.set $t64 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 38)) (i32.const 2)))) ;; LL L48
    (local.set $t63 (i32.add (local.get $t63) (local.get $t64)))
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (local.get $t63)) ;; STORE slot 63
    ;; line 0:890
    (global.set $__line (i32.const 890))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t64 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 41)) (i32.const 2)))) ;; LL L51
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 248))))
    (local.set $t64 (i32.mul (local.get $t64) (local.get $t65)))
    (local.set $t65 (i32.const 480))
    (local.set $t64 (i32.div_s (local.get $t64) (local.get $t65)))
    (local.set $t65 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 39)) (i32.const 2)))) ;; LL L49
    (local.set $t64 (i32.add (local.get $t64) (local.get $t65)))
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t64)) ;; STORE slot 64
    ;; line 0:891
    (global.set $__line (i32.const 891))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.const 65535))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 252))))
    (local.set $t65 (i32.and (local.get $t65) (local.get $t66)))
    (local.set $t66 (i32.const 65535))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 256))))
    (local.set $t66 (i32.and (local.get $t66) (local.get $t67)))
    (local.set $t67 (i32.const 16))
    (local.set $t66 (i32.shl (local.get $t66) (local.get $t67)))
    (local.set $t65 (i32.or (local.get $t65) (local.get $t66)))
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65)) ;; STORE slot 65
    ;; line 0:892
    (global.set $__line (i32.const 892))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t71 (i32.add (global.get $TB) (i32.const 48))) ;; LF L231
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t71)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 66)))
    (local.set $t66 (call_indirect $ftable (type $bcpl_fn) (local.get $t71)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66)) ;; flush FNAP result
    ;; line 0:893
    (global.set $__line (i32.const 893))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.const 88))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 264))))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t72)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 67)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t72)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:894
    (global.set $__line (i32.const 894))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t67 (i32.add (local.get $t67) (local.get $t68)))
    (local.set $t67 (i32.load (i32.shl (local.get $t67) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67)) ;; STORE slot 67
    ;; line 0:897
    (global.set $__line (i32.const 897))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t69 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t68 (i32.add (local.get $t68) (local.get $t69)))
    (local.set $t68 (i32.load (i32.shl (local.get $t68) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68)) ;; STORE slot 68
    ;; line 0:898
    (global.set $__line (i32.const 898))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 268))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (if (i32.ge_s (local.get $t69) (local.get $t70)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
    ;; line 0:899
    (global.set $__line (i32.const 899))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t70 (i32.const 1))
    (local.set $t69 (i32.sub (local.get $t69) (local.get $t70)))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69)) ;; STORE slot 69
    ;; line 0:900
    (global.set $__line (i32.const 900))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 272))))
    (if (i32.le_s (local.get $t70) (local.get $t71)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
    ;; line 0:901
    (global.set $__line (i32.const 901))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 272))))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t70))
    (local.set $t69 (local.get $t70))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
      ) ;; close $__case_23 — LAB L277
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 268))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (if (i32.gt_s (local.get $t70) (local.get $t71)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    ;; line 0:902
    (global.set $__line (i32.const 902))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.const 0))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 196))))
    (if (i32.eq  (local.get $t70) (local.get $t71)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
    ;; line 0:903
    (global.set $__line (i32.const 903))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.const 87))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 268))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (local.set $t77 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 34)) (i32.const 2)))) ;; LL L44
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t77 (i32.sub (local.get $t77) (local.get $t78)))
    (local.set $t78 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t79 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 260))))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 196))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t82)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 70)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t82)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 25)) (br $__dispatch) ;; JUMP L281
      ) ;; close $__case_24 — LAB L279
    ;; line 0:904
    (global.set $__line (i32.const 904))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.const 66))
    (local.set $t74 (i32.const 29))
    (local.set $t75 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 268))))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (local.set $t79 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 29)) (i32.const 2)))) ;; LL L39
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t80)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 70)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t80)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
      ) ;; close $__case_25 — LAB L281
      (local.set $__lab (i32.const 26)) (br $__dispatch)
      ) ;; close $__case_26 — LAB L278
    ;; line 0:906
    (global.set $__line (i32.const 906))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t72 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t71 (i32.add (local.get $t71) (local.get $t72)))
    (i32.store (i32.shl (local.get $t71) (i32.const 2)) (local.get $t70))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L276
    ;; line 0:907
    (global.set $__line (i32.const 907))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t68 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t67 (i32.add (local.get $t67) (local.get $t68)))
    (local.set $t67 (i32.load (i32.shl (local.get $t67) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67)) ;; STORE slot 67
    ;; line 0:911
    (global.set $__line (i32.const 911))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t69 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t68 (i32.add (local.get $t68) (local.get $t69)))
    (local.set $t68 (i32.load (i32.shl (local.get $t68) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68)) ;; STORE slot 68
    ;; line 0:912
    (global.set $__line (i32.const 912))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 272))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 224))))
    (if (i32.le_s (local.get $t69) (local.get $t70)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    ))
    ;; line 0:913
    (global.set $__line (i32.const 913))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t69 (i32.const 1))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 224))))
    (local.set $t69 (i32.add (local.get $t69) (local.get $t70)))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69)) ;; STORE slot 69
    ;; line 0:914
    (global.set $__line (i32.const 914))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 268))))
    (if (i32.ge_s (local.get $t70) (local.get $t71)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    ))
    ;; line 0:915
    (global.set $__line (i32.const 915))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 268))))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t70))
    (local.set $t69 (local.get $t70))
      (local.set $__lab (i32.const 28)) (br $__dispatch)
      ) ;; close $__case_28 — LAB L283
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 272))))
    (if (i32.gt_s (local.get $t70) (local.get $t71)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
    ;; line 0:916
    (global.set $__line (i32.const 916))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.const 0))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (if (i32.eq  (local.get $t70) (local.get $t71)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    ))
    ;; line 0:917
    (global.set $__line (i32.const 917))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.const 87))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 272))))
    (local.set $t77 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 34)) (i32.const 2)))) ;; LL L44
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t77 (i32.sub (local.get $t77) (local.get $t78)))
    (local.set $t78 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t79 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 260))))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 192))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t82)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 70)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t82)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 30)) (br $__dispatch) ;; JUMP L287
      ) ;; close $__case_29 — LAB L285
    ;; line 0:918
    (global.set $__line (i32.const 918))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.const 66))
    (local.set $t74 (i32.const 29))
    (local.set $t75 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 276))))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 272))))
    (local.set $t79 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 30)) (i32.const 2)))) ;; LL L40
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t80)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 70)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t80)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 30)) (br $__dispatch)
      ) ;; close $__case_30 — LAB L287
      (local.set $__lab (i32.const 31)) (br $__dispatch)
      ) ;; close $__case_31 — LAB L284
    ;; line 0:920
    (global.set $__line (i32.const 920))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 224))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t72 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t71 (i32.add (local.get $t71) (local.get $t72)))
    (i32.store (i32.shl (local.get $t71) (i32.const 2)) (local.get $t70))
      (local.set $__lab (i32.const 32)) (br $__dispatch)
      ) ;; close $__case_32 — LAB L282
    ;; line 0:921
    (global.set $__line (i32.const 921))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t63 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t62 (i32.add (local.get $t62) (local.get $t63)))
    (local.set $t62 (i32.load (i32.shl (local.get $t62) (i32.const 2))))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t64 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t63 (i32.add (local.get $t63) (local.get $t64)))
    (local.set $t63 (i32.load (i32.shl (local.get $t63) (i32.const 2))))
    (if (i32.le_s (local.get $t62) (local.get $t63)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    ))
    ;; line 0:925
    (global.set $__line (i32.const 925))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t66 (i32.add (global.get $TB) (i32.const 50))) ;; LF L237
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t66)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t66)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 42)) (br $__dispatch) ;; JUMP L275
      ) ;; close $__case_33 — LAB L288
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t62 (i32.sub (local.get $t62) (local.get $t63)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 172))))
    (local.set $t62 (i32.mul (local.get $t62) (local.get $t63)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 164))))
    (local.set $t62 (i32.add (local.get $t62) (local.get $t63)))
    (i32.store (i32.add (local.get $Pb) (i32.const 236)) (local.get $t62))
    (local.set $t59 (local.get $t62))
    ;; line 0:928
    (global.set $__line (i32.const 928))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 236))))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 212))))
    (local.set $t62 (i32.div_s (local.get $t62) (local.get $t63)))
    (i32.store (i32.add (local.get $Pb) (i32.const 240)) (local.get $t62))
    (local.set $t60 (local.get $t62))
    ;; line 0:929
    (global.set $__line (i32.const 929))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 176))))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 240))))
    (local.set $t62 (i32.add (local.get $t62) (local.get $t63)))
    (i32.store (i32.add (local.get $Pb) (i32.const 244)) (local.get $t62))
    (local.set $t61 (local.get $t62))
    ;; line 0:930
    (global.set $__line (i32.const 930))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (if (i32.eqz (local.get $t62)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    ))
    ;; line 0:932
    (global.set $__line (i32.const 932))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t67 (i32.add (global.get $TB) (i32.const 52))) ;; LF L244
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t67)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (local.set $t62 (call_indirect $ftable (type $bcpl_fn) (local.get $t67)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t62)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 232)) (local.get $t62))
    (local.set $t58 (local.get $t62))
    ;; line 0:933
    (global.set $__line (i32.const 933))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t67 (i32.add (global.get $TB) (i32.const 52))) ;; LF L244
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t67)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (local.set $t62 (call_indirect $ftable (type $bcpl_fn) (local.get $t67)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (local.get $t62)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 228)) (local.get $t62))
    (local.set $t57 (local.get $t62))
    ;; line 0:934
    (global.set $__line (i32.const 934))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (if (i32.ge_s (local.get $t62) (local.get $t63)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    ;; line 0:935
    (global.set $__line (i32.const 935))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 188))))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 148))))
    (local.set $t73 (i32.add (global.get $TB) (i32.const 53))) ;; LF L245
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t73)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t73)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:936
    (global.set $__line (i32.const 936))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.const 1))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t62 (i32.add (local.get $t62) (local.get $t63)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t64 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t63 (i32.add (local.get $t63) (local.get $t64)))
    (local.set $t63 (i32.load (i32.shl (local.get $t63) (i32.const 2))))
    (if (i32.le_s (local.get $t62) (local.get $t63)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    ))
    ;; line 0:938
    (global.set $__line (i32.const 938))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.const 1))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 232))))
    (local.set $t62 (i32.add (local.get $t62) (local.get $t63)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t64 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t63 (i32.add (local.get $t63) (local.get $t64)))
    (i32.store (i32.shl (local.get $t63) (i32.const 2)) (local.get $t62))
      (local.set $__lab (i32.const 34)) (br $__dispatch)
      ) ;; close $__case_34 — LAB L293
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t63 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t62 (i32.add (local.get $t62) (local.get $t63)))
    (local.set $t62 (i32.load (i32.shl (local.get $t62) (i32.const 2))))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t64 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t63 (i32.add (local.get $t63) (local.get $t64)))
    (local.set $t63 (i32.load (i32.shl (local.get $t63) (i32.const 2))))
    (if (i32.le_s (local.get $t62) (local.get $t63)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    ))
    ;; line 0:939
    (global.set $__line (i32.const 939))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t66 (i32.add (global.get $TB) (i32.const 50))) ;; LF L237
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t66)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t66)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 35)) (br $__dispatch)
      ) ;; close $__case_35 — LAB L294
      (local.set $__lab (i32.const 36)) (br $__dispatch)
      ) ;; close $__case_36 — LAB L292
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (if (i32.le_s (local.get $t62) (local.get $t63)) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ))
    ;; line 0:941
    (global.set $__line (i32.const 941))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 228))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 224))))
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 228))))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 184))))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 144))))
    (local.set $t73 (i32.add (global.get $TB) (i32.const 53))) ;; LF L245
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t73)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t73)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:942
    (global.set $__line (i32.const 942))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 228))))
    (local.set $t63 (i32.const 1))
    (local.set $t62 (i32.sub (local.get $t62) (local.get $t63)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t64 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t63 (i32.add (local.get $t63) (local.get $t64)))
    (local.set $t63 (i32.load (i32.shl (local.get $t63) (i32.const 2))))
    (if (i32.ge_s (local.get $t62) (local.get $t63)) (then
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    ))
    ;; line 0:944
    (global.set $__line (i32.const 944))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 228))))
    (local.set $t63 (i32.const 1))
    (local.set $t62 (i32.sub (local.get $t62) (local.get $t63)))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t64 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t63 (i32.add (local.get $t63) (local.get $t64)))
    (i32.store (i32.shl (local.get $t63) (i32.const 2)) (local.get $t62))
      (local.set $__lab (i32.const 37)) (br $__dispatch)
      ) ;; close $__case_37 — LAB L296
    (local.set $t62 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t63 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t62 (i32.add (local.get $t62) (local.get $t63)))
    (local.set $t62 (i32.load (i32.shl (local.get $t62) (i32.const 2))))
    (local.set $t63 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t64 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t63 (i32.add (local.get $t63) (local.get $t64)))
    (local.set $t63 (i32.load (i32.shl (local.get $t63) (i32.const 2))))
    (if (i32.le_s (local.get $t62) (local.get $t63)) (then
      (local.set $__lab (i32.const 38)) (br $__dispatch)
    ))
    ;; line 0:945
    (global.set $__line (i32.const 945))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t66 (i32.add (global.get $TB) (i32.const 50))) ;; LF L237
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t66)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t66)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 41)) (br $__dispatch) ;; JUMP L291
      ) ;; close $__case_38 — LAB L297
      (local.set $__lab (i32.const 41)) (br $__dispatch) ;; JUMP L291
      ) ;; close $__case_39 — LAB L295
      (local.set $__lab (i32.const 41)) (br $__dispatch) ;; JUMP L291
      ) ;; close $__case_40 — LAB L289
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t66 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t67 (i32.load (i32.add (local.get $Pb) (i32.const 224))))
    (local.set $t68 (i32.load (i32.add (local.get $Pb) (i32.const 220))))
    (local.set $t69 (i32.load (i32.add (local.get $Pb) (i32.const 216))))
    (local.set $t70 (i32.load (i32.add (local.get $Pb) (i32.const 244))))
    (local.set $t71 (i32.load (i32.add (local.get $Pb) (i32.const 180))))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 140))))
    (local.set $t73 (i32.add (global.get $TB) (i32.const 53))) ;; LF L245
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 264)) (local.get $t66))
    (i32.store (i32.add (local.get $Pb) (i32.const 268)) (local.get $t67))
    (i32.store (i32.add (local.get $Pb) (i32.const 272)) (local.get $t68))
    (i32.store (i32.add (local.get $Pb) (i32.const 276)) (local.get $t69))
    (i32.store (i32.add (local.get $Pb) (i32.const 280)) (local.get $t70))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t73)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t73)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:948
    (global.set $__line (i32.const 948))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t65 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t66 (i32.add (global.get $TB) (i32.const 50))) ;; LF L237
    (i32.store (i32.add (local.get $Pb) (i32.const 260)) (local.get $t65))
    (i32.store (i32.add (local.get $Pb) (i32.const 248)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 252)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 256)) (local.get $t66)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 62)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t66)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 41)) (br $__dispatch)
      ) ;; close $__case_41 — LAB L291
      (local.set $__lab (i32.const 42)) (br $__dispatch)
      ) ;; close $__case_42 — LAB L275
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t53 (i32.const 1))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (i32.store (i32.add (local.get $Pb) (i32.const 200)) (local.get $t52))
    (local.set $t50 (local.get $t52))
      (local.set $__lab (i32.const 43)) (br $__dispatch)
      ) ;; close $__case_43 — LAB L274
    (local.set $t52 (i32.load (i32.add (local.get $Pb) (i32.const 200))))
    (local.set $t53 (i32.load (i32.add (local.get $Pb) (i32.const 204))))
    (if (i32.le_s (local.get $t52) (local.get $t53)) (then
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
  ) ;; end func $fn_L250

  ;; BCPL fn render_subsector (L298)
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
    ;; line 0:955
    (global.set $__line (i32.const 955))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 4))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 13)) (i32.const 2)))) ;; LL L23
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:956
    (global.set $__line (i32.const 956))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 0:957
    (global.set $__line (i32.const 957))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:958
    (global.set $__line (i32.const 958))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L300
      ) ;; close $__case_1 — LAB L299
    ;; line 0:959
    (global.set $__line (i32.const 959))
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
      ) ;; close $__case_2 — LAB L301
    ;; line 0:960
    (global.set $__line (i32.const 960))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 12))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 14)) (i32.const 2)))) ;; LL L24
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 54))) ;; LF L250
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
      ) ;; close $__case_3 — LAB L300
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
  ) ;; end func $fn_L298

  ;; BCPL fn render_node (L302)
  (func $fn_L302 (export "fn_L302") (type $bcpl_fn)
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
    ;; line 0:965
    (global.set $__line (i32.const 965))
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
      ) ;; close $__case_1 — LAB L303
    ;; line 0:966
    (global.set $__line (i32.const 966))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 32768))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.and (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.const 0))
    (if (i32.eq  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:967
    (global.set $__line (i32.const 967))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const -32769))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 55))) ;; LF L298
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:968
    (global.set $__line (i32.const 968))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L304
    ;; line 0:969
    (global.set $__line (i32.const 969))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 28))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.mul (local.get $t4) (local.get $t5)))
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:971
    (global.set $__line (i32.const 971))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 30))) ;; LF L154
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
    ;; line 0:972
    (global.set $__line (i32.const 972))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t10 (i32.const 24))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:973
    (global.set $__line (i32.const 973))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t11 (i32.const 26))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 5))) ;; LF L70
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 0:974
    (global.set $__line (i32.const 974))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:975
    (global.set $__line (i32.const 975))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 56))) ;; LF L302
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:976
    (global.set $__line (i32.const 976))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 56))) ;; LF L302
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
      ) ;; close $__case_3 — LAB L305
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 56))) ;; LF L302
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:977
    (global.set $__line (i32.const 977))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 56))) ;; LF L302
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
  ) ;; end func $fn_L302

  ;; BCPL fn fill_remaining (L306)
  (func $fn_L306 (export "fn_L306") (type $bcpl_fn)
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
    ;; line 0:981
    (global.set $__line (i32.const 981))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L308
      ) ;; close $__case_1 — LAB L307
    ;; line 0:982
    (global.set $__line (i32.const 982))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 26)) (i32.const 2)))) ;; LL L36
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:983
    (global.set $__line (i32.const 983))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 27)) (i32.const 2)))) ;; LL L37
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:984
    (global.set $__line (i32.const 984))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.gt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:985
    (global.set $__line (i32.const 985))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.const 360))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:986
    (global.set $__line (i32.const 986))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:987
    (global.set $__line (i32.const 987))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 360))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:988
    (global.set $__line (i32.const 988))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 359))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L311
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
      ) ;; close $__case_3 — LAB L310
    ;; line 0:989
    (global.set $__line (i32.const 989))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 360))
    (if (i32.lt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:991
    (global.set $__line (i32.const 991))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:992
    (global.set $__line (i32.const 992))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 360))
    (if (i32.ge_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:993
    (global.set $__line (i32.const 993))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 360))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L313
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
      ) ;; close $__case_5 — LAB L312
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L309
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L308
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
  ) ;; end func $fn_L306

  ;; BCPL fn drawframe (L314)
  (func $fn_L314 (export "fn_L314") (type $bcpl_fn)
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
    ;; line 0:999
    (global.set $__line (i32.const 999))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 49))) ;; LF L234
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1000
    (global.set $__line (i32.const 1000))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t7 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t8 (i32.add (global.get $TB) (i32.const 32))) ;; LF L162
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
    ;; line 0:1001
    (global.set $__line (i32.const 1001))
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
    ;; line 0:1003
    (global.set $__line (i32.const 1003))
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
    ;; line 0:1004
    (global.set $__line (i32.const 1004))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 39)) (i32.const 2)))) ;; LL L49
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 40)) (i32.const 2))
      (local.get $t3))
    ;; line 0:1005
    (global.set $__line (i32.const 1005))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 38)) (i32.const 2)))) ;; LL L48
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 41)) (i32.const 2))
      (local.get $t3))
    ;; line 0:1006
    (global.set $__line (i32.const 1006))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 15)) (i32.const 2)))) ;; LL L25
    (local.set $t7 (i32.add (global.get $TB) (i32.const 56))) ;; LF L302
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1007
    (global.set $__line (i32.const 1007))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $TB) (i32.const 57))) ;; LF L306
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1008
    (global.set $__line (i32.const 1008))
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
  ) ;; end func $fn_L314

  ;; BCPL fn start (L315)
  (func $fn_L315 (export "fn_L315") (type $bcpl_fn)
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
    ;; line 0:1014
    (global.set $__line (i32.const 1014))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    ;; line 0:1015
    (global.set $__line (i32.const 1015))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:1016
    (global.set $__line (i32.const 1016))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:1017
    (global.set $__line (i32.const 1017))
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
    ;; line 0:1018
    (global.set $__line (i32.const 1018))
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
    ;; line 0:1019
    (global.set $__line (i32.const 1019))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    ;; line 0:1020
    (global.set $__line (i32.const 1020))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    ;; line 0:1021
    (global.set $__line (i32.const 1021))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 0:1022
    (global.set $__line (i32.const 1022))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 0))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    ;; line 0:1023
    (global.set $__line (i32.const 1023))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 3))) ;; LF L59
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
    ;; line 0:1025
    (global.set $__line (i32.const 1025))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 60))) ;; LSTR
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
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L316
    ;; line 0:1027
    (global.set $__line (i32.const 1027))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t28))
    (local.set $t8 (local.get $t28))
    ;; line 0:1029
    (global.set $__line (i32.const 1029))
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
    ;; line 0:1030
    (global.set $__line (i32.const 1030))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 66))) ;; LSTR
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
      ) ;; close $__case_2 — LAB L317
    (local.set $t28 (i32.const 2))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1031
    (global.set $__line (i32.const 1031))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 4))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1033
    (global.set $__line (i32.const 1033))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 8))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1034
    (global.set $__line (i32.const 1034))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t34 (i32.add (global.get $TB) (i32.const 10))) ;; LF L88
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
    ;; line 0:1036
    (global.set $__line (i32.const 1036))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t29 (i32.const 0))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:1037
    (global.set $__line (i32.const 1037))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 71))) ;; LSTR
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
      ) ;; close $__case_3 — LAB L318
    (local.set $t31 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1038
    (global.set $__line (i32.const 1038))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 9))) ;; LF L84
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
    (local.set $t35 (i32.add (global.get $SB) (i32.const 77))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L92
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
    ;; line 0:1040
    (global.set $__line (i32.const 1040))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 80))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L92
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
    ;; line 0:1041
    (global.set $__line (i32.const 1041))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 83))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L92
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
    ;; line 0:1042
    (global.set $__line (i32.const 1042))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 86))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L92
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
    ;; line 0:1043
    (global.set $__line (i32.const 1043))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 88))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L92
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
    ;; line 0:1044
    (global.set $__line (i32.const 1044))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 90))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L92
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
    ;; line 0:1045
    (global.set $__line (i32.const 1045))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 93))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L92
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
    ;; line 0:1046
    (global.set $__line (i32.const 1046))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t35 (i32.add (global.get $SB) (i32.const 95))) ;; LSTR
    (local.set $t36 (i32.add (global.get $TB) (i32.const 11))) ;; LF L92
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
    ;; line 0:1047
    (global.set $__line (i32.const 1047))
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
      ) ;; close $__case_4 — LAB L320
    ;; line 0:1048
    (global.set $__line (i32.const 1048))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 97))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1050
    (global.set $__line (i32.const 1050))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_5 — LAB L319
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1052
    (global.set $__line (i32.const 1052))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1053
    (global.set $__line (i32.const 1053))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1054
    (global.set $__line (i32.const 1054))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1055
    (global.set $__line (i32.const 1055))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t29 (i32.const 30))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28))
    (local.set $t25 (local.get $t28))
    ;; line 0:1056
    (global.set $__line (i32.const 1056))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1057
    (global.set $__line (i32.const 1057))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1058
    (global.set $__line (i32.const 1058))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1059
    (global.set $__line (i32.const 1059))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1060
    (global.set $__line (i32.const 1060))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1061
    (global.set $__line (i32.const 1061))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1062
    (global.set $__line (i32.const 1062))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1063
    (global.set $__line (i32.const 1063))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 13))) ;; LF L102
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
    ;; line 0:1066
    (global.set $__line (i32.const 1066))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L322
      ) ;; close $__case_6 — LAB L321
    ;; line 0:1068
    (global.set $__line (i32.const 1068))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 16))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t30 (i32.mul (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    ;; line 0:1069
    (global.set $__line (i32.const 1069))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 102))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L73
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
    ;; line 0:1070
    (global.set $__line (i32.const 1070))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t31))
    (local.set $t18 (local.get $t31))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L323
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 104))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L73
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
    ;; line 0:1071
    (global.set $__line (i32.const 1071))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t31))
    (local.set $t19 (local.get $t31))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L324
    (local.set $t34 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t35 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t36 (i32.add (global.get $SB) (i32.const 106))) ;; LSTR
    (local.set $t37 (i32.add (global.get $TB) (i32.const 7))) ;; LF L73
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
    ;; line 0:1072
    (global.set $__line (i32.const 1072))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t31))
    (local.set $t20 (local.get $t31))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L325
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L322
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
      ) ;; close $__case_11 — LAB L327
    ;; line 0:1074
    (global.set $__line (i32.const 1074))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 109))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1075
    (global.set $__line (i32.const 1075))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t28))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_12 — LAB L326
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 16))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t32 (i32.mul (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.const 0))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1077
    (global.set $__line (i32.const 1077))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1078
    (global.set $__line (i32.const 1078))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1079
    (global.set $__line (i32.const 1079))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1080
    (global.set $__line (i32.const 1080))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 4))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 17)) (i32.const 2))
      (local.get $t28))
    ;; line 0:1081
    (global.set $__line (i32.const 1081))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.const 0))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 19)) (i32.const 2)))) ;; LL L29
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
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
    ;; line 0:1082
    (global.set $__line (i32.const 1082))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 119))) ;; LSTR
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
    ;; line 0:1083
    (global.set $__line (i32.const 1083))
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
    ;; line 0:1086
    (global.set $__line (i32.const 1086))
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
    ;; line 0:1087
    (global.set $__line (i32.const 1087))
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
    ;; line 0:1088
    (global.set $__line (i32.const 1088))
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
    ;; line 0:1089
    (global.set $__line (i32.const 1089))
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
    ;; line 0:1090
    (global.set $__line (i32.const 1090))
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
    ;; line 0:1091
    (global.set $__line (i32.const 1091))
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
    ;; line 0:1092
    (global.set $__line (i32.const 1092))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 36))) ;; LF L183
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1094
    (global.set $__line (i32.const 1094))
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
    ;; line 0:1096
    (global.set $__line (i32.const 1096))
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
    ;; line 0:1097
    (global.set $__line (i32.const 1097))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $TB) (i32.const 16))) ;; LF L112
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1098
    (global.set $__line (i32.const 1098))
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
    ;; line 0:1100
    (global.set $__line (i32.const 1100))
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
    ;; line 0:1101
    (global.set $__line (i32.const 1101))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 33))) ;; LF L166
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
    ;; line 0:1103
    (global.set $__line (i32.const 1103))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 132))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1104
    (global.set $__line (i32.const 1104))
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
      ) ;; close $__case_13 — LAB L328
    (local.set $t31 (i32.add (global.get $SB) (i32.const 137))) ;; LSTR
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
    ;; line 0:1105
    (global.set $__line (i32.const 1105))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t32 (i32.add (global.get $TB) (i32.const 43))) ;; LF L222
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1107
    (global.set $__line (i32.const 1107))
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
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L69
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    ;; line 0:1108
    (global.set $__line (i32.const 1108))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t30 (i32.const 26))
    (local.set $t29 (i32.div_s (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    ;; line 0:1109
    (global.set $__line (i32.const 1109))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 29))) ;; LF L151
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1110
    (global.set $__line (i32.const 1110))
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
    ;; line 0:1113
    (global.set $__line (i32.const 1113))
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
    ;; line 0:1114
    (global.set $__line (i32.const 1114))
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
    ;; line 0:1116
    (global.set $__line (i32.const 1116))
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
    ;; line 0:1117
    (global.set $__line (i32.const 1117))
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
    ;; line 0:1119
    (global.set $__line (i32.const 1119))
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
      ) ;; close $__case_14 — LAB L329
    ;; line 0:1120
    (global.set $__line (i32.const 1120))
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
      ) ;; close $__case_15 — LAB L330
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (if (i32.eqz (local.get $t28)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L331
    (local.set $t28 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    ;; line 0:1123
    (global.set $__line (i32.const 1123))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    ;; line 0:1124
    (global.set $__line (i32.const 1124))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 34))) ;; LF L170
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1125
    (global.set $__line (i32.const 1125))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const 87))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
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
    (local.set $t34 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
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
      ) ;; close $__case_17 — LAB L334
    ;; line 0:1126
    (global.set $__line (i32.const 1126))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 1))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 18)) (br $__dispatch)
      ) ;; close $__case_18 — LAB L333
    (local.set $t33 (i32.const 83))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
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
    (local.set $t34 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
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
      ) ;; close $__case_19 — LAB L336
    ;; line 0:1127
    (global.set $__line (i32.const 1127))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.sub (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L335
    (local.set $t33 (i32.const 65))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
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
    (local.set $t34 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
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
      ) ;; close $__case_21 — LAB L338
    ;; line 0:1128
    (global.set $__line (i32.const 1128))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t31 (i32.const 64))
    (local.set $t30 (i32.sub (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30))
    (local.set $t29 (local.get $t30))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
      ) ;; close $__case_22 — LAB L337
    (local.set $t33 (i32.const 68))
    (local.set $t34 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
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
    (local.set $t34 (i32.add (global.get $TB) (i32.const 35))) ;; LF L181
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
      ) ;; close $__case_23 — LAB L340
    ;; line 0:1129
    (global.set $__line (i32.const 1129))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 64))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30))
    (local.set $t29 (local.get $t30))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
      ) ;; close $__case_24 — LAB L339
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
    ;; line 0:1131
    (global.set $__line (i32.const 1131))
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
    ;; line 0:1132
    (global.set $__line (i32.const 1132))
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
    ;; line 0:1133
    (global.set $__line (i32.const 1133))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2)))) ;; LL L41
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 31)) (i32.const 2))
      (local.get $t32))
    ;; line 0:1134
    (global.set $__line (i32.const 1134))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 124))))
    (local.set $t33 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2)))) ;; LL L42
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 32)) (i32.const 2))
      (local.get $t32))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
      ) ;; close $__case_25 — LAB L341
    ;; line 0:1135
    (global.set $__line (i32.const 1135))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 0))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    ;; line 0:1137
    (global.set $__line (i32.const 1137))
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
      ) ;; close $__case_26 — LAB L342
    (local.set $t33 (i32.add (global.get $TB) (i32.const 58))) ;; LF L314
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1139
    (global.set $__line (i32.const 1139))
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
      ) ;; close $__case_27 — LAB L332
    ;; line 0:1122
    (global.set $__line (i32.const 1122))
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
    ;; line 0:1143
    (global.set $__line (i32.const 1143))
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
    ;; line 0:1144
    (global.set $__line (i32.const 1144))
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
    (local.set $t31 (i32.add (global.get $SB) (i32.const 146))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:1145
    (global.set $__line (i32.const 1145))
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
  ) ;; end func $fn_L315

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L52) (ref.func $fn_L54) (ref.func $fn_L57) (ref.func $fn_L59) (ref.func $fn_L69) (ref.func $fn_L70) (ref.func $fn_L71) (ref.func $fn_L73) (ref.func $fn_L81) (ref.func $fn_L84) (ref.func $fn_L88) (ref.func $fn_L92) (ref.func $fn_L97) (ref.func $fn_L102) (ref.func $fn_L106) (ref.func $fn_L111) (ref.func $fn_L112) (ref.func $fn_L115) (ref.func $fn_L119) (ref.func $fn_L120) (ref.func $fn_L121) (ref.func $fn_L122) (ref.func $fn_L123) (ref.func $fn_L124) (ref.func $fn_L125) (ref.func $fn_L126) (ref.func $fn_L133) (ref.func $fn_L137) (ref.func $fn_L149) (ref.func $fn_L151) (ref.func $fn_L154) (ref.func $fn_L156) (ref.func $fn_L162) (ref.func $fn_L166) (ref.func $fn_L170) (ref.func $fn_L181) (ref.func $fn_L183) (ref.func $fn_L186) (ref.func $fn_L190) (ref.func $fn_L194) (ref.func $fn_L195) (ref.func $fn_L203) (ref.func $fn_L218) (ref.func $fn_L222) (ref.func $fn_L225) (ref.func $fn_L226) (ref.func $fn_L227) (ref.func $fn_L228) (ref.func $fn_L231) (ref.func $fn_L234) (ref.func $fn_L237) (ref.func $fn_L239) (ref.func $fn_L244) (ref.func $fn_L245) (ref.func $fn_L250) (ref.func $fn_L298) (ref.func $fn_L302) (ref.func $fn_L306) (ref.func $fn_L314) (ref.func $fn_L315))

  ;; static data — passive segment (150 words)
  (data $stat "\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\6C\6F\61\64\65\64\20\57\41\44\3A\20\00\00\00\17\63\61\63\68\65\64\20\25\6E\20\75\6E\69\71\75\65\20\66\6C\61\74\73\0A\1E\63\6F\6D\70\6F\73\69\74\65\64\20\25\6E\20\75\6E\69\71\75\65\20\74\65\78\74\75\72\65\73\0A\00\17\4E\6F\20\57\41\44\20\61\73\73\65\74\20\75\70\6C\6F\61\64\65\64\2E\0A\13\41\73\73\65\74\20\69\73\20\61\6E\20\69\6D\61\67\65\2E\0A\0F\4E\6F\20\6D\61\70\20\6D\61\72\6B\65\72\2E\0A\05\6D\61\70\3A\20\00\00\08\56\45\52\54\45\58\45\53\00\00\00\08\4C\49\4E\45\44\45\46\53\00\00\00\08\53\49\44\45\44\45\46\53\00\00\00\07\53\45\43\54\4F\52\53\05\4E\4F\44\45\53\00\00\08\53\53\45\43\54\4F\52\53\00\00\00\04\53\45\47\53\00\00\00\06\54\48\49\4E\47\53\00\12\4D\69\73\73\69\6E\67\20\6D\61\70\20\6C\75\6D\70\2E\0A\00\07\50\4C\41\59\50\41\4C\06\50\4E\41\4D\45\53\00\08\54\45\58\54\55\52\45\31\00\00\00\25\4D\69\73\73\69\6E\67\20\50\4C\41\59\50\41\4C\20\2F\20\50\4E\41\4D\45\53\20\2F\20\54\45\58\54\55\52\45\31\2E\0A\00\00\30\50\4C\41\59\50\41\4C\20\40\25\6E\20\20\50\4E\41\4D\45\53\20\40\25\6E\20\28\25\6E\29\20\20\54\45\58\54\55\52\45\31\20\40\25\6E\20\28\25\6E\29\0A\00\00\00\12\4E\6F\20\70\6C\61\79\65\72\31\20\73\74\61\72\74\2E\0A\00\20\70\6C\61\79\65\72\20\73\74\61\72\74\20\20\70\78\3D\25\6E\20\70\79\3D\25\6E\20\70\61\3D\25\6E\0A\00\00\00\0C\64\77\6C\74\20\65\78\69\74\65\64\0A\00\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 600))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 60))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 59))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 150))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 60))
)
 ;; end module
