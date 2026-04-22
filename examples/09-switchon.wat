(module
  (type $bcpl_fn (func (result i32)))
  (import "env" "mem"    (memory 4))
  (import "env" "ftable" (table $ftable 256 funcref))
  (import "env" "P" (global $P (mut i32)))
  (import "env" "G" (global $G i32))
  (import "env" "static_base" (global $SB i32))
  (import "env" "table_base"  (global $TB i32))

  ;; SECTION: swon
  ;; BCPL fn classify (L10)
  (func $fn_L10 (export "fn_L10") (type $bcpl_fn)
    (local $__lab i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    ;; RES L11: save result, jump to RSTACK
    (local.set $t0 (local.get $t4))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L12 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L12
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L13 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L13
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L14 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L14
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L15 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L15
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L16 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L16
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L17 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L17
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L18 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L18
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L19 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L19
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L20 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L20
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L21 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L21
    (local.set $t4 (i32.const 1))
    ;; FNRN
    (local.set $t0 (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L22 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L22
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L23 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L23
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L24 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L24
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L25 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L25
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L26 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L26
    (local.set $t4 (i32.const 2))
    ;; FNRN
    (local.set $t0 (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L27 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L27
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L11 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L11
    ;; RSTACK 4
    (local.set $t4 (local.get $t0)) ;; restore RES result
    ;; SWITCHON 15 cases default L27
    (if (i32.eq (local.get $t4) (i32.const 117)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 111)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 105)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 101)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 97)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 57)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 56)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 55)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 54)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 53)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 52)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 51)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 50)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 49)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 48)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L10

  ;; BCPL fn start (L28)
  (func $fn_L28 (export "fn_L28") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.add (global.get $SB) (i32.const 0))) ;; LSTR
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 0))
    (local.set $t5 (i32.load8_u (i32.add (i32.shl (local.get $t5) (i32.const 2)) (local.get $t6))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L30
    )) ;; end block / LAB L29 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L29
    (local.set $t9 (i32.add (global.get $SB) (i32.const 2))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load8_u (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush t9 (pre-stack-up)
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; flush t10 (pre-stack-up)
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.load8_u (i32.add (i32.shl (local.get $t14) (i32.const 2)) (local.get $t15))))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 0))) ;; LF L10
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L30 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L30
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t4))
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
  ) ;; end func $fn_L28

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L10) (ref.func $fn_L28))

  ;; static data — passive segment (7 words)
  (data $stat "\05\37\20\61\20\71\00\00\11\27\25\63\27\20\2D\3E\20\63\6C\61\73\73\20\25\6E\0A\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 28))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 2))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.add (global.get $TB) (i32.const 1))) ;; G!1
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 7))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 2))
)
 ;; end module
