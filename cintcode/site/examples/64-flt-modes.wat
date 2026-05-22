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

  ;; SECTION: fmod
  ;; BCPL fn hypot2 (L10)
  (func $fn_L10 (export "fn_L10") (type $bcpl_fn)
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
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t5)) (f32.reinterpret_i32 (local.get $t6)))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t6)) (f32.reinterpret_i32 (local.get $t7)))))
    (local.set $t5 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t5)) (f32.reinterpret_i32 (local.get $t6)))))
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
  ) ;; end func $fn_L10

  ;; BCPL fn start (L11)
  (func $fn_L11 (export "fn_L11") (type $bcpl_fn)
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
    ;; line 0:31
    (global.set $__line (i32.const 31))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 5))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 0:32
    (global.set $__line (i32.const 32))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:33
    (global.set $__line (i32.const 33))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:34
    (global.set $__line (i32.const 34))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.reinterpret_f32 (f32.convert_i32_s (local.get $t6))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    ;; line 0:37
    (global.set $__line (i32.const 37))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 0))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:38
    (global.set $__line (i32.const 38))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1081207685))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    ;; line 0:41
    (global.set $__line (i32.const 41))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t6))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    ;; line 0:42
    (global.set $__line (i32.const 42))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 6))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:43
    (global.set $__line (i32.const 43))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1077936128))
    (local.set $t10 (i32.const 1082130432))
    (local.set $t11 (i32.add (global.get $TB) (i32.const 0))) ;; LF L10
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 0:48
    (global.set $__line (i32.const 48))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 18))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:49
    (global.set $__line (i32.const 49))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:53
    (global.set $__line (i32.const 53))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1069547520))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    ;; line 0:54
    (global.set $__line (i32.const 54))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1075838976))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
    ;; line 0:55
    (global.set $__line (i32.const 55))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.add (global.get $SB) (i32.const 24))) ;; LSTR
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.reinterpret_f32 (f32.add (f32.reinterpret_i32 (local.get $t12)) (f32.reinterpret_i32 (local.get $t13)))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:56
    (global.set $__line (i32.const 56))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.add (global.get $SB) (i32.const 29))) ;; LSTR
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.reinterpret_f32 (f32.div (f32.reinterpret_i32 (local.get $t12)) (f32.reinterpret_i32 (local.get $t13)))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:57
    (global.set $__line (i32.const 57))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:63
    (global.set $__line (i32.const 63))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:64
    (global.set $__line (i32.const 64))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 3))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    ;; line 0:65
    (global.set $__line (i32.const 65))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1080033280))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8))
    (local.set $t7 (local.get $t8))
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.add (global.get $SB) (i32.const 34))) ;; LSTR
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:67
    (global.set $__line (i32.const 67))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.add (global.get $SB) (i32.const 39))) ;; LSTR
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.trunc_f32_s (f32.reinterpret_i32 (local.get $t13))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:68
    (global.set $__line (i32.const 68))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1075838976))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:74
    (global.set $__line (i32.const 74))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1092413450))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:75
    (global.set $__line (i32.const 75))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t9 (i32.const 1056964608))
    (local.set $t8 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.reinterpret_f32 (f32.mul (f32.reinterpret_i32 (local.get $t8)) (f32.reinterpret_i32 (local.get $t9)))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:76
    (global.set $__line (i32.const 76))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.add (global.get $SB) (i32.const 48))) ;; LSTR
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:77
    (global.set $__line (i32.const 77))
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L11

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L10) (ref.func $fn_L11))

  ;; static data — passive segment (62 words)
  (data $stat "\14\46\4C\4F\41\54\20\25\6E\20\20\2D\3E\20\20\25\35\2E\32\66\0A\00\00\00\2E\46\49\58\20\20\20\25\35\2E\32\66\20\20\2D\3E\20\20\25\6E\20\20\28\74\72\75\6E\63\61\74\65\64\2C\20\6E\6F\74\20\72\6F\75\6E\64\65\64\29\0A\00\16\68\79\70\6F\74\32\28\33\2C\34\29\5E\32\20\3D\20\25\35\2E\32\66\0A\00\13\31\2E\35\20\23\2B\20\32\2E\35\20\3D\20\25\34\2E\31\66\0A\13\31\2E\35\20\23\2F\20\32\2E\35\20\3D\20\25\34\2E\32\66\0A\12\69\6E\74\20\20\37\2F\32\20\20\20\20\20\3D\20\25\6E\0A\00\21\66\6C\6F\61\74\20\37\2E\30\2F\32\2E\30\3D\20\25\34\2E\32\66\20\28\46\49\58\20\2D\3E\20\25\6E\29\0A\00\00\37\66\72\65\65\20\66\61\6C\6C\20\61\66\74\65\72\20\25\34\2E\32\66\73\20\75\6E\64\65\72\20\67\3D\25\36\2E\34\66\20\6D\2F\73\5E\32\20\20\2D\3E\20\25\36\2E\32\66\20\6D\0A")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 248))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 2))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 1))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 62))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 2))
)
 ;; end module
