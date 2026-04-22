(module
  (type $bcpl_fn (func (result i32)))
  (import "env" "mem"    (memory 4))
  (import "env" "ftable" (table $ftable 256 funcref))
  (import "env" "P" (global $P (mut i32)))
  (import "env" "G" (global $G i32))
  (import "env" "static_base" (global $SB i32))
  (import "env" "table_base"  (global $TB i32))

  ;; SECTION: rdargs
  ;; BCPL fn start (L10)
  (func $fn_L10 (export "fn_L10") (type $bcpl_fn)
    (local $__lab i32)
    (local $t0 i32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    (local.set $t55 (i32.add (global.get $SB) (i32.const 0))) ;; LSTR
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55)) ;; STORE slot 55
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220))))
    (local.set $t60 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t61 (i32.const 50))
    (local.set $t62 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 408))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 244)) (local.get $t61))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t62)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (local.set $t56 (call_indirect $ftable (type $bcpl_fn) (local.get $t62)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56)) ;; flush FNAP result
    (local.set $t57 (i32.const 0))
    (if (i32.ne  (local.get $t56) (local.get $t57)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t59 (i32.add (global.get $SB) (i32.const 8))) ;; LSTR
    (local.set $t60 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220))))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (local.set $t56 (i32.const 20))
    ;; FNRN
    (local.set $t0 (local.get $t56))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L11 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L11
    (local.set $t59 (i32.add (global.get $SB) (i32.const 17))) ;; LSTR
    (local.set $t60 (i32.const 0))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (local.set $t59 (i32.add (global.get $SB) (i32.const 21))) ;; LSTR
    (local.set $t60 (i32.const 1))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    (if (i32.eqz (local.get $t60)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t60 (i32.const 1))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    ;; RES L12: save result, jump to RSTACK
    (local.set $t0 (local.get $t60))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L13 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L13
    (local.set $t60 (i32.add (global.get $SB) (i32.const 25))) ;; LSTR
    ;; RES L12: save result, jump to RSTACK
    (local.set $t0 (local.get $t60))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L12 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L12
    ;; RSTACK 60
    (local.set $t60 (local.get $t0)) ;; restore RES result
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (local.set $t56 (i32.const 2))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t56 (i32.add (local.get $t56) (local.get $t57)))
    (local.set $t56 (i32.load (i32.shl (local.get $t56) (i32.const 2))))
    (if (i32.eqz (local.get $t56)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t59 (i32.add (global.get $SB) (i32.const 27))) ;; LSTR
    (local.set $t60 (i32.const 2))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L14 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L14
    (local.set $t59 (i32.add (global.get $SB) (i32.const 31))) ;; LSTR
    (local.set $t60 (i32.const 3))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t60 (i32.add (local.get $t60) (local.get $t61)))
    (local.set $t60 (i32.load (i32.shl (local.get $t60) (i32.const 2))))
    (local.set $t61 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 56)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
    (local.set $t56 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t56))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    (local.set $t3 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t3))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L10

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L10))

  ;; static data — passive segment (35 words)
  (data $stat "\1E\46\52\4F\4D\2F\41\2C\54\4F\2F\4B\2C\53\49\5A\45\2F\4B\2F\4E\2C\56\45\52\42\4F\53\45\2F\53\00\21\72\64\61\72\67\73\20\66\61\69\6C\65\64\2E\20\65\78\70\65\63\74\65\64\20\73\70\65\63\3A\20\25\73\0A\00\00\0D\46\52\4F\4D\20\20\20\20\3D\20\25\73\0A\00\00\0D\54\4F\20\20\20\20\20\20\3D\20\25\73\0A\00\00\06\28\6E\6F\6E\65\29\00\0D\53\49\5A\45\20\20\20\20\3D\20\25\6E\0A\00\00\0D\56\45\52\42\4F\53\45\20\3D\20\25\6E\0A\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 140))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 1))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 0))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 35))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 1))
)
 ;; end module
