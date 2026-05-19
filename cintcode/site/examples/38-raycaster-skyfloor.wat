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
  (import "env" "bcpl_break" (func $__break (type $void_fn)))

  ;; SECTION: raysk
  ;; BCPL fn fsin (L23)
  (func $fn_L23 (export "fn_L23") (type $bcpl_fn)
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
    ;; line 0:71
    (global.set $__line (i32.const 71))
    (call $__break)
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
    ;; line 0:72
    (global.set $__line (i32.const 72))
    (call $__break)
    (local.set $t9 (i32.const 1078530007))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t9))
    (local.set $t4 (local.get $t9))
    ;; line 0:73
    (global.set $__line (i32.const 73))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.const 1073741824))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t9))
    (local.set $t5 (local.get $t9))
    ;; line 0:74
    (global.set $__line (i32.const 74))
    (call $__break)
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L25
    )) ;; end block / LAB L24 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L24
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L25 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L25
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.gt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:75
    (global.set $__line (i32.const 75))
    (call $__break)
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L27
    )) ;; end block / LAB L26 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L26
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L27 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L27
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.lt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:76
    (global.set $__line (i32.const 76))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    ;; line 0:77
    (global.set $__line (i32.const 77))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:78
    (global.set $__line (i32.const 78))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    ;; line 0:79
    (global.set $__line (i32.const 79))
    (call $__break)
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1086324736))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:80
    (global.set $__line (i32.const 80))
    (call $__break)
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
    ;; line 0:81
    (global.set $__line (i32.const 81))
    (call $__break)
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
    ;; line 0:82
    (global.set $__line (i32.const 82))
    (call $__break)
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
    ;; line 0:83
    (global.set $__line (i32.const 83))
    (call $__break)
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
  ) ;; end func $fn_L23

  ;; BCPL fn fcos (L28)
  (func $fn_L28 (export "fn_L28") (type $bcpl_fn)
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
    ;; line 0:87
    (global.set $__line (i32.const 87))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:88
    (global.set $__line (i32.const 88))
    (call $__break)
    (local.set $t5 (i32.const 1070141402))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
    ;; line 0:89
    (global.set $__line (i32.const 89))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 0))) ;; LF L23
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
  ) ;; end func $fn_L28

  ;; BCPL fn buildtrig (L29)
  (func $fn_L29 (export "fn_L29") (type $bcpl_fn)
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
    ;; line 0:93
    (global.set $__line (i32.const 93))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:94
    (global.set $__line (i32.const 94))
    (call $__break)
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:95
    (global.set $__line (i32.const 95))
    (call $__break)
    (local.set $t8 (i32.const 1174405120))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
    ;; line 0:96
    (global.set $__line (i32.const 96))
    (call $__break)
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t8))
    (local.set $t3 (local.get $t8))
    ;; line 0:97
    (global.set $__line (i32.const 97))
    (call $__break)
    (local.set $t8 (i32.const 1086918615))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t8 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t8))
    (local.set $t4 (local.get $t8))
    ;; line 0:98
    (global.set $__line (i32.const 98))
    (call $__break)
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 8191))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L31
    )) ;; end block / LAB L30 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L30
    ;; line 0:99
    (global.set $__line (i32.const 99))
    (call $__break)
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 0))) ;; LF L23
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
    ;; line 0:100
    (global.set $__line (i32.const 100))
    (call $__break)
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 1))) ;; LF L28
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
    ;; line 0:101
    (global.set $__line (i32.const 101))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:102
    (global.set $__line (i32.const 102))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:103
    (global.set $__line (i32.const 103))
    (call $__break)
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
    )) ;; end block / LAB L31 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L31
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
  ) ;; end func $fn_L29

  ;; BCPL fn cast (L32)
  (func $fn_L32 (export "fn_L32") (type $bcpl_fn)
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
    ;; line 0:108
    (global.set $__line (i32.const 108))
    (call $__break)
    (local.set $t7 (i32.const 8191))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:109
    (global.set $__line (i32.const 109))
    (call $__break)
    (local.set $t8 (i32.const 8191))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:110
    (global.set $__line (i32.const 110))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9
      (if (result i32) (i32.ge_s (local.get $t9) (i32.const 0))
        (then (local.get $t9))
        (else (i32.sub (i32.const 0) (local.get $t9)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:111
    (global.set $__line (i32.const 111))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t10
      (if (result i32) (i32.ge_s (local.get $t10) (i32.const 0))
        (then (local.get $t10))
        (else (i32.sub (i32.const 0) (local.get $t10)))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:112
    (global.set $__line (i32.const 112))
    (call $__break)
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:113
    (global.set $__line (i32.const 113))
    (call $__break)
    (local.set $t12 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:114
    (global.set $__line (i32.const 114))
    (call $__break)
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.const 1024))
    (local.set $t13 (i32.div_s (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:115
    (global.set $__line (i32.const 115))
    (call $__break)
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t15 (i32.const 1024))
    (local.set $t14 (i32.div_s (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:116
    (global.set $__line (i32.const 116))
    (call $__break)
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t16 (i32.const 0))
    (if (i32.ge_s (local.get $t15) (local.get $t16)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t15 (i32.const -1))
    ;; RES L33: save result, jump to RSTACK
    (local.set $__res (local.get $t15))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L34 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L34
    (local.set $t15 (i32.const 1))
    ;; RES L33: save result, jump to RSTACK
    (local.set $__res (local.get $t15))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L33 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L33
    ;; RSTACK 15
    (local.set $t15 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:117
    (global.set $__line (i32.const 117))
    (call $__break)
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t17 (i32.const 0))
    (if (i32.ge_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t16 (i32.const -1))
    ;; RES L35: save result, jump to RSTACK
    (local.set $__res (local.get $t16))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L36 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L36
    (local.set $t16 (i32.const 1))
    ;; RES L35: save result, jump to RSTACK
    (local.set $__res (local.get $t16))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L35 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L35
    ;; RSTACK 16
    (local.set $t16 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:118
    (global.set $__line (i32.const 118))
    (call $__break)
    (local.set $t17 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:119
    (global.set $__line (i32.const 119))
    (call $__break)
    (local.set $t18 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    ;; line 0:120
    (global.set $__line (i32.const 120))
    (call $__break)
    (local.set $t19 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    ;; line 0:121
    (global.set $__line (i32.const 121))
    (call $__break)
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.ne  (local.get $t20) (local.get $t21)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:122
    (global.set $__line (i32.const 122))
    (call $__break)
    (local.set $t20 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t20))
    (local.set $t9 (local.get $t20))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L37 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L37
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.ne  (local.get $t20) (local.get $t21)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:123
    (global.set $__line (i32.const 123))
    (call $__break)
    (local.set $t20 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t20))
    (local.set $t10 (local.get $t20))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L38 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L38
    (local.set $t20 (i32.const 1048576))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t20 (i32.div_s (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t20))
    (local.set $t11 (local.get $t20))
    ;; line 0:124
    (global.set $__line (i32.const 124))
    (call $__break)
    (local.set $t20 (i32.const 1048576))
    (local.set $t21 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t20 (i32.div_s (local.get $t20) (local.get $t21)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t20))
    (local.set $t12 (local.get $t20))
    ;; line 0:125
    (global.set $__line (i32.const 125))
    (call $__break)
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t21 (i32.const 0))
    (if (i32.ge_s (local.get $t20) (local.get $t21)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:126
    (global.set $__line (i32.const 126))
    (call $__break)
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
      (local.set $__lab (i32.const 8)) (br $__dispatch) ;; JUMP L41
    )) ;; end block / LAB L39 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L39
    ;; line 0:127
    (global.set $__line (i32.const 127))
    (call $__break)
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
    )) ;; end block / LAB L41 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L41
    ;; line 0:128
    (global.set $__line (i32.const 128))
    (call $__break)
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t21 (i32.const 0))
    (if (i32.ge_s (local.get $t20) (local.get $t21)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:129
    (global.set $__line (i32.const 129))
    (call $__break)
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
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L44
    )) ;; end block / LAB L42 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L42
    ;; line 0:130
    (global.set $__line (i32.const 130))
    (call $__break)
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
    )) ;; end block / LAB L44 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L44
    ;; line 0:131
    (global.set $__line (i32.const 131))
    (call $__break)
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
    )) ;; end block / LAB L45 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L45
    ;; line 0:132
    (global.set $__line (i32.const 132))
    (call $__break)
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (if (i32.ge_s (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 0:133
    (global.set $__line (i32.const 133))
    (call $__break)
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t22))
    (local.set $t17 (local.get $t22))
    ;; line 0:134
    (global.set $__line (i32.const 134))
    (call $__break)
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t22))
    (local.set $t13 (local.get $t22))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t22))
    (local.set $t19 (local.get $t22))
      (local.set $__lab (i32.const 13)) (br $__dispatch) ;; JUMP L49
    )) ;; end block / LAB L47 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L47
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t22))
    (local.set $t18 (local.get $t22))
    ;; line 0:135
    (global.set $__line (i32.const 135))
    (call $__break)
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t22))
    (local.set $t14 (local.get $t22))
    (local.set $t22 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t22))
    (local.set $t19 (local.get $t22))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L49 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L49
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
    )) ;; end block / LAB L51 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L51
    ;; line 0:136
    (global.set $__line (i32.const 136))
    (call $__break)
    (local.set $t22 (i32.const 8192))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (i32.store (i32.shl (local.get $t23) (i32.const 2)) (local.get $t22))
    ;; line 0:137
    (global.set $__line (i32.const 137))
    (call $__break)
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
    )) ;; end block / LAB L50 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L50
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
    ;; line 0:138
    (global.set $__line (i32.const 138))
    (call $__break)
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (if (i32.ne  (local.get $t22) (local.get $t23)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    ;; RES L53: save result, jump to RSTACK
    (local.set $__res (local.get $t22))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L54 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L54
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (local.set $t22 (i32.sub (local.get $t22) (local.get $t23)))
    ;; RES L53: save result, jump to RSTACK
    (local.set $__res (local.get $t22))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L53 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L53
    ;; RSTACK 22
    (local.set $t22 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    ;; line 0:139
    (global.set $__line (i32.const 139))
    (call $__break)
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 0:140
    (global.set $__line (i32.const 140))
    (call $__break)
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (if (i32.ne  (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
    ;; line 0:141
    (global.set $__line (i32.const 141))
    (call $__break)
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t24 (i32.mul (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.const 1024))
    (local.set $t24 (i32.div_s (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    ;; line 0:142
    (global.set $__line (i32.const 142))
    (call $__break)
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t27 (i32.const 1024))
    (local.set $t26 (i32.div_s (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.const 1024))
    (local.set $t26 (i32.mul (local.get $t26) (local.get $t27)))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t25))
    (local.set $t23 (local.get $t25))
      (local.set $__lab (i32.const 19)) (br $__dispatch) ;; JUMP L57
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L55 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L55
    ;; line 0:143
    (global.set $__line (i32.const 143))
    (call $__break)
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t24 (i32.mul (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.const 1024))
    (local.set $t24 (i32.div_s (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    ;; line 0:145
    (global.set $__line (i32.const 145))
    (call $__break)
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
    )) ;; end block / LAB L57 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L57
    ;; line 0:146
    (global.set $__line (i32.const 146))
    (call $__break)
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t25 (i32.const 0))
    (if (i32.ge_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 0:148
    (global.set $__line (i32.const 148))
    (call $__break)
    (local.set $t24 (i32.const 1024))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t24))
    (local.set $t23 (local.get $t24))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L58 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L58
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t25 (i32.const 0))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    ;; line 0:149
    (global.set $__line (i32.const 149))
    (call $__break)
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (local.set $t25 (i32.const 1))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    ;; line 0:150
    (global.set $__line (i32.const 150))
    (call $__break)
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t25 (i32.const 2))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    ;; line 0:151
    (global.set $__line (i32.const 151))
    (call $__break)
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t25 (i32.const 3))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    ;; line 0:152
    (global.set $__line (i32.const 152))
    (call $__break)
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t25 (i32.const 4))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    ;; line 0:153
    (global.set $__line (i32.const 153))
    (call $__break)
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L52 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L52
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
    )) ;; end block / LAB L46 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L46
    ;; line 0:154
    (global.set $__line (i32.const 154))
    (call $__break)
    (local.set $t20 (i32.const 8192))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.shl (local.get $t21) (i32.const 2)) (local.get $t20))
    ;; line 0:157
    (global.set $__line (i32.const 157))
    (call $__break)
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
  ) ;; end func $fn_L32

  ;; BCPL fn drawframe (L59)
  (func $fn_L59 (export "fn_L59") (type $bcpl_fn)
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
    ;; line 0:160
    (global.set $__line (i32.const 160))
    (call $__break)
    (local.set $t6 (i32.add (global.get $P) (i32.const 7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush t6 (pre-stack-up)
    ;; line 0:161
    (global.set $__line (i32.const 161))
    (call $__break)
    (local.set $t13 (i32.const 300))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:162
    (global.set $__line (i32.const 162))
    (call $__break)
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
    )) ;; end block / LAB L60 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L60
    ;; line 0:164
    (global.set $__line (i32.const 164))
    (call $__break)
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
    ;; line 0:165
    (global.set $__line (i32.const 165))
    (call $__break)
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t21)) ;; STORE slot 21
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 0:166
    (global.set $__line (i32.const 166))
    (call $__break)
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.const 0))
    (local.set $t26 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    ;; line 0:167
    (global.set $__line (i32.const 167))
    (call $__break)
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    ;; line 0:168
    (global.set $__line (i32.const 168))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56))))
    (local.set $t29 (i32.const 480))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1365))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 960))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t28))
    (local.set $t16 (local.get $t28))
    ;; line 0:169
    (global.set $__line (i32.const 169))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t28))
    (local.set $t17 (local.get $t28))
    ;; line 0:170
    (global.set $__line (i32.const 170))
    (call $__break)
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t35 (i32.add (global.get $TB) (i32.const 3))) ;; LF L32
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t35)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t35)))
    ;; line 0:171
    (global.set $__line (i32.const 171))
    (call $__break)
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 72)) (local.get $t28))
    (local.set $t18 (local.get $t28))
    ;; line 0:172
    (global.set $__line (i32.const 172))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76)) (local.get $t28))
    (local.set $t19 (local.get $t28))
    ;; line 0:173
    (global.set $__line (i32.const 173))
    (call $__break)
    (local.set $t28 (i32.const 2))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80)) (local.get $t28))
    (local.set $t20 (local.get $t28))
    ;; line 0:174
    (global.set $__line (i32.const 174))
    (call $__break)
    (local.set $t28 (i32.const 3))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t28))
    (local.set $t25 (local.get $t28))
    ;; line 0:175
    (global.set $__line (i32.const 175))
    (call $__break)
    (local.set $t28 (i32.const 4))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t28 (i32.load (i32.shl (local.get $t28) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
    ;; line 0:176
    (global.set $__line (i32.const 176))
    (call $__break)
    (local.set $t28 (i32.const 8191))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68))))
    (local.set $t28 (i32.and (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 8192))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t28))
    (local.set $t27 (local.get $t28))
    ;; line 0:179
    (global.set $__line (i32.const 179))
    (call $__break)
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
    ;; line 0:184
    (global.set $__line (i32.const 184))
    (call $__break)
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
    ;; line 0:185
    (global.set $__line (i32.const 185))
    (call $__break)
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
    ;; line 0:187
    (global.set $__line (i32.const 187))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t29 (i32.const 1))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:188
    (global.set $__line (i32.const 188))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84)) (local.get $t28))
    (local.set $t21 (local.get $t28))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L62 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L62
    (local.set $t28 (i32.const 900000))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 84))))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88)) (local.get $t28))
    (local.set $t22 (local.get $t28))
    ;; line 0:189
    (global.set $__line (i32.const 189))
    (call $__break)
    (local.set $t28 (i32.const 600))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 88))))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 2))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t28))
    (local.set $t23 (local.get $t28))
    ;; line 0:190
    (global.set $__line (i32.const 190))
    (call $__break)
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 80))))
    (local.set $t28 (i32.mul (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.const 1024))
    (local.set $t28 (i32.div_s (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t28))
    (local.set $t24 (local.get $t28))
    ;; line 0:191
    (global.set $__line (i32.const 191))
    (call $__break)
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 76))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:192
    (global.set $__line (i32.const 192))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t29 (i32.const 0))
    (if (i32.le_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:193
    (global.set $__line (i32.const 193))
    (call $__break)
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t28))
    (local.set $t24 (local.get $t28))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L65
    )) ;; end block / LAB L66 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L66
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L65
    )) ;; end block / LAB L63 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L63
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t29 (i32.const 0))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:194
    (global.set $__line (i32.const 194))
    (call $__break)
    (local.set $t28 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t28))
    (local.set $t24 (local.get $t28))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L67 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L67
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L65 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L65
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
    )) ;; end block / LAB L61 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L61
    ;; line 0:195
    (global.set $__line (i32.const 195))
    (call $__break)
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
  ) ;; end func $fn_L59

  ;; BCPL fn poll_events (L68)
  (func $fn_L68 (export "fn_L68") (type $bcpl_fn)
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
    ;; line 0:200
    (global.set $__line (i32.const 200))
    (call $__break)
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    ;; line 0:201
    (global.set $__line (i32.const 201))
    (call $__break)
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L70
    )) ;; end block / LAB L69 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L69
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:203
    (global.set $__line (i32.const 203))
    (call $__break)
    (local.set $t13 (i32.const 2))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:204
    (global.set $__line (i32.const 204))
    (call $__break)
    (local.set $t14 (i32.const 2))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:205
    (global.set $__line (i32.const 205))
    (call $__break)
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
    ;; line 0:206
    (global.set $__line (i32.const 206))
    (call $__break)
    (local.set $t14 (i32.const 1))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L74 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L74
    (local.set $t14 (i32.const 27))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:207
    (global.set $__line (i32.const 207))
    (call $__break)
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L73
    )) ;; end block / LAB L75 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L75
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L73
    )) ;; end block / LAB L71 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L71
    (local.set $t14 (i32.const 3))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:209
    (global.set $__line (i32.const 209))
    (call $__break)
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
    ;; line 0:210
    (global.set $__line (i32.const 210))
    (call $__break)
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L77 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L77
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L76 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L76
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L73 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L73
    (local.set $t14 (i32.const 12))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:211
    (global.set $__line (i32.const 211))
    (call $__break)
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L78 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L78
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L70 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L70
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
  ) ;; end func $fn_L68

  ;; BCPL fn key_down (L79)
  (func $fn_L79 (export "fn_L79") (type $bcpl_fn)
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
    )) ;; end block / LAB L80 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L80
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
  ) ;; end func $fn_L79

  ;; BCPL fn try_move (L81)
  (func $fn_L81 (export "fn_L81") (type $bcpl_fn)
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
    ;; line 0:217
    (global.set $__line (i32.const 217))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:218
    (global.set $__line (i32.const 218))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9 (i32.const 1024))
    (local.set $t8 (i32.div_s (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:219
    (global.set $__line (i32.const 219))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (i32.const 1024))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:220
    (global.set $__line (i32.const 220))
    (call $__break)
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
    ;; line 0:221
    (global.set $__line (i32.const 221))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L82 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L82
    ;; line 0:222
    (global.set $__line (i32.const 222))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:223
    (global.set $__line (i32.const 223))
    (call $__break)
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (local.set $t12 (i32.const 1024))
    (local.set $t11 (i32.div_s (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:224
    (global.set $__line (i32.const 224))
    (call $__break)
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t13 (i32.const 1024))
    (local.set $t12 (i32.div_s (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:225
    (global.set $__line (i32.const 225))
    (call $__break)
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
    ;; line 0:226
    (global.set $__line (i32.const 226))
    (call $__break)
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L83 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L83
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L81

  ;; BCPL fn load_bg (L84)
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
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 0:233
    (global.set $__line (i32.const 233))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (local.get $t6) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:234
    (global.set $__line (i32.const 234))
    (call $__break)
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L85 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L85
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
    ;; line 0:235
    (global.set $__line (i32.const 235))
    (call $__break)
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L86 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L86
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
    ;; line 0:236
    (global.set $__line (i32.const 236))
    (call $__break)
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
  ) ;; end func $fn_L84

  ;; BCPL fn lc (L87)
  (func $fn_L87 (export "fn_L87") (type $bcpl_fn)
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
    )) ;; end block / LAB L88 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L88
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
  ) ;; end func $fn_L87

  ;; BCPL fn ends_with_png (L89)
  (func $fn_L89 (export "fn_L89") (type $bcpl_fn)
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
    ;; line 0:252
    (global.set $__line (i32.const 252))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:253
    (global.set $__line (i32.const 253))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 4))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:254
    (global.set $__line (i32.const 254))
    (call $__break)
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L90 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L90
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.const 4))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 9))) ;; LF L87
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
    (local.set $t12 (i32.add (global.get $TB) (i32.const 9))) ;; LF L87
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.const 112))
    (local.set $t8 (i32.sub (i32.const 0) (i32.eq (local.get $t8) (local.get $t9))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.const 2))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 9))) ;; LF L87
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.const 110))
    (local.set $t8 (i32.sub (i32.const 0) (i32.eq (local.get $t8) (local.get $t9))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.sub (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.load8_u (i32.add (i32.shl (local.get $t11) (i32.const 2)) (local.get $t12))))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 9))) ;; LF L87
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.const 103))
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
  ) ;; end func $fn_L89

  ;; BCPL fn cp_substr (L91)
  (func $fn_L91 (export "fn_L91") (type $bcpl_fn)
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
    ;; line 0:261
    (global.set $__line (i32.const 261))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:262
    (global.set $__line (i32.const 262))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t9) (i32.const 2)) (local.get $t10)) (local.get $t8))
    ;; line 0:263
    (global.set $__line (i32.const 263))
    (call $__break)
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.sub (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L93
    )) ;; end block / LAB L92 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L92
    ;; line 0:264
    (global.set $__line (i32.const 264))
    (call $__break)
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
    )) ;; end block / LAB L93 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L93
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
  ) ;; end func $fn_L91

  ;; BCPL fn str_ieq (L94)
  (func $fn_L94 (export "fn_L94") (type $bcpl_fn)
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
    ;; line 0:269
    (global.set $__line (i32.const 269))
    (call $__break)
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:270
    (global.set $__line (i32.const 270))
    (call $__break)
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.eq  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L96 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L96
    ;; line 0:271
    (global.set $__line (i32.const 271))
    (call $__break)
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L95 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L95
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.const 0))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
    ;; line 0:272
    (global.set $__line (i32.const 272))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t8 (i32.const 0))
    (local.set $t7 (i32.load8_u (i32.add (i32.shl (local.get $t7) (i32.const 2)) (local.get $t8))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
    ;; line 0:273
    (global.set $__line (i32.const 273))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.eq  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:274
    (global.set $__line (i32.const 274))
    (call $__break)
    (local.set $t7 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t7))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L97 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L97
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L98 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L98
    ;; line 0:275
    (global.set $__line (i32.const 275))
    (call $__break)
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.load8_u (i32.add (i32.shl (local.get $t12) (i32.const 2)) (local.get $t13))))
    (local.set $t13 (i32.add (global.get $TB) (i32.const 9))) ;; LF L87
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t13 (i32.load8_u (i32.add (i32.shl (local.get $t13) (i32.const 2)) (local.get $t14))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 9))) ;; LF L87
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    (if (i32.eq  (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L100 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L100
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L99 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L99
    (local.set $t7 (i32.const -1))
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
  ) ;; end func $fn_L94

  ;; BCPL fn load_unique (L101)
  (func $fn_L101 (export "fn_L101") (type $bcpl_fn)
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
    ;; line 0:283
    (global.set $__line (i32.const 283))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:284
    (global.set $__line (i32.const 284))
    (call $__break)
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L102 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L102
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 12))) ;; LF L94
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
    ;; line 0:285
    (global.set $__line (i32.const 285))
    (call $__break)
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L103 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L103
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 12))) ;; LF L94
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:286
    (global.set $__line (i32.const 286))
    (call $__break)
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L104 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L104
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 12))) ;; LF L94
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:287
    (global.set $__line (i32.const 287))
    (call $__break)
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L105 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L105
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 8))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L101

  ;; BCPL fn pick_unused_png (L106)
  (func $fn_L106 (export "fn_L106") (type $bcpl_fn)
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
    (local $t115 i32)
    (local $t116 i32)
    (local $t117 i32)
    (local $t118 i32)
    (local $t119 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 0:295
    (global.set $__line (i32.const 295))
    (call $__break)
    (local.set $t9 (i32.add (global.get $P) (i32.const 10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush t9 (pre-stack-up)
    ;; line 0:296
    (global.set $__line (i32.const 296))
    (call $__break)
    (local.set $t75 (i32.add (global.get $P) (i32.const 76)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75)) ;; flush t75 (pre-stack-up)
    ;; line 0:297
    (global.set $__line (i32.const 297))
    (call $__break)
    (local.set $t109 (i32.const 0))
    (local.set $t110 (i32.const 0))
    (local.set $t111 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436)) (local.get $t109)) ;; STORE slot 109
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440)) (local.get $t110)) ;; STORE slot 110
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444)) (local.get $t111)) ;; STORE slot 111
    ;; line 0:298
    (global.set $__line (i32.const 298))
    (call $__break)
    (local.set $t115 (i32.const 81))
    (local.set $t116 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t117 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 460)) (local.get $t115))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 464)) (local.get $t116))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 452)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 456)) (local.get $t117)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 112)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t117)))
    ;; line 0:299
    (global.set $__line (i32.const 299))
    (call $__break)
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t113 (i32.const 0))
    (local.set $t112 (i32.load8_u (i32.add (i32.shl (local.get $t112) (i32.const 2)) (local.get $t113))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436)) (local.get $t112))
    (local.set $t109 (local.get $t112))
    ;; line 0:300
    (global.set $__line (i32.const 300))
    (call $__break)
    (local.set $t112 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440)) (local.get $t112))
    (local.set $t110 (local.get $t112))
    ;; line 0:301
    (global.set $__line (i32.const 301))
    (call $__break)
    (local.set $t112 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444)) (local.get $t112))
    (local.set $t111 (local.get $t112))
    ;; line 0:302
    (global.set $__line (i32.const 302))
    (call $__break)
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444))))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436))))
    (if (i32.gt_s (local.get $t112) (local.get $t113)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L107 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L107
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L110
    )) ;; end block / LAB L109 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L109
    (local.set $t112 (i32.const 1))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444))))
    (local.set $t112 (i32.add (local.get $t112) (local.get $t113)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444)) (local.get $t112))
    (local.set $t111 (local.get $t112))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L110 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L110
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444))))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436))))
    (if (i32.gt_s (local.get $t112) (local.get $t113)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444))))
    (local.set $t112 (i32.load8_u (i32.add (i32.shl (local.get $t112) (i32.const 2)) (local.get $t113))))
    (local.set $t113 (i32.const 44))
    (if (i32.ne  (local.get $t112) (local.get $t113)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L111 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L111
    ;; line 0:304
    (global.set $__line (i32.const 304))
    (call $__break)
    (local.set $t115 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t116 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440))))
    (local.set $t117 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444))))
    (local.set $t118 (i32.add (global.get $TB) (i32.const 10))) ;; LF L89
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 460)) (local.get $t115))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 464)) (local.get $t116))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 468)) (local.get $t117))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 452)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 456)) (local.get $t118)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 112)))
    (local.set $t112 (call_indirect $ftable (type $bcpl_fn) (local.get $t118)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (local.get $t112)) ;; flush FNAP result
    (if (i32.eqz (local.get $t112)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:305
    (global.set $__line (i32.const 305))
    (call $__break)
    (local.set $t115 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t116 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440))))
    (local.set $t117 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444))))
    (local.set $t118 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (local.set $t119 (i32.add (global.get $TB) (i32.const 11))) ;; LF L91
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 460)) (local.get $t115))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 464)) (local.get $t116))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 468)) (local.get $t117))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 472)) (local.get $t118))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 452)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 456)) (local.get $t119)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 112)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t119)))
    ;; line 0:306
    (global.set $__line (i32.const 306))
    (call $__break)
    (local.set $t115 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (local.set $t116 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t117 (i32.add (global.get $TB) (i32.const 12))) ;; LF L94
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 460)) (local.get $t115))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 464)) (local.get $t116))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 452)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 456)) (local.get $t117)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 112)))
    (local.set $t112 (call_indirect $ftable (type $bcpl_fn) (local.get $t117)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (local.get $t112)) ;; flush FNAP result
    (if (local.get $t112) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t115 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (local.set $t116 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t117 (i32.add (global.get $TB) (i32.const 12))) ;; LF L94
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 460)) (local.get $t115))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 464)) (local.get $t116))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 452)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 456)) (local.get $t117)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 112)))
    (local.set $t112 (call_indirect $ftable (type $bcpl_fn) (local.get $t117)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (local.get $t112)) ;; flush FNAP result
    (if (local.get $t112) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t115 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (local.set $t116 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t117 (i32.add (global.get $TB) (i32.const 12))) ;; LF L94
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 460)) (local.get $t115))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 464)) (local.get $t116))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 452)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 456)) (local.get $t117)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 112)))
    (local.set $t112 (call_indirect $ftable (type $bcpl_fn) (local.get $t117)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (local.get $t112)) ;; flush FNAP result
    (if (local.get $t112) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:307
    (global.set $__line (i32.const 307))
    (call $__break)
    (local.set $t115 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (local.set $t116 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t117 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t118 (i32.add (global.get $TB) (i32.const 8))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 460)) (local.get $t115))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 464)) (local.get $t116))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 468)) (local.get $t117))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 452)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 456)) (local.get $t118)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 112)))
    (local.set $t112 (call_indirect $ftable (type $bcpl_fn) (local.get $t118)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (local.get $t112)) ;; flush FNAP result
    (if (i32.eqz (local.get $t112)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:308
    (global.set $__line (i32.const 308))
    (call $__break)
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.eqz (local.get $t112)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 0:309
    (global.set $__line (i32.const 309))
    (call $__break)
    (local.set $t115 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t116 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440))))
    (local.set $t117 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444))))
    (local.set $t118 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t119 (i32.add (global.get $TB) (i32.const 11))) ;; LF L91
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 460)) (local.get $t115))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 464)) (local.get $t116))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 468)) (local.get $t117))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 472)) (local.get $t118))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 448)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 452)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 456)) (local.get $t119)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 112)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t119)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L115 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L115
    (local.set $t112 (i32.const -1))
    ;; FNRN
    (local.set $__res (local.get $t112))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L114 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L114
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L113 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L113
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L112 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L112
    ;; line 0:310
    (global.set $__line (i32.const 310))
    (call $__break)
    (local.set $t112 (i32.const 1))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444))))
    (local.set $t112 (i32.add (local.get $t112) (local.get $t113)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444)) (local.get $t112))
    (local.set $t111 (local.get $t112))
    ;; line 0:313
    (global.set $__line (i32.const 313))
    (call $__break)
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 440)) (local.get $t112))
    (local.set $t110 (local.get $t112))
    (local.set $t112 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 444))))
    (local.set $t113 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 436))))
    (if (i32.le_s (local.get $t112) (local.get $t113)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L108 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L108
    ;; line 0:303
    (global.set $__line (i32.const 303))
    (call $__break)
    (local.set $t112 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t112))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t9 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t9))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L106

  ;; BCPL fn start (L116)
  (func $fn_L116 (export "fn_L116") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 0:320
    (global.set $__line (i32.const 320))
    (call $__break)
    (local.set $t3 (i32.const 1536))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 0:321
    (global.set $__line (i32.const 321))
    (call $__break)
    (local.set $t4 (i32.const 1536))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:322
    (global.set $__line (i32.const 322))
    (call $__break)
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:323
    (global.set $__line (i32.const 323))
    (call $__break)
    (local.set $t6 (i32.add (global.get $P) (i32.const 7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush t6 (pre-stack-up)
    ;; line 0:324
    (global.set $__line (i32.const 324))
    (call $__break)
    (local.set $t11 (i32.add (global.get $P) (i32.const 12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush t11 (pre-stack-up)
    ;; line 0:325
    (global.set $__line (i32.const 325))
    (call $__break)
    (local.set $t16 (i32.add (global.get $P) (i32.const 17)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16)) ;; flush t16 (pre-stack-up)
    ;; line 0:326
    (global.set $__line (i32.const 326))
    (call $__break)
    (local.set $t50 (i32.add (global.get $SB) (i32.const 13))) ;; LLL L117
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2))
      (local.get $t50))
    ;; line 0:328
    (global.set $__line (i32.const 328))
    (call $__break)
    (local.set $t53 (i32.const 80))
    (local.set $t54 (i32.add (global.get $SB) (i32.const 77))) ;; LSTR
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:340
    (global.set $__line (i32.const 340))
    (call $__break)
    (local.set $t50 (i32.add (global.get $SB) (i32.const 77))) ;; LSTR
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t50))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L120
    )) ;; end block / LAB L118 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L118
    ;; line 0:341
    (global.set $__line (i32.const 341))
    (call $__break)
    (local.set $t53 (i32.const 80))
    (local.set $t54 (i32.add (global.get $SB) (i32.const 80))) ;; LSTR
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:342
    (global.set $__line (i32.const 342))
    (call $__break)
    (local.set $t50 (i32.add (global.get $SB) (i32.const 80))) ;; LSTR
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t50))
      (local.set $__lab (i32.const 5)) (br $__dispatch) ;; JUMP L123
    )) ;; end block / LAB L121 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L121
    ;; line 0:343
    (global.set $__line (i32.const 343))
    (call $__break)
    (local.set $t53 (i32.const 80))
    (local.set $t54 (i32.add (global.get $SB) (i32.const 83))) ;; LSTR
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:344
    (global.set $__line (i32.const 344))
    (call $__break)
    (local.set $t50 (i32.add (global.get $SB) (i32.const 83))) ;; LSTR
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t50))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L126
    )) ;; end block / LAB L124 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L124
    ;; line 0:345
    (global.set $__line (i32.const 345))
    (call $__break)
    (local.set $t53 (i32.add (global.get $SB) (i32.const 86))) ;; LSTR
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    ;; line 0:346
    (global.set $__line (i32.const 346))
    (call $__break)
    (local.set $t50 (i32.const 1))
    (local.set $t51 (i32.const 0))
    (local.set $t52 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t51 (i32.add (local.get $t51) (local.get $t52)))
    (i32.store (i32.shl (local.get $t51) (i32.const 2)) (local.get $t50))
    ;; line 0:347
    (global.set $__line (i32.const 347))
    (call $__break)
    (local.set $t50 (i32.const 1))
    (local.set $t51 (i32.const 1))
    (local.set $t52 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t51 (i32.add (local.get $t51) (local.get $t52)))
    (i32.store (i32.shl (local.get $t51) (i32.const 2)) (local.get $t50))
    (local.set $t50 (i32.const 0))
    (local.set $t51 (i32.const 2))
    (local.set $t52 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t51 (i32.add (local.get $t51) (local.get $t52)))
    (i32.store (i32.shl (local.get $t51) (i32.const 2)) (local.get $t50))
    (local.set $t50 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2))
      (local.get $t50))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L126 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L126
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L123 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L123
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L120 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L120
    ;; line 0:348
    (global.set $__line (i32.const 348))
    (call $__break)
    (local.set $t50 (i32.const 0))
    (local.set $t51 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (local.set $t50 (i32.load (i32.shl (local.get $t50) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2))
      (local.get $t50))
    ;; line 0:350
    (global.set $__line (i32.const 350))
    (call $__break)
    (local.set $t50 (i32.const 1))
    (local.set $t51 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (local.set $t50 (i32.load (i32.shl (local.get $t50) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2))
      (local.get $t50))
    ;; line 0:351
    (global.set $__line (i32.const 351))
    (call $__break)
    (local.set $t50 (i32.const 2))
    (local.set $t51 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (local.set $t50 (i32.load (i32.shl (local.get $t50) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2))
      (local.get $t50))
    ;; line 0:352
    (global.set $__line (i32.const 352))
    (call $__break)
    (local.set $t53 (i32.add (global.get $SB) (i32.const 98))) ;; LSTR
    (local.set $t54 (i32.const 0))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 8))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:355
    (global.set $__line (i32.const 355))
    (call $__break)
    (local.set $t50 (i32.add (global.get $SB) (i32.const 98))) ;; LSTR
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2))
      (local.get $t50))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L127 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L127
    (local.set $t50 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (if (local.get $t50) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:356
    (global.set $__line (i32.const 356))
    (call $__break)
    (local.set $t53 (i32.add (global.get $SB) (i32.const 100))) ;; LSTR
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L128 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L128
    (local.set $t50 (i32.const 0))
    (local.set $t51 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (local.set $t50 (i32.add (local.get $t50) (local.get $t51)))
    (local.set $t50 (i32.load (i32.shl (local.get $t50) (i32.const 2))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2))
      (local.get $t50))
    ;; line 0:357
    (global.set $__line (i32.const 357))
    (call $__break)
    (local.set $t53 (i32.add (global.get $SB) (i32.const 80))) ;; LSTR
    (local.set $t54 (i32.const 1))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t56 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t58 (i32.const 0))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 13))) ;; LF L101
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:362
    (global.set $__line (i32.const 362))
    (call $__break)
    (local.set $t50 (i32.add (global.get $SB) (i32.const 80))) ;; LSTR
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2))
      (local.get $t50))
      (local.set $__lab (i32.const 16)) (br $__dispatch) ;; JUMP L131
    )) ;; end block / LAB L129 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L129
    ;; line 0:363
    (global.set $__line (i32.const 363))
    (call $__break)
    (local.set $t53 (i32.add (global.get $SB) (i32.const 83))) ;; LSTR
    (local.set $t54 (i32.const 1))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t56 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t58 (i32.const 0))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 13))) ;; LF L101
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; line 0:364
    (global.set $__line (i32.const 364))
    (call $__break)
    (local.set $t50 (i32.add (global.get $SB) (i32.const 83))) ;; LSTR
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2))
      (local.get $t50))
      (local.set $__lab (i32.const 15)) (br $__dispatch) ;; JUMP L134
    )) ;; end block / LAB L132 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L132
    ;; line 0:365
    (global.set $__line (i32.const 365))
    (call $__break)
    (local.set $t53 (i32.const 1))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t56 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t57 (i32.const 0))
    (local.set $t58 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 14))) ;; LF L106
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 0:366
    (global.set $__line (i32.const 366))
    (call $__break)
    (local.set $t50 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64))))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2))
      (local.get $t50))
      (local.set $__lab (i32.const 14)) (br $__dispatch) ;; JUMP L137
    )) ;; end block / LAB L135 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L135
    ;; line 0:367
    (global.set $__line (i32.const 367))
    (call $__break)
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t54 (i32.const 1))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 8))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 0:368
    (global.set $__line (i32.const 368))
    (call $__break)
    (local.set $t50 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2))
      (local.get $t50))
      (local.set $__lab (i32.const 13)) (br $__dispatch) ;; JUMP L140
    )) ;; end block / LAB L138 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L138
    ;; line 0:369
    (global.set $__line (i32.const 369))
    (call $__break)
    (local.set $t53 (i32.add (global.get $SB) (i32.const 112))) ;; LSTR
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    ;; line 0:370
    (global.set $__line (i32.const 370))
    (call $__break)
    (local.set $t50 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2))
      (local.get $t50))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L140 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L140
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L137 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L137
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L134 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L134
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L131 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L131
    (local.set $t53 (i32.add (global.get $SB) (i32.const 117))) ;; LSTR
    (local.set $t54 (i32.const 2))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t56 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t58 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t59 (i32.add (global.get $TB) (i32.const 13))) ;; LF L101
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (local.get $t50) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 0:373
    (global.set $__line (i32.const 373))
    (call $__break)
    (local.set $t53 (i32.add (global.get $SB) (i32.const 120))) ;; LSTR
    (local.set $t54 (i32.const 2))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t56 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t58 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t59 (i32.add (global.get $TB) (i32.const 13))) ;; LF L101
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (local.get $t50) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
    ;; line 0:374
    (global.set $__line (i32.const 374))
    (call $__break)
    (local.set $t53 (i32.const 2))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t56 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 11)) (i32.const 2)))) ;; LL L21
    (local.set $t57 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 12)) (i32.const 2)))) ;; LL L22
    (local.set $t58 (i32.const 0))
    (local.set $t59 (i32.add (global.get $TB) (i32.const 14))) ;; LF L106
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (local.get $t50) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
    ;; line 0:375
    (global.set $__line (i32.const 375))
    (call $__break)
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 10)) (i32.const 2)))) ;; LL L20
    (local.set $t54 (i32.const 2))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 8))) ;; LF L84
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (if (local.get $t50) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; line 0:376
    (global.set $__line (i32.const 376))
    (call $__break)
    (local.set $t53 (i32.add (global.get $SB) (i32.const 123))) ;; LSTR
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L144 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L144
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L143 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L143
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L142 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L142
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L141 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L141
    ;; line 0:377
    (global.set $__line (i32.const 377))
    (call $__break)
    (local.set $t53 (i32.const 66))
    (local.set $t54 (i32.const 1))
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    ;; line 0:379
    (global.set $__line (i32.const 379))
    (call $__break)
    (local.set $t53 (i32.const 66))
    (local.set $t54 (i32.const 2))
    (local.set $t55 (i32.const 960))
    (local.set $t56 (i32.const 600))
    (local.set $t57 (i32.const 0))
    (local.set $t58 (i32.const 0))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t59)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t59)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2))
      (local.get $t50))
    ;; line 0:380
    (global.set $__line (i32.const 380))
    (call $__break)
    (local.set $t53 (i32.const 8192))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2))
      (local.get $t50))
    ;; line 0:382
    (global.set $__line (i32.const 382))
    (call $__break)
    (local.set $t53 (i32.const 8192))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t50))
    ;; line 0:383
    (global.set $__line (i32.const 383))
    (call $__break)
    (local.set $t53 (i32.const 512))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (local.set $t50 (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2))
      (local.get $t50))
    ;; line 0:384
    (global.set $__line (i32.const 384))
    (call $__break)
    (local.set $t50 (i32.const 0))
    (local.set $t51 (i32.const 512))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (local.get $t51)) ;; STORE slot 51
    (local.set $t52 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (local.set $t53 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204))))
    (if (i32.gt_s (local.get $t52) (local.get $t53)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L145 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L145
    ;; line 0:385
    (global.set $__line (i32.const 385))
    (call $__break)
    (local.set $t52 (i32.const 0))
    (local.set $t53 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (local.set $t54 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t53 (i32.add (local.get $t53) (local.get $t54)))
    (i32.store (i32.shl (local.get $t53) (i32.const 2)) (local.get $t52))
    (local.set $t52 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (local.set $t53 (i32.const 1))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t52))
    (local.set $t50 (local.get $t52))
    (local.set $t52 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (local.set $t53 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204))))
    (if (i32.le_s (local.get $t52) (local.get $t53)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L146 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L146
    (local.set $t53 (i32.add (global.get $TB) (i32.const 2))) ;; LF L29
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t53)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t53)))
    ;; line 0:386
    (global.set $__line (i32.const 386))
    (call $__break)
    (local.set $t53 (i32.add (global.get $SB) (i32.const 129))) ;; LSTR
    (local.set $t54 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (local.set $t55 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 8)) (i32.const 2)))) ;; LL L18
    (local.set $t56 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 9)) (i32.const 2)))) ;; LL L19
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t54))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t57)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t57)))
    ;; line 0:388
    (global.set $__line (i32.const 388))
    (call $__break)
    (local.set $t50 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (if (i32.eqz (local.get $t50)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L147 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L147
    (local.set $t50 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t50)) ;; STORE slot 50
    ;; line 0:391
    (global.set $__line (i32.const 391))
    (call $__break)
    (local.set $t51 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (local.get $t51)) ;; STORE slot 51
    ;; line 0:392
    (global.set $__line (i32.const 392))
    (call $__break)
    (local.set $t55 (i32.add (global.get $TB) (i32.const 5))) ;; LF L68
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t55)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t55)))
    ;; line 0:394
    (global.set $__line (i32.const 394))
    (call $__break)
    (local.set $t55 (i32.const 87))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 6))) ;; LF L79
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (if (local.get $t52) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
    (local.set $t55 (i32.const 38))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 6))) ;; LF L79
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (if (i32.eqz (local.get $t52)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L150 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L150
    ;; line 0:396
    (global.set $__line (i32.const 396))
    (call $__break)
    (local.set $t52 (i32.const 1))
    (local.set $t53 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t52))
    (local.set $t50 (local.get $t52))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L149 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L149
    (local.set $t55 (i32.const 83))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 6))) ;; LF L79
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (if (local.get $t52) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    (local.set $t55 (i32.const 40))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 6))) ;; LF L79
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (if (i32.eqz (local.get $t52)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    )) ;; end block / LAB L152 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L152
    ;; line 0:397
    (global.set $__line (i32.const 397))
    (call $__break)
    (local.set $t52 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (local.set $t53 (i32.const 1))
    (local.set $t52 (i32.sub (local.get $t52) (local.get $t53)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (local.get $t52))
    (local.set $t50 (local.get $t52))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L151 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L151
    (local.set $t55 (i32.const 65))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 6))) ;; LF L79
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (if (local.get $t52) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    ))
    (local.set $t55 (i32.const 37))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 6))) ;; LF L79
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (if (i32.eqz (local.get $t52)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L154 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L154
    ;; line 0:398
    (global.set $__line (i32.const 398))
    (call $__break)
    (local.set $t52 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204))))
    (local.set $t53 (i32.const 64))
    (local.set $t52 (i32.sub (local.get $t52) (local.get $t53)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (local.get $t52))
    (local.set $t51 (local.get $t52))
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L153 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L153
    (local.set $t55 (i32.const 68))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 6))) ;; LF L79
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (if (local.get $t52) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
    (local.set $t55 (i32.const 39))
    (local.set $t56 (i32.add (global.get $TB) (i32.const 6))) ;; LF L79
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (local.set $t52 (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t52)) ;; flush FNAP result
    (if (i32.eqz (local.get $t52)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L156 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L156
    ;; line 0:399
    (global.set $__line (i32.const 399))
    (call $__break)
    (local.set $t52 (i32.const 64))
    (local.set $t53 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (local.get $t52))
    (local.set $t51 (local.get $t52))
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    )) ;; end block / LAB L155 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L155
    (local.set $t52 (i32.const 0))
    (local.set $t53 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (if (i32.eq  (local.get $t52) (local.get $t53)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    ))
    ;; line 0:401
    (global.set $__line (i32.const 401))
    (call $__break)
    (local.set $t52 (i32.const 8191))
    (local.set $t53 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t52 (i32.and (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t52 (i32.load (i32.shl (local.get $t52) (i32.const 2))))
    (local.set $t53 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (local.set $t52 (i32.mul (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.const 16))
    (local.set $t52 (i32.div_s (local.get $t52) (local.get $t53)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t52)) ;; STORE slot 52
    ;; line 0:402
    (global.set $__line (i32.const 402))
    (call $__break)
    (local.set $t53 (i32.const 8191))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t53 (i32.and (local.get $t53) (local.get $t54)))
    (local.set $t54 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t53 (i32.add (local.get $t53) (local.get $t54)))
    (local.set $t53 (i32.load (i32.shl (local.get $t53) (i32.const 2))))
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200))))
    (local.set $t53 (i32.mul (local.get $t53) (local.get $t54)))
    (local.set $t54 (i32.const 16))
    (local.set $t53 (i32.div_s (local.get $t53) (local.get $t54)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53)) ;; STORE slot 53
    ;; line 0:403
    (global.set $__line (i32.const 403))
    (call $__break)
    (local.set $t57 (i32.add (global.get $P) (i32.const 3)))
    (local.set $t58 (i32.add (global.get $P) (i32.const 4)))
    (local.set $t59 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208))))
    (local.set $t60 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212))))
    (local.set $t61 (i32.add (global.get $TB) (i32.const 7))) ;; LF L81
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 232)) (local.get $t58))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 236)) (local.get $t59))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 240)) (local.get $t60))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t61)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 54)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t61)))
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    )) ;; end block / LAB L157 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L157
    ;; line 0:404
    (global.set $__line (i32.const 404))
    (call $__break)
    (local.set $t52 (i32.const 0))
    (local.set $t53 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204))))
    (if (i32.eq  (local.get $t52) (local.get $t53)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    ))
    ;; line 0:406
    (global.set $__line (i32.const 406))
    (call $__break)
    (local.set $t52 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204))))
    (local.set $t53 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t52 (i32.add (local.get $t52) (local.get $t53)))
    (local.set $t53 (i32.const 8191))
    (local.set $t52 (i32.and (local.get $t52) (local.get $t53)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t52))
    (local.set $t5 (local.get $t52))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L158 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L158
    (local.set $t55 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t57 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t58 (i32.add (global.get $TB) (i32.const 4))) ;; LF L59
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 224)) (local.get $t56))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 228)) (local.get $t57))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t58)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t58)))
    ;; line 0:408
    (global.set $__line (i32.const 408))
    (call $__break)
    (local.set $t55 (i32.const 16))
    (local.set $t56 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 512))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 220)) (local.get $t55))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 216)) (local.get $t56)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 52)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t56)))
    (local.set $t50 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (if (local.get $t50) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    )) ;; end block / LAB L148 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L148
    ;; line 0:390
    (global.set $__line (i32.const 390))
    (call $__break)
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    ;; line 0:412
    (global.set $__line (i32.const 412))
    (call $__break)
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    ;; line 0:413
    (global.set $__line (i32.const 413))
    (call $__break)
    (local.set $t53 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    ;; line 0:414
    (global.set $__line (i32.const 414))
    (call $__break)
    (local.set $t53 (i32.add (global.get $SB) (i32.const 135))) ;; LSTR
    (local.set $t54 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 212)) (local.get $t53))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 200)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 204)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 208)) (local.get $t54)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 50)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t54)))
    ;; line 0:415
    (global.set $__line (i32.const 415))
    (call $__break)
    (local.set $t50 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t50))
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
  ) ;; end func $fn_L116

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L23) (ref.func $fn_L28) (ref.func $fn_L29) (ref.func $fn_L32) (ref.func $fn_L59) (ref.func $fn_L68) (ref.func $fn_L79) (ref.func $fn_L81) (ref.func $fn_L84) (ref.func $fn_L87) (ref.func $fn_L89) (ref.func $fn_L91) (ref.func $fn_L94) (ref.func $fn_L101) (ref.func $fn_L106) (ref.func $fn_L116))

  ;; static data — passive segment (139 words)
  (data $stat "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\09\62\72\69\63\6B\2E\70\6E\67\00\00\09\73\74\6F\6E\65\2E\70\6E\67\00\00\0B\63\68\65\63\6B\65\72\2E\70\6E\67\2D\4E\6F\20\77\61\6C\6C\20\74\65\78\74\75\72\65\2E\20\55\70\6C\6F\61\64\20\62\72\69\63\6B\2E\70\6E\67\20\69\6E\20\41\73\73\65\74\73\2E\0A\00\00\07\73\6B\79\2E\70\6E\67\2C\4E\6F\20\73\6B\79\2E\70\6E\67\20\61\73\73\65\74\2E\20\53\6B\79\20\63\6F\6C\75\6D\6E\20\77\69\6C\6C\20\62\65\20\62\6C\61\6E\6B\2E\0A\00\00\00\12\4E\6F\20\66\6C\6F\6F\72\20\74\65\78\74\75\72\65\2E\0A\00\08\77\6F\6F\64\2E\70\6E\67\00\00\00\0B\63\65\69\6C\69\6E\67\2E\70\6E\67\14\4E\6F\20\63\65\69\6C\69\6E\67\20\74\65\78\74\75\72\65\2E\0A\00\00\00\15\77\61\6C\6C\20\25\6E\78\25\6E\20\20\73\6B\79\5F\77\3D\25\6E\0A\00\00\0D\72\61\79\73\6B\20\65\78\69\74\65\64\0A\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 556))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 16))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 15))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 139))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 16))
)
 ;; end module
