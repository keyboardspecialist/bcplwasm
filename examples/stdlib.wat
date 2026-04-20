(module
  (type $bcpl_fn (func (result i32)))
  (import "env" "bcpl_stop"    (func $imp_stop    (type $bcpl_fn)))
  (import "env" "bcpl_rdch"    (func $imp_rdch    (type $bcpl_fn)))
  (import "env" "bcpl_wrch"    (func $imp_wrch    (type $bcpl_fn)))
  (import "env" "bcpl_newline" (func $imp_newline (type $bcpl_fn)))
  (import "env" "bcpl_writen"  (func $imp_writen  (type $bcpl_fn)))
  (import "env" "bcpl_writes"  (func $imp_writes  (type $bcpl_fn)))
  (import "env" "bcpl_writef"  (func $imp_writef  (type $bcpl_fn)))
  (import "env" "bcpl_getvec"  (func $imp_getvec  (type $bcpl_fn)))
  (import "env" "bcpl_freevec" (func $imp_freevec (type $bcpl_fn)))
  (import "env" "bcpl_muldiv"  (func $imp_muldiv  (type $bcpl_fn)))
  (import "env" "bcpl_abort"   (func $imp_abort   (type $bcpl_fn)))
  (import "env" "bcpl_randno"  (func $imp_randno  (type $bcpl_fn)))
  (import "env" "bcpl_capitalch"(func $imp_capitalch (type $bcpl_fn)))
  (import "env" "bcpl_compch"  (func $imp_compch  (type $bcpl_fn)))
  (import "env" "bcpl_compstring" (func $imp_compstring (type $bcpl_fn)))
  (import "env" "bcpl_findoutput"  (func $imp_findoutput  (type $bcpl_fn)))
  (import "env" "bcpl_findinput"   (func $imp_findinput   (type $bcpl_fn)))
  (import "env" "bcpl_selectoutput"(func $imp_selectoutput(type $bcpl_fn)))
  (import "env" "bcpl_selectinput" (func $imp_selectinput (type $bcpl_fn)))
  (import "env" "bcpl_endstream"   (func $imp_endstream   (type $bcpl_fn)))
  (import "env" "bcpl_endread"     (func $imp_endread     (type $bcpl_fn)))
  (import "env" "bcpl_endwrite"    (func $imp_endwrite    (type $bcpl_fn)))
  (memory (export "mem") 4) ;; 4 pages = 256KB
  (global $G (export "G") i32 (i32.const 1))
  (global $P (export "P") (mut i32) (i32.const 0))
  (table $ftable (export "ftable") 256 funcref)

  ;; SECTION: stdlib
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.const 1001)) ;; LSTR at word 1001
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)))) ;; stack-fill t9 from P!9
    (local.set $t10 (i32.const 1000))
    (local.set $t11 (i32.const 1000))
    (local.set $t12 (i32.const 7))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.const 1009)) ;; LSTR at word 1009
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)))) ;; stack-fill t9 from P!9
    (local.set $t10 (i32.const 1000000))
    (local.set $t11 (i32.const 1000000))
    (local.set $t12 (i32.const 1000000))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.const 1022)) ;; LSTR at word 1022
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.const 8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.gt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L11 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L11
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)))) ;; stack-fill t6 from P!6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.const 1028)) ;; LSTR at word 1028
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)))) ;; stack-fill t9 from P!9
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)))) ;; stack-fill t10 from P!10
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)))) ;; stack-fill t11 from P!11
    (local.set $t12 (i32.const 6))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 136))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
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
    )) ;; end block / LAB L12 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L12
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush t4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush t3
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.const 1030)) ;; LSTR at word 1030
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)))) ;; stack-fill t9 from P!9
    (local.set $t10 (i32.const 97))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 384))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.const 1036)) ;; LSTR at word 1036
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)))) ;; stack-fill t9 from P!9
    (local.set $t10 (i32.const 65))
    (local.set $t11 (i32.const 97))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 388))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.const 1047)) ;; LSTR at word 1047
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)))) ;; stack-fill t9 from P!9
    (local.set $t10 (i32.const 65))
    (local.set $t11 (i32.const 66))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 388))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.const 1054)) ;; LSTR at word 1054
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)))) ;; stack-fill t9 from P!9
    (local.set $t10 (i32.const 1063)) ;; LSTR at word 1063
    (local.set $t11 (i32.const 1065)) ;; LSTR at word 1065
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 392))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.const 1067)) ;; LSTR at word 1067
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)))) ;; stack-fill t9 from P!9
    (local.set $t10 (i32.const 1076)) ;; LSTR at word 1076
    (local.set $t11 (i32.const 1078)) ;; LSTR at word 1078
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 392))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.const 1080)) ;; LSTR at word 1080
    (local.set $t7 (i32.const 42))
    (local.set $t8 (i32.const -7))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t3 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t3))
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

  ;; --- function table ---
  (elem (table $ftable) (i32.const 0) func $imp_stop $imp_rdch $imp_wrch $imp_newline $imp_writen $imp_writes $imp_writef $imp_getvec $imp_freevec $imp_muldiv $imp_abort $imp_randno $imp_capitalch $imp_compch $imp_compstring $imp_findoutput $imp_findinput $imp_selectoutput $imp_selectinput $imp_endstream $imp_endread $imp_endwrite $fn_L10)

  (func $__init
    (global.set $P (i32.const 1088))
    (i32.store (i32.const 4) (i32.const 1000))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 8)) (i32.const 0)) ;; stop
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 152)) (i32.const 1)) ;; rdch
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164)) (i32.const 2)) ;; wrch
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336)) (i32.const 3)) ;; newline
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 344)) (i32.const 4)) ;; writen
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356)) (i32.const 5)) ;; writes
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376)) (i32.const 6)) ;; writef
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 100)) (i32.const 7)) ;; getvec
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 108)) (i32.const 8)) ;; freevec
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 20)) (i32.const 9)) ;; muldiv
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 112)) (i32.const 10)) ;; abort
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 136)) (i32.const 11)) ;; randno
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 384)) (i32.const 12)) ;; capitalch
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 388)) (i32.const 13)) ;; compch
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 392)) (i32.const 14)) ;; compstring
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 196)) (i32.const 15)) ;; findoutput
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 192)) (i32.const 16)) ;; findinput
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228)) (i32.const 17)) ;; selectoutput
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 224)) (i32.const 18)) ;; selectinput
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 248)) (i32.const 19)) ;; endstream
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 240)) (i32.const 20)) ;; endread
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 244)) (i32.const 21)) ;; endwrite
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.const 22)) ;; G!1 = fn_L10
  )
  (start $__init)

  ;; static data (84 words at word addr 1001)
  (data (i32.const 4004) "\1C\00\00\00\6D\75\6C\64\69\76\28\31\30\30\30\2C\20\31\30\30\30\2C\20\37\29\20\20\3D\20\25\6E\0A\2D\00\00\00\6D\75\6C\64\69\76\28\31\5F\30\30\30\5F\30\30\30\2C\20\31\5F\30\30\30\5F\30\30\30\2C\20\31\5F\30\30\30\5F\30\30\30\29\20\3D\20\25\6E\0A\00\00\00\12\00\00\00\72\61\6E\64\6E\6F\28\36\29\20\73\61\6D\70\6C\65\3A\20\00\00\03\00\00\00\25\6E\20\00\14\00\00\00\63\61\70\69\74\61\6C\63\68\28\27\61\27\29\20\3D\20\25\63\0A\28\00\00\00\63\6F\6D\70\63\68\28\27\41\27\2C\27\61\27\29\20\3D\20\25\6E\20\28\63\61\73\65\2D\69\6E\73\65\6E\73\69\74\69\76\65\29\0A\15\00\00\00\63\6F\6D\70\63\68\28\27\41\27\2C\27\42\27\29\20\3D\20\25\6E\0A\00\00\00\1E\00\00\00\63\6F\6D\70\73\74\72\69\6E\67\28\22\61\62\63\22\2C\20\22\61\62\63\22\29\20\3D\20\25\6E\0A\00\00\03\00\00\00\61\62\63\00\03\00\00\00\61\62\63\00\1E\00\00\00\63\6F\6D\70\73\74\72\69\6E\67\28\22\61\62\63\22\2C\20\22\61\62\64\22\29\20\3D\20\25\6E\0A\00\00\03\00\00\00\61\62\63\00\03\00\00\00\61\62\64\00\10\00\00\00\25\7A\34\20\7C\20\25\7A\34\20\7C\20\25\7A\34\0A")

  (export "__init" (func $__init))
)
 ;; end module
