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

  ;; SECTION: bitfield
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    (local.set $t6 (i32.const 171))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store
      (i32.shl (local.get $t7) (i32.const 2))
      (i32.or
        (i32.and
          (i32.load (i32.shl (local.get $t7) (i32.const 2)))
          (i32.const -256))
        (i32.shl
          (i32.and (local.get $t6) (i32.const 255))
          (i32.const 0))))
    (local.set $t6 (i32.const 205))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store
      (i32.shl (local.get $t7) (i32.const 2))
      (i32.or
        (i32.and
          (i32.load (i32.shl (local.get $t7) (i32.const 2)))
          (i32.const -65281))
        (i32.shl
          (i32.and (local.get $t6) (i32.const 255))
          (i32.const 8))))
    (local.set $t6 (i32.const 4660))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store
      (i32.shl (local.get $t7) (i32.const 2))
      (i32.or
        (i32.and
          (i32.load (i32.shl (local.get $t7) (i32.const 2)))
          (i32.const 65535))
        (i32.shl
          (i32.and (local.get $t6) (i32.const 65535))
          (i32.const 16))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)))) ;; stack-fill t6 from P!6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.const 1001)) ;; LSTR at word 1001
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)))) ;; stack-fill t6 from P!6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.const 1005)) ;; LSTR at word 1005
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (local.set $t10 (i32.and (local.get $t10) (i32.const 255)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)))) ;; stack-fill t6 from P!6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.const 1009)) ;; LSTR at word 1009
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (local.set $t10 (i32.shr_u (local.get $t10) (i32.const 8)))
    (local.set $t10 (i32.and (local.get $t10) (i32.const 255)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)))) ;; stack-fill t6 from P!6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)))) ;; stack-fill t7 from P!7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)))) ;; stack-fill t8 from P!8
    (local.set $t9 (i32.const 1013)) ;; LSTR at word 1013
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.shl (local.get $t10) (i32.const 2))))
    (local.set $t10 (i32.shr_u (local.get $t10) (i32.const 16)))
    (local.set $t10 (i32.and (local.get $t10) (i32.const 65535)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t6 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush t5
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush t4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush t3
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

  ;; static data (16 words at word addr 1001)
  (data (i32.const 4004) "\0B\00\00\00\76\21\30\20\20\3D\20\25\58\38\0A\00\0B\00\00\00\6C\6F\20\20\20\3D\20\25\58\32\0A\00\0B\00\00\00\68\69\20\20\20\3D\20\25\58\32\0A\00\0B\00\00\00\68\69\31\36\20\3D\20\25\58\34\0A\00")

  (export "__init" (func $__init))
)
 ;; end module
