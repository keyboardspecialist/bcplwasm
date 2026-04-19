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
  (memory (export "mem") 4) ;; 4 pages = 256KB
  (global $G (export "G") i32 (i32.const 1))
  (global $P (export "P") (mut i32) (i32.const 0))
  (table $ftable (export "ftable") 256 funcref)

  ;; SECTION: match
  (func $fn_L10 (export "fn_L10") (type $bcpl_fn)
    (local $__lab i32)
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
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 0))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 1001)) ;; LSTR at word 1001
    ;; FNRN
    (local.set $t0 (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L11 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L11
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 1))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 2))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 3))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L16 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L16
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L14 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L14
    (local.set $t5 (i32.const 1003)) ;; LSTR at word 1003
    ;; FNRN
    (local.set $t0 (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L13 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L13
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 4))
    (if (i32.lt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 10))
    (if (i32.gt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 1006)) ;; LSTR at word 1006
    ;; FNRN
    (local.set $t0 (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L19 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L19
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 11))
    (if (i32.lt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 99))
    (if (i32.gt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const 1009)) ;; LSTR at word 1009
    ;; FNRN
    (local.set $t0 (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L20 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L20
    (local.set $t5 (i32.const 1011)) ;; LSTR at word 1011
    ;; FNRN
    (local.set $t0 (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L21 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L21
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush t4
    (local.set $t4 (i32.const 0))
    ;; RES L22: save result, jump to RSTACK
    (local.set $t0 (local.get $t4))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L22 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L22
    ;; RSTACK 4
    (local.set $t4 (local.get $t0)) ;; restore RES result
    ;; FNRN
    (local.set $t0 (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L10

  (func $fn_L23 (export "fn_L23") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.const 8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.gt_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L24 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L24
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)))) ;; stack-fill t6 from P!6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.const 1013)) ;; LSTR at word 1013
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.mul (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)))) ;; stack-fill t10 from P!10
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)))) ;; stack-fill t11 from P!11
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)))) ;; stack-fill t12 from P!12
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.mul (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.const 9)) ;; LF L10 -> tidx 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
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
    )) ;; end block / LAB L25 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L25
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush t4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush t3
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
  ) ;; end func $fn_L23

  ;; --- function table ---
  (elem (table $ftable) (i32.const 0) func $imp_stop $imp_rdch $imp_wrch $imp_newline $imp_writen $imp_writes $imp_writef $imp_getvec $imp_freevec $fn_L10 $fn_L23)

  (func $__init
    (global.set $P (i32.const 1020))
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
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.const 10)) ;; G!1 = fn_L23
  )
  (start $__init)

  ;; static data (16 words at word addr 1001)
  (data (i32.const 4004) "\04\00\00\00\7A\65\72\6F\05\00\00\00\73\6D\61\6C\6C\00\00\00\06\00\00\00\6D\65\64\69\75\6D\00\00\03\00\00\00\62\69\67\00\04\00\00\00\68\75\67\65\0A\00\00\00\25\69\33\20\2D\3E\20\25\73\0A\00\00")

  (export "__init" (func $__init))
)
 ;; end module
