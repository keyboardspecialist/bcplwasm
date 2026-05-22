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

  ;; SECTION: raytex
  ;; BCPL fn fsin (L18)
  (func $fn_L18 (export "fn_L18") (type $bcpl_fn)
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
    ;; line 0:60
    (global.set $__line (i32.const 60))
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
    ;; line 0:61
    (global.set $__line (i32.const 61))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1078530007))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t9))
    (local.set $t4 (local.get $t9))
    ;; line 0:62
    (global.set $__line (i32.const 62))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.const 1073741824))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9))
    (local.set $t5 (local.get $t9))
    ;; line 0:63
    (global.set $__line (i32.const 63))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L20
      ) ;; close $__case_1 — LAB L19
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L20
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.gt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:64
    (global.set $__line (i32.const 64))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L22
      ) ;; close $__case_3 — LAB L21
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t9))
    (local.set $t3 (local.get $t9))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L22
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.sub (i32.const 0) (f32.lt (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:65
    (global.set $__line (i32.const 65))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:67
    (global.set $__line (i32.const 67))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
    ;; line 0:68
    (global.set $__line (i32.const 68))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t11 (i32.const 1086324736))
    (local.set $t10 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t10)) (f32.reinterpret_i32 (local.get $t11)))))
    (local.set $t9 (i32.reinterpret_f32 (f32.sub (f32.reinterpret_i32 (local.get $t9)) (f32.reinterpret_i32 (local.get $t10)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    ;; line 0:69
    (global.set $__line (i32.const 69))
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
    ;; line 0:70
    (global.set $__line (i32.const 70))
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
    ;; line 0:71
    (global.set $__line (i32.const 71))
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
    ;; line 0:72
    (global.set $__line (i32.const 72))
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
  ) ;; end func $fn_L18

  ;; BCPL fn fcos (L23)
  (func $fn_L23 (export "fn_L23") (type $bcpl_fn)
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
    ;; line 0:76
    (global.set $__line (i32.const 76))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:77
    (global.set $__line (i32.const 77))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 1070141402))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
    ;; line 0:78
    (global.set $__line (i32.const 78))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 0))) ;; LF L18
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L23

  ;; BCPL fn buildtrig (L24)
  (func $fn_L24 (export "fn_L24") (type $bcpl_fn)
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
    ;; line 0:82
    (global.set $__line (i32.const 82))
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
    ;; line 0:83
    (global.set $__line (i32.const 83))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:84
    (global.set $__line (i32.const 84))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1149239296))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
    ;; line 0:85
    (global.set $__line (i32.const 85))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t8))
    (local.set $t3 (local.get $t8))
    ;; line 0:86
    (global.set $__line (i32.const 86))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1086918615))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t8 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t8))
    (local.set $t4 (local.get $t8))
    ;; line 0:87
    (global.set $__line (i32.const 87))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.const 1023))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L26
      ) ;; close $__case_1 — LAB L25
    ;; line 0:88
    (global.set $__line (i32.const 88))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 0))) ;; LF L18
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
    ;; line 0:89
    (global.set $__line (i32.const 89))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 1))) ;; LF L23
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
    ;; line 0:90
    (global.set $__line (i32.const 90))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:91
    (global.set $__line (i32.const 91))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t10))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t12 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 0:92
    (global.set $__line (i32.const 92))
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
      ) ;; close $__case_2 — LAB L26
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
  ) ;; end func $fn_L24

  ;; BCPL fn cast (L27)
  (func $fn_L27 (export "fn_L27") (type $bcpl_fn)
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
    ;; line 0:106
    (global.set $__line (i32.const 106))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1023))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.and (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:107
    (global.set $__line (i32.const 107))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1023))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:108
    (global.set $__line (i32.const 108))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 64))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:109
    (global.set $__line (i32.const 109))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 64))
    (local.set $t10 (i32.div_s (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:110
    (global.set $__line (i32.const 110))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:111
    (global.set $__line (i32.const 111))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:112
    (global.set $__line (i32.const 112))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.const 1024))
    (local.set $t13 (i32.div_s (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:113
    (global.set $__line (i32.const 113))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t15 (i32.const 1024))
    (local.set $t14 (i32.div_s (local.get $t14) (local.get $t15)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    ;; line 0:114
    (global.set $__line (i32.const 114))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    ;; line 0:115
    (global.set $__line (i32.const 115))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    ;; line 0:116
    (global.set $__line (i32.const 116))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:117
    (global.set $__line (i32.const 117))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t18 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18)) ;; STORE slot 18
    ;; line 0:118
    (global.set $__line (i32.const 118))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 1))
    (local.set $t20 (i32.const 2048))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19)) ;; STORE slot 19
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20)) ;; STORE slot 20
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (if (i32.gt_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L28
    ;; line 0:119
    (global.set $__line (i32.const 119))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t21))
    (local.set $t15 (local.get $t21))
    ;; line 0:120
    (global.set $__line (i32.const 120))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t21))
    (local.set $t16 (local.get $t21))
    ;; line 0:121
    (global.set $__line (i32.const 121))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t21))
    (local.set $t11 (local.get $t21))
    ;; line 0:122
    (global.set $__line (i32.const 122))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t21))
    (local.set $t12 (local.get $t21))
    ;; line 0:123
    (global.set $__line (i32.const 123))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t22 (i32.const 1024))
    (local.set $t21 (i32.div_s (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t21))
    (local.set $t13 (local.get $t21))
    ;; line 0:124
    (global.set $__line (i32.const 124))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t22 (i32.const 1024))
    (local.set $t21 (i32.div_s (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t21))
    (local.set $t14 (local.get $t21))
    ;; line 0:125
    (global.set $__line (i32.const 125))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (if (i32.ne  (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (if (i32.eq  (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L31
    ;; line 0:126
    (global.set $__line (i32.const 126))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (if (i32.eq  (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:128
    (global.set $__line (i32.const 128))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t21))
    (local.set $t17 (local.get $t21))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L34
      ) ;; close $__case_3 — LAB L32
    ;; line 0:129
    (global.set $__line (i32.const 129))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t21))
    (local.set $t17 (local.get $t21))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L34
    ;; line 0:130
    (global.set $__line (i32.const 130))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t22 (i32.const 0))
    (if (i32.lt_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t22 (i32.const 8))
    (if (i32.ge_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t22 (i32.const 0))
    (if (i32.lt_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t22 (i32.const 8))
    (if (i32.lt_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L36
    ;; line 0:132
    (global.set $__line (i32.const 132))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    ;; line 0:133
    (global.set $__line (i32.const 133))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t22 (i32.const 1))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 2))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_6 — LAB L35
    (local.set $t21 (i32.const 8))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t21 (i32.mul (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t22 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (local.set $t21 (i32.load (i32.shl (local.get $t21) (i32.const 2))))
    (if (i32.eqz (local.get $t21)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; line 0:135
    (global.set $__line (i32.const 135))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (if (i32.ne  (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 0:137
    (global.set $__line (i32.const 137))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t22 (i32.const 1024))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t21 (i32.sub (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t21))
    (local.set $t18 (local.get $t21))
      (local.set $__lab (i32.const 8)) (br $__dispatch) ;; JUMP L40
      ) ;; close $__case_7 — LAB L38
    ;; line 0:138
    (global.set $__line (i32.const 138))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t22 (i32.const 1024))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t22 (i32.mul (local.get $t22) (local.get $t23)))
    (local.set $t21 (i32.sub (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t21))
    (local.set $t18 (local.get $t21))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L40
    ;; line 0:139
    (global.set $__line (i32.const 139))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t22 (i32.const 0))
    (if (i32.ge_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 0:140
    (global.set $__line (i32.const 140))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.const 1024))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t21))
    (local.set $t18 (local.get $t21))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L41
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    ;; line 0:141
    (global.set $__line (i32.const 141))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t22 (i32.const 1))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t22 (i32.const 2))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t22 (i32.add (local.get $t22) (local.get $t23)))
    (i32.store (i32.shl (local.get $t22) (i32.const 2)) (local.get $t21))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_10 — LAB L37
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L30
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t22 (i32.const 1))
    (local.set $t21 (i32.add (local.get $t21) (local.get $t22)))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t21))
    (local.set $t19 (local.get $t21))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (if (i32.le_s (local.get $t21) (local.get $t22)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L29
    ;; line 0:142
    (global.set $__line (i32.const 142))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 2048))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.shl (local.get $t20) (i32.const 2)) (local.get $t19))
    ;; line 0:146
    (global.set $__line (i32.const 146))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 1))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.shl (local.get $t20) (i32.const 2)) (local.get $t19))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 2))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t20 (i32.add (local.get $t20) (local.get $t21)))
    (i32.store (i32.shl (local.get $t20) (i32.const 2)) (local.get $t19))
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
  ) ;; end func $fn_L27

  ;; BCPL fn tex_sample (L42)
  (func $fn_L42 (export "fn_L42") (type $bcpl_fn)
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
    ;; line 0:152
    (global.set $__line (i32.const 152))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 16))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:153
    (global.set $__line (i32.const 153))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 32))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:154
    (global.set $__line (i32.const 154))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.div_s (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:155
    (global.set $__line (i32.const 155))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.const 2))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:156
    (global.set $__line (i32.const 156))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:157
    (global.set $__line (i32.const 157))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.rem_s (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 0))
    (if (i32.ne  (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:159
    (global.set $__line (i32.const 159))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t10))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L43
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.rem_s (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 0))
    (if (i32.ne  (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:160
    (global.set $__line (i32.const 160))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t10))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L44
    (local.set $t10 (i32.const 1))
    ;; FNRN
    (local.set $__res (local.get $t10))
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
  ) ;; end func $fn_L42

  ;; BCPL fn wall_color (L45)
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
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:166
    (global.set $__line (i32.const 166))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:167
    (global.set $__line (i32.const 167))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.const 2))
    (local.set $t7 (i32.div_s (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:168
    (global.set $__line (i32.const 168))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.const 4))
    (local.set $t8 (i32.div_s (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:169
    (global.set $__line (i32.const 169))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.eqz (local.get $t9)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:170
    (global.set $__line (i32.const 170))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 3))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.const 4))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    (local.set $t9 (i32.const 3))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.const 4))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.const 3))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.const 4))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L46
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (local.get $t9) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:171
    (global.set $__line (i32.const 171))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.const 3))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 3))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t10 (i32.const 3))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9))
    (local.set $t8 (local.get $t9))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L47
    (local.set $t12 (i32.const 66))
    (local.set $t13 (i32.const 26))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; FNRN
    (local.set $__res (local.get $t9))
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
  ) ;; end func $fn_L45

  ;; BCPL fn drawframe (L48)
  (func $fn_L48 (export "fn_L48") (type $bcpl_fn)
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
    ;; line 0:175
    (global.set $__line (i32.const 175))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $P) (i32.const 7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush t6 (pre-stack-up)
    ;; line 0:176
    (global.set $__line (i32.const 176))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 66))
    (local.set $t15 (i32.const 38))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 0))
    (local.set $t19 (i32.const 960))
    (local.set $t20 (i32.const 300))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2)))) ;; LL L15
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:178
    (global.set $__line (i32.const 178))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 66))
    (local.set $t15 (i32.const 38))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t17 (i32.const 0))
    (local.set $t18 (i32.const 300))
    (local.set $t19 (i32.const 960))
    (local.set $t20 (i32.const 600))
    (local.set $t21 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2)))) ;; LL L16
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:179
    (global.set $__line (i32.const 179))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 959))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.gt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L49
    ;; line 0:181
    (global.set $__line (i32.const 181))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.const 0))
    (local.set $t16 (i32.const 0))
    (local.set $t17 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16)) ;; STORE slot 16
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17)) ;; STORE slot 17
    ;; line 0:182
    (global.set $__line (i32.const 182))
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
    ;; line 0:183
    (global.set $__line (i32.const 183))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t22 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22)) ;; STORE slot 22
    ;; line 0:184
    (global.set $__line (i32.const 184))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t24 (i32.const 480))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.const 171))
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.const 960))
    (local.set $t23 (i32.div_s (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t23))
    (local.set $t13 (local.get $t23))
    ;; line 0:185
    (global.set $__line (i32.const 185))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t23))
    (local.set $t14 (local.get $t23))
    ;; line 0:186
    (global.set $__line (i32.const 186))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t30 (i32.add (global.get $TB) (i32.const 3))) ;; LF L27
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
    ;; line 0:187
    (global.set $__line (i32.const 187))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t23))
    (local.set $t15 (local.get $t23))
    ;; line 0:188
    (global.set $__line (i32.const 188))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 1))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t23))
    (local.set $t16 (local.get $t23))
    ;; line 0:189
    (global.set $__line (i32.const 189))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 2))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t23))
    (local.set $t17 (local.get $t23))
    ;; line 0:190
    (global.set $__line (i32.const 190))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 1023))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t23 (i32.and (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t23 (i32.add (local.get $t23) (local.get $t24)))
    (local.set $t23 (i32.load (i32.shl (local.get $t23) (i32.const 2))))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.const 1024))
    (local.set $t23 (i32.div_s (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t23))
    (local.set $t18 (local.get $t23))
    ;; line 0:191
    (global.set $__line (i32.const 191))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t24 (i32.const 1))
    (if (i32.ge_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:192
    (global.set $__line (i32.const 192))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t23))
    (local.set $t18 (local.get $t23))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L51
    (local.set $t23 (i32.const 22000))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t23 (i32.div_s (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t23))
    (local.set $t19 (local.get $t23))
    ;; line 0:193
    (global.set $__line (i32.const 193))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t24 (i32.const 600))
    (if (i32.le_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:194
    (global.set $__line (i32.const 194))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 600))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t23))
    (local.set $t19 (local.get $t23))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L52
    (local.set $t23 (i32.const 600))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.const 2))
    (local.set $t23 (i32.div_s (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t23))
    (local.set $t20 (local.get $t23))
    ;; line 0:195
    (global.set $__line (i32.const 195))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 64))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 68))))
    (local.set $t23 (i32.mul (local.get $t23) (local.get $t24)))
    (local.set $t24 (i32.const 1024))
    (local.set $t23 (i32.div_s (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t23))
    (local.set $t22 (local.get $t23))
    ;; line 0:199
    (global.set $__line (i32.const 199))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 230))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 72))))
    (local.set $t23 (i32.sub (local.get $t23) (local.get $t24)))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t23))
    (local.set $t21 (local.get $t23))
    ;; line 0:202
    (global.set $__line (i32.const 202))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t24 (i32.const 32))
    (if (i32.ge_s (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:203
    (global.set $__line (i32.const 203))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 32))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t23))
    (local.set $t21 (local.get $t23))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L53
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.const 47))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (if (i32.gt_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L54
    ;; line 0:208
    (global.set $__line (i32.const 208))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t25 (i32.const 64))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t25 (i32.mul (local.get $t25) (local.get $t26)))
    (local.set $t26 (i32.const 48))
    (local.set $t25 (i32.div_s (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 0:209
    (global.set $__line (i32.const 209))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t26 (i32.mul (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.const 48))
    (local.set $t26 (i32.div_s (local.get $t26) (local.get $t27)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    ;; line 0:210
    (global.set $__line (i32.const 210))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 76))))
    (local.set $t27 (i32.mul (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.const 48))
    (local.set $t27 (i32.div_s (local.get $t27) (local.get $t28)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 80))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    ;; line 0:211
    (global.set $__line (i32.const 211))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 88))))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t33 (i32.add (global.get $TB) (i32.const 4))) ;; LF L42
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    ;; line 0:212
    (global.set $__line (i32.const 212))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 84))))
    (local.set $t33 (i32.load (i32.add (local.get $Pb) (i32.const 64))))
    (local.set $t34 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t35 (i32.add (global.get $TB) (i32.const 5))) ;; LF L45
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t35)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 29)))
    (local.set $t29 (call_indirect $ftable (type $bcpl_fn) (local.get $t35)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; flush FNAP result
    ;; line 0:213
    (global.set $__line (i32.const 213))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t33 (i32.const 66))
    (local.set $t34 (i32.const 38))
    (local.set $t35 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t36 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t37 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t38 (i32.const 1))
    (local.set $t39 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t38 (i32.add (local.get $t38) (local.get $t39)))
    (local.set $t39 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t40 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t41 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 148)) (local.get $t37))
    (i32.store (i32.add (local.get $Pb) (i32.const 152)) (local.get $t38))
    (i32.store (i32.add (local.get $Pb) (i32.const 156)) (local.get $t39))
    (i32.store (i32.add (local.get $Pb) (i32.const 160)) (local.get $t40))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t41)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t41)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t25))
    (local.set $t23 (local.get $t25))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (if (i32.le_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L55
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.const 1))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13))
    (local.set $t11 (local.get $t13))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.le_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L50
    ;; line 0:214
    (global.set $__line (i32.const 214))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 66))
    (local.set $t15 (i32.const 17))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2)))) ;; LL L14
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
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
  ) ;; end func $fn_L48

  ;; BCPL fn poll_events (L56)
  (func $fn_L56 (export "fn_L56") (type $bcpl_fn)
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
    ;; line 0:220
    (global.set $__line (i32.const 220))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush t3 (pre-stack-up)
    ;; line 0:221
    (global.set $__line (i32.const 221))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L58
      ) ;; close $__case_1 — LAB L57
    (local.set $t12 (i32.const 0))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:223
    (global.set $__line (i32.const 223))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 2))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:224
    (global.set $__line (i32.const 224))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 2))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 0:225
    (global.set $__line (i32.const 225))
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
    ;; line 0:226
    (global.set $__line (i32.const 226))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 1))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L62
    (local.set $t14 (i32.const 27))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 0:227
    (global.set $__line (i32.const 227))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L61
      ) ;; close $__case_3 — LAB L63
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L61
      ) ;; close $__case_4 — LAB L59
    (local.set $t14 (i32.const 3))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 0:229
    (global.set $__line (i32.const 229))
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
    ;; line 0:230
    (global.set $__line (i32.const 230))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t16 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t15 (i32.add (local.get $t15) (local.get $t16)))
    (i32.store (i32.shl (local.get $t15) (i32.const 2)) (local.get $t14))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L65
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L64
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L61
    (local.set $t14 (i32.const 12))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (if (i32.ne  (local.get $t14) (local.get $t15)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 0:231
    (global.set $__line (i32.const 231))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2))
      (local.get $t14))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L66
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L58
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
  ) ;; end func $fn_L56

  ;; BCPL fn key_down (L67)
  (func $fn_L67 (export "fn_L67") (type $bcpl_fn)
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
    (local.set $t5 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L68
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
  ) ;; end func $fn_L67

  ;; BCPL fn try_move (L69)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 0:237
    (global.set $__line (i32.const 237))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:238
    (global.set $__line (i32.const 238))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 1024))
    (local.set $t8 (i32.div_s (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:239
    (global.set $__line (i32.const 239))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (i32.const 1024))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:240
    (global.set $__line (i32.const 240))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 0))
    (if (i32.lt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 8))
    (if (i32.ge_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t11 (i32.const 0))
    (if (i32.lt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t11 (i32.const 8))
    (if (i32.ge_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t10 (i32.const 8))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t10 (i32.mul (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (if (local.get $t10) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 0:241
    (global.set $__line (i32.const 241))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L70
    ;; line 0:242
    (global.set $__line (i32.const 242))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:243
    (global.set $__line (i32.const 243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (local.set $t12 (i32.const 1024))
    (local.set $t11 (i32.div_s (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:244
    (global.set $__line (i32.const 244))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t13 (i32.const 1024))
    (local.set $t12 (i32.div_s (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:245
    (global.set $__line (i32.const 245))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.const 0))
    (if (i32.lt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t14 (i32.const 8))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t14 (i32.const 0))
    (if (i32.lt_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t14 (i32.const 8))
    (if (i32.ge_s (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 8))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t13 (i32.mul (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2)))) ;; LL L10
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t13 (i32.load (i32.shl (local.get $t13) (i32.const 2))))
    (if (local.get $t13) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 0:246
    (global.set $__line (i32.const 246))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.shl (local.get $t14) (i32.const 2)) (local.get $t13))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L71
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
  ) ;; end func $fn_L69

  ;; BCPL fn start (L72)
  (func $fn_L72 (export "fn_L72") (type $bcpl_fn)
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
    ;; line 0:251
    (global.set $__line (i32.const 251))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1536))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 0:252
    (global.set $__line (i32.const 252))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1536))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:253
    (global.set $__line (i32.const 253))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:254
    (global.set $__line (i32.const 254))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 8))) ;; LLL L73
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 0)) (i32.const 2))
      (local.get $t6))
    ;; line 0:256
    (global.set $__line (i32.const 256))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 66))
    (local.set $t10 (i32.const 1))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:266
    (global.set $__line (i32.const 266))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 66))
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.const 960))
    (local.set $t12 (i32.const 600))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (i32.const 0))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 4)) (i32.const 2))
      (local.get $t6))
    ;; line 0:267
    (global.set $__line (i32.const 267))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 66))
    (local.set $t10 (i32.const 26))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 60))
    (local.set $t13 (i32.const 120))
    (local.set $t14 (i32.const 200))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 5)) (i32.const 2))
      (local.get $t6))
    ;; line 0:269
    (global.set $__line (i32.const 269))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 66))
    (local.set $t10 (i32.const 26))
    (local.set $t11 (i32.const 0))
    (local.set $t12 (i32.const 50))
    (local.set $t13 (i32.const 50))
    (local.set $t14 (i32.const 50))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 6)) (i32.const 2))
      (local.get $t6))
    ;; line 0:270
    (global.set $__line (i32.const 270))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1024))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2))
      (local.get $t6))
    ;; line 0:272
    (global.set $__line (i32.const 272))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1024))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2))
      (local.get $t6))
    ;; line 0:273
    (global.set $__line (i32.const 273))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 512))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store
      (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2))
      (local.get $t6))
    ;; line 0:274
    (global.set $__line (i32.const 274))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 512))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L74
    ;; line 0:275
    (global.set $__line (i32.const 275))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.shl (local.get $t9) (i32.const 2)) (local.get $t8))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L75
    (local.set $t9 (i32.add (global.get $TB) (i32.const 2))) ;; LF L24
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:276
    (global.set $__line (i32.const 276))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L76
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:279
    (global.set $__line (i32.const 279))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:280
    (global.set $__line (i32.const 280))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 7))) ;; LF L56
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:282
    (global.set $__line (i32.const 282))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 87))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 8))) ;; LF L67
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (local.get $t8) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 38))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 8))) ;; LF L67
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L79
    ;; line 0:284
    (global.set $__line (i32.const 284))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L78
    (local.set $t11 (i32.const 83))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 8))) ;; LF L67
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (local.get $t8) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 40))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 8))) ;; LF L67
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L81
    ;; line 0:285
    (global.set $__line (i32.const 285))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L80
    (local.set $t11 (i32.const 65))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 8))) ;; LF L67
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (local.get $t8) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 37))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 8))) ;; LF L67
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
      ) ;; close $__case_8 — LAB L83
    ;; line 0:286
    (global.set $__line (i32.const 286))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 8))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L82
    (local.set $t11 (i32.const 68))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 8))) ;; LF L67
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (local.get $t8) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    (local.set $t11 (i32.const 39))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 8))) ;; LF L67
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (if (i32.eqz (local.get $t8)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L85
    ;; line 0:287
    (global.set $__line (i32.const 287))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 8))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L84
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (if (i32.eq  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 0:289
    (global.set $__line (i32.const 289))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1023))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 16))
    (local.set $t8 (i32.div_s (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:290
    (global.set $__line (i32.const 290))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1023))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.and (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.const 16))
    (local.set $t9 (i32.div_s (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:291
    (global.set $__line (i32.const 291))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $P) (i32.const 3)))
    (local.set $t14 (i32.add (global.get $P) (i32.const 4)))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t17 (i32.add (global.get $TB) (i32.const 9))) ;; LF L69
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L86
    ;; line 0:292
    (global.set $__line (i32.const 292))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.eq  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 0:294
    (global.set $__line (i32.const 294))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 1023))
    (local.set $t8 (i32.and (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8))
    (local.set $t5 (local.get $t8))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L87
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t14 (i32.add (global.get $TB) (i32.const 6))) ;; LF L48
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:296
    (global.set $__line (i32.const 296))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 16))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 512))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t6 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 7)) (i32.const 2)))) ;; LL L17
    (if (local.get $t6) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
      ) ;; close $__case_14 — LAB L77
    ;; line 0:278
    (global.set $__line (i32.const 278))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 1)) (i32.const 2)))) ;; LL L11
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:300
    (global.set $__line (i32.const 300))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 2)) (i32.const 2)))) ;; LL L12
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:301
    (global.set $__line (i32.const 301))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.shl (i32.add (global.get $SB) (i32.const 3)) (i32.const 2)))) ;; LL L13
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:302
    (global.set $__line (i32.const 302))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 72))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:303
    (global.set $__line (i32.const 303))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t6))
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
  ) ;; end func $fn_L72

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L18) (ref.func $fn_L23) (ref.func $fn_L24) (ref.func $fn_L27) (ref.func $fn_L42) (ref.func $fn_L45) (ref.func $fn_L48) (ref.func $fn_L56) (ref.func $fn_L67) (ref.func $fn_L69) (ref.func $fn_L72))

  ;; static data — passive segment (76 words)
  (data $stat "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\0E\72\61\79\74\65\78\20\65\78\69\74\65\64\0A\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 304))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 11))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 10))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 76))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 11))
)
 ;; end module
