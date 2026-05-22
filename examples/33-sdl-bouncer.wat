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

  ;; SECTION: sdlb
  ;; BCPL fn start (L10)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 0:18
    (global.set $__line (i32.const 18))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0)) ;; QUERY (undefined)
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 0:19
    (global.set $__line (i32.const 19))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0)) ;; QUERY (undefined)
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 0:20
    (global.set $__line (i32.const 20))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0)) ;; QUERY (undefined)
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 0:21
    (global.set $__line (i32.const 21))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0)) ;; QUERY (undefined)
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 0:22
    (global.set $__line (i32.const 22))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 40))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 0:23
    (global.set $__line (i32.const 23))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 30))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 0:24
    (global.set $__line (i32.const 24))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 3))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 0:25
    (global.set $__line (i32.const 25))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 2))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 0:26
    (global.set $__line (i32.const 26))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.const 320))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 0:27
    (global.set $__line (i32.const 27))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 240))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 0:28
    (global.set $__line (i32.const 28))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 250))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; STORE slot 13
    ;; line 0:29
    (global.set $__line (i32.const 29))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 66))
    (local.set $t18 (i32.const 1))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:31
    (global.set $__line (i32.const 31))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 66))
    (local.set $t18 (i32.const 2))
    (local.set $t19 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t20 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t14))
    (local.set $t3 (local.get $t14))
    ;; line 0:32
    (global.set $__line (i32.const 32))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 66))
    (local.set $t18 (i32.const 26))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 0))
    (local.set $t21 (i32.const 0))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t14))
    (local.set $t4 (local.get $t14))
    ;; line 0:33
    (global.set $__line (i32.const 33))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 66))
    (local.set $t18 (i32.const 26))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 240))
    (local.set $t21 (i32.const 60))
    (local.set $t22 (i32.const 60))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t14))
    (local.set $t5 (local.get $t14))
    ;; line 0:34
    (global.set $__line (i32.const 34))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t17 (i32.const 66))
    (local.set $t18 (i32.const 26))
    (local.set $t19 (i32.const 0))
    (local.set $t20 (i32.const 80))
    (local.set $t21 (i32.const 220))
    (local.set $t22 (i32.const 120))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t14))
    (local.set $t6 (local.get $t14))
    ;; line 0:35
    (global.set $__line (i32.const 35))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 1))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; STORE slot 14
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15)) ;; STORE slot 15
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (if (i32.gt_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L11 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L11
    ;; line 0:37
    (global.set $__line (i32.const 37))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 66))
    (local.set $t20 (i32.const 40))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t23)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t23)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:38
    (global.set $__line (i32.const 38))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 66))
    (local.set $t20 (i32.const 37))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t22 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t23 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t24 (i32.const 12))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t26)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t26)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:39
    (global.set $__line (i32.const 39))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 66))
    (local.set $t20 (i32.const 31))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t22 (i32.const 0))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t25 (i32.const 1))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 88)) (local.get $t22))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:40
    (global.set $__line (i32.const 40))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 66))
    (local.set $t20 (i32.const 17))
    (local.set $t21 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t22 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 80)) (local.get $t20))
    (i32.store (i32.add (local.get $Pb) (i32.const 84)) (local.get $t21))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t22)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t22)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:41
    (global.set $__line (i32.const 41))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t19 (i32.const 16))
    (local.set $t20 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 512))))
    (i32.store (i32.add (local.get $Pb) (i32.const 76)) (local.get $t19))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t20)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 16)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t20)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:42
    (global.set $__line (i32.const 42))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t16))
    (local.set $t7 (local.get $t16))
    ;; line 0:43
    (global.set $__line (i32.const 43))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t16))
    (local.set $t8 (local.get $t16))
    ;; line 0:44
    (global.set $__line (i32.const 44))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t17 (i32.const 12))
    (if (i32.lt_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (local.set $t18 (i32.const 12))
    (local.set $t17 (i32.sub (local.get $t17) (local.get $t18)))
    (if (i32.le_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L14 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L14
    ;; line 0:45
    (global.set $__line (i32.const 45))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t16 (i32.sub (i32.const 0) (local.get $t16)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t16))
    (local.set $t9 (local.get $t16))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L13 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L13
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t17 (i32.const 12))
    (if (i32.lt_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 48))))
    (local.set $t18 (i32.const 12))
    (local.set $t17 (i32.sub (local.get $t17) (local.get $t18)))
    (if (i32.le_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L16 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L16
    ;; line 0:46
    (global.set $__line (i32.const 46))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t16 (i32.sub (i32.const 0) (local.get $t16)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t16))
    (local.set $t10 (local.get $t16))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L15 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L15
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t17 (i32.const 1))
    (local.set $t16 (i32.add (local.get $t16) (local.get $t17)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t16))
    (local.set $t14 (local.get $t16))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 56))))
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 60))))
    (if (i32.le_s (local.get $t16) (local.get $t17)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L12 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L12
    (local.set $t17 (i32.add (global.get $SB) (i32.const 0))) ;; LSTR
    (local.set $t18 (i32.load (i32.add (local.get $Pb) (i32.const 52))))
    (local.set $t19 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 72)) (local.get $t18))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t19)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t19)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 0:49
    (global.set $__line (i32.const 49))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t14))
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
  ) ;; end func $fn_L10

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L10))

  ;; static data — passive segment (4 words)
  (data $stat "\0F\64\6F\6E\65\20\25\6E\20\66\72\61\6D\65\73\0A")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 16))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 1))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 0))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 4))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 1))
)
 ;; end module
