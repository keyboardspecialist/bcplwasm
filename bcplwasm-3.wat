(module
  (type $bcpl_fn (func (result i32)))
  (import "env" "mem"    (memory 4))
  (import "env" "ftable" (table $ftable 256 funcref))
  (import "env" "P" (global $P (mut i32)))
  (import "env" "G" (global $G i32))
  (import "env" "static_base" (global $SB i32))
  (import "env" "table_base"  (global $TB i32))

  ;; SECTION: BCPLCGWASM
  ;; BCPL fn codegenerate (L10)
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
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.const 8192))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 0))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068)) (local.get $t6))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 860))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 864))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 64))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L50 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L50
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956)) (local.get $t6))
    (local.set $t6 (i32.const 16384))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 16384))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t6))
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996)) (local.get $t6))
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 16384))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004)) (local.get $t6))
    (local.set $t6 (i32.const 512))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012)) (local.get $t6))
    (local.set $t6 (i32.const 1536))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020)) (local.get $t6))
    (local.set $t6 (i32.const 768))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 768))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028)) (local.get $t6))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 16383))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L51 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L51
    (local.set $t8 (i32.const -1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.shl (local.get $t9) (i32.const 2)) (local.get $t8))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L52 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L52
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 32767))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L53 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L53
    (local.set $t8 (i32.const -1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.shl (local.get $t9) (i32.const 2)) (local.get $t8))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L54 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L54
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992)) (local.get $t6))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t6))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t6))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024)) (local.get $t6))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032)) (local.get $t6))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t6))
    (local.set $t9 (i32.const 4096))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.const 4096))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1800))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L10

  ;; BCPL fn cgsects (L11)
  (func $fn_L11 (export "fn_L11") (type $bcpl_fn)
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
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L55 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L55
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (if (local.get $t5) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t5 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032)) (local.get $t5))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1820))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L57 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L57
    (local.set $t5 (i32.const 40))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 8))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L59 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L59
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L60 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L60
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t6))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L58 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L58
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2056))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 38))) ;; LF L48
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t5))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L56 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L56
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L11

  ;; BCPL fn register_entries (L12)
  (func $fn_L12 (export "fn_L12") (type $bcpl_fn)
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
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L62 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L62
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; RES L63: save result, jump to RSTACK
    (local.set $t0 (local.get $t7))
      (local.set $__lab (i32.const 53)) (br $__dispatch)
    )) ;; end block / LAB L65 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L65
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
    )) ;; end block / LAB L66 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L66
    (local.set $t7 (i32.const 55)) ;; LF L61 (disp)
      (local.set $__lab (local.get $t7))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L67 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L67
    (local.set $t7 (i32.const 55)) ;; LF L61 (disp)
      (local.set $__lab (local.get $t7))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L68 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L68
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L69 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L69
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L70 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L70
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t10 (i32.const 512))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L73
    )) ;; end block / LAB L72 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L72
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ne  (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    (local.set $t12 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12))
    (local.set $t9 (local.get $t12))
      (local.set $__lab (i32.const 11)) (br $__dispatch) ;; JUMP L75
    )) ;; end block / LAB L74 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L74
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12))
    (local.set $t10 (local.get $t12))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L73 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L73
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (if (i32.le_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L75 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L75
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (local.get $t10) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    (local.set $t10 (i32.const 1))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t10))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L76 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L76
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L71 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L71
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L77 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L77
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
    )) ;; end block / LAB L78 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L78
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L79 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L79
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L80 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L80
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L81 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L81
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L82 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L82
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L83 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L83
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L84 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L84
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L85 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L85
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L86 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L86
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L87 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L87
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L88 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L88
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
    )) ;; end block / LAB L89 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L89
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L90 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L90
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L91 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L91
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L92 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L92
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L93 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L93
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    )) ;; end block / LAB L94 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L94
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    )) ;; end block / LAB L95 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L95
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L96 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L96
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    )) ;; end block / LAB L97 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L97
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    )) ;; end block / LAB L98 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L98
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    )) ;; end block / LAB L99 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L99
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    )) ;; end block / LAB L100 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L100
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
    )) ;; end block / LAB L101 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L101
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.gt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    )) ;; end block / LAB L102 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L102
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    )) ;; end block / LAB L103 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L103
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    )) ;; end block / LAB L104 = idx 41
    (if (i32.eq (local.get $__lab) (i32.const 41)) (then ;; L104
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.gt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    )) ;; end block / LAB L105 = idx 42
    (if (i32.eq (local.get $__lab) (i32.const 42)) (then ;; L105
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    )) ;; end block / LAB L106 = idx 43
    (if (i32.eq (local.get $__lab) (i32.const 43)) (then ;; L106
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
      (local.set $__lab (i32.const 44)) (br $__dispatch)
    )) ;; end block / LAB L107 = idx 44
    (if (i32.eq (local.get $__lab) (i32.const 44)) (then ;; L107
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
    )) ;; end block / LAB L108 = idx 45
    (if (i32.eq (local.get $__lab) (i32.const 45)) (then ;; L108
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
    )) ;; end block / LAB L109 = idx 46
    (if (i32.eq (local.get $__lab) (i32.const 46)) (then ;; L109
      (local.set $__lab (i32.const 47)) (br $__dispatch)
    )) ;; end block / LAB L110 = idx 47
    (if (i32.eq (local.get $__lab) (i32.const 47)) (then ;; L110
      (local.set $__lab (i32.const 48)) (br $__dispatch)
    )) ;; end block / LAB L111 = idx 48
    (if (i32.eq (local.get $__lab) (i32.const 48)) (then ;; L111
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.gt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    )) ;; end block / LAB L112 = idx 49
    (if (i32.eq (local.get $__lab) (i32.const 49)) (then ;; L112
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    )) ;; end block / LAB L113 = idx 50
    (if (i32.eq (local.get $__lab) (i32.const 50)) (then ;; L113
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
      (local.set $__lab (i32.const 51)) (br $__dispatch)
    )) ;; end block / LAB L114 = idx 51
    (if (i32.eq (local.get $__lab) (i32.const 51)) (then ;; L114
      (local.set $__lab (i32.const 52)) (br $__dispatch)
    )) ;; end block / LAB L115 = idx 52
    (if (i32.eq (local.get $__lab) (i32.const 52)) (then ;; L115
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 54)) (br $__dispatch) ;; JUMP L64
    )) ;; end block / LAB L63 = idx 53
    (if (i32.eq (local.get $__lab) (i32.const 53)) (then ;; L63
    ;; RSTACK 7
    (local.set $t7 (local.get $t0)) ;; restore RES result
    ;; SWITCHON 36 cases default L65
    (if (i32.eq (local.get $t7) (i32.const 162)) (then
      (local.set $__lab (i32.const 52)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 161)) (then
      (local.set $__lab (i32.const 51)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 40)) (then
      (local.set $__lab (i32.const 48)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 39)) (then
      (local.set $__lab (i32.const 47)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 209)) (then
      (local.set $__lab (i32.const 46)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 203)) (then
      (local.set $__lab (i32.const 45)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 202)) (then
      (local.set $__lab (i32.const 44)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 63)) (then
      (local.set $__lab (i32.const 41)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 138)) (then
      (local.set $__lab (i32.const 38)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 151)) (then
      (local.set $__lab (i32.const 37)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 160)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 159)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 147)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 149)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 148)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 145)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 142)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 141)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 140)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 139)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 133)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 166)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 42)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 10)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 137)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 136)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 156)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 152)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 144)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 143)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 135)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 134)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 163)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 155)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 70)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 0)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L64 = idx 54
    (if (i32.eq (local.get $__lab) (i32.const 54)) (then ;; L64
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 1)) (br $__dispatch) ;; JUMP L62
    )) ;; end block / LAB L61 = idx 55
    (if (i32.eq (local.get $__lab) (i32.const 55)) (then ;; L61
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L12

  ;; BCPL fn wout (L13)
  (func $fn_L13 (export "fn_L13") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 236))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L13

  ;; BCPL fn emit_p_addr (L14)
  (func $fn_L14 (export "fn_L14") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.add (global.get $SB) (i32.const 12))) ;; LSTR
    (local.set $t8 (i32.const 4))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L14

  ;; BCPL fn emit_g_addr (L15)
  (func $fn_L15 (export "fn_L15") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.add (global.get $SB) (i32.const 29))) ;; LSTR
    (local.set $t8 (i32.const 4))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L15

  ;; BCPL fn rdl (L16)
  (func $fn_L16 (export "fn_L16") (type $bcpl_fn)
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
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
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
  ) ;; end func $fn_L16

  ;; BCPL fn rdgn (L17)
  (func $fn_L17 (export "fn_L17") (type $bcpl_fn)
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
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
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
  ) ;; end func $fn_L17

  ;; BCPL fn rdname (L18)
  (func $fn_L18 (export "fn_L18") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.const 63))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    ;; RES L116: save result, jump to RSTACK
    (local.set $t0 (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L117 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L117
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; RES L116: save result, jump to RSTACK
    (local.set $t0 (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L116 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L116
    ;; RSTACK 6
    (local.set $t6 (local.get $t0)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L118 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L118
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (i32.store8 (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11)) (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L119 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L119
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L120 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L120
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L121 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L121
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9)) (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L18

  ;; BCPL fn skip_inner_body (L19)
  (func $fn_L19 (export "fn_L19") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L122 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L122
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    ;; RES L123: save result, jump to RSTACK
    (local.set $t0 (local.get $t5))
      (local.set $__lab (i32.const 47)) (br $__dispatch)
    )) ;; end block / LAB L125 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L125
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
    )) ;; end block / LAB L126 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L126
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L127 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L127
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
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
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L128 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L128
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t7))
    (local.set $t3 (local.get $t7))
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L129 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L129
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L130 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L130
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
    )) ;; end block / LAB L131 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L131
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L132 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L132
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L133 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L133
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L134 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L134
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L135 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L135
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L136 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L136
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L137 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L137
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L138 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L138
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L139 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L139
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L140 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L140
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L141 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L141
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
    )) ;; end block / LAB L142 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L142
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L143 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L143
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L144 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L144
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L145 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L145
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L146 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L146
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L147 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L147
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L148 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L148
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    )) ;; end block / LAB L149 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L149
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L150 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L150
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L151 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L151
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L152 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L152
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L153 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L153
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
    )) ;; end block / LAB L154 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L154
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    )) ;; end block / LAB L155 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L155
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L156 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L156
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    )) ;; end block / LAB L157 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L157
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    )) ;; end block / LAB L158 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L158
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    )) ;; end block / LAB L159 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L159
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    )) ;; end block / LAB L160 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L160
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
    )) ;; end block / LAB L161 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L161
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
    )) ;; end block / LAB L162 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L162
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    )) ;; end block / LAB L163 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L163
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    )) ;; end block / LAB L164 = idx 41
    (if (i32.eq (local.get $__lab) (i32.const 41)) (then ;; L164
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    )) ;; end block / LAB L165 = idx 42
    (if (i32.eq (local.get $__lab) (i32.const 42)) (then ;; L165
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    )) ;; end block / LAB L166 = idx 43
    (if (i32.eq (local.get $__lab) (i32.const 43)) (then ;; L166
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
      (local.set $__lab (i32.const 44)) (br $__dispatch)
    )) ;; end block / LAB L167 = idx 44
    (if (i32.eq (local.get $__lab) (i32.const 44)) (then ;; L167
      (local.set $__lab (i32.const 45)) (br $__dispatch)
    )) ;; end block / LAB L168 = idx 45
    (if (i32.eq (local.get $__lab) (i32.const 45)) (then ;; L168
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 48)) (br $__dispatch) ;; JUMP L124
    )) ;; end block / LAB L169 = idx 46
    (if (i32.eq (local.get $__lab) (i32.const 46)) (then ;; L169
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L123 = idx 47
    (if (i32.eq (local.get $__lab) (i32.const 47)) (then ;; L123
    ;; RSTACK 5
    (local.set $t5 (local.get $t0)) ;; restore RES result
    ;; SWITCHON 35 cases default L125
    (if (i32.eq (local.get $t5) (i32.const 0)) (then
      (local.set $__lab (i32.const 46)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 162)) (then
      (local.set $__lab (i32.const 45)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 161)) (then
      (local.set $__lab (i32.const 44)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 40)) (then
      (local.set $__lab (i32.const 41)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 39)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 209)) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 203)) (then
      (local.set $__lab (i32.const 38)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 202)) (then
      (local.set $__lab (i32.const 37)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 63)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 138)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 151)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 160)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 159)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 147)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 149)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 148)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 145)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 142)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 141)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 140)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 139)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 133)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 166)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 42)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 10)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 137)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 136)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 156)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 152)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 144)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 143)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 135)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 134)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 163)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 155)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L124 = idx 48
    (if (i32.eq (local.get $__lab) (i32.const 48)) (then ;; L124
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 1)) (br $__dispatch) ;; JUMP L122
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L19

  ;; BCPL fn queue_inner (L20)
  (func $fn_L20 (export "fn_L20") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 46))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L170 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L170
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t7 (i32.const 512))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t6))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L171 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L171
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L20

  ;; BCPL fn drain_pending (L21)
  (func $fn_L21 (export "fn_L21") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L172 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L172
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924)) (local.get $t9))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t9))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 38))) ;; LF L48
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t9 (i32.const 3))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (if (i32.lt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L173 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L173
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L21

  ;; BCPL fn emit_mod_header (L22)
  (func $fn_L22 (export "fn_L22") (type $bcpl_fn)
    (local $__lab i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (local $t7 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 52))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 55))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 65))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 75))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 89))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 100))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 110))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 123))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L22

  ;; BCPL fn emit_mod_footer (L23)
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
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 136))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 148))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L175
    )) ;; end block / LAB L174 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L174
    (local.set $t8 (i32.add (global.get $SB) (i32.const 154))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
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
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L175 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L175
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 159))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 160))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 173))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L178
    )) ;; end block / LAB L177 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L177
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t9 (i32.add (global.get $SB) (i32.const 177))) ;; LSTR
    (local.set $t10 (i32.const 255))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t10 (i32.and (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.const 8))
    (local.set $t11 (i32.shr_u (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 255))
    (local.set $t11 (i32.and (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.const 16))
    (local.set $t12 (i32.shr_u (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 255))
    (local.set $t12 (i32.and (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t14 (i32.const 24))
    (local.set $t13 (i32.shr_u (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.const 255))
    (local.set $t13 (i32.and (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
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
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L178 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L178
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 182))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L176 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L176
    (local.set $t6 (i32.add (global.get $SB) (i32.const 184))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 194))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 200))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 212))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 218))) ;; LSTR
    (local.set $t7 (i32.const 4))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 224))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L179 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L179
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 230))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 238))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 244))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 250))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 256))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L180 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L180
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L182
    )) ;; end block / LAB L181 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L181
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t10 (i32.add (global.get $SB) (i32.const 262))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 266))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L182 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L182
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 280))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 282))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 296))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 302))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 315))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 321))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L23

  ;; BCPL fn lab_idx (L24)
  (func $fn_L24 (export "fn_L24") (type $bcpl_fn)
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
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; FNRN
    (local.set $t0 (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L184 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L184
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944)) (local.get $t4))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    ;; FNRN
    (local.set $t0 (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end block / LAB L183 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L183
    (local.set $t4 (i32.const 0))
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
  ) ;; end func $fn_L24

  ;; BCPL fn push_const (L25)
  (func $fn_L25 (export "fn_L25") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.add (global.get $SB) (i32.const 326))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L25

  ;; BCPL fn push_load_p (L26)
  (func $fn_L26 (export "fn_L26") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.add (global.get $SB) (i32.const 336))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 344))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L26

  ;; BCPL fn push_load_g (L27)
  (func $fn_L27 (export "fn_L27") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.add (global.get $SB) (i32.const 345))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 353))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
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

  ;; BCPL fn push_rv (L28)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 354))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L28

  ;; BCPL fn binop (L29)
  (func $fn_L29 (export "fn_L29") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 373))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L185 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L185
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

  ;; BCPL fn fbinop (L30)
  (func $fn_L30 (export "fn_L30") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 389))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L186 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L186
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

  ;; BCPL fn fcmp_op (L31)
  (func $fn_L31 (export "fn_L31") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 421))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L187 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L187
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L31

  ;; BCPL fn unop_neg (L32)
  (func $fn_L32 (export "fn_L32") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 454))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
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

  ;; BCPL fn unop_not (L33)
  (func $fn_L33 (export "fn_L33") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 470))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L33

  ;; BCPL fn unop_abs (L34)
  (func $fn_L34 (export "fn_L34") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 486))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 492))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 509))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 518))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L34

  ;; BCPL fn unop_fneg (L35)
  (func $fn_L35 (export "fn_L35") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 533))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.const -2147483648))
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
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L35

  ;; BCPL fn unop_fabs (L36)
  (func $fn_L36 (export "fn_L36") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 549))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.const 2147483647))
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
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L36

  ;; BCPL fn unop_float (L37)
  (func $fn_L37 (export "fn_L37") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 565))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L37

  ;; BCPL fn unop_fix (L38)
  (func $fn_L38 (export "fn_L38") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 586))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L38

  ;; BCPL fn cmp_op (L39)
  (func $fn_L39 (export "fn_L39") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 606))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L188 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L188
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L39

  ;; BCPL fn store_p (L40)
  (func $fn_L40 (export "fn_L40") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 628))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 632))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 3))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.eq  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 637))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L189 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L189
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L190 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L190
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L40

  ;; BCPL fn store_g (L41)
  (func $fn_L41 (export "fn_L41") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 647))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 651))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L191 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L191
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L41

  ;; BCPL fn store_ind (L42)
  (func $fn_L42 (export "fn_L42") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 2))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 656))) ;; LSTR
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L192 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L192
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L42

  ;; BCPL fn emit_goto_lab (L43)
  (func $fn_L43 (export "fn_L43") (type $bcpl_fn)
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
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1836))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L43

  ;; BCPL fn emit_goto_idx (L44)
  (func $fn_L44 (export "fn_L44") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t7 (i32.add (global.get $SB) (i32.const 675))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t4 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L44

  ;; BCPL fn emit_condjump (L45)
  (func $fn_L45 (export "fn_L45") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    ;; RES L193: save result, jump to RSTACK
    (local.set $t0 (local.get $t6))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L195 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L195
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 690))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L198
    )) ;; end block / LAB L196 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L196
    (local.set $t9 (i32.add (global.get $SB) (i32.const 698))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L198 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L198
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L194
    )) ;; end block / LAB L199 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L199
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 709))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L202
    )) ;; end block / LAB L200 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L200
    (local.set $t9 (i32.add (global.get $SB) (i32.const 717))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L202 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L202
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L194
    )) ;; end block / LAB L203 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L203
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 728))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L206
    )) ;; end block / LAB L204 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L204
    (local.set $t9 (i32.add (global.get $SB) (i32.const 743))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L206 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L206
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L194
    )) ;; end block / LAB L207 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L207
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 758))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 12)) (br $__dispatch) ;; JUMP L210
    )) ;; end block / LAB L208 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L208
    (local.set $t9 (i32.add (global.get $SB) (i32.const 773))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L210 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L210
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L194
    )) ;; end block / LAB L211 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L211
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 788))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 15)) (br $__dispatch) ;; JUMP L214
    )) ;; end block / LAB L212 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L212
    (local.set $t9 (i32.add (global.get $SB) (i32.const 803))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L214 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L214
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L194
    )) ;; end block / LAB L215 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L215
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 818))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 18)) (br $__dispatch) ;; JUMP L218
    )) ;; end block / LAB L216 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L216
    (local.set $t9 (i32.add (global.get $SB) (i32.const 833))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L218 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L218
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L194
    )) ;; end block / LAB L219 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L219
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 848))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 21)) (br $__dispatch) ;; JUMP L222
    )) ;; end block / LAB L220 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L220
    (local.set $t9 (i32.add (global.get $SB) (i32.const 863))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L222 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L222
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L194
    )) ;; end block / LAB L223 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L223
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 878))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 24)) (br $__dispatch) ;; JUMP L226
    )) ;; end block / LAB L224 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L224
    (local.set $t9 (i32.add (global.get $SB) (i32.const 893))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L226 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L226
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L194
    )) ;; end block / LAB L193 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L193
    ;; RSTACK 6
    (local.set $t6 (local.get $t0)) ;; restore RES result
    ;; SWITCHON 7 cases default L195
    (if (i32.eq (local.get $t6) (i32.const 24)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)))
    (if (i32.eq (local.get $t6) (i32.const 23)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)))
    (if (i32.eq (local.get $t6) (i32.const 22)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)))
    (if (i32.eq (local.get $t6) (i32.const 21)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)))
    (if (i32.eq (local.get $t6) (i32.const 20)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)))
    (if (i32.eq (local.get $t6) (i32.const 19)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)))
    (if (i32.eq (local.get $t6) (i32.const 132)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L194 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L194
    (local.set $t6 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L227 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L227
    (local.set $t9 (i32.add (global.get $SB) (i32.const 908))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 923))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L45

  ;; BCPL fn emit_apply (L46)
  (func $fn_L46 (export "fn_L46") (type $bcpl_fn)
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
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 4))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 0))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L228 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L228
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L230
    )) ;; end block / LAB L229 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L229
    (local.set $t12 (i32.add (global.get $SB) (i32.const 925))) ;; LSTR
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t12 (i32.const 3))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t12 (i32.add (global.get $SB) (i32.const 929))) ;; LSTR
    (local.set $t13 (i32.const 3))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L230 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L230
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 934))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 938))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 946))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.const 1))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 950))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 961))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 965))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 974))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t7 (i32.const 10))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 990))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1010))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1014))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t7))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L232 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L232
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L231 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L231
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1025))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t7))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L233 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L233
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L46

  ;; BCPL fn cgpendingop_wasm (L47)
  (func $fn_L47 (export "fn_L47") (type $bcpl_fn)
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
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t4 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t4))
    (local.set $t4 (i32.const 132))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ne  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L234 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L234
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    ;; RES L235: save result, jump to RSTACK
    (local.set $t0 (local.get $t4))
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    )) ;; end block / LAB L237 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L237
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L238 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L238
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L239 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L239
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1892))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L240 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L240
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1896))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L241 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L241
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1908))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L242 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L242
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1912))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L243 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L243
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1900))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L244 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L244
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1904))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L245 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L245
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1043))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L246 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L246
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1045))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L247 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L247
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1047))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L248 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L248
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1049))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L249 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L249
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1052))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L250 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L250
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1055))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L251 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L251
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1057))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L252 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L252
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1060))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L253 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L253
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1062))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L254 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L254
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1064))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L255 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L255
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1066))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1892))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L256 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L256
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1068))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L257 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L257
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1070))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L258 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L258
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1072))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L259 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L259
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1074))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L260 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L260
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1076))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1087))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1091))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1103))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1108))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1114))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1120))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1134))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1148))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    )) ;; end block / LAB L261 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L261
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L262 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L262
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1162))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L263 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L263
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1164))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L264 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L264
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1166))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L265 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L265
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1169))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L266 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L266
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1172))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L267 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L267
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1175))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L268 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L268
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1178))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L269 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L269
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1180))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L270 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L270
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1182))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L271 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L271
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1184))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L272 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L272
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1186))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L273 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L273
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1188))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L235 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L235
    ;; RSTACK 4
    (local.set $t4 (local.get $t0)) ;; restore RES result
    ;; SWITCHON 35 cases default L237
    (if (i32.eq (local.get $t4) (i32.const 182)) (then
      (local.set $__lab (i32.const 38)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 181)) (then
      (local.set $__lab (i32.const 37)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 180)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 179)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 178)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 177)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 24)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 23)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 22)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 21)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 20)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 19)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 172)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 171)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 170)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 174)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 173)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 34)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 35)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 33)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 32)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 31)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 30)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 16)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 15)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 14)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 18)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 17)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 169)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 176)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 168)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 167)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 13)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)))
    (if (i32.eq (local.get $t4) (i32.const 12)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L236 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L236
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L47

  ;; BCPL fn scan_emit (L48)
  (func $fn_L48 (export "fn_L48") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    (local.set $t3 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t3))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t3))
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t3))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944)) (local.get $t3))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L275
    )) ;; end block / LAB L274 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L274
    (local.set $t5 (i32.const -1))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L275 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L275
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L276 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L276
    (local.set $t3 (i32.const 256))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (local.set $t4 (i32.const 0))
    (if (i32.eq  (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    (local.set $t3 (i32.const 255))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t3))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L277 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L277
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    ;; RES L278: save result, jump to RSTACK
    (local.set $t0 (local.get $t3))
      (local.set $__lab (i32.const 284)) (br $__dispatch)
    )) ;; end block / LAB L280 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L280
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1190))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L281 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L281
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L282 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L282
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t5 (i32.const 0))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (local.get $t4) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1197))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1203))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    )) ;; end block / LAB L284 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L284
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1211))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1218))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1225))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1230))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t4))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L283 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L283
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L285 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L285
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
      (local.set $__lab (i32.const 13)) (br $__dispatch) ;; JUMP L288
    )) ;; end block / LAB L287 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L287
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11))
    (local.set $t8 (local.get $t11))
      (local.set $__lab (i32.const 14)) (br $__dispatch) ;; JUMP L290
    )) ;; end block / LAB L289 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L289
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L288 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L288
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L290 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L290
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t10 (i32.const 512))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t9))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t9))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L291 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L291
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L286 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L286
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1824))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L292 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L292
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1237))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L293 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L293
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L294 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L294
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L295 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L295
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L296 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L296
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L297 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L297
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L298 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L298
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L299 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L299
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t6 (i32.add (global.get $P) (i32.const 7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush t6 (pre-stack-up)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1924))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2052))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L300 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L300
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (local.set $t5 (i32.add (global.get $P) (i32.const 6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush t5 (pre-stack-up)
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1924))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    (local.set $t26 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    (local.set $t27 (i32.const 0))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
      (local.set $__lab (i32.const 27)) (br $__dispatch) ;; JUMP L303
    )) ;; end block / LAB L302 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L302
    (local.set $t29 (i32.const -1))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.shl (local.get $t30) (i32.const 2)) (local.get $t29))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t29))
    (local.set $t27 (local.get $t29))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L303 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L303
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (if (i32.le_s (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944)) (local.get $t27))
    (local.set $t27 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t27))
    (local.set $t27 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t27))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t27))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t27))
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L304 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L304
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    ;; RES L305: save result, jump to RSTACK
    (local.set $t0 (local.get $t27))
      (local.set $__lab (i32.const 147)) (br $__dispatch)
    )) ;; end block / LAB L307 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L307
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L308 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L308
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    )) ;; end block / LAB L309 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L309
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    )) ;; end block / LAB L310 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L310
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944)) (local.get $t28))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (i32.store (i32.shl (local.get $t29) (i32.const 2)) (local.get $t28))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L312 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L312
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    )) ;; end block / LAB L311 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L311
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    )) ;; end block / LAB L313 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L313
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (local.set $t29 (i32.const 1))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (if (i32.gt_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    )) ;; end block / LAB L314 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L314
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 132)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t32 (i32.const 1))
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t31))
    (local.set $t29 (local.get $t31))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120))))
    (if (i32.le_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    )) ;; end block / LAB L315 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L315
    (local.set $t29 (i32.const 1))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t29))
    (local.set $t25 (local.get $t29))
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
      (local.set $__lab (i32.const 38)) (br $__dispatch)
    )) ;; end block / LAB L316 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L316
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27))
    (local.set $t25 (local.get $t27))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t28 (i32.const 0))
    (if (i32.gt_s (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t27))
    (local.set $t27 (i32.const 150)) ;; LF L301 (disp)
      (local.set $__lab (local.get $t27))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L317 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L317
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L318 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L318
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    )) ;; end block / LAB L319 = idx 41
    (if (i32.eq (local.get $__lab) (i32.const 41)) (then ;; L319
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    )) ;; end block / LAB L320 = idx 42
    (if (i32.eq (local.get $__lab) (i32.const 42)) (then ;; L320
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    )) ;; end block / LAB L321 = idx 43
    (if (i32.eq (local.get $__lab) (i32.const 43)) (then ;; L321
      (local.set $__lab (i32.const 44)) (br $__dispatch)
    )) ;; end block / LAB L322 = idx 44
    (if (i32.eq (local.get $__lab) (i32.const 44)) (then ;; L322
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 45)) (br $__dispatch)
    ))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 45)) (br $__dispatch)
    )) ;; end block / LAB L323 = idx 45
    (if (i32.eq (local.get $__lab) (i32.const 45)) (then ;; L323
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L324 = idx 46
    (if (i32.eq (local.get $__lab) (i32.const 46)) (then ;; L324
      (local.set $__lab (i32.const 47)) (br $__dispatch)
    )) ;; end block / LAB L325 = idx 47
    (if (i32.eq (local.get $__lab) (i32.const 47)) (then ;; L325
      (local.set $__lab (i32.const 48)) (br $__dispatch)
    )) ;; end block / LAB L326 = idx 48
    (if (i32.eq (local.get $__lab) (i32.const 48)) (then ;; L326
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    )) ;; end block / LAB L327 = idx 49
    (if (i32.eq (local.get $__lab) (i32.const 49)) (then ;; L327
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    )) ;; end block / LAB L328 = idx 50
    (if (i32.eq (local.get $__lab) (i32.const 50)) (then ;; L328
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 51)) (br $__dispatch)
    ))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 51)) (br $__dispatch)
    )) ;; end block / LAB L329 = idx 51
    (if (i32.eq (local.get $__lab) (i32.const 51)) (then ;; L329
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L330 = idx 52
    (if (i32.eq (local.get $__lab) (i32.const 52)) (then ;; L330
      (local.set $__lab (i32.const 53)) (br $__dispatch)
    )) ;; end block / LAB L331 = idx 53
    (if (i32.eq (local.get $__lab) (i32.const 53)) (then ;; L331
      (local.set $__lab (i32.const 54)) (br $__dispatch)
    )) ;; end block / LAB L332 = idx 54
    (if (i32.eq (local.get $__lab) (i32.const 54)) (then ;; L332
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 55)) (br $__dispatch)
    ))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 55)) (br $__dispatch)
    )) ;; end block / LAB L333 = idx 55
    (if (i32.eq (local.get $__lab) (i32.const 55)) (then ;; L333
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L334 = idx 56
    (if (i32.eq (local.get $__lab) (i32.const 56)) (then ;; L334
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 58)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 57)) (br $__dispatch)
    )) ;; end block / LAB L335 = idx 57
    (if (i32.eq (local.get $__lab) (i32.const 57)) (then ;; L335
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 57)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 58)) (br $__dispatch)
    )) ;; end block / LAB L336 = idx 58
    (if (i32.eq (local.get $__lab) (i32.const 58)) (then ;; L336
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 59)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 59)) (br $__dispatch)
    )) ;; end block / LAB L337 = idx 59
    (if (i32.eq (local.get $__lab) (i32.const 59)) (then ;; L337
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
      (local.set $__lab (i32.const 60)) (br $__dispatch)
    )) ;; end block / LAB L338 = idx 60
    (if (i32.eq (local.get $__lab) (i32.const 60)) (then ;; L338
      (local.set $__lab (i32.const 61)) (br $__dispatch)
    )) ;; end block / LAB L339 = idx 61
    (if (i32.eq (local.get $__lab) (i32.const 61)) (then ;; L339
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 62)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 62)) (br $__dispatch)
    )) ;; end block / LAB L340 = idx 62
    (if (i32.eq (local.get $__lab) (i32.const 62)) (then ;; L340
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L341 = idx 63
    (if (i32.eq (local.get $__lab) (i32.const 63)) (then ;; L341
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    )) ;; end block / LAB L342 = idx 64
    (if (i32.eq (local.get $__lab) (i32.const 64)) (then ;; L342
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L343 = idx 65
    (if (i32.eq (local.get $__lab) (i32.const 65)) (then ;; L343
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 66)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 2))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 66)) (br $__dispatch)
    )) ;; end block / LAB L344 = idx 66
    (if (i32.eq (local.get $__lab) (i32.const 66)) (then ;; L344
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L345 = idx 67
    (if (i32.eq (local.get $__lab) (i32.const 67)) (then ;; L345
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 68)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 68)) (br $__dispatch)
    )) ;; end block / LAB L346 = idx 68
    (if (i32.eq (local.get $__lab) (i32.const 68)) (then ;; L346
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
      (local.set $__lab (i32.const 69)) (br $__dispatch)
    )) ;; end block / LAB L347 = idx 69
    (if (i32.eq (local.get $__lab) (i32.const 69)) (then ;; L347
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 70)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 70)) (br $__dispatch)
    )) ;; end block / LAB L348 = idx 70
    (if (i32.eq (local.get $__lab) (i32.const 70)) (then ;; L348
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
      (local.set $__lab (i32.const 71)) (br $__dispatch)
    )) ;; end block / LAB L349 = idx 71
    (if (i32.eq (local.get $__lab) (i32.const 71)) (then ;; L349
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L350 = idx 72
    (if (i32.eq (local.get $__lab) (i32.const 72)) (then ;; L350
      (local.set $__lab (i32.const 73)) (br $__dispatch)
    )) ;; end block / LAB L351 = idx 73
    (if (i32.eq (local.get $__lab) (i32.const 73)) (then ;; L351
      (local.set $__lab (i32.const 74)) (br $__dispatch)
    )) ;; end block / LAB L352 = idx 74
    (if (i32.eq (local.get $__lab) (i32.const 74)) (then ;; L352
      (local.set $__lab (i32.const 75)) (br $__dispatch)
    )) ;; end block / LAB L353 = idx 75
    (if (i32.eq (local.get $__lab) (i32.const 75)) (then ;; L353
      (local.set $__lab (i32.const 76)) (br $__dispatch)
    )) ;; end block / LAB L354 = idx 76
    (if (i32.eq (local.get $__lab) (i32.const 76)) (then ;; L354
      (local.set $__lab (i32.const 77)) (br $__dispatch)
    )) ;; end block / LAB L355 = idx 77
    (if (i32.eq (local.get $__lab) (i32.const 77)) (then ;; L355
      (local.set $__lab (i32.const 78)) (br $__dispatch)
    )) ;; end block / LAB L356 = idx 78
    (if (i32.eq (local.get $__lab) (i32.const 78)) (then ;; L356
      (local.set $__lab (i32.const 79)) (br $__dispatch)
    )) ;; end block / LAB L357 = idx 79
    (if (i32.eq (local.get $__lab) (i32.const 79)) (then ;; L357
      (local.set $__lab (i32.const 80)) (br $__dispatch)
    )) ;; end block / LAB L358 = idx 80
    (if (i32.eq (local.get $__lab) (i32.const 80)) (then ;; L358
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L359 = idx 81
    (if (i32.eq (local.get $__lab) (i32.const 81)) (then ;; L359
      (local.set $__lab (i32.const 82)) (br $__dispatch)
    )) ;; end block / LAB L360 = idx 82
    (if (i32.eq (local.get $__lab) (i32.const 82)) (then ;; L360
      (local.set $__lab (i32.const 83)) (br $__dispatch)
    )) ;; end block / LAB L361 = idx 83
    (if (i32.eq (local.get $__lab) (i32.const 83)) (then ;; L361
      (local.set $__lab (i32.const 84)) (br $__dispatch)
    )) ;; end block / LAB L362 = idx 84
    (if (i32.eq (local.get $__lab) (i32.const 84)) (then ;; L362
      (local.set $__lab (i32.const 85)) (br $__dispatch)
    )) ;; end block / LAB L363 = idx 85
    (if (i32.eq (local.get $__lab) (i32.const 85)) (then ;; L363
      (local.set $__lab (i32.const 86)) (br $__dispatch)
    )) ;; end block / LAB L364 = idx 86
    (if (i32.eq (local.get $__lab) (i32.const 86)) (then ;; L364
      (local.set $__lab (i32.const 87)) (br $__dispatch)
    )) ;; end block / LAB L365 = idx 87
    (if (i32.eq (local.get $__lab) (i32.const 87)) (then ;; L365
      (local.set $__lab (i32.const 88)) (br $__dispatch)
    )) ;; end block / LAB L366 = idx 88
    (if (i32.eq (local.get $__lab) (i32.const 88)) (then ;; L366
      (local.set $__lab (i32.const 89)) (br $__dispatch)
    )) ;; end block / LAB L367 = idx 89
    (if (i32.eq (local.get $__lab) (i32.const 89)) (then ;; L367
      (local.set $__lab (i32.const 90)) (br $__dispatch)
    )) ;; end block / LAB L368 = idx 90
    (if (i32.eq (local.get $__lab) (i32.const 90)) (then ;; L368
      (local.set $__lab (i32.const 91)) (br $__dispatch)
    )) ;; end block / LAB L369 = idx 91
    (if (i32.eq (local.get $__lab) (i32.const 91)) (then ;; L369
      (local.set $__lab (i32.const 92)) (br $__dispatch)
    )) ;; end block / LAB L370 = idx 92
    (if (i32.eq (local.get $__lab) (i32.const 92)) (then ;; L370
      (local.set $__lab (i32.const 93)) (br $__dispatch)
    )) ;; end block / LAB L371 = idx 93
    (if (i32.eq (local.get $__lab) (i32.const 93)) (then ;; L371
      (local.set $__lab (i32.const 94)) (br $__dispatch)
    )) ;; end block / LAB L372 = idx 94
    (if (i32.eq (local.get $__lab) (i32.const 94)) (then ;; L372
      (local.set $__lab (i32.const 95)) (br $__dispatch)
    )) ;; end block / LAB L373 = idx 95
    (if (i32.eq (local.get $__lab) (i32.const 95)) (then ;; L373
      (local.set $__lab (i32.const 96)) (br $__dispatch)
    )) ;; end block / LAB L374 = idx 96
    (if (i32.eq (local.get $__lab) (i32.const 96)) (then ;; L374
      (local.set $__lab (i32.const 97)) (br $__dispatch)
    )) ;; end block / LAB L375 = idx 97
    (if (i32.eq (local.get $__lab) (i32.const 97)) (then ;; L375
      (local.set $__lab (i32.const 98)) (br $__dispatch)
    )) ;; end block / LAB L376 = idx 98
    (if (i32.eq (local.get $__lab) (i32.const 98)) (then ;; L376
      (local.set $__lab (i32.const 99)) (br $__dispatch)
    )) ;; end block / LAB L377 = idx 99
    (if (i32.eq (local.get $__lab) (i32.const 99)) (then ;; L377
      (local.set $__lab (i32.const 100)) (br $__dispatch)
    )) ;; end block / LAB L378 = idx 100
    (if (i32.eq (local.get $__lab) (i32.const 100)) (then ;; L378
      (local.set $__lab (i32.const 101)) (br $__dispatch)
    )) ;; end block / LAB L379 = idx 101
    (if (i32.eq (local.get $__lab) (i32.const 101)) (then ;; L379
      (local.set $__lab (i32.const 102)) (br $__dispatch)
    )) ;; end block / LAB L380 = idx 102
    (if (i32.eq (local.get $__lab) (i32.const 102)) (then ;; L380
      (local.set $__lab (i32.const 103)) (br $__dispatch)
    )) ;; end block / LAB L381 = idx 103
    (if (i32.eq (local.get $__lab) (i32.const 103)) (then ;; L381
      (local.set $__lab (i32.const 104)) (br $__dispatch)
    )) ;; end block / LAB L382 = idx 104
    (if (i32.eq (local.get $__lab) (i32.const 104)) (then ;; L382
      (local.set $__lab (i32.const 105)) (br $__dispatch)
    )) ;; end block / LAB L383 = idx 105
    (if (i32.eq (local.get $__lab) (i32.const 105)) (then ;; L383
      (local.set $__lab (i32.const 106)) (br $__dispatch)
    )) ;; end block / LAB L384 = idx 106
    (if (i32.eq (local.get $__lab) (i32.const 106)) (then ;; L384
      (local.set $__lab (i32.const 107)) (br $__dispatch)
    )) ;; end block / LAB L385 = idx 107
    (if (i32.eq (local.get $__lab) (i32.const 107)) (then ;; L385
      (local.set $__lab (i32.const 108)) (br $__dispatch)
    )) ;; end block / LAB L386 = idx 108
    (if (i32.eq (local.get $__lab) (i32.const 108)) (then ;; L386
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 109)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 109)) (br $__dispatch)
    )) ;; end block / LAB L387 = idx 109
    (if (i32.eq (local.get $__lab) (i32.const 109)) (then ;; L387
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L388 = idx 110
    (if (i32.eq (local.get $__lab) (i32.const 110)) (then ;; L388
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 111)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 111)) (br $__dispatch)
    )) ;; end block / LAB L389 = idx 111
    (if (i32.eq (local.get $__lab) (i32.const 111)) (then ;; L389
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
      (local.set $__lab (i32.const 112)) (br $__dispatch)
    )) ;; end block / LAB L390 = idx 112
    (if (i32.eq (local.get $__lab) (i32.const 112)) (then ;; L390
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 113)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 113)) (br $__dispatch)
    )) ;; end block / LAB L391 = idx 113
    (if (i32.eq (local.get $__lab) (i32.const 113)) (then ;; L391
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
      (local.set $__lab (i32.const 114)) (br $__dispatch)
    )) ;; end block / LAB L392 = idx 114
    (if (i32.eq (local.get $__lab) (i32.const 114)) (then ;; L392
      (local.set $__lab (i32.const 115)) (br $__dispatch)
    )) ;; end block / LAB L393 = idx 115
    (if (i32.eq (local.get $__lab) (i32.const 115)) (then ;; L393
      (local.set $__lab (i32.const 116)) (br $__dispatch)
    )) ;; end block / LAB L394 = idx 116
    (if (i32.eq (local.get $__lab) (i32.const 116)) (then ;; L394
      (local.set $__lab (i32.const 117)) (br $__dispatch)
    )) ;; end block / LAB L395 = idx 117
    (if (i32.eq (local.get $__lab) (i32.const 117)) (then ;; L395
    (local.set $t27 (i32.const 148))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.eq  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 118)) (br $__dispatch)
    ))
    (local.set $t27 (i32.const 149))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 119)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 118)) (br $__dispatch)
    )) ;; end block / LAB L397 = idx 118
    (if (i32.eq (local.get $__lab) (i32.const 118)) (then ;; L397
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
      (local.set $__lab (i32.const 119)) (br $__dispatch)
    )) ;; end block / LAB L396 = idx 119
    (if (i32.eq (local.get $__lab) (i32.const 119)) (then ;; L396
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 120)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 120)) (br $__dispatch)
    )) ;; end block / LAB L398 = idx 120
    (if (i32.eq (local.get $__lab) (i32.const 120)) (then ;; L398
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L399 = idx 121
    (if (i32.eq (local.get $__lab) (i32.const 121)) (then ;; L399
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 122)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 122)) (br $__dispatch)
    )) ;; end block / LAB L400 = idx 122
    (if (i32.eq (local.get $__lab) (i32.const 122)) (then ;; L400
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L401 = idx 123
    (if (i32.eq (local.get $__lab) (i32.const 123)) (then ;; L401
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L402 = idx 124
    (if (i32.eq (local.get $__lab) (i32.const 124)) (then ;; L402
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 125)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 125)) (br $__dispatch)
    )) ;; end block / LAB L403 = idx 125
    (if (i32.eq (local.get $__lab) (i32.const 125)) (then ;; L403
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L404 = idx 126
    (if (i32.eq (local.get $__lab) (i32.const 126)) (then ;; L404
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 127)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 127)) (br $__dispatch)
    )) ;; end block / LAB L405 = idx 127
    (if (i32.eq (local.get $__lab) (i32.const 127)) (then ;; L405
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L406 = idx 128
    (if (i32.eq (local.get $__lab) (i32.const 128)) (then ;; L406
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 129)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 3))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 129)) (br $__dispatch)
    )) ;; end block / LAB L407 = idx 129
    (if (i32.eq (local.get $__lab) (i32.const 129)) (then ;; L407
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L408 = idx 130
    (if (i32.eq (local.get $__lab) (i32.const 130)) (then ;; L408
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 132)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 131)) (br $__dispatch)
    )) ;; end block / LAB L409 = idx 131
    (if (i32.eq (local.get $__lab) (i32.const 131)) (then ;; L409
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 131)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 132)) (br $__dispatch)
    )) ;; end block / LAB L410 = idx 132
    (if (i32.eq (local.get $__lab) (i32.const 132)) (then ;; L410
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 133)) (br $__dispatch)
    ))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 133)) (br $__dispatch)
    )) ;; end block / LAB L411 = idx 133
    (if (i32.eq (local.get $__lab) (i32.const 133)) (then ;; L411
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
      (local.set $__lab (i32.const 134)) (br $__dispatch)
    )) ;; end block / LAB L412 = idx 134
    (if (i32.eq (local.get $__lab) (i32.const 134)) (then ;; L412
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L413 = idx 135
    (if (i32.eq (local.get $__lab) (i32.const 135)) (then ;; L413
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 136)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 2))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 136)) (br $__dispatch)
    )) ;; end block / LAB L414 = idx 136
    (if (i32.eq (local.get $__lab) (i32.const 136)) (then ;; L414
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L415 = idx 137
    (if (i32.eq (local.get $__lab) (i32.const 137)) (then ;; L415
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L416 = idx 138
    (if (i32.eq (local.get $__lab) (i32.const 138)) (then ;; L416
      (local.set $__lab (i32.const 139)) (br $__dispatch)
    )) ;; end block / LAB L417 = idx 139
    (if (i32.eq (local.get $__lab) (i32.const 139)) (then ;; L417
      (local.set $__lab (i32.const 140)) (br $__dispatch)
    )) ;; end block / LAB L418 = idx 140
    (if (i32.eq (local.get $__lab) (i32.const 140)) (then ;; L418
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 142)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 141)) (br $__dispatch)
    )) ;; end block / LAB L419 = idx 141
    (if (i32.eq (local.get $__lab) (i32.const 141)) (then ;; L419
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 141)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 142)) (br $__dispatch)
    )) ;; end block / LAB L420 = idx 142
    (if (i32.eq (local.get $__lab) (i32.const 142)) (then ;; L420
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
      (local.set $__lab (i32.const 143)) (br $__dispatch)
    )) ;; end block / LAB L421 = idx 143
    (if (i32.eq (local.get $__lab) (i32.const 143)) (then ;; L421
      (local.set $__lab (i32.const 144)) (br $__dispatch)
    )) ;; end block / LAB L422 = idx 144
    (if (i32.eq (local.get $__lab) (i32.const 144)) (then ;; L422
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
      (local.set $__lab (i32.const 148)) (br $__dispatch) ;; JUMP L306
    )) ;; end block / LAB L423 = idx 145
    (if (i32.eq (local.get $__lab) (i32.const 145)) (then ;; L423
    (local.set $t27 (i32.const 150)) ;; LF L301 (disp)
      (local.set $__lab (local.get $t27))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L424 = idx 146
    (if (i32.eq (local.get $__lab) (i32.const 146)) (then ;; L424
    (local.set $t27 (i32.const 150)) ;; LF L301 (disp)
      (local.set $__lab (local.get $t27))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L305 = idx 147
    (if (i32.eq (local.get $__lab) (i32.const 147)) (then ;; L305
    ;; RSTACK 27
    (local.set $t27 (local.get $t0)) ;; restore RES result
    ;; SWITCHON 84 cases default L307
    (if (i32.eq (local.get $t27) (i32.const 70)) (then
      (local.set $__lab (i32.const 146)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 0)) (then
      (local.set $__lab (i32.const 145)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 162)) (then
      (local.set $__lab (i32.const 144)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 161)) (then
      (local.set $__lab (i32.const 143)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 40)) (then
      (local.set $__lab (i32.const 140)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 39)) (then
      (local.set $__lab (i32.const 139)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 209)) (then
      (local.set $__lab (i32.const 138)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 160)) (then
      (local.set $__lab (i32.const 137)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 203)) (then
      (local.set $__lab (i32.const 135)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 202)) (then
      (local.set $__lab (i32.const 134)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 63)) (then
      (local.set $__lab (i32.const 130)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 165)) (then
      (local.set $__lab (i32.const 128)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 164)) (then
      (local.set $__lab (i32.const 126)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 43)) (then
      (local.set $__lab (i32.const 124)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 147)) (then
      (local.set $__lab (i32.const 123)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 159)) (then
      (local.set $__lab (i32.const 121)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 149)) (then
      (local.set $__lab (i32.const 117)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 148)) (then
      (local.set $__lab (i32.const 116)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 158)) (then
      (local.set $__lab (i32.const 115)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 157)) (then
      (local.set $__lab (i32.const 114)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 42)) (then
      (local.set $__lab (i32.const 112)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 10)) (then
      (local.set $__lab (i32.const 110)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 182)) (then
      (local.set $__lab (i32.const 108)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 181)) (then
      (local.set $__lab (i32.const 107)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 180)) (then
      (local.set $__lab (i32.const 106)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 179)) (then
      (local.set $__lab (i32.const 105)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 178)) (then
      (local.set $__lab (i32.const 104)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 177)) (then
      (local.set $__lab (i32.const 103)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 174)) (then
      (local.set $__lab (i32.const 102)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 173)) (then
      (local.set $__lab (i32.const 101)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 172)) (then
      (local.set $__lab (i32.const 100)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 171)) (then
      (local.set $__lab (i32.const 99)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 170)) (then
      (local.set $__lab (i32.const 98)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 35)) (then
      (local.set $__lab (i32.const 97)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 34)) (then
      (local.set $__lab (i32.const 96)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 33)) (then
      (local.set $__lab (i32.const 95)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 32)) (then
      (local.set $__lab (i32.const 94)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 31)) (then
      (local.set $__lab (i32.const 93)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 30)) (then
      (local.set $__lab (i32.const 92)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 24)) (then
      (local.set $__lab (i32.const 91)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 23)) (then
      (local.set $__lab (i32.const 90)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 22)) (then
      (local.set $__lab (i32.const 89)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 21)) (then
      (local.set $__lab (i32.const 88)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 20)) (then
      (local.set $__lab (i32.const 87)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 19)) (then
      (local.set $__lab (i32.const 86)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 18)) (then
      (local.set $__lab (i32.const 85)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 17)) (then
      (local.set $__lab (i32.const 84)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 16)) (then
      (local.set $__lab (i32.const 83)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 15)) (then
      (local.set $__lab (i32.const 82)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 14)) (then
      (local.set $__lab (i32.const 81)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 8)) (then
      (local.set $__lab (i32.const 80)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 175)) (then
      (local.set $__lab (i32.const 79)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 169)) (then
      (local.set $__lab (i32.const 78)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 176)) (then
      (local.set $__lab (i32.const 77)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 168)) (then
      (local.set $__lab (i32.const 76)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 167)) (then
      (local.set $__lab (i32.const 75)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 13)) (then
      (local.set $__lab (i32.const 74)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 29)) (then
      (local.set $__lab (i32.const 73)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 12)) (then
      (local.set $__lab (i32.const 72)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 153)) (then
      (local.set $__lab (i32.const 71)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 154)) (then
      (local.set $__lab (i32.const 69)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 152)) (then
      (local.set $__lab (i32.const 67)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 146)) (then
      (local.set $__lab (i32.const 65)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 145)) (then
      (local.set $__lab (i32.const 63)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 144)) (then
      (local.set $__lab (i32.const 61)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 143)) (then
      (local.set $__lab (i32.const 60)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 138)) (then
      (local.set $__lab (i32.const 56)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 11)) (then
      (local.set $__lab (i32.const 54)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 5)) (then
      (local.set $__lab (i32.const 53)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 4)) (then
      (local.set $__lab (i32.const 52)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 142)) (then
      (local.set $__lab (i32.const 50)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 141)) (then
      (local.set $__lab (i32.const 49)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 140)) (then
      (local.set $__lab (i32.const 48)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 139)) (then
      (local.set $__lab (i32.const 47)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 133)) (then
      (local.set $__lab (i32.const 46)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 166)) (then
      (local.set $__lab (i32.const 44)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 137)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 136)) (then
      (local.set $__lab (i32.const 42)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 135)) (then
      (local.set $__lab (i32.const 41)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 134)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 163)) (then
      (local.set $__lab (i32.const 38)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 155)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 151)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 156)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)))
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L306 = idx 148
    (if (i32.eq (local.get $__lab) (i32.const 148)) (then ;; L306
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 149)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (if (i32.le_s (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 149)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t27))
      (local.set $__lab (i32.const 149)) (br $__dispatch)
    )) ;; end block / LAB L425 = idx 149
    (if (i32.eq (local.get $__lab) (i32.const 149)) (then ;; L425
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t27))
      (local.set $__lab (i32.const 28)) (br $__dispatch) ;; JUMP L304
    )) ;; end block / LAB L301 = idx 150
    (if (i32.eq (local.get $__lab) (i32.const 150)) (then ;; L301
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t27))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
      (local.set $__lab (i32.const 153)) (br $__dispatch) ;; JUMP L427
    )) ;; end block / LAB L426 = idx 151
    (if (i32.eq (local.get $__lab) (i32.const 151)) (then ;; L426
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t26 (i32.load (i32.shl (local.get $t26) (i32.const 2))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ne  (local.get $t26) (local.get $t27)) (then
      (local.set $__lab (i32.const 152)) (br $__dispatch)
    ))
    (local.set $t26 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t26))
    (local.set $t23 (local.get $t26))
      (local.set $__lab (i32.const 154)) (br $__dispatch) ;; JUMP L429
    )) ;; end block / LAB L428 = idx 152
    (if (i32.eq (local.get $__lab) (i32.const 152)) (then ;; L428
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t27 (i32.const 1))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t26))
    (local.set $t24 (local.get $t26))
      (local.set $__lab (i32.const 153)) (br $__dispatch)
    )) ;; end block / LAB L427 = idx 153
    (if (i32.eq (local.get $__lab) (i32.const 153)) (then ;; L427
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.le_s (local.get $t26) (local.get $t27)) (then
      (local.set $__lab (i32.const 151)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 154)) (br $__dispatch)
    )) ;; end block / LAB L429 = idx 154
    (if (i32.eq (local.get $__lab) (i32.const 154)) (then ;; L429
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (if (local.get $t24) (then
      (local.set $__lab (i32.const 156)) (br $__dispatch)
    ))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t25 (i32.const 512))
    (if (i32.ge_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 155)) (br $__dispatch)
    ))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    (local.set $t24 (i32.const 1))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t24))
      (local.set $__lab (i32.const 155)) (br $__dispatch)
    )) ;; end block / LAB L431 = idx 155
    (if (i32.eq (local.get $__lab) (i32.const 155)) (then ;; L431
      (local.set $__lab (i32.const 156)) (br $__dispatch)
    )) ;; end block / LAB L430 = idx 156
    (if (i32.eq (local.get $__lab) (i32.const 156)) (then ;; L430
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1239))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1245))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1258))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t25 (i32.const 1))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
      (local.set $__lab (i32.const 158)) (br $__dispatch) ;; JUMP L433
    )) ;; end block / LAB L432 = idx 157
    (if (i32.eq (local.get $__lab) (i32.const 157)) (then ;; L432
    (local.set $t28 (i32.add (global.get $SB) (i32.const 1264))) ;; LSTR
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t25))
    (local.set $t23 (local.get $t25))
      (local.set $__lab (i32.const 158)) (br $__dispatch)
    )) ;; end block / LAB L433 = idx 158
    (if (i32.eq (local.get $__lab) (i32.const 158)) (then ;; L433
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (if (i32.le_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 157)) (br $__dispatch)
    ))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1270))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1276))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t23))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t23))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t23))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L434 = idx 159
    (if (i32.eq (local.get $__lab) (i32.const 159)) (then ;; L434
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L435 = idx 160
    (if (i32.eq (local.get $__lab) (i32.const 160)) (then ;; L435
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (local.get $t3) (then
      (local.set $__lab (i32.const 161)) (br $__dispatch)
    ))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1291))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1299))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 161)) (br $__dispatch)
    )) ;; end block / LAB L436 = idx 161
    (if (i32.eq (local.get $__lab) (i32.const 161)) (then ;; L436
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1307))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1314))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1321))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1332))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t3))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L437 = idx 162
    (if (i32.eq (local.get $__lab) (i32.const 162)) (then ;; L437
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (local.get $t5) (then
      (local.set $__lab (i32.const 163)) (br $__dispatch)
    ))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1339))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 163)) (br $__dispatch)
    )) ;; end block / LAB L438 = idx 163
    (if (i32.eq (local.get $__lab) (i32.const 163)) (then ;; L438
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1354))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1364))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t5))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 164)) (br $__dispatch)
    )) ;; end block / LAB L439 = idx 164
    (if (i32.eq (local.get $__lab) (i32.const 164)) (then ;; L439
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 165)) (br $__dispatch)
    )) ;; end block / LAB L440 = idx 165
    (if (i32.eq (local.get $__lab) (i32.const 165)) (then ;; L440
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1864))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 166)) (br $__dispatch)
    )) ;; end block / LAB L441 = idx 166
    (if (i32.eq (local.get $__lab) (i32.const 166)) (then ;; L441
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 169)) (br $__dispatch) ;; JUMP L443
    )) ;; end block / LAB L442 = idx 167
    (if (i32.eq (local.get $__lab) (i32.const 167)) (then ;; L442
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 168)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t8))
    (local.set $t4 (local.get $t8))
    (local.set $t8 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8))
    (local.set $t5 (local.get $t8))
      (local.set $__lab (i32.const 170)) (br $__dispatch) ;; JUMP L445
    )) ;; end block / LAB L444 = idx 168
    (if (i32.eq (local.get $__lab) (i32.const 168)) (then ;; L444
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
      (local.set $__lab (i32.const 169)) (br $__dispatch)
    )) ;; end block / LAB L443 = idx 169
    (if (i32.eq (local.get $__lab) (i32.const 169)) (then ;; L443
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 167)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 170)) (br $__dispatch)
    )) ;; end block / LAB L445 = idx 170
    (if (i32.eq (local.get $__lab) (i32.const 170)) (then ;; L445
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (local.get $t6) (then
      (local.set $__lab (i32.const 172)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 171)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 171)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 171)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 171)) (br $__dispatch)
    )) ;; end block / LAB L447 = idx 171
    (if (i32.eq (local.get $__lab) (i32.const 171)) (then ;; L447
      (local.set $__lab (i32.const 172)) (br $__dispatch)
    )) ;; end block / LAB L446 = idx 172
    (if (i32.eq (local.get $__lab) (i32.const 172)) (then ;; L446
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 173)) (br $__dispatch)
    ))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1381))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
      (local.set $__lab (i32.const 174)) (br $__dispatch) ;; JUMP L450
    )) ;; end block / LAB L448 = idx 173
    (if (i32.eq (local.get $__lab) (i32.const 173)) (then ;; L448
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1400))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
      (local.set $__lab (i32.const 174)) (br $__dispatch)
    )) ;; end block / LAB L450 = idx 174
    (if (i32.eq (local.get $__lab) (i32.const 174)) (then ;; L450
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 175)) (br $__dispatch)
    )) ;; end block / LAB L451 = idx 175
    (if (i32.eq (local.get $__lab) (i32.const 175)) (then ;; L451
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 176)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 176)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 176)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L452: save result, jump to RSTACK
    (local.set $t0 (local.get $t4))
      (local.set $__lab (i32.const 177)) (br $__dispatch)
    )) ;; end block / LAB L453 = idx 176
    (if (i32.eq (local.get $__lab) (i32.const 176)) (then ;; L453
    (local.set $t4 (i32.const 0))
    ;; RES L452: save result, jump to RSTACK
    (local.set $t0 (local.get $t4))
      (local.set $__lab (i32.const 177)) (br $__dispatch)
    )) ;; end block / LAB L452 = idx 177
    (if (i32.eq (local.get $__lab) (i32.const 177)) (then ;; L452
    ;; RSTACK 4
    (local.set $t4 (local.get $t0)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1414))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 178)) (br $__dispatch)
    )) ;; end block / LAB L454 = idx 178
    (if (i32.eq (local.get $__lab) (i32.const 178)) (then ;; L454
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1433))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 179)) (br $__dispatch)
    )) ;; end block / LAB L455 = idx 179
    (if (i32.eq (local.get $__lab) (i32.const 179)) (then ;; L455
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1449))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 180)) (br $__dispatch)
    )) ;; end block / LAB L456 = idx 180
    (if (i32.eq (local.get $__lab) (i32.const 180)) (then ;; L456
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 181)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 181)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 181)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L457: save result, jump to RSTACK
    (local.set $t0 (local.get $t4))
      (local.set $__lab (i32.const 182)) (br $__dispatch)
    )) ;; end block / LAB L458 = idx 181
    (if (i32.eq (local.get $__lab) (i32.const 181)) (then ;; L458
    (local.set $t4 (i32.const 0))
    ;; RES L457: save result, jump to RSTACK
    (local.set $t0 (local.get $t4))
      (local.set $__lab (i32.const 182)) (br $__dispatch)
    )) ;; end block / LAB L457 = idx 182
    (if (i32.eq (local.get $__lab) (i32.const 182)) (then ;; L457
    ;; RSTACK 4
    (local.set $t4 (local.get $t0)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1465))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 183)) (br $__dispatch)
    )) ;; end block / LAB L459 = idx 183
    (if (i32.eq (local.get $__lab) (i32.const 183)) (then ;; L459
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 184)) (br $__dispatch)
    )) ;; end block / LAB L460 = idx 184
    (if (i32.eq (local.get $__lab) (i32.const 184)) (then ;; L460
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 185)) (br $__dispatch)
    )) ;; end block / LAB L461 = idx 185
    (if (i32.eq (local.get $__lab) (i32.const 185)) (then ;; L461
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.const -1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L462 = idx 186
    (if (i32.eq (local.get $__lab) (i32.const 186)) (then ;; L462
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L463 = idx 187
    (if (i32.eq (local.get $__lab) (i32.const 187)) (then ;; L463
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1484))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L464 = idx 188
    (if (i32.eq (local.get $__lab) (i32.const 188)) (then ;; L464
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1928))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 189)) (br $__dispatch)
    )) ;; end block / LAB L465 = idx 189
    (if (i32.eq (local.get $__lab) (i32.const 189)) (then ;; L465
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1932))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 190)) (br $__dispatch)
    )) ;; end block / LAB L466 = idx 190
    (if (i32.eq (local.get $__lab) (i32.const 190)) (then ;; L466
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 191)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 191)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 191)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L467: save result, jump to RSTACK
    (local.set $t0 (local.get $t4))
      (local.set $__lab (i32.const 192)) (br $__dispatch)
    )) ;; end block / LAB L468 = idx 191
    (if (i32.eq (local.get $__lab) (i32.const 191)) (then ;; L468
    (local.set $t4 (i32.const 0))
    ;; RES L467: save result, jump to RSTACK
    (local.set $t0 (local.get $t4))
      (local.set $__lab (i32.const 192)) (br $__dispatch)
    )) ;; end block / LAB L467 = idx 192
    (if (i32.eq (local.get $__lab) (i32.const 192)) (then ;; L467
    ;; RSTACK 4
    (local.set $t4 (local.get $t0)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 193)) (br $__dispatch)
    ))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
      (local.set $__lab (i32.const 193)) (br $__dispatch)
    )) ;; end block / LAB L469 = idx 193
    (if (i32.eq (local.get $__lab) (i32.const 193)) (then ;; L469
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1499))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1503))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1522))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 194)) (br $__dispatch)
    )) ;; end block / LAB L470 = idx 194
    (if (i32.eq (local.get $__lab) (i32.const 194)) (then ;; L470
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L471 = idx 195
    (if (i32.eq (local.get $__lab) (i32.const 195)) (then ;; L471
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1868))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L472 = idx 196
    (if (i32.eq (local.get $__lab) (i32.const 196)) (then ;; L472
      (local.set $__lab (i32.const 197)) (br $__dispatch)
    )) ;; end block / LAB L473 = idx 197
    (if (i32.eq (local.get $__lab) (i32.const 197)) (then ;; L473
      (local.set $__lab (i32.const 198)) (br $__dispatch)
    )) ;; end block / LAB L474 = idx 198
    (if (i32.eq (local.get $__lab) (i32.const 198)) (then ;; L474
      (local.set $__lab (i32.const 199)) (br $__dispatch)
    )) ;; end block / LAB L475 = idx 199
    (if (i32.eq (local.get $__lab) (i32.const 199)) (then ;; L475
      (local.set $__lab (i32.const 200)) (br $__dispatch)
    )) ;; end block / LAB L476 = idx 200
    (if (i32.eq (local.get $__lab) (i32.const 200)) (then ;; L476
      (local.set $__lab (i32.const 201)) (br $__dispatch)
    )) ;; end block / LAB L477 = idx 201
    (if (i32.eq (local.get $__lab) (i32.const 201)) (then ;; L477
      (local.set $__lab (i32.const 202)) (br $__dispatch)
    )) ;; end block / LAB L478 = idx 202
    (if (i32.eq (local.get $__lab) (i32.const 202)) (then ;; L478
      (local.set $__lab (i32.const 203)) (br $__dispatch)
    )) ;; end block / LAB L479 = idx 203
    (if (i32.eq (local.get $__lab) (i32.const 203)) (then ;; L479
      (local.set $__lab (i32.const 204)) (br $__dispatch)
    )) ;; end block / LAB L480 = idx 204
    (if (i32.eq (local.get $__lab) (i32.const 204)) (then ;; L480
      (local.set $__lab (i32.const 205)) (br $__dispatch)
    )) ;; end block / LAB L481 = idx 205
    (if (i32.eq (local.get $__lab) (i32.const 205)) (then ;; L481
      (local.set $__lab (i32.const 206)) (br $__dispatch)
    )) ;; end block / LAB L482 = idx 206
    (if (i32.eq (local.get $__lab) (i32.const 206)) (then ;; L482
      (local.set $__lab (i32.const 207)) (br $__dispatch)
    )) ;; end block / LAB L483 = idx 207
    (if (i32.eq (local.get $__lab) (i32.const 207)) (then ;; L483
      (local.set $__lab (i32.const 208)) (br $__dispatch)
    )) ;; end block / LAB L484 = idx 208
    (if (i32.eq (local.get $__lab) (i32.const 208)) (then ;; L484
      (local.set $__lab (i32.const 209)) (br $__dispatch)
    )) ;; end block / LAB L485 = idx 209
    (if (i32.eq (local.get $__lab) (i32.const 209)) (then ;; L485
      (local.set $__lab (i32.const 210)) (br $__dispatch)
    )) ;; end block / LAB L486 = idx 210
    (if (i32.eq (local.get $__lab) (i32.const 210)) (then ;; L486
      (local.set $__lab (i32.const 211)) (br $__dispatch)
    )) ;; end block / LAB L487 = idx 211
    (if (i32.eq (local.get $__lab) (i32.const 211)) (then ;; L487
      (local.set $__lab (i32.const 212)) (br $__dispatch)
    )) ;; end block / LAB L488 = idx 212
    (if (i32.eq (local.get $__lab) (i32.const 212)) (then ;; L488
      (local.set $__lab (i32.const 213)) (br $__dispatch)
    )) ;; end block / LAB L489 = idx 213
    (if (i32.eq (local.get $__lab) (i32.const 213)) (then ;; L489
      (local.set $__lab (i32.const 214)) (br $__dispatch)
    )) ;; end block / LAB L490 = idx 214
    (if (i32.eq (local.get $__lab) (i32.const 214)) (then ;; L490
      (local.set $__lab (i32.const 215)) (br $__dispatch)
    )) ;; end block / LAB L491 = idx 215
    (if (i32.eq (local.get $__lab) (i32.const 215)) (then ;; L491
      (local.set $__lab (i32.const 216)) (br $__dispatch)
    )) ;; end block / LAB L492 = idx 216
    (if (i32.eq (local.get $__lab) (i32.const 216)) (then ;; L492
      (local.set $__lab (i32.const 217)) (br $__dispatch)
    )) ;; end block / LAB L493 = idx 217
    (if (i32.eq (local.get $__lab) (i32.const 217)) (then ;; L493
      (local.set $__lab (i32.const 218)) (br $__dispatch)
    )) ;; end block / LAB L494 = idx 218
    (if (i32.eq (local.get $__lab) (i32.const 218)) (then ;; L494
      (local.set $__lab (i32.const 219)) (br $__dispatch)
    )) ;; end block / LAB L495 = idx 219
    (if (i32.eq (local.get $__lab) (i32.const 219)) (then ;; L495
      (local.set $__lab (i32.const 220)) (br $__dispatch)
    )) ;; end block / LAB L496 = idx 220
    (if (i32.eq (local.get $__lab) (i32.const 220)) (then ;; L496
      (local.set $__lab (i32.const 221)) (br $__dispatch)
    )) ;; end block / LAB L497 = idx 221
    (if (i32.eq (local.get $__lab) (i32.const 221)) (then ;; L497
      (local.set $__lab (i32.const 222)) (br $__dispatch)
    )) ;; end block / LAB L498 = idx 222
    (if (i32.eq (local.get $__lab) (i32.const 222)) (then ;; L498
      (local.set $__lab (i32.const 223)) (br $__dispatch)
    )) ;; end block / LAB L499 = idx 223
    (if (i32.eq (local.get $__lab) (i32.const 223)) (then ;; L499
      (local.set $__lab (i32.const 224)) (br $__dispatch)
    )) ;; end block / LAB L500 = idx 224
    (if (i32.eq (local.get $__lab) (i32.const 224)) (then ;; L500
      (local.set $__lab (i32.const 225)) (br $__dispatch)
    )) ;; end block / LAB L501 = idx 225
    (if (i32.eq (local.get $__lab) (i32.const 225)) (then ;; L501
      (local.set $__lab (i32.const 226)) (br $__dispatch)
    )) ;; end block / LAB L502 = idx 226
    (if (i32.eq (local.get $__lab) (i32.const 226)) (then ;; L502
      (local.set $__lab (i32.const 227)) (br $__dispatch)
    )) ;; end block / LAB L503 = idx 227
    (if (i32.eq (local.get $__lab) (i32.const 227)) (then ;; L503
      (local.set $__lab (i32.const 228)) (br $__dispatch)
    )) ;; end block / LAB L504 = idx 228
    (if (i32.eq (local.get $__lab) (i32.const 228)) (then ;; L504
      (local.set $__lab (i32.const 229)) (br $__dispatch)
    )) ;; end block / LAB L505 = idx 229
    (if (i32.eq (local.get $__lab) (i32.const 229)) (then ;; L505
      (local.set $__lab (i32.const 230)) (br $__dispatch)
    )) ;; end block / LAB L506 = idx 230
    (if (i32.eq (local.get $__lab) (i32.const 230)) (then ;; L506
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L507 = idx 231
    (if (i32.eq (local.get $__lab) (i32.const 231)) (then ;; L507
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.const -1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1840))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 232)) (br $__dispatch)
    )) ;; end block / LAB L508 = idx 232
    (if (i32.eq (local.get $__lab) (i32.const 232)) (then ;; L508
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1840))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 233)) (br $__dispatch)
    )) ;; end block / LAB L509 = idx 233
    (if (i32.eq (local.get $__lab) (i32.const 233)) (then ;; L509
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1529))) ;; LSTR
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush t7 (pre-stack-up)
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 234)) (br $__dispatch)
    )) ;; end block / LAB L510 = idx 234
    (if (i32.eq (local.get $__lab) (i32.const 234)) (then ;; L510
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 235)) (br $__dispatch)
    ))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
      (local.set $__lab (i32.const 235)) (br $__dispatch)
    )) ;; end block / LAB L511 = idx 235
    (if (i32.eq (local.get $__lab) (i32.const 235)) (then ;; L511
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1547))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1558))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L512 = idx 236
    (if (i32.eq (local.get $__lab) (i32.const 236)) (then ;; L512
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1569))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1573))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1591))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L513 = idx 237
    (if (i32.eq (local.get $__lab) (i32.const 237)) (then ;; L513
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1598))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1602))) ;; LSTR
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1612))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1630))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 238)) (br $__dispatch)
    ))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
      (local.set $__lab (i32.const 238)) (br $__dispatch)
    )) ;; end block / LAB L514 = idx 238
    (if (i32.eq (local.get $__lab) (i32.const 238)) (then ;; L514
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L515 = idx 239
    (if (i32.eq (local.get $__lab) (i32.const 239)) (then ;; L515
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1638))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1650))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 240)) (br $__dispatch)
    ))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
      (local.set $__lab (i32.const 240)) (br $__dispatch)
    )) ;; end block / LAB L516 = idx 240
    (if (i32.eq (local.get $__lab) (i32.const 240)) (then ;; L516
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 241)) (br $__dispatch)
    )) ;; end block / LAB L517 = idx 241
    (if (i32.eq (local.get $__lab) (i32.const 241)) (then ;; L517
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1660))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1665))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 242)) (br $__dispatch)
    )) ;; end block / LAB L518 = idx 242
    (if (i32.eq (local.get $__lab) (i32.const 242)) (then ;; L518
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (if (i32.ne  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 243)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L519 = idx 243
    (if (i32.eq (local.get $__lab) (i32.const 243)) (then ;; L519
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 244)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
      (local.set $__lab (i32.const 244)) (br $__dispatch)
    )) ;; end block / LAB L520 = idx 244
    (if (i32.eq (local.get $__lab) (i32.const 244)) (then ;; L520
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 247)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 245)) (br $__dispatch)
    )) ;; end block / LAB L521 = idx 245
    (if (i32.eq (local.get $__lab) (i32.const 245)) (then ;; L521
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 246)) (br $__dispatch)
    ))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1680))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1684))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 246)) (br $__dispatch)
    )) ;; end block / LAB L523 = idx 246
    (if (i32.eq (local.get $__lab) (i32.const 246)) (then ;; L523
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 245)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 247)) (br $__dispatch)
    )) ;; end block / LAB L522 = idx 247
    (if (i32.eq (local.get $__lab) (i32.const 247)) (then ;; L522
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 250)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 249)) (br $__dispatch) ;; JUMP L526
    )) ;; end block / LAB L525 = idx 248
    (if (i32.eq (local.get $__lab) (i32.const 248)) (then ;; L525
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1693))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1697))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
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
      (local.set $__lab (i32.const 249)) (br $__dispatch)
    )) ;; end block / LAB L526 = idx 249
    (if (i32.eq (local.get $__lab) (i32.const 249)) (then ;; L526
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 248)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
      (local.set $__lab (i32.const 250)) (br $__dispatch)
    )) ;; end block / LAB L524 = idx 250
    (if (i32.eq (local.get $__lab) (i32.const 250)) (then ;; L524
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 251)) (br $__dispatch)
    )) ;; end block / LAB L527 = idx 251
    (if (i32.eq (local.get $__lab) (i32.const 251)) (then ;; L527
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (if (i32.eq  (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 285)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 252)) (br $__dispatch)
    ))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
      (local.set $__lab (i32.const 252)) (br $__dispatch)
    )) ;; end block / LAB L528 = idx 252
    (if (i32.eq (local.get $__lab) (i32.const 252)) (then ;; L528
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 254)) (br $__dispatch) ;; JUMP L530
    )) ;; end block / LAB L529 = idx 253
    (if (i32.eq (local.get $__lab) (i32.const 253)) (then ;; L529
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1709))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1713))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
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
      (local.set $__lab (i32.const 254)) (br $__dispatch)
    )) ;; end block / LAB L530 = idx 254
    (if (i32.eq (local.get $__lab) (i32.const 254)) (then ;; L530
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 253)) (br $__dispatch)
    ))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L531 = idx 255
    (if (i32.eq (local.get $__lab) (i32.const 255)) (then ;; L531
      (local.set $__lab (i32.const 256)) (br $__dispatch)
    )) ;; end block / LAB L532 = idx 256
    (if (i32.eq (local.get $__lab) (i32.const 256)) (then ;; L532
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1844))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 257)) (br $__dispatch)
    )) ;; end block / LAB L533 = idx 257
    (if (i32.eq (local.get $__lab) (i32.const 257)) (then ;; L533
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1723))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L534 = idx 258
    (if (i32.eq (local.get $__lab) (i32.const 258)) (then ;; L534
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.const 1))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.const 4))
    (local.set $t6 (i32.div_s (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.eq  (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 263)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 259)) (br $__dispatch)
    )) ;; end block / LAB L535 = idx 259
    (if (i32.eq (local.get $__lab) (i32.const 259)) (then ;; L535
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ne  (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 260)) (br $__dispatch)
    ))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    ;; RES L537: save result, jump to RSTACK
    (local.set $t0 (local.get $t10))
      (local.set $__lab (i32.const 261)) (br $__dispatch)
      (local.set $__lab (i32.const 260)) (br $__dispatch)
    )) ;; end block / LAB L538 = idx 260
    (if (i32.eq (local.get $__lab) (i32.const 260)) (then ;; L538
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (local.set $t10 (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; flush FNAP result
    ;; RES L537: save result, jump to RSTACK
    (local.set $t0 (local.get $t10))
      (local.set $__lab (i32.const 261)) (br $__dispatch)
    )) ;; end block / LAB L537 = idx 261
    (if (i32.eq (local.get $__lab) (i32.const 261)) (then ;; L537
    ;; RSTACK 10
    (local.set $t10 (local.get $t0)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.const 255))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t11 (i32.and (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 8))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.mul (local.get $t12) (local.get $t13)))
    (local.set $t11 (i32.shl (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t11 (i32.or (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11))
    (local.set $t8 (local.get $t11))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t11))
    (local.set $t7 (local.get $t11))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    (local.set $t11 (i32.const 4))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 262)) (br $__dispatch)
    ))
    (local.set $t14 (i32.const -1))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t16 (i32.add (global.get $TB) (i32.const 39))) ;; LF L49
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11))
    (local.set $t8 (local.get $t11))
    (local.set $t11 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
      (local.set $__lab (i32.const 262)) (br $__dispatch)
    )) ;; end block / LAB L539 = idx 262
    (if (i32.eq (local.get $__lab) (i32.const 262)) (then ;; L539
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ne  (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 259)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 263)) (br $__dispatch)
    )) ;; end block / LAB L536 = idx 263
    (if (i32.eq (local.get $__lab) (i32.const 263)) (then ;; L536
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t11 (i32.const 0))
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 264)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const -1))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t15 (i32.add (global.get $TB) (i32.const 39))) ;; LF L49
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
      (local.set $__lab (i32.const 264)) (br $__dispatch)
    )) ;; end block / LAB L540 = idx 264
    (if (i32.eq (local.get $__lab) (i32.const 264)) (then ;; L540
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1733))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $t10 (i32.const 1))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t10))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 265)) (br $__dispatch)
    )) ;; end block / LAB L541 = idx 265
    (if (i32.eq (local.get $__lab) (i32.const 265)) (then ;; L541
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1751))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t5 (i32.const 1))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L542 = idx 266
    (if (i32.eq (local.get $__lab) (i32.const 266)) (then ;; L542
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 3))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 3))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 267)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
      (local.set $__lab (i32.const 267)) (br $__dispatch)
    )) ;; end block / LAB L543 = idx 267
    (if (i32.eq (local.get $__lab) (i32.const 267)) (then ;; L543
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1777))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
    )) ;; end block / LAB L544 = idx 268
    (if (i32.eq (local.get $__lab) (i32.const 268)) (then ;; L544
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 269)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
      (local.set $__lab (i32.const 269)) (br $__dispatch)
    )) ;; end block / LAB L545 = idx 269
    (if (i32.eq (local.get $__lab) (i32.const 269)) (then ;; L545
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1803))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 271)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 270)) (br $__dispatch)
    )) ;; end block / LAB L546 = idx 270
    (if (i32.eq (local.get $__lab) (i32.const 270)) (then ;; L546
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1813))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1827))) ;; LSTR
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13)) ;; flush t13 (pre-stack-up)
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 64)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 270)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 271)) (br $__dispatch)
    )) ;; end block / LAB L547 = idx 271
    (if (i32.eq (local.get $__lab) (i32.const 271)) (then ;; L547
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 272)) (br $__dispatch)
    )) ;; end block / LAB L548 = idx 272
    (if (i32.eq (local.get $__lab) (i32.const 272)) (then ;; L548
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 273)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 273)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
      (local.set $__lab (i32.const 273)) (br $__dispatch)
    )) ;; end block / LAB L549 = idx 273
    (if (i32.eq (local.get $__lab) (i32.const 273)) (then ;; L549
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 274)) (br $__dispatch)
    )) ;; end block / LAB L550 = idx 274
    (if (i32.eq (local.get $__lab) (i32.const 274)) (then ;; L550
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.const -1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 39))) ;; LF L49
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 275)) (br $__dispatch)
    )) ;; end block / LAB L551 = idx 275
    (if (i32.eq (local.get $__lab) (i32.const 275)) (then ;; L551
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.const -1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 39))) ;; LF L49
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 276)) (br $__dispatch)
    )) ;; end block / LAB L552 = idx 276
    (if (i32.eq (local.get $__lab) (i32.const 276)) (then ;; L552
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1842))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 277)) (br $__dispatch)
    ))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1861))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 277)) (br $__dispatch)
    )) ;; end block / LAB L553 = idx 277
    (if (i32.eq (local.get $__lab) (i32.const 277)) (then ;; L553
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 278)) (br $__dispatch)
    ))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1878))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t11 (i32.shl (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
      (local.set $__lab (i32.const 278)) (br $__dispatch)
    )) ;; end block / LAB L554 = idx 278
    (if (i32.eq (local.get $__lab) (i32.const 278)) (then ;; L554
    (local.set $t5 (i32.const 1))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t5))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 279)) (br $__dispatch)
    )) ;; end block / LAB L555 = idx 279
    (if (i32.eq (local.get $__lab) (i32.const 279)) (then ;; L555
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.const 32))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 280)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const -1))
    ;; RES L556: save result, jump to RSTACK
    (local.set $t0 (local.get $t8))
      (local.set $__lab (i32.const 281)) (br $__dispatch)
      (local.set $__lab (i32.const 280)) (br $__dispatch)
    )) ;; end block / LAB L557 = idx 280
    (if (i32.eq (local.get $__lab) (i32.const 280)) (then ;; L557
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t8 (i32.shl (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    ;; RES L556: save result, jump to RSTACK
    (local.set $t0 (local.get $t8))
      (local.set $__lab (i32.const 281)) (br $__dispatch)
    )) ;; end block / LAB L556 = idx 281
    (if (i32.eq (local.get $__lab) (i32.const 281)) (then ;; L556
    ;; RSTACK 8
    (local.set $t8 (local.get $t0)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t9 (i32.shl (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.xor (local.get $t9) (i32.const -1)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.eq  (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 282)) (br $__dispatch)
    ))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1894))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
      (local.set $__lab (i32.const 282)) (br $__dispatch)
    )) ;; end block / LAB L558 = idx 282
    (if (i32.eq (local.get $__lab) (i32.const 282)) (then ;; L558
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1906))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1910))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1922))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1926))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1931))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1947))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1954))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1959))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1973))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 283)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
      (local.set $__lab (i32.const 283)) (br $__dispatch)
    )) ;; end block / LAB L559 = idx 283
    (if (i32.eq (local.get $__lab) (i32.const 283)) (then ;; L559
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
      (local.set $__lab (i32.const 285)) (br $__dispatch) ;; JUMP L279
      (local.set $__lab (i32.const 284)) (br $__dispatch)
    )) ;; end block / LAB L278 = idx 284
    (if (i32.eq (local.get $__lab) (i32.const 284)) (then ;; L278
    ;; RSTACK 3
    (local.set $t3 (local.get $t0)) ;; restore RES result
    ;; SWITCHON 83 cases default L280
    (if (i32.eq (local.get $t3) (i32.const 203)) (then
      (local.set $__lab (i32.const 279)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 202)) (then
      (local.set $__lab (i32.const 276)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 162)) (then
      (local.set $__lab (i32.const 275)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 161)) (then
      (local.set $__lab (i32.const 274)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 160)) (then
      (local.set $__lab (i32.const 272)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 63)) (then
      (local.set $__lab (i32.const 268)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 165)) (then
      (local.set $__lab (i32.const 266)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 164)) (then
      (local.set $__lab (i32.const 265)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 138)) (then
      (local.set $__lab (i32.const 258)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 61)) (then
      (local.set $__lab (i32.const 257)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 42)) (then
      (local.set $__lab (i32.const 256)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 10)) (then
      (local.set $__lab (i32.const 255)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 153)) (then
      (local.set $__lab (i32.const 251)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 152)) (then
      (local.set $__lab (i32.const 242)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 154)) (then
      (local.set $__lab (i32.const 241)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 159)) (then
      (local.set $__lab (i32.const 239)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 157)) (then
      (local.set $__lab (i32.const 237)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 158)) (then
      (local.set $__lab (i32.const 236)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 43)) (then
      (local.set $__lab (i32.const 234)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 147)) (then
      (local.set $__lab (i32.const 233)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 149)) (then
      (local.set $__lab (i32.const 232)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 148)) (then
      (local.set $__lab (i32.const 231)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 35)) (then
      (local.set $__lab (i32.const 230)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 34)) (then
      (local.set $__lab (i32.const 229)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 33)) (then
      (local.set $__lab (i32.const 228)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 32)) (then
      (local.set $__lab (i32.const 227)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 31)) (then
      (local.set $__lab (i32.const 226)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 30)) (then
      (local.set $__lab (i32.const 225)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 24)) (then
      (local.set $__lab (i32.const 224)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 23)) (then
      (local.set $__lab (i32.const 223)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 22)) (then
      (local.set $__lab (i32.const 222)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 21)) (then
      (local.set $__lab (i32.const 221)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 20)) (then
      (local.set $__lab (i32.const 220)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 19)) (then
      (local.set $__lab (i32.const 219)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 18)) (then
      (local.set $__lab (i32.const 218)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 17)) (then
      (local.set $__lab (i32.const 217)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 16)) (then
      (local.set $__lab (i32.const 216)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 15)) (then
      (local.set $__lab (i32.const 215)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 14)) (then
      (local.set $__lab (i32.const 214)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 182)) (then
      (local.set $__lab (i32.const 213)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 181)) (then
      (local.set $__lab (i32.const 212)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 180)) (then
      (local.set $__lab (i32.const 211)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 179)) (then
      (local.set $__lab (i32.const 210)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 178)) (then
      (local.set $__lab (i32.const 209)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 177)) (then
      (local.set $__lab (i32.const 208)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 174)) (then
      (local.set $__lab (i32.const 207)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 173)) (then
      (local.set $__lab (i32.const 206)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 172)) (then
      (local.set $__lab (i32.const 205)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 171)) (then
      (local.set $__lab (i32.const 204)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 170)) (then
      (local.set $__lab (i32.const 203)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 13)) (then
      (local.set $__lab (i32.const 202)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 12)) (then
      (local.set $__lab (i32.const 201)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 29)) (then
      (local.set $__lab (i32.const 200)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 169)) (then
      (local.set $__lab (i32.const 199)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 176)) (then
      (local.set $__lab (i32.const 198)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 168)) (then
      (local.set $__lab (i32.const 197)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 167)) (then
      (local.set $__lab (i32.const 196)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 8)) (then
      (local.set $__lab (i32.const 195)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 146)) (then
      (local.set $__lab (i32.const 194)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 145)) (then
      (local.set $__lab (i32.const 190)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 144)) (then
      (local.set $__lab (i32.const 189)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 143)) (then
      (local.set $__lab (i32.const 188)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 11)) (then
      (local.set $__lab (i32.const 187)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 5)) (then
      (local.set $__lab (i32.const 186)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 4)) (then
      (local.set $__lab (i32.const 185)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 137)) (then
      (local.set $__lab (i32.const 184)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 136)) (then
      (local.set $__lab (i32.const 183)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 142)) (then
      (local.set $__lab (i32.const 180)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 141)) (then
      (local.set $__lab (i32.const 179)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 140)) (then
      (local.set $__lab (i32.const 178)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 139)) (then
      (local.set $__lab (i32.const 175)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 133)) (then
      (local.set $__lab (i32.const 166)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 135)) (then
      (local.set $__lab (i32.const 165)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 134)) (then
      (local.set $__lab (i32.const 164)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 151)) (then
      (local.set $__lab (i32.const 162)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 163)) (then
      (local.set $__lab (i32.const 160)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 156)) (then
      (local.set $__lab (i32.const 159)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 155)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 40)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 39)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 209)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 70)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 0)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L279 = idx 285
    (if (i32.eq (local.get $__lab) (i32.const 285)) (then ;; L279
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t3))
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L276
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L48

  ;; BCPL fn alloc_static (L49)
  (func $fn_L49 (export "fn_L49") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t7 (i32.const 32768))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992)) (local.get $t6))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L560 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L560
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L561 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L561
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; FNRN
    (local.set $t0 (local.get $t6))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    (local.set $t5 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t5))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L49

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L10) (ref.func $fn_L11) (ref.func $fn_L12) (ref.func $fn_L13) (ref.func $fn_L14) (ref.func $fn_L15) (ref.func $fn_L16) (ref.func $fn_L17) (ref.func $fn_L18) (ref.func $fn_L19) (ref.func $fn_L20) (ref.func $fn_L21) (ref.func $fn_L22) (ref.func $fn_L23) (ref.func $fn_L24) (ref.func $fn_L25) (ref.func $fn_L26) (ref.func $fn_L27) (ref.func $fn_L28) (ref.func $fn_L29) (ref.func $fn_L30) (ref.func $fn_L31) (ref.func $fn_L32) (ref.func $fn_L33) (ref.func $fn_L34) (ref.func $fn_L35) (ref.func $fn_L36) (ref.func $fn_L37) (ref.func $fn_L38) (ref.func $fn_L39) (ref.func $fn_L40) (ref.func $fn_L41) (ref.func $fn_L42) (ref.func $fn_L43) (ref.func $fn_L44) (ref.func $fn_L45) (ref.func $fn_L46) (ref.func $fn_L47) (ref.func $fn_L48) (ref.func $fn_L49))

  ;; static data — passive segment (1981 words)
  (data $stat "\1E\57\41\53\4D\20\43\47\3A\20\54\6F\6F\20\6C\69\74\74\6C\65\20\77\6F\72\6B\73\70\61\63\65\0A\00\0E\20\20\3B\3B\20\53\45\43\54\49\4F\4E\3A\20\00\40\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\00\00\00\40\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\47\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\00\00\00\15\57\41\53\4D\20\43\47\3A\20\70\65\6E\64\5F\76\20\66\75\6C\6C\0A\00\00\08\28\6D\6F\64\75\6C\65\0A\00\00\00\26\20\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\20\28\66\75\6E\63\20\28\72\65\73\75\6C\74\20\69\33\32\29\29\29\0A\00\25\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\6D\65\6D\22\20\20\20\20\28\6D\65\6D\6F\72\79\20\34\29\29\0A\00\00\36\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\66\74\61\62\6C\65\22\20\28\74\61\62\6C\65\20\24\66\74\61\62\6C\65\20\32\35\36\20\66\75\6E\63\72\65\66\29\29\0A\00\2B\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\50\22\20\28\67\6C\6F\62\61\6C\20\24\50\20\28\6D\75\74\20\69\33\32\29\29\29\0A\25\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\47\22\20\28\67\6C\6F\62\61\6C\20\24\47\20\69\33\32\29\29\0A\00\00\30\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\73\74\61\74\69\63\5F\62\61\73\65\22\20\28\67\6C\6F\62\61\6C\20\24\53\42\20\69\33\32\29\29\0A\00\00\00\31\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\74\61\62\6C\65\5F\62\61\73\65\22\20\20\28\67\6C\6F\62\61\6C\20\24\54\42\20\69\33\32\29\29\0A\0A\00\00\2C\20\20\3B\3B\20\2D\2D\2D\20\66\75\6E\63\74\69\6F\6E\20\74\61\62\6C\65\20\73\6C\69\63\65\20\28\70\61\73\73\69\76\65\29\20\2D\2D\2D\0A\00\00\00\15\20\20\28\65\6C\65\6D\20\24\66\74\61\62\20\66\75\6E\63\72\65\66\00\00\13\20\28\72\65\66\2E\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\29\03\29\0A\0A\30\20\20\3B\3B\20\73\74\61\74\69\63\20\64\61\74\61\20\E2\80\94\20\70\61\73\73\69\76\65\20\73\65\67\6D\65\6E\74\20\28\25\6E\20\77\6F\72\64\73\29\0A\00\00\00\0F\20\20\28\64\61\74\61\20\24\73\74\61\74\20\22\10\5C\25\58\32\5C\25\58\32\5C\25\58\32\5C\25\58\32\00\00\00\04\22\29\0A\0A\00\00\00\26\20\20\28\66\75\6E\63\20\24\72\65\67\69\73\74\65\72\20\28\65\78\70\6F\72\74\20\22\72\65\67\69\73\74\65\72\22\29\0A\00\17\20\20\20\20\28\6D\65\6D\6F\72\79\2E\69\6E\69\74\20\24\73\74\61\74\0A\2F\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\14\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\0A\00\00\00\16\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\16\20\20\20\20\28\64\61\74\61\2E\64\72\6F\70\20\24\73\74\61\74\29\0A\00\1E\20\20\20\20\28\74\61\62\6C\65\2E\69\6E\69\74\20\24\66\74\61\62\6C\65\20\24\66\74\61\62\0A\00\17\20\20\20\20\20\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\0A\14\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\0A\00\00\00\16\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\16\20\20\20\20\28\65\6C\65\6D\2E\64\72\6F\70\20\24\66\74\61\62\29\0A\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\34\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\47\21\25\6E\0A\00\00\00\04\20\20\29\0A\00\00\00\37\20\20\28\66\75\6E\63\20\24\73\74\61\74\5F\77\6F\72\64\73\20\28\65\78\70\6F\72\74\20\22\73\74\61\74\5F\77\6F\72\64\73\22\29\20\28\72\65\73\75\6C\74\20\69\33\32\29\0A\14\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\33\20\20\28\66\75\6E\63\20\24\66\6E\5F\63\6F\75\6E\74\20\28\65\78\70\6F\72\74\20\22\66\6E\5F\63\6F\75\6E\74\22\29\20\28\72\65\73\75\6C\74\20\69\33\32\29\0A\14\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\11\29\0A\20\3B\3B\20\65\6E\64\20\6D\6F\64\75\6C\65\0A\00\00\24\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\1E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\00\03\29\29\0A\1E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\00\03\29\29\0A\49\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\0A\00\00\3C\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\25\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\00\00\7E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\20\28\25\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\80\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\25\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\78\6F\72\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\2D\31\29\29\29\0A\14\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\0A\00\00\00\41\20\20\20\20\20\20\28\69\66\20\28\72\65\73\75\6C\74\20\69\33\32\29\20\28\69\33\32\2E\67\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\20\20\20\20\20\20\20\20\20\28\74\68\65\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\3A\20\20\20\20\20\20\20\20\28\65\6C\73\65\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\78\6F\72\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\6E\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\50\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\20\28\66\33\32\2E\63\6F\6E\76\65\72\74\5F\69\33\32\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\00\00\4E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\74\72\75\6E\63\5F\66\33\32\5F\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\54\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\25\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\00\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\13\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\26\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\13\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\4A\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\39\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\0A\00\00\1F\20\20\20\20\28\69\66\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\74\68\65\6E\0A\29\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\7A\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\00\1F\20\20\20\20\28\69\66\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\74\68\65\6E\0A\29\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\7A\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\6E\65\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\6E\65\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\6C\74\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\67\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\67\74\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\6C\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\6C\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\67\74\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\67\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\6C\74\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\39\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\0A\00\00\07\20\20\20\20\29\29\0A\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\13\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\1C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\29\20\3B\3B\20\73\61\76\65\20\50\0A\00\00\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\2B\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\72\65\74\75\72\6E\20\61\64\64\72\20\70\6C\61\63\65\68\6F\6C\64\65\72\0A\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\23\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\65\6E\74\72\79\20\66\6E\5F\69\64\78\0A\3D\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\50\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\00\4E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\63\61\6C\6C\5F\69\6E\64\69\72\65\63\74\20\24\66\74\61\62\6C\65\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\28\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\46\4E\41\50\20\72\65\73\75\6C\74\0A\00\00\00\44\20\20\20\20\28\64\72\6F\70\20\28\63\61\6C\6C\5F\69\6E\64\69\72\65\63\74\20\24\66\74\61\62\6C\65\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\00\00\07\69\33\32\2E\61\64\64\07\69\33\32\2E\73\75\62\07\69\33\32\2E\6D\75\6C\09\69\33\32\2E\64\69\76\5F\73\00\00\09\69\33\32\2E\72\65\6D\5F\73\00\00\07\69\33\32\2E\73\68\6C\09\69\33\32\2E\73\68\72\5F\75\00\00\07\69\33\32\2E\61\6E\64\06\69\33\32\2E\6F\72\00\07\69\33\32\2E\78\6F\72\07\69\33\32\2E\78\6F\72\07\66\33\32\2E\61\64\64\07\66\33\32\2E\73\75\62\07\66\33\32\2E\6D\75\6C\07\66\33\32\2E\64\69\76\29\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\0A\00\00\0F\20\20\20\20\20\20\28\66\33\32\2E\73\75\62\0A\2F\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\11\20\20\20\20\20\20\20\20\28\66\33\32\2E\6D\75\6C\0A\00\00\15\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\74\72\75\6E\63\0A\00\00\15\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\64\69\76\0A\00\00\35\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\37\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\35\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\29\0A\00\00\06\69\33\32\2E\65\71\00\06\69\33\32\2E\6E\65\00\08\69\33\32\2E\6C\74\5F\73\00\00\00\08\69\33\32\2E\67\74\5F\73\00\00\00\08\69\33\32\2E\6C\65\5F\73\00\00\00\08\69\33\32\2E\67\65\5F\73\00\00\00\06\66\33\32\2E\65\71\00\06\66\33\32\2E\6E\65\00\06\66\33\32\2E\6C\74\00\06\66\33\32\2E\67\74\00\06\66\33\32\2E\6C\65\00\06\66\33\32\2E\67\65\00\1A\0A\57\41\53\4D\20\43\47\3A\20\75\6E\68\61\6E\64\6C\65\64\20\6F\70\20\25\6E\0A\00\16\20\20\20\20\20\20\3B\3B\20\69\6D\70\6C\69\63\69\74\20\65\6E\64\0A\00\1D\20\20\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\19\20\20\20\20\29\29\20\3B\3B\20\65\6E\64\20\6C\61\73\74\20\62\6C\6F\63\6B\0A\00\00\19\20\20\20\20\29\20\3B\3B\20\65\6E\64\20\24\5F\5F\64\69\73\70\61\74\63\68\0A\00\00\12\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\0A\00\19\20\20\29\20\3B\3B\20\65\6E\64\20\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\0A\0A\00\00\07\20\20\20\20\3B\3B\20\16\20\20\3B\3B\20\42\43\50\4C\20\66\6E\20\25\73\20\28\4C\25\6E\29\0A\00\32\20\20\28\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\20\28\65\78\70\6F\72\74\20\22\66\6E\5F\4C\25\6E\22\29\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\0A\00\17\20\20\20\20\28\6C\6F\63\61\6C\20\24\5F\5F\6C\61\62\20\69\33\32\29\0A\15\20\20\20\20\28\6C\6F\63\61\6C\20\24\74\25\6E\20\69\33\32\29\0A\00\00\16\20\20\20\20\28\6C\6F\6F\70\20\24\5F\5F\64\69\73\70\61\74\63\68\0A\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\7A\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\6C\61\62\29\29\20\28\74\68\65\6E\20\3B\3B\20\65\6E\74\72\79\20\62\6C\6F\63\6B\0A\00\1D\20\20\20\20\20\20\3B\3B\20\65\6E\64\70\72\6F\63\20\66\61\6C\6C\74\68\72\6F\75\67\68\0A\00\00\1D\20\20\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\19\20\20\20\20\29\29\20\3B\3B\20\65\6E\64\20\6C\61\73\74\20\62\6C\6F\63\6B\0A\00\00\19\20\20\20\20\29\20\3B\3B\20\65\6E\64\20\24\5F\5F\64\69\73\70\61\74\63\68\0A\00\00\28\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\3B\3B\20\75\6E\72\65\61\63\68\61\62\6C\65\20\72\65\74\75\72\6E\0A\00\00\00\19\20\20\29\20\3B\3B\20\65\6E\64\20\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\0A\0A\00\00\39\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\0A\00\00\27\20\20\20\20\29\29\20\3B\3B\20\65\6E\64\20\62\6C\6F\63\6B\20\2F\20\4C\41\42\20\4C\25\6E\20\3D\20\69\64\78\20\25\6E\0A\40\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\6C\61\62\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\74\68\65\6E\20\3B\3B\20\4C\25\6E\0A\00\00\00\49\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\46\20\4C\25\6E\0A\00\00\35\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\3B\3B\20\4C\46\20\4C\25\6E\20\28\64\69\73\70\29\0A\00\00\49\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\4C\20\4C\25\6E\0A\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\47\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\4A\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\4C\4C\20\4C\25\6E\0A\00\38\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\51\55\45\52\59\20\28\75\6E\64\65\66\69\6E\65\64\29\0A\00\00\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\0A\48\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\00\00\00\18\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\45\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\20\3B\3B\20\4A\55\4D\50\20\4C\25\6E\0A\00\00\2A\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\2A\20\20\20\20\20\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\20\3B\3B\20\47\4F\54\4F\20\28\63\6F\6D\70\75\74\65\64\29\0A\00\0C\20\20\20\20\3B\3B\20\52\54\52\4E\0A\00\00\00\47\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\50\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\0A\1B\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\0C\20\20\20\20\3B\3B\20\46\4E\52\4E\0A\00\00\00\26\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\47\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\50\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\0A\1D\20\20\20\20\28\72\65\74\75\72\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\30\29\29\0A\00\00\2C\20\20\20\20\3B\3B\20\52\45\53\20\4C\25\6E\3A\20\73\61\76\65\20\72\65\73\75\6C\74\2C\20\6A\75\6D\70\20\74\6F\20\52\53\54\41\43\4B\0A\00\00\00\25\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\30\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\11\20\20\20\20\3B\3B\20\52\53\54\41\43\4B\20\25\6E\0A\00\00\3B\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\30\29\29\20\3B\3B\20\72\65\73\74\6F\72\65\20\52\45\53\20\72\65\73\75\6C\74\0A\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\74\25\6E\0A\00\00\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\2F\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\74\25\6E\20\28\70\72\65\2D\73\74\61\63\6B\2D\75\70\29\0A\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\24\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\53\54\4F\52\45\20\73\6C\6F\74\20\25\6E\0A\00\00\00\25\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\46\49\4E\49\53\48\0A\00\00\47\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\53\54\52\0A\67\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\38\5F\75\20\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\66\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\38\20\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\25\20\20\20\20\3B\3B\20\53\57\49\54\43\48\4F\4E\20\25\6E\20\63\61\73\65\73\20\64\65\66\61\75\6C\74\20\4C\25\6E\0A\00\00\37\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\29\29\0A\49\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\0A\00\00\41\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\68\72\5F\75\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\00\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\6E\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\2E\20\20\20\20\3B\3B\20\53\45\4C\53\54\3A\20\73\66\6F\70\20\25\6E\20\6E\6F\74\20\73\75\70\70\6F\72\74\65\64\2C\20\75\73\69\6E\67\20\3A\3D\0A\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\0A\2F\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\0E\20\20\20\20\20\20\28\69\33\32\2E\6F\72\0A\00\11\20\20\20\20\20\20\20\20\28\69\33\32\2E\61\6E\64\0A\00\00\3E\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\0A\00\1A\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\11\20\20\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\0A\00\00\34\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\61\6E\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\1C\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\29\0A\00\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 7924))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 40))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828)) (i32.add (global.get $TB) (i32.const 37))) ;; G!457
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1844)) (i32.add (global.get $TB) (i32.const 36))) ;; G!461
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1840)) (i32.add (global.get $TB) (i32.const 35))) ;; G!460
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1836)) (i32.add (global.get $TB) (i32.const 34))) ;; G!459
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832)) (i32.add (global.get $TB) (i32.const 33))) ;; G!458
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1936)) (i32.add (global.get $TB) (i32.const 32))) ;; G!484
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1932)) (i32.add (global.get $TB) (i32.const 31))) ;; G!483
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1928)) (i32.add (global.get $TB) (i32.const 30))) ;; G!482
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880)) (i32.add (global.get $TB) (i32.const 29))) ;; G!470
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1912)) (i32.add (global.get $TB) (i32.const 28))) ;; G!478
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1908)) (i32.add (global.get $TB) (i32.const 27))) ;; G!477
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1904)) (i32.add (global.get $TB) (i32.const 26))) ;; G!476
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1900)) (i32.add (global.get $TB) (i32.const 25))) ;; G!475
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1896)) (i32.add (global.get $TB) (i32.const 24))) ;; G!474
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1892)) (i32.add (global.get $TB) (i32.const 23))) ;; G!473
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888)) (i32.add (global.get $TB) (i32.const 22))) ;; G!472
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884)) (i32.add (global.get $TB) (i32.const 21))) ;; G!471
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876)) (i32.add (global.get $TB) (i32.const 20))) ;; G!469
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872)) (i32.add (global.get $TB) (i32.const 19))) ;; G!468
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1868)) (i32.add (global.get $TB) (i32.const 18))) ;; G!467
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1864)) (i32.add (global.get $TB) (i32.const 17))) ;; G!466
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860)) (i32.add (global.get $TB) (i32.const 16))) ;; G!465
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856)) (i32.add (global.get $TB) (i32.const 15))) ;; G!464
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940)) (i32.add (global.get $TB) (i32.const 14))) ;; G!485
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1824)) (i32.add (global.get $TB) (i32.const 13))) ;; G!456
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1820)) (i32.add (global.get $TB) (i32.const 12))) ;; G!455
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048)) (i32.add (global.get $TB) (i32.const 11))) ;; G!512
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044)) (i32.add (global.get $TB) (i32.const 10))) ;; G!511
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2052)) (i32.add (global.get $TB) (i32.const 9))) ;; G!513
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1924)) (i32.add (global.get $TB) (i32.const 8))) ;; G!481
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920)) (i32.add (global.get $TB) (i32.const 7))) ;; G!480
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916)) (i32.add (global.get $TB) (i32.const 6))) ;; G!479
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852)) (i32.add (global.get $TB) (i32.const 5))) ;; G!463
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848)) (i32.add (global.get $TB) (i32.const 4))) ;; G!462
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1804)) (i32.add (global.get $TB) (i32.const 3))) ;; G!451
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2056)) (i32.add (global.get $TB) (i32.const 2))) ;; G!514
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1800)) (i32.add (global.get $TB) (i32.const 1))) ;; G!450
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 952)) (i32.add (global.get $TB) (i32.const 0))) ;; G!238
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 1981))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 40))
)
 ;; end module
