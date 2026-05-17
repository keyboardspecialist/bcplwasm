(module
  (type $bcpl_fn (func (result i32)))
  (import "env" "mem"    (memory 4))
  (import "env" "ftable" (table $ftable 256 funcref))
  (import "env" "P" (global $P (mut i32)))
  (import "env" "G" (global $G i32))
  (import "env" "static_base" (global $SB i32))
  (import "env" "table_base"  (global $TB i32))

  ;; SECTION: raysk
  ;; BCPL fn fsin (L21)
  (func $fn_L21 (export "fn_L21") (type $bcpl_fn)
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
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L23
    )) ;; end block / LAB L22 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L22
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L23 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L23
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.gt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L25
    )) ;; end block / LAB L24 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L24
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L25 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L25
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
  ) ;; end func $fn_L21

  ;; BCPL fn fcos (L26)
  (func $fn_L26 (export "fn_L26") (type $bcpl_fn)
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
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.const 1070141402))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 0))) ;; LF L21
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
  ) ;; end func $fn_L26

  ;; BCPL fn buildtrig (L27)
  (func $fn_L27 (export "fn_L27") (type $bcpl_fn)
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
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L29
    )) ;; end block / LAB L28 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L28
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 0))) ;; LF L21
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
    (local.set $t14 (i32.add (global.get $TB) (i32.const 1))) ;; LF L26
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
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
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
    )) ;; end block / LAB L29 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L29
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
  ) ;; end func $fn_L27

  ;; BCPL fn cast (L30)
  (func $fn_L30 (export "fn_L30") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.const 8191))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.const 8191))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9
      (if (result i32) (i32.ge_s (local.get $t9) (i32.const 0))
        (then (local.get $t9))
        (else (i32.sub (i32.const 0) (local.get $t9)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t10
      (if (result i32) (i32.ge_s (local.get $t10) (i32.const 0))
        (then (local.get $t10))
        (else (i32.sub (i32.const 0) (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (local.set $t12 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.const 1024))
    (local.set $t13 (i32.div_s (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t15 (i32.const 1024))
    (local.set $t14 (i32.div_s (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t16 (i32.const 0))
    (if (i32.ge_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t15 (i32.const -1))
    ;; RES L31: save result, jump to RSTACK
    (local.set $__res (local.get $t15))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L32 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L32
    (local.set $t15 (i32.const 1))
    ;; RES L31: save result, jump to RSTACK
    (local.set $__res (local.get $t15))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L31 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L31
    ;; RSTACK 15
    (local.set $t15 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t17 (i32.const 0))
    (if (i32.ge_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t16 (i32.const -1))
    ;; RES L33: save result, jump to RSTACK
    (local.set $__res (local.get $t16))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L34 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L34
    (local.set $t16 (i32.const 1))
    ;; RES L33: save result, jump to RSTACK
    (local.set $__res (local.get $t16))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L33 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L33
    ;; RSTACK 16
    (local.set $t16 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (local.set $t17 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (local.set $t18 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (local.set $t19 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.ne  (local.get $t20) (local.get $t21)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t20 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t20))
    (local.set $t9 (local.get $t20))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L35 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L35
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.ne  (local.get $t20) (local.get $t21)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t20 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t20))
    (local.set $t10 (local.get $t20))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L36 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L36
    (local.set $t20 (i32.const 1048576))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t20 (i32.div_s (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t20))
    (local.set $t11 (local.get $t20))
    (local.set $t20 (i32.const 1048576))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t20 (i32.div_s (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t20))
    (local.set $t12 (local.get $t20))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t21 (i32.const 0))
    (if (i32.ge_s (local.get $t20) (local.get $t21)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t21 (i32.const 1024))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t21 (i32.mul (local.get $t21) (local.get $t22)))
    (local.set $t20 (i32.sub (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t20 (i32.mul (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.const 1024))
    (local.set $t20 (i32.div_s (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t20))
    (local.set $t17 (local.get $t20))
      (local.set $__lab (i32.const 8)) (br $__dispatch) ;; JUMP L39
    )) ;; end block / LAB L37 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L37
    (local.set $t20 (i32.const 1024))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t20 (i32.mul (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.const 1024))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t20 (i32.sub (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t20 (i32.mul (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.const 1024))
    (local.set $t20 (i32.div_s (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t20))
    (local.set $t17 (local.get $t20))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L39 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L39
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t21 (i32.const 0))
    (if (i32.ge_s (local.get $t20) (local.get $t21)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t21 (i32.const 1024))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t21 (i32.mul (local.get $t21) (local.get $t22)))
    (local.set $t20 (i32.sub (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t20 (i32.mul (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.const 1024))
    (local.set $t20 (i32.div_s (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20))
    (local.set $t18 (local.get $t20))
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L42
    )) ;; end block / LAB L40 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L40
    (local.set $t20 (i32.const 1024))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t20 (i32.mul (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.const 1024))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t20 (i32.sub (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t20 (i32.mul (local.get $t20) (local.get $t21)))
    (local.set $t21 (i32.const 1024))
    (local.set $t20 (i32.div_s (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20))
    (local.set $t18 (local.get $t20))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L42 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L42
    (local.set $t20 (i32.const 1))
    (local.set $t21 (i32.const 64))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (if (i32.gt_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L43 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L43
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (if (i32.ge_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t22))
    (local.set $t17 (local.get $t22))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t22))
    (local.set $t13 (local.get $t22))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t22))
    (local.set $t19 (local.get $t22))
      (local.set $__lab (i32.const 13)) (br $__dispatch) ;; JUMP L47
    )) ;; end block / LAB L45 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L45
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t22))
    (local.set $t18 (local.get $t22))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t22))
    (local.set $t14 (local.get $t22))
    (local.set $t22 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t22))
    (local.set $t19 (local.get $t22))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L47 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L47
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t23 (i32.const 0))
    (if (i32.lt_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t23 (i32.const 8))
    (if (i32.ge_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t23 (i32.const 0))
    (if (i32.lt_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t23 (i32.const 8))
    (if (i32.lt_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L49 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L49
    (local.set $t22 (i32.const 8192))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (i32.store (i32.shl (local.get $t23) (i32.const 2)) (local.get $t22))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t23 (i32.const 1))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (i32.store (i32.shl (local.get $t23) (i32.const 2)) (local.get $t22))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.const 2))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (i32.store (i32.shl (local.get $t23) (i32.const 2)) (local.get $t22))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L48 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L48
    (local.set $t22 (i32.const 8))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (local.set $t23 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (local.set $t22 (i32.load (i32.shl (local.get $t22) (i32.const 2))))
    (if (i32.eqz (local.get $t22)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (if (i32.ne  (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    ;; RES L51: save result, jump to RSTACK
    (local.set $__res (local.get $t22))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L52 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L52
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    ;; RES L51: save result, jump to RSTACK
    (local.set $__res (local.get $t22))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L51 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L51
    ;; RSTACK 22
    (local.set $t22 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (if (i32.ne  (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t24 (i32.mul (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.const 1024))
    (local.set $t24 (i32.div_s (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t27 (i32.const 1024))
    (local.set $t26 (i32.div_s (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.const 1024))
    (local.set $t26 (i32.mul (local.get $t26) (local.get $t27)))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t25))
    (local.set $t23 (local.get $t25))
      (local.set $__lab (i32.const 19)) (br $__dispatch) ;; JUMP L55
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L53 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L53
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t24 (i32.mul (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.const 1024))
    (local.set $t24 (i32.div_s (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t27 (i32.const 1024))
    (local.set $t26 (i32.div_s (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.const 1024))
    (local.set $t26 (i32.mul (local.get $t26) (local.get $t27)))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t25))
    (local.set $t23 (local.get $t25))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L55 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L55
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t25 (i32.const 0))
    (if (i32.ge_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    (local.set $t24 (i32.const 1024))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t24))
    (local.set $t23 (local.get $t24))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L56 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L56
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t25 (i32.const 0))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t25 (i32.const 1))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t25 (i32.const 2))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t25 (i32.const 3))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t25 (i32.const 4))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L50 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L50
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t23 (i32.const 1))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22))
    (local.set $t20 (local.get $t22))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (if (i32.le_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L44 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L44
    (local.set $t20 (i32.const 8192))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.shl (local.get $t21) (i32.const 2)) (local.get $t20))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.const 1))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.shl (local.get $t21) (i32.const 2)) (local.get $t20))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.const 2))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.shl (local.get $t21) (i32.const 2)) (local.get $t20))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L30

  ;; BCPL fn drawframe (L57)
  (func $fn_L57 (export "fn_L57") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t6 (i32.add (global.get $P) (i32.const 7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush t6 (pre-stack-up)
    (local.set $t13 (i32.const 300))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.const 959))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (if (i32.gt_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L58 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L58
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (local.set $t26 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t29 (i32.const 480))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1365))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 960))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t28))
    (local.set $t16 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t28))
    (local.set $t17 (local.get $t28))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t35 (i32.add (global.get $TB) (i32.const 3))) ;; LF L30
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t35)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t35)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t28))
    (local.set $t18 (local.get $t28))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t28))
    (local.set $t19 (local.get $t28))
    (local.set $t28 (i32.const 2))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t28))
    (local.set $t20 (local.get $t28))
    (local.set $t28 (i32.const 3))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t28))
    (local.set $t25 (local.get $t28))
    (local.set $t28 (i32.const 4))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
    (local.set $t28 (i32.const 8191))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t28 (i32.and (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 8192))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t28))
    (local.set $t27 (local.get $t28))
    (local.set $t31 (i32.const 84))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t35)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t35)))
    (local.set $t31 (i32.const 85))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t36 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t38 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t38)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t38)))
    (local.set $t28 (i32.const 8191))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t28 (i32.and (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t28))
    (local.set $t21 (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t29 (i32.const 1))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t28))
    (local.set $t21 (local.get $t28))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L60 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L60
    (local.set $t28 (i32.const 900000))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t28))
    (local.set $t22 (local.get $t28))
    (local.set $t28 (i32.const 600))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 2))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t28))
    (local.set $t23 (local.get $t28))
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t28))
    (local.set $t24 (local.get $t28))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t29 (i32.const 0))
    (if (i32.le_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t28))
    (local.set $t24 (local.get $t28))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L63
    )) ;; end block / LAB L64 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L64
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L63
    )) ;; end block / LAB L61 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L61
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t29 (i32.const 0))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t28))
    (local.set $t24 (local.get $t28))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L65 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L65
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L63 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L63
    (local.set $t31 (i32.const 82))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t36 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t37 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t38 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t39 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t40 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 152)) (local.get $t38))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 156)) (local.get $t39))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t40)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t40)))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t17 (i32.const 1))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t16))
    (local.set $t14 (local.get $t16))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (if (i32.le_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L59 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L59
    (local.set $t17 (i32.const 66))
    (local.set $t18 (i32.const 17))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L57

  ;; BCPL fn poll_events (L66)
  (func $fn_L66 (export "fn_L66") (type $bcpl_fn)
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
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L68
    )) ;; end block / LAB L67 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L67
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
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L72 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L72
    (local.set $t14 (i32.const 27))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L71
    )) ;; end block / LAB L73 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L73
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L71
    )) ;; end block / LAB L69 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L69
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
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L75 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L75
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L74 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L74
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L71 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L71
    (local.set $t14 (i32.const 12))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L76 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L76
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L68 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L68
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
  ) ;; end func $fn_L66

  ;; BCPL fn key_down (L77)
  (func $fn_L77 (export "fn_L77") (type $bcpl_fn)
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
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L78 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L78
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
  ) ;; end func $fn_L77

  ;; BCPL fn try_move (L79)
  (func $fn_L79 (export "fn_L79") (type $bcpl_fn)
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
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9 (i32.const 1024))
    (local.set $t8 (i32.div_s (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (i32.const 1024))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.const 0))
    (if (i32.lt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.const 8))
    (if (i32.ge_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t11 (i32.const 0))
    (if (i32.lt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t11 (i32.const 8))
    (if (i32.ge_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t10 (i32.const 8))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t10 (i32.mul (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (if (local.get $t10) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L80 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L80
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (local.set $t12 (i32.const 1024))
    (local.set $t11 (i32.div_s (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t13 (i32.const 1024))
    (local.set $t12 (i32.div_s (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.const 0))
    (if (i32.lt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t14 (i32.const 8))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t14 (i32.const 0))
    (if (i32.lt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t14 (i32.const 8))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 8))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t13 (i32.mul (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (if (local.get $t13) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L81 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L81
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L79

  ;; BCPL fn load_bg (L82)
  (func $fn_L82 (export "fn_L82") (type $bcpl_fn)
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
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (local.get $t6) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L83 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L83
    (local.set $t9 (i32.const 80))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (if (local.get $t6) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L84 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L84
    (local.set $t9 (i32.const 83))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.const 2))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t13 (i32.const 1))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
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
  ) ;; end func $fn_L82

  ;; BCPL fn load_bg_with_fallback (L85)
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
    (local $t9 i32)
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 8))) ;; LF L82
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L86 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L86
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 8))) ;; LF L82
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L87 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L87
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 8))) ;; LF L82
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L88 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L88
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 8))) ;; LF L82
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t8))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L89 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L89
    (local.set $t8 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t8))
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
  ) ;; end func $fn_L85

  ;; BCPL fn start (L90)
  (func $fn_L90 (export "fn_L90") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.const 1536))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t4 (i32.const 1536))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.add (global.get $P) (i32.const 7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush t6 (pre-stack-up)
    (local.set $t11 (i32.add (global.get $P) (i32.const 12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush t11 (pre-stack-up)
    (local.set $t16 (i32.add (global.get $SB) (i32.const 11))) ;; LLL L91
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2))
      (local.get $t16))
    (local.set $t19 (i32.const 80))
    (local.set $t20 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (if (i32.eqz (local.get $t16)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t16))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L94
    )) ;; end block / LAB L92 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L92
    (local.set $t19 (i32.const 80))
    (local.set $t20 (i32.add (global.get $SB) (i32.const 78))) ;; LSTR
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (if (i32.eqz (local.get $t16)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 78))) ;; LSTR
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t16))
      (local.set $__lab (i32.const 5)) (br $__dispatch) ;; JUMP L97
    )) ;; end block / LAB L95 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L95
    (local.set $t19 (i32.const 80))
    (local.set $t20 (i32.add (global.get $SB) (i32.const 81))) ;; LSTR
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (if (i32.eqz (local.get $t16)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 81))) ;; LSTR
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t16))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L100
    )) ;; end block / LAB L98 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L98
    (local.set $t19 (i32.add (global.get $SB) (i32.const 84))) ;; LSTR
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $t16 (i32.const 1))
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.shl (local.get $t17) (i32.const 2)) (local.get $t16))
    (local.set $t16 (i32.const 1))
    (local.set $t17 (i32.const 1))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.shl (local.get $t17) (i32.const 2)) (local.get $t16))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 2))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t17 (i32.add (local.get $t17) (local.get $t18)))
    (i32.store (i32.shl (local.get $t17) (i32.const 2)) (local.get $t16))
    (local.set $t16 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t16))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L100 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L100
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L97 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L97
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L94 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L94
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t16 (i32.load (i32.shl (local.get $t16) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2))
      (local.get $t16))
    (local.set $t16 (i32.const 1))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t16 (i32.load (i32.shl (local.get $t16) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2))
      (local.get $t16))
    (local.set $t16 (i32.const 2))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t16 (i32.load (i32.shl (local.get $t16) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2))
      (local.get $t16))
    (local.set $t19 (i32.add (global.get $SB) (i32.const 96))) ;; LSTR
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 8))) ;; LF L82
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (if (local.get $t16) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t19 (i32.add (global.get $SB) (i32.const 98))) ;; LSTR
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L101 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L101
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (local.set $t16 (i32.load (i32.shl (local.get $t16) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2))
      (local.get $t16))
    (local.set $t19 (i32.const 1))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t21 (i32.add (global.get $SB) (i32.const 78))) ;; LSTR
    (local.set $t22 (i32.add (global.get $SB) (i32.const 81))) ;; LSTR
    (local.set $t23 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    (local.set $t24 (i32.add (global.get $TB) (i32.const 9))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t24)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t24)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (if (local.get $t16) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t19 (i32.add (global.get $SB) (i32.const 110))) ;; LSTR
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L102 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L102
    (local.set $t19 (i32.const 2))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t21 (i32.add (global.get $SB) (i32.const 115))) ;; LSTR
    (local.set $t22 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    (local.set $t23 (i32.add (global.get $SB) (i32.const 78))) ;; LSTR
    (local.set $t24 (i32.add (global.get $TB) (i32.const 9))) ;; LF L85
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t24)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t24)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (if (local.get $t16) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    (local.set $t19 (i32.add (global.get $SB) (i32.const 118))) ;; LSTR
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L103 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L103
    (local.set $t19 (i32.const 66))
    (local.set $t20 (i32.const 1))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $t19 (i32.const 66))
    (local.set $t20 (i32.const 2))
    (local.set $t21 (i32.const 960))
    (local.set $t22 (i32.const 600))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t25)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2))
      (local.get $t16))
    (local.set $t19 (i32.const 8192))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2))
      (local.get $t16))
    (local.set $t19 (i32.const 8192))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t16))
    (local.set $t19 (i32.const 512))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (local.set $t16 (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2))
      (local.get $t16))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 512))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (if (i32.gt_s (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L104 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L104
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (i32.store (i32.shl (local.get $t19) (i32.const 2)) (local.get $t18))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t19 (i32.const 1))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t18))
    (local.set $t16 (local.get $t18))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (if (i32.le_s (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L105 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L105
    (local.set $t19 (i32.add (global.get $TB) (i32.const 2))) ;; LF L27
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    (local.set $t19 (i32.add (global.get $SB) (i32.const 124))) ;; LSTR
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (if (i32.eqz (local.get $t16)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L106 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L106
    (local.set $t16 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (local.set $t17 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    (local.set $t21 (i32.add (global.get $TB) (i32.const 5))) ;; LF L66
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t21)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t21)))
    (local.set $t21 (i32.const 87))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 6))) ;; LF L77
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    (if (local.get $t18) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    (local.set $t21 (i32.const 38))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 6))) ;; LF L77
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    (if (i32.eqz (local.get $t18)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L109 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L109
    (local.set $t18 (i32.const 1))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t18))
    (local.set $t16 (local.get $t18))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L108 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L108
    (local.set $t21 (i32.const 83))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 6))) ;; LF L77
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    (if (local.get $t18) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
    (local.set $t21 (i32.const 40))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 6))) ;; LF L77
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    (if (i32.eqz (local.get $t18)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L111 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L111
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t19 (i32.const 1))
    (local.set $t18 (i32.sub (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t18))
    (local.set $t16 (local.get $t18))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L110 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L110
    (local.set $t21 (i32.const 65))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 6))) ;; LF L77
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    (if (local.get $t18) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    (local.set $t21 (i32.const 37))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 6))) ;; LF L77
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    (if (i32.eqz (local.get $t18)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L113 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L113
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t19 (i32.const 64))
    (local.set $t18 (i32.sub (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t18))
    (local.set $t17 (local.get $t18))
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L112 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L112
    (local.set $t21 (i32.const 68))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 6))) ;; LF L77
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    (if (local.get $t18) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
    (local.set $t21 (i32.const 39))
    (local.set $t22 (i32.add (global.get $TB) (i32.const 6))) ;; LF L77
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (local.set $t18 (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; flush FNAP result
    (if (i32.eqz (local.get $t18)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L115 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L115
    (local.set $t18 (i32.const 64))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t18))
    (local.set $t17 (local.get $t18))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L114 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L114
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (if (i32.eq  (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
    (local.set $t18 (i32.const 8191))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t18 (i32.and (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t18 (i32.load (i32.shl (local.get $t18) (i32.const 2))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t18 (i32.mul (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.const 16))
    (local.set $t18 (i32.div_s (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    (local.set $t19 (i32.const 8191))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t19 (i32.and (local.get $t19) (local.get $t20)))
    (local.set $t20 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t19 (i32.add (local.get $t19) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (local.get $t19) (i32.const 2))))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t19 (i32.mul (local.get $t19) (local.get $t20)))
    (local.set $t20 (i32.const 16))
    (local.set $t19 (i32.div_s (local.get $t19) (local.get $t20)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (local.set $t23 (i32.add (global.get $P) (i32.const 3)))
    (local.set $t24 (i32.add (global.get $P) (i32.const 4)))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t27 (i32.add (global.get $TB) (i32.const 7))) ;; LF L79
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 20)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L116 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L116
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (if (i32.eq  (local.get $t18) (local.get $t19)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t18 (i32.add (local.get $t18) (local.get $t19)))
    (local.set $t19 (i32.const 8191))
    (local.set $t18 (i32.and (local.get $t18) (local.get $t19)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t18))
    (local.set $t5 (local.get $t18))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L117 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L117
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t24 (i32.add (global.get $TB) (i32.const 4))) ;; LF L57
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t24)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t24)))
    (local.set $t21 (i32.const 16))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 512))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 18)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (if (local.get $t16) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L107 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L107
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $t19 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $t19 (i32.add (global.get $SB) (i32.const 130))) ;; LSTR
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $t16 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t16))
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
  ) ;; end func $fn_L90

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L21) (ref.func $fn_L26) (ref.func $fn_L27) (ref.func $fn_L30) (ref.func $fn_L57) (ref.func $fn_L66) (ref.func $fn_L77) (ref.func $fn_L79) (ref.func $fn_L82) (ref.func $fn_L85) (ref.func $fn_L90))

  ;; static data — passive segment (134 words)
  (data $stat "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\09\62\72\69\63\6B\2E\70\6E\67\00\00\09\73\74\6F\6E\65\2E\70\6E\67\00\00\0B\63\68\65\63\6B\65\72\2E\70\6E\67\2D\4E\6F\20\77\61\6C\6C\20\74\65\78\74\75\72\65\2E\20\55\70\6C\6F\61\64\20\62\72\69\63\6B\2E\70\6E\67\20\69\6E\20\41\73\73\65\74\73\2E\0A\00\00\07\73\6B\79\2E\70\6E\67\2C\4E\6F\20\73\6B\79\2E\70\6E\67\20\61\73\73\65\74\2E\20\53\6B\79\20\63\6F\6C\75\6D\6E\20\77\69\6C\6C\20\62\65\20\62\6C\61\6E\6B\2E\0A\00\00\00\12\4E\6F\20\66\6C\6F\6F\72\20\74\65\78\74\75\72\65\2E\0A\00\08\77\6F\6F\64\2E\70\6E\67\00\00\00\14\4E\6F\20\63\65\69\6C\69\6E\67\20\74\65\78\74\75\72\65\2E\0A\00\00\00\15\77\61\6C\6C\20\25\6E\78\25\6E\20\20\73\6B\79\5F\77\3D\25\6E\0A\00\00\0D\72\61\79\73\6B\20\65\78\69\74\65\64\0A\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 536))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 11))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 10))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 134))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 11))
)
 ;; end module
