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

  ;; SECTION: BCPLCGWASM
  ;; BCPL fn codegenerate (L10)
  (func $fn_L10 (export "fn_L10") (type $bcpl_fn)
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
    ;; line 7:124
    (global.set $__line (i32.const 124))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:125
    (global.set $__line (i32.const 125))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.const 8192))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:126
    (global.set $__line (i32.const 126))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 0))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:127
    (global.set $__line (i32.const 127))
    (call $__break)
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068)) (local.get $t6))
    ;; line 7:128
    (global.set $__line (i32.const 128))
    (call $__break)
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
    ;; line 7:129
    (global.set $__line (i32.const 129))
    (call $__break)
    (local.set $t6 (i32.const 4))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1060))))
    (if (i32.eq  (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:136
    (global.set $__line (i32.const 136))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 8))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1060))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:137
    (global.set $__line (i32.const 137))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 21))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:138
    (global.set $__line (i32.const 138))
    (call $__break)
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068)) (local.get $t6))
    ;; line 7:139
    (global.set $__line (i32.const 139))
    (call $__break)
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
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L51 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L51
    ;; line 7:140
    (global.set $__line (i32.const 140))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956)) (local.get $t6))
    ;; line 7:143
    (global.set $__line (i32.const 143))
    (call $__break)
    (local.set $t6 (i32.const 16384))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 16384))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t6))
    ;; line 7:144
    (global.set $__line (i32.const 144))
    (call $__break)
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996)) (local.get $t6))
    ;; line 7:145
    (global.set $__line (i32.const 145))
    (call $__break)
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 16384))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004)) (local.get $t6))
    ;; line 7:146
    (global.set $__line (i32.const 146))
    (call $__break)
    (local.set $t6 (i32.const 512))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012)) (local.get $t6))
    ;; line 7:147
    (global.set $__line (i32.const 147))
    (call $__break)
    (local.set $t6 (i32.const 1536))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032)) (local.get $t6))
    ;; line 7:148
    (global.set $__line (i32.const 148))
    (call $__break)
    (local.set $t6 (i32.const 768))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 768))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020)) (local.get $t6))
    ;; line 7:149
    (global.set $__line (i32.const 149))
    (call $__break)
    (local.set $t6 (i32.const 2048))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 1024))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028)) (local.get $t6))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 16383))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L52 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L52
    ;; line 7:151
    (global.set $__line (i32.const 151))
    (call $__break)
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
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L53 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L53
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 32767))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L54 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L54
    ;; line 7:152
    (global.set $__line (i32.const 152))
    (call $__break)
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
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L55 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L55
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992)) (local.get $t6))
    ;; line 7:153
    (global.set $__line (i32.const 153))
    (call $__break)
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t6))
    ;; line 7:154
    (global.set $__line (i32.const 154))
    (call $__break)
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t6))
    ;; line 7:155
    (global.set $__line (i32.const 155))
    (call $__break)
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036)) (local.get $t6))
    ;; line 7:156
    (global.set $__line (i32.const 156))
    (call $__break)
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024)) (local.get $t6))
    ;; line 7:157
    (global.set $__line (i32.const 157))
    (call $__break)
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044)) (local.get $t6))
    ;; line 7:158
    (global.set $__line (i32.const 158))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t6))
    ;; line 7:160
    (global.set $__line (i32.const 160))
    (call $__break)
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
    ;; line 7:169
    (global.set $__line (i32.const 169))
    (call $__break)
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L56 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L56
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044))))
    (if (local.get $t5) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:170
    (global.set $__line (i32.const 170))
    (call $__break)
    (local.set $t5 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044)) (local.get $t5))
    ;; line 7:171
    (global.set $__line (i32.const 171))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1820))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L58 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L58
    ;; line 7:172
    (global.set $__line (i32.const 172))
    (call $__break)
    (local.set $t5 (i32.const 40))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:175
    (global.set $__line (i32.const 175))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:176
    (global.set $__line (i32.const 176))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:177
    (global.set $__line (i32.const 177))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 34))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:178
    (global.set $__line (i32.const 178))
    (call $__break)
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
    )) ;; end block / LAB L60 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L60
    ;; line 7:179
    (global.set $__line (i32.const 179))
    (call $__break)
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
    )) ;; end block / LAB L61 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L61
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:180
    (global.set $__line (i32.const 180))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:181
    (global.set $__line (i32.const 181))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t6))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L59 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L59
    ;; line 7:182
    (global.set $__line (i32.const 182))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2068))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:185
    (global.set $__line (i32.const 185))
    (call $__break)
    (local.set $t8 (i32.add (global.get $TB) (i32.const 38))) ;; LF L48
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:186
    (global.set $__line (i32.const 186))
    (call $__break)
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
    )) ;; end block / LAB L57 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L57
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
    ;; line 7:193
    (global.set $__line (i32.const 193))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:194
    (global.set $__line (i32.const 194))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:195
    (global.set $__line (i32.const 195))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:196
    (global.set $__line (i32.const 196))
    (call $__break)
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:242
    (global.set $__line (i32.const 242))
    (call $__break)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L63 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L63
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; RES L64: save result, jump to RSTACK
    (local.set $__res (local.get $t7))
      (local.set $__lab (i32.const 55)) (br $__dispatch)
    ;; line 7:198
    (global.set $__line (i32.const 198))
    (call $__break)
    )) ;; end block / LAB L66 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L66
    ;; line 7:199
    (global.set $__line (i32.const 199))
    (call $__break)
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
    )) ;; end block / LAB L67 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L67
    ;; line 7:200
    (global.set $__line (i32.const 200))
    (call $__break)
    (local.set $t7 (i32.const 57)) ;; LF L62 (disp)
      (local.set $__lab (local.get $t7))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L68 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L68
    ;; line 7:201
    (global.set $__line (i32.const 201))
    (call $__break)
    (local.set $t7 (i32.const 57)) ;; LF L62 (disp)
      (local.set $__lab (local.get $t7))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L69 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L69
    ;; line 7:202
    (global.set $__line (i32.const 202))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:203
    (global.set $__line (i32.const 203))
    (call $__break)
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 7:204
    (global.set $__line (i32.const 204))
    (call $__break)
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
    )) ;; end block / LAB L70 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L70
    ;; line 7:205
    (global.set $__line (i32.const 205))
    (call $__break)
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
    )) ;; end block / LAB L71 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L71
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t10 (i32.const 512))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 7:206
    (global.set $__line (i32.const 206))
    (call $__break)
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 7:207
    (global.set $__line (i32.const 207))
    (call $__break)
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L74
    )) ;; end block / LAB L73 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L73
    ;; line 7:208
    (global.set $__line (i32.const 208))
    (call $__break)
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ne  (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 7:209
    (global.set $__line (i32.const 209))
    (call $__break)
    (local.set $t12 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12))
    (local.set $t9 (local.get $t12))
      (local.set $__lab (i32.const 11)) (br $__dispatch) ;; JUMP L76
    )) ;; end block / LAB L75 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L75
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t12))
    (local.set $t10 (local.get $t12))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L74 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L74
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44))))
    (if (i32.le_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L76 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L76
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (if (local.get $t10) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 7:210
    (global.set $__line (i32.const 210))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 7:211
    (global.set $__line (i32.const 211))
    (call $__break)
    (local.set $t10 (i32.const 1))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t10))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L77 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L77
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L72 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L72
    ;; line 7:212
    (global.set $__line (i32.const 212))
    (call $__break)
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    ;; line 7:215
    (global.set $__line (i32.const 215))
    (call $__break)
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
    ;; line 7:216
    (global.set $__line (i32.const 216))
    (call $__break)
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L78 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L78
    ;; line 7:218
    (global.set $__line (i32.const 218))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
    ;; line 7:219
    (global.set $__line (i32.const 219))
    (call $__break)
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
    ;; line 7:220
    (global.set $__line (i32.const 220))
    (call $__break)
    )) ;; end block / LAB L79 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L79
    ;; line 7:221
    (global.set $__line (i32.const 221))
    (call $__break)
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L80 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L80
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L81 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L81
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L82 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L82
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L83 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L83
    ;; line 7:222
    (global.set $__line (i32.const 222))
    (call $__break)
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L84 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L84
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L85 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L85
    ;; line 7:223
    (global.set $__line (i32.const 223))
    (call $__break)
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L86 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L86
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L87 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L87
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L88 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L88
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L89 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L89
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:224
    (global.set $__line (i32.const 224))
    (call $__break)
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
    )) ;; end block / LAB L90 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L90
    ;; line 7:225
    (global.set $__line (i32.const 225))
    (call $__break)
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L91 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L91
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L92 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L92
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L93 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L93
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L94 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L94
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    )) ;; end block / LAB L95 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L95
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    )) ;; end block / LAB L96 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L96
    ;; line 7:226
    (global.set $__line (i32.const 226))
    (call $__break)
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L97 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L97
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    )) ;; end block / LAB L98 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L98
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    )) ;; end block / LAB L99 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L99
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    )) ;; end block / LAB L100 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L100
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    )) ;; end block / LAB L101 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L101
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:227
    (global.set $__line (i32.const 227))
    (call $__break)
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
    )) ;; end block / LAB L102 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L102
    ;; line 7:228
    (global.set $__line (i32.const 228))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:229
    (global.set $__line (i32.const 229))
    (call $__break)
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
    )) ;; end block / LAB L103 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L103
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
    )) ;; end block / LAB L104 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L104
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    )) ;; end block / LAB L105 = idx 41
    (if (i32.eq (local.get $__lab) (i32.const 41)) (then ;; L105
    ;; line 7:230
    (global.set $__line (i32.const 230))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:231
    (global.set $__line (i32.const 231))
    (call $__break)
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
    )) ;; end block / LAB L106 = idx 42
    (if (i32.eq (local.get $__lab) (i32.const 42)) (then ;; L106
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
    )) ;; end block / LAB L107 = idx 43
    (if (i32.eq (local.get $__lab) (i32.const 43)) (then ;; L107
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
      (local.set $__lab (i32.const 44)) (br $__dispatch)
    )) ;; end block / LAB L108 = idx 44
    (if (i32.eq (local.get $__lab) (i32.const 44)) (then ;; L108
    ;; line 7:232
    (global.set $__line (i32.const 232))
    (call $__break)
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
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
    )) ;; end block / LAB L109 = idx 45
    (if (i32.eq (local.get $__lab) (i32.const 45)) (then ;; L109
    ;; line 7:233
    (global.set $__line (i32.const 233))
    (call $__break)
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
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
    )) ;; end block / LAB L110 = idx 46
    (if (i32.eq (local.get $__lab) (i32.const 46)) (then ;; L110
    ;; line 7:234
    (global.set $__line (i32.const 234))
    (call $__break)
      (local.set $__lab (i32.const 47)) (br $__dispatch)
    )) ;; end block / LAB L111 = idx 47
    (if (i32.eq (local.get $__lab) (i32.const 47)) (then ;; L111
      (local.set $__lab (i32.const 48)) (br $__dispatch)
    )) ;; end block / LAB L112 = idx 48
    (if (i32.eq (local.get $__lab) (i32.const 48)) (then ;; L112
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:235
    (global.set $__line (i32.const 235))
    (call $__break)
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
    )) ;; end block / LAB L113 = idx 49
    (if (i32.eq (local.get $__lab) (i32.const 49)) (then ;; L113
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
    )) ;; end block / LAB L114 = idx 50
    (if (i32.eq (local.get $__lab) (i32.const 50)) (then ;; L114
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
      (local.set $__lab (i32.const 51)) (br $__dispatch)
    )) ;; end block / LAB L115 = idx 51
    (if (i32.eq (local.get $__lab) (i32.const 51)) (then ;; L115
    ;; line 7:236
    (global.set $__line (i32.const 236))
    (call $__break)
      (local.set $__lab (i32.const 52)) (br $__dispatch)
    )) ;; end block / LAB L116 = idx 52
    (if (i32.eq (local.get $__lab) (i32.const 52)) (then ;; L116
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
    )) ;; end block / LAB L117 = idx 53
    (if (i32.eq (local.get $__lab) (i32.const 53)) (then ;; L117
    ;; line 7:237
    (global.set $__line (i32.const 237))
    (call $__break)
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
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
    )) ;; end block / LAB L118 = idx 54
    (if (i32.eq (local.get $__lab) (i32.const 54)) (then ;; L118
    ;; line 7:238
    (global.set $__line (i32.const 238))
    (call $__break)
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L65
    )) ;; end block / LAB L64 = idx 55
    (if (i32.eq (local.get $__lab) (i32.const 55)) (then ;; L64
    ;; RSTACK 7
    (local.set $t7 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 38 cases default L66
    (if (i32.eq (local.get $t7) (i32.const 150)) (then
      (local.set $__lab (i32.const 54)) (br $__dispatch)))
    (if (i32.eq (local.get $t7) (i32.const 208)) (then
      (local.set $__lab (i32.const 53)) (br $__dispatch)))
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
    )) ;; end block / LAB L65 = idx 56
    (if (i32.eq (local.get $__lab) (i32.const 56)) (then ;; L65
    ;; line 7:198
    (global.set $__line (i32.const 198))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 1)) (br $__dispatch) ;; JUMP L63
    ;; line 7:240
    (global.set $__line (i32.const 240))
    (call $__break)
    )) ;; end block / LAB L62 = idx 57
    (if (i32.eq (local.get $__lab) (i32.const 57)) (then ;; L62
    ;; line 7:242
    (global.set $__line (i32.const 242))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t7))
    ;; line 7:243
    (global.set $__line (i32.const 243))
    (call $__break)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:251
    (global.set $__line (i32.const 251))
    (call $__break)
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 236))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 7:252
    (global.set $__line (i32.const 252))
    (call $__break)
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    ;; line 7:253
    (global.set $__line (i32.const 253))
    (call $__break)
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
    ;; line 7:254
    (global.set $__line (i32.const 254))
    (call $__break)
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
    ;; line 7:259
    (global.set $__line (i32.const 259))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 38))) ;; LSTR
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
    ;; line 7:263
    (global.set $__line (i32.const 263))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 55))) ;; LSTR
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
    (local $__res i32)
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
    (local.set $__res (local.get $t3))
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
  ) ;; end func $fn_L16

  ;; BCPL fn rdgn (L17)
  (func $fn_L17 (export "fn_L17") (type $bcpl_fn)
    (local $__lab i32)
    (local $__res i32)
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
    (local.set $__res (local.get $t3))
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
  ) ;; end func $fn_L17

  ;; BCPL fn rdname (L18)
  (func $fn_L18 (export "fn_L18") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:270
    (global.set $__line (i32.const 270))
    (call $__break)
    (local.set $t5 (i32.const 63))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:275
    (global.set $__line (i32.const 275))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    ;; RES L119: save result, jump to RSTACK
    (local.set $__res (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L120 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L120
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; RES L119: save result, jump to RSTACK
    (local.set $__res (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L119 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L119
    ;; RSTACK 6
    (local.set $t6 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:276
    (global.set $__line (i32.const 276))
    (call $__break)
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
    )) ;; end block / LAB L121 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L121
    ;; line 7:277
    (global.set $__line (i32.const 277))
    (call $__break)
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
    )) ;; end block / LAB L122 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L122
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
    )) ;; end block / LAB L123 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L123
    ;; line 7:278
    (global.set $__line (i32.const 278))
    (call $__break)
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
    )) ;; end block / LAB L124 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L124
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:285
    (global.set $__line (i32.const 285))
    (call $__break)
    (local.set $t3 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:286
    (global.set $__line (i32.const 286))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:287
    (global.set $__line (i32.const 287))
    (call $__break)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L125 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L125
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    ;; RES L126: save result, jump to RSTACK
    (local.set $__res (local.get $t5))
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    ;; line 7:288
    (global.set $__line (i32.const 288))
    (call $__break)
    )) ;; end block / LAB L128 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L128
    ;; line 7:289
    (global.set $__line (i32.const 289))
    (call $__break)
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
    )) ;; end block / LAB L129 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L129
    ;; line 7:290
    (global.set $__line (i32.const 290))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:291
    (global.set $__line (i32.const 291))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 7:292
    (global.set $__line (i32.const 292))
    (call $__break)
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
    )) ;; end block / LAB L130 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L130
    ;; line 7:293
    (global.set $__line (i32.const 293))
    (call $__break)
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
    )) ;; end block / LAB L131 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L131
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t7))
    (local.set $t3 (local.get $t7))
    ;; line 7:294
    (global.set $__line (i32.const 294))
    (call $__break)
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
    ;; line 7:295
    (global.set $__line (i32.const 295))
    (call $__break)
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L132 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L132
    ;; line 7:297
    (global.set $__line (i32.const 297))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
    ;; line 7:298
    (global.set $__line (i32.const 298))
    (call $__break)
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L133 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L133
    ;; line 7:299
    (global.set $__line (i32.const 299))
    (call $__break)
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
    ;; line 7:300
    (global.set $__line (i32.const 300))
    (call $__break)
    )) ;; end block / LAB L134 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L134
    ;; line 7:301
    (global.set $__line (i32.const 301))
    (call $__break)
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L135 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L135
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L136 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L136
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L137 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L137
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L138 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L138
    ;; line 7:302
    (global.set $__line (i32.const 302))
    (call $__break)
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L139 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L139
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L140 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L140
    ;; line 7:303
    (global.set $__line (i32.const 303))
    (call $__break)
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L141 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L141
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L142 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L142
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L143 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L143
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L144 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L144
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:304
    (global.set $__line (i32.const 304))
    (call $__break)
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
    )) ;; end block / LAB L145 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L145
    ;; line 7:305
    (global.set $__line (i32.const 305))
    (call $__break)
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L146 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L146
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L147 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L147
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L148 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L148
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L149 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L149
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L150 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L150
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L151 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L151
    ;; line 7:306
    (global.set $__line (i32.const 306))
    (call $__break)
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    )) ;; end block / LAB L152 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L152
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L153 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L153
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L154 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L154
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L155 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L155
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L156 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L156
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:307
    (global.set $__line (i32.const 307))
    (call $__break)
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
    )) ;; end block / LAB L157 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L157
    ;; line 7:308
    (global.set $__line (i32.const 308))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:309
    (global.set $__line (i32.const 309))
    (call $__break)
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
    )) ;; end block / LAB L158 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L158
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
    )) ;; end block / LAB L159 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L159
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    )) ;; end block / LAB L160 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L160
    ;; line 7:310
    (global.set $__line (i32.const 310))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:311
    (global.set $__line (i32.const 311))
    (call $__break)
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
    )) ;; end block / LAB L161 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L161
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
    )) ;; end block / LAB L162 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L162
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    )) ;; end block / LAB L163 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L163
    ;; line 7:312
    (global.set $__line (i32.const 312))
    (call $__break)
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
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
    )) ;; end block / LAB L164 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L164
    ;; line 7:313
    (global.set $__line (i32.const 313))
    (call $__break)
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
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
    )) ;; end block / LAB L165 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L165
    ;; line 7:314
    (global.set $__line (i32.const 314))
    (call $__break)
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    )) ;; end block / LAB L166 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L166
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    )) ;; end block / LAB L167 = idx 41
    (if (i32.eq (local.get $__lab) (i32.const 41)) (then ;; L167
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:315
    (global.set $__line (i32.const 315))
    (call $__break)
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
    )) ;; end block / LAB L168 = idx 42
    (if (i32.eq (local.get $__lab) (i32.const 42)) (then ;; L168
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
    )) ;; end block / LAB L169 = idx 43
    (if (i32.eq (local.get $__lab) (i32.const 43)) (then ;; L169
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
      (local.set $__lab (i32.const 44)) (br $__dispatch)
    )) ;; end block / LAB L170 = idx 44
    (if (i32.eq (local.get $__lab) (i32.const 44)) (then ;; L170
    ;; line 7:316
    (global.set $__line (i32.const 316))
    (call $__break)
      (local.set $__lab (i32.const 45)) (br $__dispatch)
    )) ;; end block / LAB L171 = idx 45
    (if (i32.eq (local.get $__lab) (i32.const 45)) (then ;; L171
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
    )) ;; end block / LAB L172 = idx 46
    (if (i32.eq (local.get $__lab) (i32.const 46)) (then ;; L172
    ;; line 7:317
    (global.set $__line (i32.const 317))
    (call $__break)
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
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
    )) ;; end block / LAB L173 = idx 47
    (if (i32.eq (local.get $__lab) (i32.const 47)) (then ;; L173
    ;; line 7:318
    (global.set $__line (i32.const 318))
    (call $__break)
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L127
    )) ;; end block / LAB L174 = idx 48
    (if (i32.eq (local.get $__lab) (i32.const 48)) (then ;; L174
    ;; line 7:319
    (global.set $__line (i32.const 319))
    (call $__break)
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L126 = idx 49
    (if (i32.eq (local.get $__lab) (i32.const 49)) (then ;; L126
    ;; RSTACK 5
    (local.set $t5 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 37 cases default L128
    (if (i32.eq (local.get $t5) (i32.const 0)) (then
      (local.set $__lab (i32.const 48)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 150)) (then
      (local.set $__lab (i32.const 47)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 208)) (then
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
    )) ;; end block / LAB L127 = idx 50
    (if (i32.eq (local.get $__lab) (i32.const 50)) (then ;; L127
    ;; line 7:288
    (global.set $__line (i32.const 288))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 1)) (br $__dispatch) ;; JUMP L125
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:328
    (global.set $__line (i32.const 328))
    (call $__break)
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:329
    (global.set $__line (i32.const 329))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 72))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:330
    (global.set $__line (i32.const 330))
    (call $__break)
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L175 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L175
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:332
    (global.set $__line (i32.const 332))
    (call $__break)
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:333
    (global.set $__line (i32.const 333))
    (call $__break)
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:334
    (global.set $__line (i32.const 334))
    (call $__break)
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t7 (i32.const 512))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:335
    (global.set $__line (i32.const 335))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:336
    (global.set $__line (i32.const 336))
    (call $__break)
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t6))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L176 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L176
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:343
    (global.set $__line (i32.const 343))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:344
    (global.set $__line (i32.const 344))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:345
    (global.set $__line (i32.const 345))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:346
    (global.set $__line (i32.const 346))
    (call $__break)
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:347
    (global.set $__line (i32.const 347))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L177 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L177
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 7:349
    (global.set $__line (i32.const 349))
    (call $__break)
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 7:350
    (global.set $__line (i32.const 350))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t9))
    ;; line 7:351
    (global.set $__line (i32.const 351))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924)) (local.get $t9))
    ;; line 7:352
    (global.set $__line (i32.const 352))
    (call $__break)
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t9))
    ;; line 7:353
    (global.set $__line (i32.const 353))
    (call $__break)
    (local.set $t12 (i32.add (global.get $TB) (i32.const 38))) ;; LF L48
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; line 7:354
    (global.set $__line (i32.const 354))
    (call $__break)
    (local.set $t9 (i32.const 3))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (if (i32.lt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L178 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L178
    ;; line 7:348
    (global.set $__line (i32.const 348))
    (call $__break)
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036)) (local.get $t7))
    ;; line 7:359
    (global.set $__line (i32.const 359))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924)) (local.get $t7))
    ;; line 7:360
    (global.set $__line (i32.const 360))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t7))
    ;; line 7:361
    (global.set $__line (i32.const 361))
    (call $__break)
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
    (local $__res i32)
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
    ;; line 7:375
    (global.set $__line (i32.const 375))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:376
    (global.set $__line (i32.const 376))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 78))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:377
    (global.set $__line (i32.const 377))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 81))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:378
    (global.set $__line (i32.const 378))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 91))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:379
    (global.set $__line (i32.const 379))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 98))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:380
    (global.set $__line (i32.const 380))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 108))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:381
    (global.set $__line (i32.const 381))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 122))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:382
    (global.set $__line (i32.const 382))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 133))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:383
    (global.set $__line (i32.const 383))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 143))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:384
    (global.set $__line (i32.const 384))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 156))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:385
    (global.set $__line (i32.const 385))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 169))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:386
    (global.set $__line (i32.const 386))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 183))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:393
    (global.set $__line (i32.const 393))
    (call $__break)
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
    ;; line 7:405
    (global.set $__line (i32.const 405))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:406
    (global.set $__line (i32.const 406))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 199))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:410
    (global.set $__line (i32.const 410))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 211))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:411
    (global.set $__line (i32.const 411))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L180
    )) ;; end block / LAB L179 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L179
    ;; line 7:412
    (global.set $__line (i32.const 412))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 217))) ;; LSTR
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
    )) ;; end block / LAB L180 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L180
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 222))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:413
    (global.set $__line (i32.const 413))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:415
    (global.set $__line (i32.const 415))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 223))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:416
    (global.set $__line (i32.const 416))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 236))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:417
    (global.set $__line (i32.const 417))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L183
    )) ;; end block / LAB L182 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L182
    ;; line 7:418
    (global.set $__line (i32.const 418))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:419
    (global.set $__line (i32.const 419))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 240))) ;; LSTR
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
    )) ;; end block / LAB L183 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L183
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 7:420
    (global.set $__line (i32.const 420))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 245))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L181 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L181
    ;; line 7:423
    (global.set $__line (i32.const 423))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 247))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:428
    (global.set $__line (i32.const 428))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 7:429
    (global.set $__line (i32.const 429))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 257))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:430
    (global.set $__line (i32.const 430))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 263))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:431
    (global.set $__line (i32.const 431))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 275))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:432
    (global.set $__line (i32.const 432))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 281))) ;; LSTR
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
    ;; line 7:433
    (global.set $__line (i32.const 433))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 287))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L184 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L184
    ;; line 7:434
    (global.set $__line (i32.const 434))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 7:436
    (global.set $__line (i32.const 436))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 293))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:437
    (global.set $__line (i32.const 437))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 301))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:438
    (global.set $__line (i32.const 438))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 275))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:439
    (global.set $__line (i32.const 439))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 281))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:440
    (global.set $__line (i32.const 440))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 307))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L185 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L185
    ;; line 7:441
    (global.set $__line (i32.const 441))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L187
    )) ;; end block / LAB L186 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L186
    ;; line 7:443
    (global.set $__line (i32.const 443))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:444
    (global.set $__line (i32.const 444))
    (call $__break)
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:445
    (global.set $__line (i32.const 445))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:446
    (global.set $__line (i32.const 446))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:447
    (global.set $__line (i32.const 447))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 317))) ;; LSTR
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
    )) ;; end block / LAB L187 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L187
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 7:448
    (global.set $__line (i32.const 448))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 331))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:451
    (global.set $__line (i32.const 451))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 333))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:453
    (global.set $__line (i32.const 453))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 347))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:454
    (global.set $__line (i32.const 454))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 353))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:455
    (global.set $__line (i32.const 455))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 347))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:456
    (global.set $__line (i32.const 456))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 366))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:458
    (global.set $__line (i32.const 458))
    (call $__break)
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
    (local $__res i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:466
    (global.set $__line (i32.const 466))
    (call $__break)
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
    ;; line 7:467
    (global.set $__line (i32.const 467))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:468
    (global.set $__line (i32.const 468))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L189 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L189
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944)) (local.get $t4))
    ;; line 7:469
    (global.set $__line (i32.const 469))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    ;; line 7:470
    (global.set $__line (i32.const 470))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L188 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L188
    ;; line 7:471
    (global.set $__line (i32.const 471))
    (call $__break)
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
  ) ;; end func $fn_L24

  ;; BCPL fn push_const (L25)
  (func $fn_L25 (export "fn_L25") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:480
    (global.set $__line (i32.const 480))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 371))) ;; LSTR
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
    ;; line 7:481
    (global.set $__line (i32.const 481))
    (call $__break)
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
    ;; line 7:485
    (global.set $__line (i32.const 485))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 381))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:486
    (global.set $__line (i32.const 486))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:487
    (global.set $__line (i32.const 487))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 389))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:488
    (global.set $__line (i32.const 488))
    (call $__break)
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
    ;; line 7:492
    (global.set $__line (i32.const 492))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 381))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:493
    (global.set $__line (i32.const 493))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:494
    (global.set $__line (i32.const 494))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 389))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:495
    (global.set $__line (i32.const 495))
    (call $__break)
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
    ;; line 7:499
    (global.set $__line (i32.const 499))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:501
    (global.set $__line (i32.const 501))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 390))) ;; LSTR
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
    ;; line 7:502
    (global.set $__line (i32.const 502))
    (call $__break)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:507
    (global.set $__line (i32.const 507))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:508
    (global.set $__line (i32.const 508))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 409))) ;; LSTR
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
    ;; line 7:509
    (global.set $__line (i32.const 509))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:511
    (global.set $__line (i32.const 511))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:512
    (global.set $__line (i32.const 512))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L190 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L190
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:517
    (global.set $__line (i32.const 517))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:518
    (global.set $__line (i32.const 518))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 425))) ;; LSTR
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
    ;; line 7:519
    (global.set $__line (i32.const 519))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:521
    (global.set $__line (i32.const 521))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:522
    (global.set $__line (i32.const 522))
    (call $__break)
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
  ) ;; end func $fn_L30

  ;; BCPL fn fcmp_op (L31)
  (func $fn_L31 (export "fn_L31") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:526
    (global.set $__line (i32.const 526))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:527
    (global.set $__line (i32.const 527))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 457))) ;; LSTR
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
    ;; line 7:528
    (global.set $__line (i32.const 528))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:530
    (global.set $__line (i32.const 530))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:531
    (global.set $__line (i32.const 531))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
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
  ) ;; end func $fn_L31

  ;; BCPL fn unop_neg (L32)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:534
    (global.set $__line (i32.const 534))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:535
    (global.set $__line (i32.const 535))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 490))) ;; LSTR
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
    ;; line 7:536
    (global.set $__line (i32.const 536))
    (call $__break)
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
    ;; line 7:541
    (global.set $__line (i32.const 541))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:542
    (global.set $__line (i32.const 542))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 506))) ;; LSTR
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
    ;; line 7:543
    (global.set $__line (i32.const 543))
    (call $__break)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:548
    (global.set $__line (i32.const 548))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:549
    (global.set $__line (i32.const 549))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 522))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:550
    (global.set $__line (i32.const 550))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 528))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:551
    (global.set $__line (i32.const 551))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 545))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:552
    (global.set $__line (i32.const 552))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 554))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:553
    (global.set $__line (i32.const 553))
    (call $__break)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:558
    (global.set $__line (i32.const 558))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:559
    (global.set $__line (i32.const 559))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 569))) ;; LSTR
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
    ;; line 7:560
    (global.set $__line (i32.const 560))
    (call $__break)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:566
    (global.set $__line (i32.const 566))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:567
    (global.set $__line (i32.const 567))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 585))) ;; LSTR
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
    ;; line 7:568
    (global.set $__line (i32.const 568))
    (call $__break)
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
    ;; line 7:574
    (global.set $__line (i32.const 574))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:575
    (global.set $__line (i32.const 575))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 601))) ;; LSTR
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
    ;; line 7:576
    (global.set $__line (i32.const 576))
    (call $__break)
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
    ;; line 7:582
    (global.set $__line (i32.const 582))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:583
    (global.set $__line (i32.const 583))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 622))) ;; LSTR
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
    ;; line 7:584
    (global.set $__line (i32.const 584))
    (call $__break)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:589
    (global.set $__line (i32.const 589))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:592
    (global.set $__line (i32.const 592))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 642))) ;; LSTR
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
    ;; line 7:593
    (global.set $__line (i32.const 593))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:595
    (global.set $__line (i32.const 595))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:596
    (global.set $__line (i32.const 596))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L193 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L193
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:599
    (global.set $__line (i32.const 599))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:600
    (global.set $__line (i32.const 600))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:601
    (global.set $__line (i32.const 601))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:602
    (global.set $__line (i32.const 602))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 664))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:603
    (global.set $__line (i32.const 603))
    (call $__break)
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
    ;; line 7:607
    (global.set $__line (i32.const 607))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 669))) ;; LSTR
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
    )) ;; end block / LAB L194 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L194
    ;; line 7:608
    (global.set $__line (i32.const 608))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:609
    (global.set $__line (i32.const 609))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L195 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L195
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
    ;; line 7:612
    (global.set $__line (i32.const 612))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:613
    (global.set $__line (i32.const 613))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:614
    (global.set $__line (i32.const 614))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:615
    (global.set $__line (i32.const 615))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 664))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:616
    (global.set $__line (i32.const 616))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:617
    (global.set $__line (i32.const 617))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L196 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L196
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
    ;; line 7:620
    (global.set $__line (i32.const 620))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 2))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:623
    (global.set $__line (i32.const 623))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 679))) ;; LSTR
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
    ;; line 7:624
    (global.set $__line (i32.const 624))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:626
    (global.set $__line (i32.const 626))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L197 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L197
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
    ;; line 7:633
    (global.set $__line (i32.const 633))
    (call $__break)
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
    ;; line 7:637
    (global.set $__line (i32.const 637))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 698))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:638
    (global.set $__line (i32.const 638))
    (call $__break)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:642
    (global.set $__line (i32.const 642))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:643
    (global.set $__line (i32.const 643))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    ;; RES L198: save result, jump to RSTACK
    (local.set $__res (local.get $t6))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ;; line 7:646
    (global.set $__line (i32.const 646))
    (call $__break)
    )) ;; end block / LAB L200 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L200
    ;; line 7:647
    (global.set $__line (i32.const 647))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:648
    (global.set $__line (i32.const 648))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:649
    (global.set $__line (i32.const 649))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:650
    (global.set $__line (i32.const 650))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 713))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L203
    )) ;; end block / LAB L201 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L201
    ;; line 7:651
    (global.set $__line (i32.const 651))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 721))) ;; LSTR
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
    )) ;; end block / LAB L203 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L203
    ;; line 7:652
    (global.set $__line (i32.const 652))
    (call $__break)
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L199
    ;; line 7:653
    (global.set $__line (i32.const 653))
    (call $__break)
    )) ;; end block / LAB L204 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L204
    ;; line 7:655
    (global.set $__line (i32.const 655))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:656
    (global.set $__line (i32.const 656))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:657
    (global.set $__line (i32.const 657))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 713))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L207
    )) ;; end block / LAB L205 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L205
    ;; line 7:658
    (global.set $__line (i32.const 658))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 721))) ;; LSTR
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
    )) ;; end block / LAB L207 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L207
    ;; line 7:659
    (global.set $__line (i32.const 659))
    (call $__break)
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L199
    ;; line 7:660
    (global.set $__line (i32.const 660))
    (call $__break)
    )) ;; end block / LAB L208 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L208
    ;; line 7:662
    (global.set $__line (i32.const 662))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:663
    (global.set $__line (i32.const 663))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 7:664
    (global.set $__line (i32.const 664))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 732))) ;; LSTR
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
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L211
    )) ;; end block / LAB L209 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L209
    ;; line 7:665
    (global.set $__line (i32.const 665))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 747))) ;; LSTR
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
    )) ;; end block / LAB L211 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L211
    ;; line 7:666
    (global.set $__line (i32.const 666))
    (call $__break)
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L199
    ;; line 7:667
    (global.set $__line (i32.const 667))
    (call $__break)
    )) ;; end block / LAB L212 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L212
    ;; line 7:668
    (global.set $__line (i32.const 668))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:669
    (global.set $__line (i32.const 669))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 7:670
    (global.set $__line (i32.const 670))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 747))) ;; LSTR
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
      (local.set $__lab (i32.const 12)) (br $__dispatch) ;; JUMP L215
    )) ;; end block / LAB L213 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L213
    ;; line 7:671
    (global.set $__line (i32.const 671))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 732))) ;; LSTR
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
    )) ;; end block / LAB L215 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L215
    ;; line 7:672
    (global.set $__line (i32.const 672))
    (call $__break)
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L199
    ;; line 7:673
    (global.set $__line (i32.const 673))
    (call $__break)
    )) ;; end block / LAB L216 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L216
    ;; line 7:674
    (global.set $__line (i32.const 674))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:675
    (global.set $__line (i32.const 675))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; line 7:676
    (global.set $__line (i32.const 676))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 762))) ;; LSTR
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
      (local.set $__lab (i32.const 15)) (br $__dispatch) ;; JUMP L219
    )) ;; end block / LAB L217 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L217
    ;; line 7:677
    (global.set $__line (i32.const 677))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 777))) ;; LSTR
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
    )) ;; end block / LAB L219 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L219
    ;; line 7:678
    (global.set $__line (i32.const 678))
    (call $__break)
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L199
    ;; line 7:679
    (global.set $__line (i32.const 679))
    (call $__break)
    )) ;; end block / LAB L220 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L220
    ;; line 7:680
    (global.set $__line (i32.const 680))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:681
    (global.set $__line (i32.const 681))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; line 7:682
    (global.set $__line (i32.const 682))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 792))) ;; LSTR
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
      (local.set $__lab (i32.const 18)) (br $__dispatch) ;; JUMP L223
    )) ;; end block / LAB L221 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L221
    ;; line 7:683
    (global.set $__line (i32.const 683))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 807))) ;; LSTR
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
    )) ;; end block / LAB L223 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L223
    ;; line 7:684
    (global.set $__line (i32.const 684))
    (call $__break)
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L199
    ;; line 7:685
    (global.set $__line (i32.const 685))
    (call $__break)
    )) ;; end block / LAB L224 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L224
    ;; line 7:686
    (global.set $__line (i32.const 686))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:687
    (global.set $__line (i32.const 687))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 7:688
    (global.set $__line (i32.const 688))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 807))) ;; LSTR
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
      (local.set $__lab (i32.const 21)) (br $__dispatch) ;; JUMP L227
    )) ;; end block / LAB L225 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L225
    ;; line 7:689
    (global.set $__line (i32.const 689))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 792))) ;; LSTR
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
    )) ;; end block / LAB L227 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L227
    ;; line 7:690
    (global.set $__line (i32.const 690))
    (call $__break)
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L199
    ;; line 7:691
    (global.set $__line (i32.const 691))
    (call $__break)
    )) ;; end block / LAB L228 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L228
    ;; line 7:692
    (global.set $__line (i32.const 692))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:693
    (global.set $__line (i32.const 693))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
    ;; line 7:694
    (global.set $__line (i32.const 694))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 777))) ;; LSTR
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
      (local.set $__lab (i32.const 24)) (br $__dispatch) ;; JUMP L231
    )) ;; end block / LAB L229 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L229
    ;; line 7:695
    (global.set $__line (i32.const 695))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 762))) ;; LSTR
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
    )) ;; end block / LAB L231 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L231
    ;; line 7:696
    (global.set $__line (i32.const 696))
    (call $__break)
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L199
    )) ;; end block / LAB L198 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L198
    ;; RSTACK 6
    (local.set $t6 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 7 cases default L200
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
    )) ;; end block / LAB L199 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L199
    ;; line 7:646
    (global.set $__line (i32.const 646))
    (call $__break)
    (local.set $t6 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t6))
    ;; line 7:699
    (global.set $__line (i32.const 699))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
    ;; line 7:701
    (global.set $__line (i32.const 701))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L232 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L232
    (local.set $t9 (i32.add (global.get $SB) (i32.const 698))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:703
    (global.set $__line (i32.const 703))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 822))) ;; LSTR
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
    ;; line 7:711
    (global.set $__line (i32.const 711))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:718
    (global.set $__line (i32.const 718))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 4))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:719
    (global.set $__line (i32.const 719))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t8 (i32.const 0))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:720
    (global.set $__line (i32.const 720))
    (call $__break)
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L233 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L233
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L235
    )) ;; end block / LAB L234 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L234
    ;; line 7:723
    (global.set $__line (i32.const 723))
    (call $__break)
    (local.set $t12 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    ;; line 7:724
    (global.set $__line (i32.const 724))
    (call $__break)
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
    ;; line 7:725
    (global.set $__line (i32.const 725))
    (call $__break)
    (local.set $t12 (i32.add (global.get $SB) (i32.const 664))) ;; LSTR
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
    )) ;; end block / LAB L235 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L235
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:726
    (global.set $__line (i32.const 726))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:730
    (global.set $__line (i32.const 730))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:731
    (global.set $__line (i32.const 731))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 824))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:732
    (global.set $__line (i32.const 732))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:734
    (global.set $__line (i32.const 734))
    (call $__break)
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
    ;; line 7:735
    (global.set $__line (i32.const 735))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 832))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:736
    (global.set $__line (i32.const 736))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:738
    (global.set $__line (i32.const 738))
    (call $__break)
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
    ;; line 7:739
    (global.set $__line (i32.const 739))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 843))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; line 7:740
    (global.set $__line (i32.const 740))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 852))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; line 7:743
    (global.set $__line (i32.const 743))
    (call $__break)
    (local.set $t7 (i32.const 10))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:745
    (global.set $__line (i32.const 745))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 868))) ;; LSTR
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
    ;; line 7:747
    (global.set $__line (i32.const 747))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:751
    (global.set $__line (i32.const 751))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:752
    (global.set $__line (i32.const 752))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 888))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; line 7:753
    (global.set $__line (i32.const 753))
    (call $__break)
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t7))
    ;; line 7:754
    (global.set $__line (i32.const 754))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 7:757
    (global.set $__line (i32.const 757))
    (call $__break)
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t7))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L237 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L237
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L236 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L236
    ;; line 7:758
    (global.set $__line (i32.const 758))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 899))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; line 7:761
    (global.set $__line (i32.const 761))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t7))
    ;; line 7:762
    (global.set $__line (i32.const 762))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 7:764
    (global.set $__line (i32.const 764))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L238 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L238
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:771
    (global.set $__line (i32.const 771))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:772
    (global.set $__line (i32.const 772))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 236))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:773
    (global.set $__line (i32.const 773))
    (call $__break)
    (local.set $t5 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t5))
    ;; line 7:774
    (global.set $__line (i32.const 774))
    (call $__break)
    (local.set $t5 (i32.const 132))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L239 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L239
    ;; line 7:775
    (global.set $__line (i32.const 775))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:781
    (global.set $__line (i32.const 781))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    ;; RES L240: save result, jump to RSTACK
    (local.set $__res (local.get $t5))
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ;; line 7:782
    (global.set $__line (i32.const 782))
    (call $__break)
    )) ;; end block / LAB L242 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L242
    ;; line 7:783
    (global.set $__line (i32.const 783))
    (call $__break)
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L243 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L243
    ;; line 7:784
    (global.set $__line (i32.const 784))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L244 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L244
    ;; line 7:785
    (global.set $__line (i32.const 785))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1892))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L245 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L245
    ;; line 7:786
    (global.set $__line (i32.const 786))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1896))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L246 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L246
    ;; line 7:787
    (global.set $__line (i32.const 787))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1908))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L247 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L247
    ;; line 7:788
    (global.set $__line (i32.const 788))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1912))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L248 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L248
    ;; line 7:789
    (global.set $__line (i32.const 789))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1900))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L249 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L249
    ;; line 7:790
    (global.set $__line (i32.const 790))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1904))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L250 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L250
    ;; line 7:791
    (global.set $__line (i32.const 791))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 917))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L251 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L251
    ;; line 7:792
    (global.set $__line (i32.const 792))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 919))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L252 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L252
    ;; line 7:793
    (global.set $__line (i32.const 793))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 921))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L253 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L253
    ;; line 7:794
    (global.set $__line (i32.const 794))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 923))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L254 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L254
    ;; line 7:795
    (global.set $__line (i32.const 795))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 926))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L255 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L255
    ;; line 7:796
    (global.set $__line (i32.const 796))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 929))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L256 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L256
    ;; line 7:797
    (global.set $__line (i32.const 797))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 931))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L257 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L257
    ;; line 7:798
    (global.set $__line (i32.const 798))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 934))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L258 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L258
    ;; line 7:799
    (global.set $__line (i32.const 799))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 936))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L259 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L259
    ;; line 7:800
    (global.set $__line (i32.const 800))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 938))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L260 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L260
    ;; line 7:801
    (global.set $__line (i32.const 801))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 938))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1892))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L261 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L261
    ;; line 7:802
    (global.set $__line (i32.const 802))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 940))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L262 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L262
    ;; line 7:803
    (global.set $__line (i32.const 803))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 942))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L263 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L263
    ;; line 7:804
    (global.set $__line (i32.const 804))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 944))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L264 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L264
    ;; line 7:805
    (global.set $__line (i32.const 805))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 946))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L265 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L265
    ;; line 7:806
    (global.set $__line (i32.const 806))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:809
    (global.set $__line (i32.const 809))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:810
    (global.set $__line (i32.const 810))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t7))
    ;; line 7:811
    (global.set $__line (i32.const 811))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 948))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; line 7:812
    (global.set $__line (i32.const 812))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 959))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:813
    (global.set $__line (i32.const 813))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 963))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; line 7:814
    (global.set $__line (i32.const 814))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 975))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:815
    (global.set $__line (i32.const 815))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 980))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:816
    (global.set $__line (i32.const 816))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 986))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    ;; line 7:817
    (global.set $__line (i32.const 817))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 992))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; line 7:818
    (global.set $__line (i32.const 818))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1006))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; line 7:819
    (global.set $__line (i32.const 819))
    (call $__break)
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1020))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    ;; line 7:820
    (global.set $__line (i32.const 820))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    ;; line 7:821
    (global.set $__line (i32.const 821))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t7))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    )) ;; end block / LAB L266 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L266
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    ;; line 7:823
    (global.set $__line (i32.const 823))
    (call $__break)
    )) ;; end block / LAB L267 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L267
    ;; line 7:824
    (global.set $__line (i32.const 824))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1034))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L268 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L268
    ;; line 7:825
    (global.set $__line (i32.const 825))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1036))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L269 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L269
    ;; line 7:826
    (global.set $__line (i32.const 826))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1038))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L270 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L270
    ;; line 7:827
    (global.set $__line (i32.const 827))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1041))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L271 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L271
    ;; line 7:828
    (global.set $__line (i32.const 828))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1044))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L272 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L272
    ;; line 7:829
    (global.set $__line (i32.const 829))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1047))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L273 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L273
    ;; line 7:830
    (global.set $__line (i32.const 830))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1050))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L274 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L274
    ;; line 7:831
    (global.set $__line (i32.const 831))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1052))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L275 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L275
    ;; line 7:832
    (global.set $__line (i32.const 832))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1054))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L276 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L276
    ;; line 7:833
    (global.set $__line (i32.const 833))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1056))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L277 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L277
    ;; line 7:834
    (global.set $__line (i32.const 834))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1058))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L278 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L278
    ;; line 7:835
    (global.set $__line (i32.const 835))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1060))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L241
    )) ;; end block / LAB L240 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L240
    ;; RSTACK 5
    (local.set $t5 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 35 cases default L242
    (if (i32.eq (local.get $t5) (i32.const 182)) (then
      (local.set $__lab (i32.const 38)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 181)) (then
      (local.set $__lab (i32.const 37)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 180)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 179)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 178)) (then
      (local.set $__lab (i32.const 34)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 177)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 24)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 23)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 22)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 21)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 20)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 19)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 172)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 171)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 170)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 174)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 173)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 34)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 35)) (then
      (local.set $__lab (i32.const 19)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 33)) (then
      (local.set $__lab (i32.const 18)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 32)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 31)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 30)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 16)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 15)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 14)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 18)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 17)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 169)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 176)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 168)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 167)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 13)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 29)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)))
    (if (i32.eq (local.get $t5) (i32.const 12)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L241 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L241
    ;; line 7:782
    (global.set $__line (i32.const 782))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
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
  ) ;; end func $fn_L47

  ;; BCPL fn scan_emit (L48)
  (func $fn_L48 (export "fn_L48") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:845
    (global.set $__line (i32.const 845))
    (call $__break)
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:846
    (global.set $__line (i32.const 846))
    (call $__break)
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:847
    (global.set $__line (i32.const 847))
    (call $__break)
    (local.set $t3 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t3))
    ;; line 7:848
    (global.set $__line (i32.const 848))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:849
    (global.set $__line (i32.const 849))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t3))
    ;; line 7:850
    (global.set $__line (i32.const 850))
    (call $__break)
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t3))
    ;; line 7:851
    (global.set $__line (i32.const 851))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944)) (local.get $t3))
    ;; line 7:852
    (global.set $__line (i32.const 852))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L280
    )) ;; end block / LAB L279 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L279
    ;; line 7:853
    (global.set $__line (i32.const 853))
    (call $__break)
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
    )) ;; end block / LAB L280 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L280
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L281 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L281
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (call $__break)
    (local.set $t3 (i32.const 256))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (local.set $t4 (i32.const 0))
    (if (i32.eq  (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 7:861
    (global.set $__line (i32.const 861))
    (call $__break)
    (local.set $t3 (i32.const 255))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t3))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L282 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L282
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    ;; RES L283: save result, jump to RSTACK
    (local.set $__res (local.get $t3))
      (local.set $__lab (i32.const 302)) (br $__dispatch)
    ;; line 7:863
    (global.set $__line (i32.const 863))
    (call $__break)
    )) ;; end block / LAB L285 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L285
    ;; line 7:864
    (global.set $__line (i32.const 864))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t4 (i32.const 84))
    (if (i32.lt_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t4 (i32.const 112))
    (if (i32.gt_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 7:869
    (global.set $__line (i32.const 869))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1062))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L288
    )) ;; end block / LAB L286 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L286
    ;; line 7:870
    (global.set $__line (i32.const 870))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1077))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L288 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L288
    ;; line 7:871
    (global.set $__line (i32.const 871))
    (call $__break)
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068)) (local.get $t3))
    ;; line 7:872
    (global.set $__line (i32.const 872))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:873
    (global.set $__line (i32.const 873))
    (call $__break)
    )) ;; end block / LAB L289 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L289
    ;; line 7:875
    (global.set $__line (i32.const 875))
    (call $__break)
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L290 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L290
    ;; line 7:877
    (global.set $__line (i32.const 877))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:885
    (global.set $__line (i32.const 885))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:886
    (global.set $__line (i32.const 886))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; line 7:887
    (global.set $__line (i32.const 887))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:888
    (global.set $__line (i32.const 888))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1084))) ;; LSTR
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
    ;; line 7:889
    (global.set $__line (i32.const 889))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1089))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:890
    (global.set $__line (i32.const 890))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1100))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:894
    (global.set $__line (i32.const 894))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L291 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L291
    ;; line 7:895
    (global.set $__line (i32.const 895))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:897
    (global.set $__line (i32.const 897))
    (call $__break)
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L292 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L292
    ;; line 7:900
    (global.set $__line (i32.const 900))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    )) ;; end block / LAB L293 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L293
    ;; line 7:902
    (global.set $__line (i32.const 902))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:904
    (global.set $__line (i32.const 904))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t5 (i32.const 0))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; line 7:906
    (global.set $__line (i32.const 906))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:907
    (global.set $__line (i32.const 907))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (local.get $t4) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 7:908
    (global.set $__line (i32.const 908))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1106))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:909
    (global.set $__line (i32.const 909))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1112))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L295 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L295
    ;; line 7:910
    (global.set $__line (i32.const 910))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1120))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:912
    (global.set $__line (i32.const 912))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1127))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:913
    (global.set $__line (i32.const 913))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1134))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:914
    (global.set $__line (i32.const 914))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1139))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:915
    (global.set $__line (i32.const 915))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:916
    (global.set $__line (i32.const 916))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t4))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L294 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L294
    ;; line 7:917
    (global.set $__line (i32.const 917))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L296 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L296
    ;; line 7:919
    (global.set $__line (i32.const 919))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 7:920
    (global.set $__line (i32.const 920))
    (call $__break)
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:921
    (global.set $__line (i32.const 921))
    (call $__break)
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 7:924
    (global.set $__line (i32.const 924))
    (call $__break)
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
      (local.set $__lab (i32.const 18)) (br $__dispatch) ;; JUMP L299
    )) ;; end block / LAB L298 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L298
    ;; line 7:925
    (global.set $__line (i32.const 925))
    (call $__break)
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; line 7:926
    (global.set $__line (i32.const 926))
    (call $__break)
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t11))
    (local.set $t8 (local.get $t11))
      (local.set $__lab (i32.const 19)) (br $__dispatch) ;; JUMP L301
    )) ;; end block / LAB L300 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L300
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L299 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L299
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40))))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L301 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L301
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t10 (i32.const 512))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 7:927
    (global.set $__line (i32.const 927))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    ;; line 7:928
    (global.set $__line (i32.const 928))
    (call $__break)
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t9))
    ;; line 7:929
    (global.set $__line (i32.const 929))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    ;; line 7:930
    (global.set $__line (i32.const 930))
    (call $__break)
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t9))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L302 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L302
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L297 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L297
    ;; line 7:931
    (global.set $__line (i32.const 931))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:934
    (global.set $__line (i32.const 934))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1824))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:935
    (global.set $__line (i32.const 935))
    (call $__break)
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; line 7:936
    (global.set $__line (i32.const 936))
    (call $__break)
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L303 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L303
    ;; line 7:939
    (global.set $__line (i32.const 939))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:940
    (global.set $__line (i32.const 940))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:941
    (global.set $__line (i32.const 941))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1146))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:942
    (global.set $__line (i32.const 942))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L304 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L304
    ;; line 7:943
    (global.set $__line (i32.const 943))
    (call $__break)
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
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L305 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L305
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:944
    (global.set $__line (i32.const 944))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:945
    (global.set $__line (i32.const 945))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:946
    (global.set $__line (i32.const 946))
    (call $__break)
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L306 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L306
    ;; line 7:949
    (global.set $__line (i32.const 949))
    (call $__break)
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    )) ;; end block / LAB L307 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L307
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:950
    (global.set $__line (i32.const 950))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L308 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L308
    ;; line 7:951
    (global.set $__line (i32.const 951))
    (call $__break)
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
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L309 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L309
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:952
    (global.set $__line (i32.const 952))
    (call $__break)
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L310 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L310
    ;; line 7:955
    (global.set $__line (i32.const 955))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
    ;; line 7:958
    (global.set $__line (i32.const 958))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:959
    (global.set $__line (i32.const 959))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:960
    (global.set $__line (i32.const 960))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:961
    (global.set $__line (i32.const 961))
    (call $__break)
    (local.set $t6 (i32.add (global.get $P) (i32.const 7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; flush t6 (pre-stack-up)
    ;; line 7:962
    (global.set $__line (i32.const 962))
    (call $__break)
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
    ;; line 7:963
    (global.set $__line (i32.const 963))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2064))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    ;; line 7:964
    (global.set $__line (i32.const 964))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2056))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    ;; line 7:965
    (global.set $__line (i32.const 965))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L311 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L311
    ;; line 7:966
    (global.set $__line (i32.const 966))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:969
    (global.set $__line (i32.const 969))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:970
    (global.set $__line (i32.const 970))
    (call $__break)
    (local.set $t5 (i32.add (global.get $P) (i32.const 6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush t5 (pre-stack-up)
    ;; line 7:971
    (global.set $__line (i32.const 971))
    (call $__break)
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
    ;; line 7:972
    (global.set $__line (i32.const 972))
    (call $__break)
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 7:977
    (global.set $__line (i32.const 977))
    (call $__break)
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (i32.const 1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 7:978
    (global.set $__line (i32.const 978))
    (call $__break)
    (local.set $t26 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    ;; line 7:1143
    (global.set $__line (i32.const 1143))
    (call $__break)
    (local.set $t27 (i32.const 0))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
      (local.set $__lab (i32.const 32)) (br $__dispatch) ;; JUMP L314
    )) ;; end block / LAB L313 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L313
    ;; line 7:980
    (global.set $__line (i32.const 980))
    (call $__break)
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
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    )) ;; end block / LAB L314 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L314
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (if (i32.le_s (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944)) (local.get $t27))
    ;; line 7:981
    (global.set $__line (i32.const 981))
    (call $__break)
    (local.set $t27 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t27))
    ;; line 7:982
    (global.set $__line (i32.const 982))
    (call $__break)
    (local.set $t27 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t27))
    ;; line 7:983
    (global.set $__line (i32.const 983))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t27))
    ;; line 7:984
    (global.set $__line (i32.const 984))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t27))
    ;; line 7:985
    (global.set $__line (i32.const 985))
    (call $__break)
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L315 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L315
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    ;; RES L316: save result, jump to RSTACK
    (local.set $__res (local.get $t27))
      (local.set $__lab (i32.const 154)) (br $__dispatch)
    ;; line 7:986
    (global.set $__line (i32.const 986))
    (call $__break)
    )) ;; end block / LAB L318 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L318
    ;; line 7:987
    (global.set $__line (i32.const 987))
    (call $__break)
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    )) ;; end block / LAB L319 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L319
    ;; line 7:988
    (global.set $__line (i32.const 988))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:989
    (global.set $__line (i32.const 989))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    ;; line 7:990
    (global.set $__line (i32.const 990))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t28))
    ;; line 7:991
    (global.set $__line (i32.const 991))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    )) ;; end block / LAB L320 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L320
    ;; line 7:992
    (global.set $__line (i32.const 992))
    (call $__break)
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:994
    (global.set $__line (i32.const 994))
    (call $__break)
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    )) ;; end block / LAB L321 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L321
    ;; line 7:996
    (global.set $__line (i32.const 996))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:997
    (global.set $__line (i32.const 997))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ))
    ;; line 7:998
    (global.set $__line (i32.const 998))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944)) (local.get $t28))
    ;; line 7:999
    (global.set $__line (i32.const 999))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 38)) (br $__dispatch)
    ))
    ;; line 7:1000
    (global.set $__line (i32.const 1000))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (i32.store (i32.shl (local.get $t29) (i32.const 2)) (local.get $t28))
      (local.set $__lab (i32.const 38)) (br $__dispatch)
    )) ;; end block / LAB L323 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L323
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    )) ;; end block / LAB L322 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L322
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1002
    (global.set $__line (i32.const 1002))
    (call $__break)
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    )) ;; end block / LAB L324 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L324
    ;; line 7:1004
    (global.set $__line (i32.const 1004))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1005
    (global.set $__line (i32.const 1005))
    (call $__break)
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
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    )) ;; end block / LAB L325 = idx 41
    (if (i32.eq (local.get $__lab) (i32.const 41)) (then ;; L325
    ;; line 7:1006
    (global.set $__line (i32.const 1006))
    (call $__break)
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
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    )) ;; end block / LAB L326 = idx 42
    (if (i32.eq (local.get $__lab) (i32.const 42)) (then ;; L326
    (local.set $t29 (i32.const 1))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t29))
    (local.set $t25 (local.get $t29))
    ;; line 7:1007
    (global.set $__line (i32.const 1007))
    (call $__break)
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1008
    (global.set $__line (i32.const 1008))
    (call $__break)
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    )) ;; end block / LAB L327 = idx 43
    (if (i32.eq (local.get $__lab) (i32.const 43)) (then ;; L327
    ;; line 7:1010
    (global.set $__line (i32.const 1010))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27))
    (local.set $t25 (local.get $t27))
    ;; line 7:1011
    (global.set $__line (i32.const 1011))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (local.set $t28 (i32.const 0))
    (if (i32.gt_s (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 44)) (br $__dispatch)
    ))
    ;; line 7:1012
    (global.set $__line (i32.const 1012))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t27))
    (local.set $t27 (i32.const 157)) ;; LF L312 (disp)
      (local.set $__lab (local.get $t27))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L328 = idx 44
    (if (i32.eq (local.get $__lab) (i32.const 44)) (then ;; L328
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1013
    (global.set $__line (i32.const 1013))
    (call $__break)
    )) ;; end block / LAB L329 = idx 45
    (if (i32.eq (local.get $__lab) (i32.const 45)) (then ;; L329
    ;; line 7:1016
    (global.set $__line (i32.const 1016))
    (call $__break)
      (local.set $__lab (i32.const 46)) (br $__dispatch)
    )) ;; end block / LAB L330 = idx 46
    (if (i32.eq (local.get $__lab) (i32.const 46)) (then ;; L330
      (local.set $__lab (i32.const 47)) (br $__dispatch)
    )) ;; end block / LAB L331 = idx 47
    (if (i32.eq (local.get $__lab) (i32.const 47)) (then ;; L331
      (local.set $__lab (i32.const 48)) (br $__dispatch)
    )) ;; end block / LAB L332 = idx 48
    (if (i32.eq (local.get $__lab) (i32.const 48)) (then ;; L332
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    )) ;; end block / LAB L333 = idx 49
    (if (i32.eq (local.get $__lab) (i32.const 49)) (then ;; L333
    ;; line 7:1017
    (global.set $__line (i32.const 1017))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    ;; line 7:1018
    (global.set $__line (i32.const 1018))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    ))
    ;; line 7:1019
    (global.set $__line (i32.const 1019))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    )) ;; end block / LAB L334 = idx 50
    (if (i32.eq (local.get $__lab) (i32.const 50)) (then ;; L334
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1020
    (global.set $__line (i32.const 1020))
    (call $__break)
    )) ;; end block / LAB L335 = idx 51
    (if (i32.eq (local.get $__lab) (i32.const 51)) (then ;; L335
    ;; line 7:1021
    (global.set $__line (i32.const 1021))
    (call $__break)
      (local.set $__lab (i32.const 52)) (br $__dispatch)
    )) ;; end block / LAB L336 = idx 52
    (if (i32.eq (local.get $__lab) (i32.const 52)) (then ;; L336
      (local.set $__lab (i32.const 53)) (br $__dispatch)
    )) ;; end block / LAB L337 = idx 53
    (if (i32.eq (local.get $__lab) (i32.const 53)) (then ;; L337
      (local.set $__lab (i32.const 54)) (br $__dispatch)
    )) ;; end block / LAB L338 = idx 54
    (if (i32.eq (local.get $__lab) (i32.const 54)) (then ;; L338
      (local.set $__lab (i32.const 55)) (br $__dispatch)
    )) ;; end block / LAB L339 = idx 55
    (if (i32.eq (local.get $__lab) (i32.const 55)) (then ;; L339
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    ;; line 7:1022
    (global.set $__line (i32.const 1022))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 56)) (br $__dispatch)
    ))
    ;; line 7:1023
    (global.set $__line (i32.const 1023))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 56)) (br $__dispatch)
    )) ;; end block / LAB L340 = idx 56
    (if (i32.eq (local.get $__lab) (i32.const 56)) (then ;; L340
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1024
    (global.set $__line (i32.const 1024))
    (call $__break)
    )) ;; end block / LAB L341 = idx 57
    (if (i32.eq (local.get $__lab) (i32.const 57)) (then ;; L341
    ;; line 7:1025
    (global.set $__line (i32.const 1025))
    (call $__break)
      (local.set $__lab (i32.const 58)) (br $__dispatch)
    )) ;; end block / LAB L342 = idx 58
    (if (i32.eq (local.get $__lab) (i32.const 58)) (then ;; L342
      (local.set $__lab (i32.const 59)) (br $__dispatch)
    )) ;; end block / LAB L343 = idx 59
    (if (i32.eq (local.get $__lab) (i32.const 59)) (then ;; L343
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 60)) (br $__dispatch)
    ))
    ;; line 7:1026
    (global.set $__line (i32.const 1026))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 60)) (br $__dispatch)
    )) ;; end block / LAB L344 = idx 60
    (if (i32.eq (local.get $__lab) (i32.const 60)) (then ;; L344
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1027
    (global.set $__line (i32.const 1027))
    (call $__break)
    )) ;; end block / LAB L345 = idx 61
    (if (i32.eq (local.get $__lab) (i32.const 61)) (then ;; L345
    ;; line 7:1028
    (global.set $__line (i32.const 1028))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1029
    (global.set $__line (i32.const 1029))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 63)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 62)) (br $__dispatch)
    )) ;; end block / LAB L346 = idx 62
    (if (i32.eq (local.get $__lab) (i32.const 62)) (then ;; L346
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
      (local.set $__lab (i32.const 62)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 63)) (br $__dispatch)
    )) ;; end block / LAB L347 = idx 63
    (if (i32.eq (local.get $__lab) (i32.const 63)) (then ;; L347
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    ))
    ;; line 7:1030
    (global.set $__line (i32.const 1030))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    )) ;; end block / LAB L348 = idx 64
    (if (i32.eq (local.get $__lab) (i32.const 64)) (then ;; L348
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1031
    (global.set $__line (i32.const 1031))
    (call $__break)
      (local.set $__lab (i32.const 65)) (br $__dispatch)
    )) ;; end block / LAB L349 = idx 65
    (if (i32.eq (local.get $__lab) (i32.const 65)) (then ;; L349
    ;; line 7:1035
    (global.set $__line (i32.const 1035))
    (call $__break)
      (local.set $__lab (i32.const 66)) (br $__dispatch)
    )) ;; end block / LAB L350 = idx 66
    (if (i32.eq (local.get $__lab) (i32.const 66)) (then ;; L350
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    ;; line 7:1036
    (global.set $__line (i32.const 1036))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 67)) (br $__dispatch)
    ))
    ;; line 7:1037
    (global.set $__line (i32.const 1037))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 67)) (br $__dispatch)
    )) ;; end block / LAB L351 = idx 67
    (if (i32.eq (local.get $__lab) (i32.const 67)) (then ;; L351
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1038
    (global.set $__line (i32.const 1038))
    (call $__break)
    )) ;; end block / LAB L352 = idx 68
    (if (i32.eq (local.get $__lab) (i32.const 68)) (then ;; L352
    ;; line 7:1039
    (global.set $__line (i32.const 1039))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    ;; line 7:1040
    (global.set $__line (i32.const 1040))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 69)) (br $__dispatch)
    ))
    ;; line 7:1041
    (global.set $__line (i32.const 1041))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 69)) (br $__dispatch)
    )) ;; end block / LAB L353 = idx 69
    (if (i32.eq (local.get $__lab) (i32.const 69)) (then ;; L353
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1042
    (global.set $__line (i32.const 1042))
    (call $__break)
    )) ;; end block / LAB L354 = idx 70
    (if (i32.eq (local.get $__lab) (i32.const 70)) (then ;; L354
    ;; line 7:1043
    (global.set $__line (i32.const 1043))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 71)) (br $__dispatch)
    ))
    ;; line 7:1044
    (global.set $__line (i32.const 1044))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 2))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 71)) (br $__dispatch)
    )) ;; end block / LAB L355 = idx 71
    (if (i32.eq (local.get $__lab) (i32.const 71)) (then ;; L355
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1045
    (global.set $__line (i32.const 1045))
    (call $__break)
    )) ;; end block / LAB L356 = idx 72
    (if (i32.eq (local.get $__lab) (i32.const 72)) (then ;; L356
    ;; line 7:1048
    (global.set $__line (i32.const 1048))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1049
    (global.set $__line (i32.const 1049))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 73)) (br $__dispatch)
    ))
    ;; line 7:1050
    (global.set $__line (i32.const 1050))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 73)) (br $__dispatch)
    )) ;; end block / LAB L357 = idx 73
    (if (i32.eq (local.get $__lab) (i32.const 73)) (then ;; L357
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1051
    (global.set $__line (i32.const 1051))
    (call $__break)
      (local.set $__lab (i32.const 74)) (br $__dispatch)
    )) ;; end block / LAB L358 = idx 74
    (if (i32.eq (local.get $__lab) (i32.const 74)) (then ;; L358
    ;; line 7:1053
    (global.set $__line (i32.const 1053))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1054
    (global.set $__line (i32.const 1054))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 75)) (br $__dispatch)
    ))
    ;; line 7:1055
    (global.set $__line (i32.const 1055))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 75)) (br $__dispatch)
    )) ;; end block / LAB L359 = idx 75
    (if (i32.eq (local.get $__lab) (i32.const 75)) (then ;; L359
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1056
    (global.set $__line (i32.const 1056))
    (call $__break)
      (local.set $__lab (i32.const 76)) (br $__dispatch)
    )) ;; end block / LAB L360 = idx 76
    (if (i32.eq (local.get $__lab) (i32.const 76)) (then ;; L360
    ;; line 7:1058
    (global.set $__line (i32.const 1058))
    (call $__break)
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    )) ;; end block / LAB L361 = idx 77
    (if (i32.eq (local.get $__lab) (i32.const 77)) (then ;; L361
    ;; line 7:1061
    (global.set $__line (i32.const 1061))
    (call $__break)
      (local.set $__lab (i32.const 78)) (br $__dispatch)
    )) ;; end block / LAB L362 = idx 78
    (if (i32.eq (local.get $__lab) (i32.const 78)) (then ;; L362
      (local.set $__lab (i32.const 79)) (br $__dispatch)
    )) ;; end block / LAB L363 = idx 79
    (if (i32.eq (local.get $__lab) (i32.const 79)) (then ;; L363
      (local.set $__lab (i32.const 80)) (br $__dispatch)
    )) ;; end block / LAB L364 = idx 80
    (if (i32.eq (local.get $__lab) (i32.const 80)) (then ;; L364
    ;; line 7:1062
    (global.set $__line (i32.const 1062))
    (call $__break)
      (local.set $__lab (i32.const 81)) (br $__dispatch)
    )) ;; end block / LAB L365 = idx 81
    (if (i32.eq (local.get $__lab) (i32.const 81)) (then ;; L365
      (local.set $__lab (i32.const 82)) (br $__dispatch)
    )) ;; end block / LAB L366 = idx 82
    (if (i32.eq (local.get $__lab) (i32.const 82)) (then ;; L366
    ;; line 7:1063
    (global.set $__line (i32.const 1063))
    (call $__break)
      (local.set $__lab (i32.const 83)) (br $__dispatch)
    )) ;; end block / LAB L367 = idx 83
    (if (i32.eq (local.get $__lab) (i32.const 83)) (then ;; L367
      (local.set $__lab (i32.const 84)) (br $__dispatch)
    )) ;; end block / LAB L368 = idx 84
    (if (i32.eq (local.get $__lab) (i32.const 84)) (then ;; L368
      (local.set $__lab (i32.const 85)) (br $__dispatch)
    )) ;; end block / LAB L369 = idx 85
    (if (i32.eq (local.get $__lab) (i32.const 85)) (then ;; L369
    ;; line 7:1064
    (global.set $__line (i32.const 1064))
    (call $__break)
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1065
    (global.set $__line (i32.const 1065))
    (call $__break)
    )) ;; end block / LAB L370 = idx 86
    (if (i32.eq (local.get $__lab) (i32.const 86)) (then ;; L370
    ;; line 7:1068
    (global.set $__line (i32.const 1068))
    (call $__break)
      (local.set $__lab (i32.const 87)) (br $__dispatch)
    )) ;; end block / LAB L371 = idx 87
    (if (i32.eq (local.get $__lab) (i32.const 87)) (then ;; L371
      (local.set $__lab (i32.const 88)) (br $__dispatch)
    )) ;; end block / LAB L372 = idx 88
    (if (i32.eq (local.get $__lab) (i32.const 88)) (then ;; L372
      (local.set $__lab (i32.const 89)) (br $__dispatch)
    )) ;; end block / LAB L373 = idx 89
    (if (i32.eq (local.get $__lab) (i32.const 89)) (then ;; L373
    ;; line 7:1069
    (global.set $__line (i32.const 1069))
    (call $__break)
      (local.set $__lab (i32.const 90)) (br $__dispatch)
    )) ;; end block / LAB L374 = idx 90
    (if (i32.eq (local.get $__lab) (i32.const 90)) (then ;; L374
      (local.set $__lab (i32.const 91)) (br $__dispatch)
    )) ;; end block / LAB L375 = idx 91
    (if (i32.eq (local.get $__lab) (i32.const 91)) (then ;; L375
    ;; line 7:1070
    (global.set $__line (i32.const 1070))
    (call $__break)
      (local.set $__lab (i32.const 92)) (br $__dispatch)
    )) ;; end block / LAB L376 = idx 92
    (if (i32.eq (local.get $__lab) (i32.const 92)) (then ;; L376
      (local.set $__lab (i32.const 93)) (br $__dispatch)
    )) ;; end block / LAB L377 = idx 93
    (if (i32.eq (local.get $__lab) (i32.const 93)) (then ;; L377
    ;; line 7:1071
    (global.set $__line (i32.const 1071))
    (call $__break)
      (local.set $__lab (i32.const 94)) (br $__dispatch)
    )) ;; end block / LAB L378 = idx 94
    (if (i32.eq (local.get $__lab) (i32.const 94)) (then ;; L378
      (local.set $__lab (i32.const 95)) (br $__dispatch)
    )) ;; end block / LAB L379 = idx 95
    (if (i32.eq (local.get $__lab) (i32.const 95)) (then ;; L379
      (local.set $__lab (i32.const 96)) (br $__dispatch)
    )) ;; end block / LAB L380 = idx 96
    (if (i32.eq (local.get $__lab) (i32.const 96)) (then ;; L380
      (local.set $__lab (i32.const 97)) (br $__dispatch)
    )) ;; end block / LAB L381 = idx 97
    (if (i32.eq (local.get $__lab) (i32.const 97)) (then ;; L381
    ;; line 7:1072
    (global.set $__line (i32.const 1072))
    (call $__break)
      (local.set $__lab (i32.const 98)) (br $__dispatch)
    )) ;; end block / LAB L382 = idx 98
    (if (i32.eq (local.get $__lab) (i32.const 98)) (then ;; L382
      (local.set $__lab (i32.const 99)) (br $__dispatch)
    )) ;; end block / LAB L383 = idx 99
    (if (i32.eq (local.get $__lab) (i32.const 99)) (then ;; L383
    ;; line 7:1073
    (global.set $__line (i32.const 1073))
    (call $__break)
      (local.set $__lab (i32.const 100)) (br $__dispatch)
    )) ;; end block / LAB L384 = idx 100
    (if (i32.eq (local.get $__lab) (i32.const 100)) (then ;; L384
      (local.set $__lab (i32.const 101)) (br $__dispatch)
    )) ;; end block / LAB L385 = idx 101
    (if (i32.eq (local.get $__lab) (i32.const 101)) (then ;; L385
      (local.set $__lab (i32.const 102)) (br $__dispatch)
    )) ;; end block / LAB L386 = idx 102
    (if (i32.eq (local.get $__lab) (i32.const 102)) (then ;; L386
      (local.set $__lab (i32.const 103)) (br $__dispatch)
    )) ;; end block / LAB L387 = idx 103
    (if (i32.eq (local.get $__lab) (i32.const 103)) (then ;; L387
    ;; line 7:1074
    (global.set $__line (i32.const 1074))
    (call $__break)
      (local.set $__lab (i32.const 104)) (br $__dispatch)
    )) ;; end block / LAB L388 = idx 104
    (if (i32.eq (local.get $__lab) (i32.const 104)) (then ;; L388
      (local.set $__lab (i32.const 105)) (br $__dispatch)
    )) ;; end block / LAB L389 = idx 105
    (if (i32.eq (local.get $__lab) (i32.const 105)) (then ;; L389
      (local.set $__lab (i32.const 106)) (br $__dispatch)
    )) ;; end block / LAB L390 = idx 106
    (if (i32.eq (local.get $__lab) (i32.const 106)) (then ;; L390
    ;; line 7:1075
    (global.set $__line (i32.const 1075))
    (call $__break)
      (local.set $__lab (i32.const 107)) (br $__dispatch)
    )) ;; end block / LAB L391 = idx 107
    (if (i32.eq (local.get $__lab) (i32.const 107)) (then ;; L391
      (local.set $__lab (i32.const 108)) (br $__dispatch)
    )) ;; end block / LAB L392 = idx 108
    (if (i32.eq (local.get $__lab) (i32.const 108)) (then ;; L392
    ;; line 7:1076
    (global.set $__line (i32.const 1076))
    (call $__break)
      (local.set $__lab (i32.const 109)) (br $__dispatch)
    )) ;; end block / LAB L393 = idx 109
    (if (i32.eq (local.get $__lab) (i32.const 109)) (then ;; L393
      (local.set $__lab (i32.const 110)) (br $__dispatch)
    )) ;; end block / LAB L394 = idx 110
    (if (i32.eq (local.get $__lab) (i32.const 110)) (then ;; L394
    ;; line 7:1077
    (global.set $__line (i32.const 1077))
    (call $__break)
      (local.set $__lab (i32.const 111)) (br $__dispatch)
    )) ;; end block / LAB L395 = idx 111
    (if (i32.eq (local.get $__lab) (i32.const 111)) (then ;; L395
      (local.set $__lab (i32.const 112)) (br $__dispatch)
    )) ;; end block / LAB L396 = idx 112
    (if (i32.eq (local.get $__lab) (i32.const 112)) (then ;; L396
      (local.set $__lab (i32.const 113)) (br $__dispatch)
    )) ;; end block / LAB L397 = idx 113
    (if (i32.eq (local.get $__lab) (i32.const 113)) (then ;; L397
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 114)) (br $__dispatch)
    ))
    ;; line 7:1078
    (global.set $__line (i32.const 1078))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 114)) (br $__dispatch)
    )) ;; end block / LAB L398 = idx 114
    (if (i32.eq (local.get $__lab) (i32.const 114)) (then ;; L398
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1079
    (global.set $__line (i32.const 1079))
    (call $__break)
    )) ;; end block / LAB L399 = idx 115
    (if (i32.eq (local.get $__lab) (i32.const 115)) (then ;; L399
    ;; line 7:1082
    (global.set $__line (i32.const 1082))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1083
    (global.set $__line (i32.const 1083))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 116)) (br $__dispatch)
    ))
    ;; line 7:1084
    (global.set $__line (i32.const 1084))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 116)) (br $__dispatch)
    )) ;; end block / LAB L400 = idx 116
    (if (i32.eq (local.get $__lab) (i32.const 116)) (then ;; L400
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1085
    (global.set $__line (i32.const 1085))
    (call $__break)
      (local.set $__lab (i32.const 117)) (br $__dispatch)
    )) ;; end block / LAB L401 = idx 117
    (if (i32.eq (local.get $__lab) (i32.const 117)) (then ;; L401
    ;; line 7:1087
    (global.set $__line (i32.const 1087))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1088
    (global.set $__line (i32.const 1088))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 118)) (br $__dispatch)
    ))
    ;; line 7:1089
    (global.set $__line (i32.const 1089))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 118)) (br $__dispatch)
    )) ;; end block / LAB L402 = idx 118
    (if (i32.eq (local.get $__lab) (i32.const 118)) (then ;; L402
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1090
    (global.set $__line (i32.const 1090))
    (call $__break)
      (local.set $__lab (i32.const 119)) (br $__dispatch)
    )) ;; end block / LAB L403 = idx 119
    (if (i32.eq (local.get $__lab) (i32.const 119)) (then ;; L403
    ;; line 7:1094
    (global.set $__line (i32.const 1094))
    (call $__break)
      (local.set $__lab (i32.const 120)) (br $__dispatch)
    )) ;; end block / LAB L404 = idx 120
    (if (i32.eq (local.get $__lab) (i32.const 120)) (then ;; L404
      (local.set $__lab (i32.const 121)) (br $__dispatch)
    )) ;; end block / LAB L405 = idx 121
    (if (i32.eq (local.get $__lab) (i32.const 121)) (then ;; L405
    ;; line 7:1095
    (global.set $__line (i32.const 1095))
    (call $__break)
      (local.set $__lab (i32.const 122)) (br $__dispatch)
    )) ;; end block / LAB L406 = idx 122
    (if (i32.eq (local.get $__lab) (i32.const 122)) (then ;; L406
    (local.set $t27 (i32.const 148))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.eq  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 123)) (br $__dispatch)
    ))
    (local.set $t27 (i32.const 149))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 124)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 123)) (br $__dispatch)
    )) ;; end block / LAB L408 = idx 123
    (if (i32.eq (local.get $__lab) (i32.const 123)) (then ;; L408
    ;; line 7:1096
    (global.set $__line (i32.const 1096))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
      (local.set $__lab (i32.const 124)) (br $__dispatch)
    )) ;; end block / LAB L407 = idx 124
    (if (i32.eq (local.get $__lab) (i32.const 124)) (then ;; L407
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 125)) (br $__dispatch)
    ))
    ;; line 7:1097
    (global.set $__line (i32.const 1097))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 125)) (br $__dispatch)
    )) ;; end block / LAB L409 = idx 125
    (if (i32.eq (local.get $__lab) (i32.const 125)) (then ;; L409
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1098
    (global.set $__line (i32.const 1098))
    (call $__break)
    )) ;; end block / LAB L410 = idx 126
    (if (i32.eq (local.get $__lab) (i32.const 126)) (then ;; L410
    ;; line 7:1099
    (global.set $__line (i32.const 1099))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    ;; line 7:1100
    (global.set $__line (i32.const 1100))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 127)) (br $__dispatch)
    ))
    ;; line 7:1101
    (global.set $__line (i32.const 1101))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 127)) (br $__dispatch)
    )) ;; end block / LAB L411 = idx 127
    (if (i32.eq (local.get $__lab) (i32.const 127)) (then ;; L411
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1102
    (global.set $__line (i32.const 1102))
    (call $__break)
    )) ;; end block / LAB L412 = idx 128
    (if (i32.eq (local.get $__lab) (i32.const 128)) (then ;; L412
    ;; line 7:1103
    (global.set $__line (i32.const 1103))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    ;; line 7:1104
    (global.set $__line (i32.const 1104))
    (call $__break)
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1105
    (global.set $__line (i32.const 1105))
    (call $__break)
    )) ;; end block / LAB L413 = idx 129
    (if (i32.eq (local.get $__lab) (i32.const 129)) (then ;; L413
    ;; line 7:1106
    (global.set $__line (i32.const 1106))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 130)) (br $__dispatch)
    ))
    ;; line 7:1107
    (global.set $__line (i32.const 1107))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 130)) (br $__dispatch)
    )) ;; end block / LAB L414 = idx 130
    (if (i32.eq (local.get $__lab) (i32.const 130)) (then ;; L414
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1108
    (global.set $__line (i32.const 1108))
    (call $__break)
    )) ;; end block / LAB L415 = idx 131
    (if (i32.eq (local.get $__lab) (i32.const 131)) (then ;; L415
    ;; line 7:1111
    (global.set $__line (i32.const 1111))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 132)) (br $__dispatch)
    ))
    ;; line 7:1112
    (global.set $__line (i32.const 1112))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 132)) (br $__dispatch)
    )) ;; end block / LAB L416 = idx 132
    (if (i32.eq (local.get $__lab) (i32.const 132)) (then ;; L416
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1113
    (global.set $__line (i32.const 1113))
    (call $__break)
    )) ;; end block / LAB L417 = idx 133
    (if (i32.eq (local.get $__lab) (i32.const 133)) (then ;; L417
    ;; line 7:1114
    (global.set $__line (i32.const 1114))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 134)) (br $__dispatch)
    ))
    ;; line 7:1115
    (global.set $__line (i32.const 1115))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 3))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 134)) (br $__dispatch)
    )) ;; end block / LAB L418 = idx 134
    (if (i32.eq (local.get $__lab) (i32.const 134)) (then ;; L418
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1116
    (global.set $__line (i32.const 1116))
    (call $__break)
    )) ;; end block / LAB L419 = idx 135
    (if (i32.eq (local.get $__lab) (i32.const 135)) (then ;; L419
    ;; line 7:1118
    (global.set $__line (i32.const 1118))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1119
    (global.set $__line (i32.const 1119))
    (call $__break)
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
      (local.set $__lab (i32.const 137)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 136)) (br $__dispatch)
    )) ;; end block / LAB L420 = idx 136
    (if (i32.eq (local.get $__lab) (i32.const 136)) (then ;; L420
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
      (local.set $__lab (i32.const 136)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 137)) (br $__dispatch)
    )) ;; end block / LAB L421 = idx 137
    (if (i32.eq (local.get $__lab) (i32.const 137)) (then ;; L421
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 138)) (br $__dispatch)
    ))
    ;; line 7:1120
    (global.set $__line (i32.const 1120))
    (call $__break)
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 138)) (br $__dispatch)
    )) ;; end block / LAB L422 = idx 138
    (if (i32.eq (local.get $__lab) (i32.const 138)) (then ;; L422
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1121
    (global.set $__line (i32.const 1121))
    (call $__break)
      (local.set $__lab (i32.const 139)) (br $__dispatch)
    )) ;; end block / LAB L423 = idx 139
    (if (i32.eq (local.get $__lab) (i32.const 139)) (then ;; L423
    ;; line 7:1124
    (global.set $__line (i32.const 1124))
    (call $__break)
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
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    )) ;; end block / LAB L424 = idx 140
    (if (i32.eq (local.get $__lab) (i32.const 140)) (then ;; L424
    ;; line 7:1125
    (global.set $__line (i32.const 1125))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    ;; line 7:1126
    (global.set $__line (i32.const 1126))
    (call $__break)
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
      (local.set $__lab (i32.const 141)) (br $__dispatch)
    ))
    ;; line 7:1127
    (global.set $__line (i32.const 1127))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.const 2))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 141)) (br $__dispatch)
    )) ;; end block / LAB L425 = idx 141
    (if (i32.eq (local.get $__lab) (i32.const 141)) (then ;; L425
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    ;; line 7:1128
    (global.set $__line (i32.const 1128))
    (call $__break)
    )) ;; end block / LAB L426 = idx 142
    (if (i32.eq (local.get $__lab) (i32.const 142)) (then ;; L426
    ;; line 7:1130
    (global.set $__line (i32.const 1130))
    (call $__break)
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    )) ;; end block / LAB L427 = idx 143
    (if (i32.eq (local.get $__lab) (i32.const 143)) (then ;; L427
    ;; line 7:1131
    (global.set $__line (i32.const 1131))
    (call $__break)
      (local.set $__lab (i32.const 144)) (br $__dispatch)
    )) ;; end block / LAB L428 = idx 144
    (if (i32.eq (local.get $__lab) (i32.const 144)) (then ;; L428
      (local.set $__lab (i32.const 145)) (br $__dispatch)
    )) ;; end block / LAB L429 = idx 145
    (if (i32.eq (local.get $__lab) (i32.const 145)) (then ;; L429
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1132
    (global.set $__line (i32.const 1132))
    (call $__break)
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 147)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 146)) (br $__dispatch)
    )) ;; end block / LAB L430 = idx 146
    (if (i32.eq (local.get $__lab) (i32.const 146)) (then ;; L430
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
      (local.set $__lab (i32.const 146)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 147)) (br $__dispatch)
    )) ;; end block / LAB L431 = idx 147
    (if (i32.eq (local.get $__lab) (i32.const 147)) (then ;; L431
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
      (local.set $__lab (i32.const 148)) (br $__dispatch)
    )) ;; end block / LAB L432 = idx 148
    (if (i32.eq (local.get $__lab) (i32.const 148)) (then ;; L432
    ;; line 7:1133
    (global.set $__line (i32.const 1133))
    (call $__break)
      (local.set $__lab (i32.const 149)) (br $__dispatch)
    )) ;; end block / LAB L433 = idx 149
    (if (i32.eq (local.get $__lab) (i32.const 149)) (then ;; L433
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    )) ;; end block / LAB L434 = idx 150
    (if (i32.eq (local.get $__lab) (i32.const 150)) (then ;; L434
    ;; line 7:1134
    (global.set $__line (i32.const 1134))
    (call $__break)
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
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    )) ;; end block / LAB L435 = idx 151
    (if (i32.eq (local.get $__lab) (i32.const 151)) (then ;; L435
    ;; line 7:1135
    (global.set $__line (i32.const 1135))
    (call $__break)
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L317
    )) ;; end block / LAB L436 = idx 152
    (if (i32.eq (local.get $__lab) (i32.const 152)) (then ;; L436
    ;; line 7:1137
    (global.set $__line (i32.const 1137))
    (call $__break)
    (local.set $t27 (i32.const 157)) ;; LF L312 (disp)
      (local.set $__lab (local.get $t27))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L437 = idx 153
    (if (i32.eq (local.get $__lab) (i32.const 153)) (then ;; L437
    ;; line 7:1138
    (global.set $__line (i32.const 1138))
    (call $__break)
    (local.set $t27 (i32.const 157)) ;; LF L312 (disp)
      (local.set $__lab (local.get $t27))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L316 = idx 154
    (if (i32.eq (local.get $__lab) (i32.const 154)) (then ;; L316
    ;; RSTACK 27
    (local.set $t27 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 86 cases default L318
    (if (i32.eq (local.get $t27) (i32.const 70)) (then
      (local.set $__lab (i32.const 153)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 0)) (then
      (local.set $__lab (i32.const 152)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 150)) (then
      (local.set $__lab (i32.const 151)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 208)) (then
      (local.set $__lab (i32.const 150)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 162)) (then
      (local.set $__lab (i32.const 149)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 161)) (then
      (local.set $__lab (i32.const 148)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 40)) (then
      (local.set $__lab (i32.const 145)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 39)) (then
      (local.set $__lab (i32.const 144)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 209)) (then
      (local.set $__lab (i32.const 143)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 160)) (then
      (local.set $__lab (i32.const 142)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 203)) (then
      (local.set $__lab (i32.const 140)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 202)) (then
      (local.set $__lab (i32.const 139)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 63)) (then
      (local.set $__lab (i32.const 135)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 165)) (then
      (local.set $__lab (i32.const 133)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 164)) (then
      (local.set $__lab (i32.const 131)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 43)) (then
      (local.set $__lab (i32.const 129)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 147)) (then
      (local.set $__lab (i32.const 128)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 159)) (then
      (local.set $__lab (i32.const 126)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 149)) (then
      (local.set $__lab (i32.const 122)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 148)) (then
      (local.set $__lab (i32.const 121)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 158)) (then
      (local.set $__lab (i32.const 120)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 157)) (then
      (local.set $__lab (i32.const 119)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 42)) (then
      (local.set $__lab (i32.const 117)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 10)) (then
      (local.set $__lab (i32.const 115)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 182)) (then
      (local.set $__lab (i32.const 113)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 181)) (then
      (local.set $__lab (i32.const 112)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 180)) (then
      (local.set $__lab (i32.const 111)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 179)) (then
      (local.set $__lab (i32.const 110)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 178)) (then
      (local.set $__lab (i32.const 109)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 177)) (then
      (local.set $__lab (i32.const 108)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 174)) (then
      (local.set $__lab (i32.const 107)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 173)) (then
      (local.set $__lab (i32.const 106)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 172)) (then
      (local.set $__lab (i32.const 105)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 171)) (then
      (local.set $__lab (i32.const 104)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 170)) (then
      (local.set $__lab (i32.const 103)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 35)) (then
      (local.set $__lab (i32.const 102)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 34)) (then
      (local.set $__lab (i32.const 101)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 33)) (then
      (local.set $__lab (i32.const 100)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 32)) (then
      (local.set $__lab (i32.const 99)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 31)) (then
      (local.set $__lab (i32.const 98)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 30)) (then
      (local.set $__lab (i32.const 97)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 24)) (then
      (local.set $__lab (i32.const 96)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 23)) (then
      (local.set $__lab (i32.const 95)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 22)) (then
      (local.set $__lab (i32.const 94)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 21)) (then
      (local.set $__lab (i32.const 93)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 20)) (then
      (local.set $__lab (i32.const 92)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 19)) (then
      (local.set $__lab (i32.const 91)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 18)) (then
      (local.set $__lab (i32.const 90)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 17)) (then
      (local.set $__lab (i32.const 89)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 16)) (then
      (local.set $__lab (i32.const 88)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 15)) (then
      (local.set $__lab (i32.const 87)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 14)) (then
      (local.set $__lab (i32.const 86)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 8)) (then
      (local.set $__lab (i32.const 85)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 175)) (then
      (local.set $__lab (i32.const 84)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 169)) (then
      (local.set $__lab (i32.const 83)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 176)) (then
      (local.set $__lab (i32.const 82)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 168)) (then
      (local.set $__lab (i32.const 81)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 167)) (then
      (local.set $__lab (i32.const 80)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 13)) (then
      (local.set $__lab (i32.const 79)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 29)) (then
      (local.set $__lab (i32.const 78)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 12)) (then
      (local.set $__lab (i32.const 77)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 153)) (then
      (local.set $__lab (i32.const 76)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 154)) (then
      (local.set $__lab (i32.const 74)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 152)) (then
      (local.set $__lab (i32.const 72)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 146)) (then
      (local.set $__lab (i32.const 70)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 145)) (then
      (local.set $__lab (i32.const 68)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 144)) (then
      (local.set $__lab (i32.const 66)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 143)) (then
      (local.set $__lab (i32.const 65)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 138)) (then
      (local.set $__lab (i32.const 61)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 11)) (then
      (local.set $__lab (i32.const 59)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 5)) (then
      (local.set $__lab (i32.const 58)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 4)) (then
      (local.set $__lab (i32.const 57)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 142)) (then
      (local.set $__lab (i32.const 55)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 141)) (then
      (local.set $__lab (i32.const 54)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 140)) (then
      (local.set $__lab (i32.const 53)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 139)) (then
      (local.set $__lab (i32.const 52)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 133)) (then
      (local.set $__lab (i32.const 51)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 166)) (then
      (local.set $__lab (i32.const 49)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 137)) (then
      (local.set $__lab (i32.const 48)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 136)) (then
      (local.set $__lab (i32.const 47)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 135)) (then
      (local.set $__lab (i32.const 46)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 134)) (then
      (local.set $__lab (i32.const 45)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 163)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 155)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 151)) (then
      (local.set $__lab (i32.const 37)) (br $__dispatch)))
    (if (i32.eq (local.get $t27) (i32.const 156)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)))
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    )) ;; end block / LAB L317 = idx 155
    (if (i32.eq (local.get $__lab) (i32.const 155)) (then ;; L317
    ;; line 7:986
    (global.set $__line (i32.const 986))
    (call $__break)
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 156)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (if (i32.le_s (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 156)) (br $__dispatch)
    ))
    ;; line 7:1140
    (global.set $__line (i32.const 1140))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t27))
      (local.set $__lab (i32.const 156)) (br $__dispatch)
    )) ;; end block / LAB L438 = idx 156
    (if (i32.eq (local.get $__lab) (i32.const 156)) (then ;; L438
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t27))
      (local.set $__lab (i32.const 33)) (br $__dispatch) ;; JUMP L315
    ;; line 7:1141
    (global.set $__line (i32.const 1141))
    (call $__break)
    )) ;; end block / LAB L312 = idx 157
    (if (i32.eq (local.get $__lab) (i32.const 157)) (then ;; L312
    ;; line 7:1143
    (global.set $__line (i32.const 1143))
    (call $__break)
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t27))
    ;; line 7:1144
    (global.set $__line (i32.const 1144))
    (call $__break)
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 7:1151
    (global.set $__line (i32.const 1151))
    (call $__break)
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
      (local.set $__lab (i32.const 160)) (br $__dispatch) ;; JUMP L440
    )) ;; end block / LAB L439 = idx 158
    (if (i32.eq (local.get $__lab) (i32.const 158)) (then ;; L439
    ;; line 7:1152
    (global.set $__line (i32.const 1152))
    (call $__break)
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t26 (i32.load (i32.shl (local.get $t26) (i32.const 2))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ne  (local.get $t26) (local.get $t27)) (then
      (local.set $__lab (i32.const 159)) (br $__dispatch)
    ))
    ;; line 7:1153
    (global.set $__line (i32.const 1153))
    (call $__break)
    (local.set $t26 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t26))
    (local.set $t23 (local.get $t26))
      (local.set $__lab (i32.const 161)) (br $__dispatch) ;; JUMP L442
    )) ;; end block / LAB L441 = idx 159
    (if (i32.eq (local.get $__lab) (i32.const 159)) (then ;; L441
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t27 (i32.const 1))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t26))
    (local.set $t24 (local.get $t26))
      (local.set $__lab (i32.const 160)) (br $__dispatch)
    )) ;; end block / LAB L440 = idx 160
    (if (i32.eq (local.get $__lab) (i32.const 160)) (then ;; L440
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100))))
    (if (i32.le_s (local.get $t26) (local.get $t27)) (then
      (local.set $__lab (i32.const 158)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 161)) (br $__dispatch)
    )) ;; end block / LAB L442 = idx 161
    (if (i32.eq (local.get $__lab) (i32.const 161)) (then ;; L442
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (if (local.get $t24) (then
      (local.set $__lab (i32.const 163)) (br $__dispatch)
    ))
    ;; line 7:1154
    (global.set $__line (i32.const 1154))
    (call $__break)
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t25 (i32.const 512))
    (if (i32.ge_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 162)) (br $__dispatch)
    ))
    ;; line 7:1155
    (global.set $__line (i32.const 1155))
    (call $__break)
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    ;; line 7:1156
    (global.set $__line (i32.const 1156))
    (call $__break)
    (local.set $t24 (i32.const 1))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t24))
      (local.set $__lab (i32.const 162)) (br $__dispatch)
    )) ;; end block / LAB L444 = idx 162
    (if (i32.eq (local.get $__lab) (i32.const 162)) (then ;; L444
      (local.set $__lab (i32.const 163)) (br $__dispatch)
    )) ;; end block / LAB L443 = idx 163
    (if (i32.eq (local.get $__lab) (i32.const 163)) (then ;; L443
    ;; line 7:1157
    (global.set $__line (i32.const 1157))
    (call $__break)
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    ;; line 7:1164
    (global.set $__line (i32.const 1164))
    (call $__break)
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1148))) ;; LSTR
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
    ;; line 7:1166
    (global.set $__line (i32.const 1166))
    (call $__break)
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1154))) ;; LSTR
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
    ;; line 7:1167
    (global.set $__line (i32.const 1167))
    (call $__break)
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1167))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    ;; line 7:1168
    (global.set $__line (i32.const 1168))
    (call $__break)
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1173))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    ;; line 7:1169
    (global.set $__line (i32.const 1169))
    (call $__break)
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t25 (i32.const 1))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
      (local.set $__lab (i32.const 165)) (br $__dispatch) ;; JUMP L446
    )) ;; end block / LAB L445 = idx 164
    (if (i32.eq (local.get $__lab) (i32.const 164)) (then ;; L445
    ;; line 7:1170
    (global.set $__line (i32.const 1170))
    (call $__break)
    (local.set $t28 (i32.add (global.get $SB) (i32.const 1179))) ;; LSTR
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
      (local.set $__lab (i32.const 165)) (br $__dispatch)
    )) ;; end block / LAB L446 = idx 165
    (if (i32.eq (local.get $__lab) (i32.const 165)) (then ;; L446
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96))))
    (if (i32.le_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 164)) (br $__dispatch)
    ))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1185))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    ;; line 7:1171
    (global.set $__line (i32.const 1171))
    (call $__break)
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1191))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    ;; line 7:1172
    (global.set $__line (i32.const 1172))
    (call $__break)
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    ;; line 7:1173
    (global.set $__line (i32.const 1173))
    (call $__break)
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t23))
    ;; line 7:1175
    (global.set $__line (i32.const 1175))
    (call $__break)
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t23))
    ;; line 7:1176
    (global.set $__line (i32.const 1176))
    (call $__break)
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t23))
    ;; line 7:1177
    (global.set $__line (i32.const 1177))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1179
    (global.set $__line (i32.const 1179))
    (call $__break)
    )) ;; end block / LAB L447 = idx 166
    (if (i32.eq (local.get $__lab) (i32.const 166)) (then ;; L447
    ;; line 7:1182
    (global.set $__line (i32.const 1182))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:1183
    (global.set $__line (i32.const 1183))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:1184
    (global.set $__line (i32.const 1184))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1185
    (global.set $__line (i32.const 1185))
    (call $__break)
    )) ;; end block / LAB L448 = idx 167
    (if (i32.eq (local.get $__lab) (i32.const 167)) (then ;; L448
    ;; line 7:1188
    (global.set $__line (i32.const 1188))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1189
    (global.set $__line (i32.const 1189))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (local.get $t3) (then
      (local.set $__lab (i32.const 168)) (br $__dispatch)
    ))
    ;; line 7:1190
    (global.set $__line (i32.const 1190))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1206))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1191
    (global.set $__line (i32.const 1191))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1112))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
      (local.set $__lab (i32.const 168)) (br $__dispatch)
    )) ;; end block / LAB L449 = idx 168
    (if (i32.eq (local.get $__lab) (i32.const 168)) (then ;; L449
    ;; line 7:1192
    (global.set $__line (i32.const 1192))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1120))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1194
    (global.set $__line (i32.const 1194))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1127))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1195
    (global.set $__line (i32.const 1195))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1214))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1196
    (global.set $__line (i32.const 1196))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1139))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1197
    (global.set $__line (i32.const 1197))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1198
    (global.set $__line (i32.const 1198))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t3))
    ;; line 7:1199
    (global.set $__line (i32.const 1199))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1200
    (global.set $__line (i32.const 1200))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1201
    (global.set $__line (i32.const 1201))
    (call $__break)
    )) ;; end block / LAB L450 = idx 169
    (if (i32.eq (local.get $__lab) (i32.const 169)) (then ;; L450
    ;; line 7:1204
    (global.set $__line (i32.const 1204))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1205
    (global.set $__line (i32.const 1205))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:1206
    (global.set $__line (i32.const 1206))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1207
    (global.set $__line (i32.const 1207))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1208
    (global.set $__line (i32.const 1208))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (local.get $t5) (then
      (local.set $__lab (i32.const 170)) (br $__dispatch)
    ))
    ;; line 7:1210
    (global.set $__line (i32.const 1210))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 698))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
      (local.set $__lab (i32.const 170)) (br $__dispatch)
    )) ;; end block / LAB L451 = idx 170
    (if (i32.eq (local.get $__lab) (i32.const 170)) (then ;; L451
    ;; line 7:1211
    (global.set $__line (i32.const 1211))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1225))) ;; LSTR
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
    ;; line 7:1213
    (global.set $__line (i32.const 1213))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1235))) ;; LSTR
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
    ;; line 7:1215
    (global.set $__line (i32.const 1215))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1217
    (global.set $__line (i32.const 1217))
    (call $__break)
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t5))
    ;; line 7:1218
    (global.set $__line (i32.const 1218))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1219
    (global.set $__line (i32.const 1219))
    (call $__break)
      (local.set $__lab (i32.const 171)) (br $__dispatch)
    )) ;; end block / LAB L452 = idx 171
    (if (i32.eq (local.get $__lab) (i32.const 171)) (then ;; L452
    ;; line 7:1222
    (global.set $__line (i32.const 1222))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1223
    (global.set $__line (i32.const 1223))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1224
    (global.set $__line (i32.const 1224))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1225
    (global.set $__line (i32.const 1225))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1226
    (global.set $__line (i32.const 1226))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1227
    (global.set $__line (i32.const 1227))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1228
    (global.set $__line (i32.const 1228))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1229
    (global.set $__line (i32.const 1229))
    (call $__break)
      (local.set $__lab (i32.const 172)) (br $__dispatch)
    )) ;; end block / LAB L453 = idx 172
    (if (i32.eq (local.get $__lab) (i32.const 172)) (then ;; L453
    ;; line 7:1232
    (global.set $__line (i32.const 1232))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1233
    (global.set $__line (i32.const 1233))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1234
    (global.set $__line (i32.const 1234))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1235
    (global.set $__line (i32.const 1235))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1864))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1236
    (global.set $__line (i32.const 1236))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1237
    (global.set $__line (i32.const 1237))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1238
    (global.set $__line (i32.const 1238))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1239
    (global.set $__line (i32.const 1239))
    (call $__break)
      (local.set $__lab (i32.const 173)) (br $__dispatch)
    )) ;; end block / LAB L454 = idx 173
    (if (i32.eq (local.get $__lab) (i32.const 173)) (then ;; L454
    ;; line 7:1242
    (global.set $__line (i32.const 1242))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1243
    (global.set $__line (i32.const 1243))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1244
    (global.set $__line (i32.const 1244))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1245
    (global.set $__line (i32.const 1245))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1248
    (global.set $__line (i32.const 1248))
    (call $__break)
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1249
    (global.set $__line (i32.const 1249))
    (call $__break)
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 176)) (br $__dispatch) ;; JUMP L456
    )) ;; end block / LAB L455 = idx 174
    (if (i32.eq (local.get $__lab) (i32.const 174)) (then ;; L455
    ;; line 7:1250
    (global.set $__line (i32.const 1250))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 175)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t8))
    (local.set $t4 (local.get $t8))
    ;; line 7:1251
    (global.set $__line (i32.const 1251))
    (call $__break)
    (local.set $t8 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8))
    (local.set $t5 (local.get $t8))
      (local.set $__lab (i32.const 177)) (br $__dispatch) ;; JUMP L458
    )) ;; end block / LAB L457 = idx 175
    (if (i32.eq (local.get $__lab) (i32.const 175)) (then ;; L457
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
      (local.set $__lab (i32.const 176)) (br $__dispatch)
    )) ;; end block / LAB L456 = idx 176
    (if (i32.eq (local.get $__lab) (i32.const 176)) (then ;; L456
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 174)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 177)) (br $__dispatch)
    )) ;; end block / LAB L458 = idx 177
    (if (i32.eq (local.get $__lab) (i32.const 177)) (then ;; L458
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (local.get $t6) (then
      (local.set $__lab (i32.const 179)) (br $__dispatch)
    ))
    ;; line 7:1252
    (global.set $__line (i32.const 1252))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 178)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 178)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 178)) (br $__dispatch)
    ))
    ;; line 7:1253
    (global.set $__line (i32.const 1253))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 178)) (br $__dispatch)
    )) ;; end block / LAB L460 = idx 178
    (if (i32.eq (local.get $__lab) (i32.const 178)) (then ;; L460
      (local.set $__lab (i32.const 179)) (br $__dispatch)
    )) ;; end block / LAB L459 = idx 179
    (if (i32.eq (local.get $__lab) (i32.const 179)) (then ;; L459
    ;; line 7:1254
    (global.set $__line (i32.const 1254))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 180)) (br $__dispatch)
    ))
    ;; line 7:1255
    (global.set $__line (i32.const 1255))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1252))) ;; LSTR
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
      (local.set $__lab (i32.const 181)) (br $__dispatch) ;; JUMP L463
    )) ;; end block / LAB L461 = idx 180
    (if (i32.eq (local.get $__lab) (i32.const 180)) (then ;; L461
    ;; line 7:1256
    (global.set $__line (i32.const 1256))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1271))) ;; LSTR
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
      (local.set $__lab (i32.const 181)) (br $__dispatch)
    )) ;; end block / LAB L463 = idx 181
    (if (i32.eq (local.get $__lab) (i32.const 181)) (then ;; L463
    ;; line 7:1258
    (global.set $__line (i32.const 1258))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1261
    (global.set $__line (i32.const 1261))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:1262
    (global.set $__line (i32.const 1262))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1263
    (global.set $__line (i32.const 1263))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1264
    (global.set $__line (i32.const 1264))
    (call $__break)
      (local.set $__lab (i32.const 182)) (br $__dispatch)
    )) ;; end block / LAB L464 = idx 182
    (if (i32.eq (local.get $__lab) (i32.const 182)) (then ;; L464
    ;; line 7:1267
    (global.set $__line (i32.const 1267))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1268
    (global.set $__line (i32.const 1268))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1269
    (global.set $__line (i32.const 1269))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1270
    (global.set $__line (i32.const 1270))
    (call $__break)
    ;; line 7:1275
    (global.set $__line (i32.const 1275))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 183)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 183)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 183)) (br $__dispatch)
    ))
    ;; line 7:1276
    (global.set $__line (i32.const 1276))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L465: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 184)) (br $__dispatch)
    )) ;; end block / LAB L466 = idx 183
    (if (i32.eq (local.get $__lab) (i32.const 183)) (then ;; L466
    ;; line 7:1277
    (global.set $__line (i32.const 1277))
    (call $__break)
    (local.set $t4 (i32.const 0))
    ;; RES L465: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 184)) (br $__dispatch)
    )) ;; end block / LAB L465 = idx 184
    (if (i32.eq (local.get $__lab) (i32.const 184)) (then ;; L465
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1275
    (global.set $__line (i32.const 1275))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1285))) ;; LSTR
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
    ;; line 7:1280
    (global.set $__line (i32.const 1280))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1283
    (global.set $__line (i32.const 1283))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:1284
    (global.set $__line (i32.const 1284))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1285
    (global.set $__line (i32.const 1285))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1286
    (global.set $__line (i32.const 1286))
    (call $__break)
      (local.set $__lab (i32.const 185)) (br $__dispatch)
    )) ;; end block / LAB L467 = idx 185
    (if (i32.eq (local.get $__lab) (i32.const 185)) (then ;; L467
    ;; line 7:1289
    (global.set $__line (i32.const 1289))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1290
    (global.set $__line (i32.const 1290))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1291
    (global.set $__line (i32.const 1291))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1292
    (global.set $__line (i32.const 1292))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1313))) ;; LSTR
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
    ;; line 7:1293
    (global.set $__line (i32.const 1293))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1295
    (global.set $__line (i32.const 1295))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:1296
    (global.set $__line (i32.const 1296))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1297
    (global.set $__line (i32.const 1297))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1298
    (global.set $__line (i32.const 1298))
    (call $__break)
      (local.set $__lab (i32.const 186)) (br $__dispatch)
    )) ;; end block / LAB L468 = idx 186
    (if (i32.eq (local.get $__lab) (i32.const 186)) (then ;; L468
    ;; line 7:1301
    (global.set $__line (i32.const 1301))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1302
    (global.set $__line (i32.const 1302))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1303
    (global.set $__line (i32.const 1303))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1304
    (global.set $__line (i32.const 1304))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1329))) ;; LSTR
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
    ;; line 7:1305
    (global.set $__line (i32.const 1305))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1307
    (global.set $__line (i32.const 1307))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:1308
    (global.set $__line (i32.const 1308))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1309
    (global.set $__line (i32.const 1309))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1310
    (global.set $__line (i32.const 1310))
    (call $__break)
      (local.set $__lab (i32.const 187)) (br $__dispatch)
    )) ;; end block / LAB L469 = idx 187
    (if (i32.eq (local.get $__lab) (i32.const 187)) (then ;; L469
    ;; line 7:1313
    (global.set $__line (i32.const 1313))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1314
    (global.set $__line (i32.const 1314))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1315
    (global.set $__line (i32.const 1315))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1316
    (global.set $__line (i32.const 1316))
    (call $__break)
    ;; line 7:1317
    (global.set $__line (i32.const 1317))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 188)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 188)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 188)) (br $__dispatch)
    ))
    ;; line 7:1318
    (global.set $__line (i32.const 1318))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L470: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 189)) (br $__dispatch)
    )) ;; end block / LAB L471 = idx 188
    (if (i32.eq (local.get $__lab) (i32.const 188)) (then ;; L471
    ;; line 7:1319
    (global.set $__line (i32.const 1319))
    (call $__break)
    (local.set $t4 (i32.const 0))
    ;; RES L470: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 189)) (br $__dispatch)
    )) ;; end block / LAB L470 = idx 189
    (if (i32.eq (local.get $__lab) (i32.const 189)) (then ;; L470
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1317
    (global.set $__line (i32.const 1317))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1345))) ;; LSTR
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
    ;; line 7:1322
    (global.set $__line (i32.const 1322))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1325
    (global.set $__line (i32.const 1325))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:1326
    (global.set $__line (i32.const 1326))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1327
    (global.set $__line (i32.const 1327))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1328
    (global.set $__line (i32.const 1328))
    (call $__break)
      (local.set $__lab (i32.const 190)) (br $__dispatch)
    )) ;; end block / LAB L472 = idx 190
    (if (i32.eq (local.get $__lab) (i32.const 190)) (then ;; L472
    ;; line 7:1331
    (global.set $__line (i32.const 1331))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1332
    (global.set $__line (i32.const 1332))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1333
    (global.set $__line (i32.const 1333))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1334
    (global.set $__line (i32.const 1334))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1335
    (global.set $__line (i32.const 1335))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1336
    (global.set $__line (i32.const 1336))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1337
    (global.set $__line (i32.const 1337))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1338
    (global.set $__line (i32.const 1338))
    (call $__break)
      (local.set $__lab (i32.const 191)) (br $__dispatch)
    )) ;; end block / LAB L473 = idx 191
    (if (i32.eq (local.get $__lab) (i32.const 191)) (then ;; L473
    ;; line 7:1341
    (global.set $__line (i32.const 1341))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1342
    (global.set $__line (i32.const 1342))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1343
    (global.set $__line (i32.const 1343))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1344
    (global.set $__line (i32.const 1344))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1345
    (global.set $__line (i32.const 1345))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1346
    (global.set $__line (i32.const 1346))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1347
    (global.set $__line (i32.const 1347))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1348
    (global.set $__line (i32.const 1348))
    (call $__break)
      (local.set $__lab (i32.const 192)) (br $__dispatch)
    )) ;; end block / LAB L474 = idx 192
    (if (i32.eq (local.get $__lab) (i32.const 192)) (then ;; L474
    ;; line 7:1351
    (global.set $__line (i32.const 1351))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1352
    (global.set $__line (i32.const 1352))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1353
    (global.set $__line (i32.const 1353))
    (call $__break)
    (local.set $t6 (i32.const -1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1354
    (global.set $__line (i32.const 1354))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1355
    (global.set $__line (i32.const 1355))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1356
    (global.set $__line (i32.const 1356))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1357
    (global.set $__line (i32.const 1357))
    (call $__break)
    )) ;; end block / LAB L475 = idx 193
    (if (i32.eq (local.get $__lab) (i32.const 193)) (then ;; L475
    ;; line 7:1359
    (global.set $__line (i32.const 1359))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1360
    (global.set $__line (i32.const 1360))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1361
    (global.set $__line (i32.const 1361))
    (call $__break)
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1362
    (global.set $__line (i32.const 1362))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1363
    (global.set $__line (i32.const 1363))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1364
    (global.set $__line (i32.const 1364))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1365
    (global.set $__line (i32.const 1365))
    (call $__break)
    )) ;; end block / LAB L476 = idx 194
    (if (i32.eq (local.get $__lab) (i32.const 194)) (then ;; L476
    ;; line 7:1367
    (global.set $__line (i32.const 1367))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1368
    (global.set $__line (i32.const 1368))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1369
    (global.set $__line (i32.const 1369))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1364))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1370
    (global.set $__line (i32.const 1370))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1371
    (global.set $__line (i32.const 1371))
    (call $__break)
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:1372
    (global.set $__line (i32.const 1372))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1373
    (global.set $__line (i32.const 1373))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1374
    (global.set $__line (i32.const 1374))
    (call $__break)
    )) ;; end block / LAB L477 = idx 195
    (if (i32.eq (local.get $__lab) (i32.const 195)) (then ;; L477
    ;; line 7:1377
    (global.set $__line (i32.const 1377))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1378
    (global.set $__line (i32.const 1378))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1379
    (global.set $__line (i32.const 1379))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1380
    (global.set $__line (i32.const 1380))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1928))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1381
    (global.set $__line (i32.const 1381))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1382
    (global.set $__line (i32.const 1382))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1383
    (global.set $__line (i32.const 1383))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1384
    (global.set $__line (i32.const 1384))
    (call $__break)
      (local.set $__lab (i32.const 196)) (br $__dispatch)
    )) ;; end block / LAB L478 = idx 196
    (if (i32.eq (local.get $__lab) (i32.const 196)) (then ;; L478
    ;; line 7:1387
    (global.set $__line (i32.const 1387))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1388
    (global.set $__line (i32.const 1388))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1389
    (global.set $__line (i32.const 1389))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1390
    (global.set $__line (i32.const 1390))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1932))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1391
    (global.set $__line (i32.const 1391))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1392
    (global.set $__line (i32.const 1392))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1393
    (global.set $__line (i32.const 1393))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1394
    (global.set $__line (i32.const 1394))
    (call $__break)
      (local.set $__lab (i32.const 197)) (br $__dispatch)
    )) ;; end block / LAB L479 = idx 197
    (if (i32.eq (local.get $__lab) (i32.const 197)) (then ;; L479
    ;; line 7:1397
    (global.set $__line (i32.const 1397))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1398
    (global.set $__line (i32.const 1398))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1399
    (global.set $__line (i32.const 1399))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1400
    (global.set $__line (i32.const 1400))
    (call $__break)
    ;; line 7:1401
    (global.set $__line (i32.const 1401))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 198)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 198)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 198)) (br $__dispatch)
    ))
    ;; line 7:1402
    (global.set $__line (i32.const 1402))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L480: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 199)) (br $__dispatch)
    )) ;; end block / LAB L481 = idx 198
    (if (i32.eq (local.get $__lab) (i32.const 198)) (then ;; L481
    ;; line 7:1403
    (global.set $__line (i32.const 1403))
    (call $__break)
    (local.set $t4 (i32.const 0))
    ;; RES L480: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 199)) (br $__dispatch)
    )) ;; end block / LAB L480 = idx 199
    (if (i32.eq (local.get $__lab) (i32.const 199)) (then ;; L480
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1401
    (global.set $__line (i32.const 1401))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    ;; line 7:1406
    (global.set $__line (i32.const 1406))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 200)) (br $__dispatch)
    ))
    ;; line 7:1407
    (global.set $__line (i32.const 1407))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
      (local.set $__lab (i32.const 200)) (br $__dispatch)
    )) ;; end block / LAB L482 = idx 200
    (if (i32.eq (local.get $__lab) (i32.const 200)) (then ;; L482
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1379))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1408
    (global.set $__line (i32.const 1408))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1383))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1409
    (global.set $__line (i32.const 1409))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1402))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1411
    (global.set $__line (i32.const 1411))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1413
    (global.set $__line (i32.const 1413))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1414
    (global.set $__line (i32.const 1414))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1415
    (global.set $__line (i32.const 1415))
    (call $__break)
      (local.set $__lab (i32.const 201)) (br $__dispatch)
    )) ;; end block / LAB L483 = idx 201
    (if (i32.eq (local.get $__lab) (i32.const 201)) (then ;; L483
    ;; line 7:1418
    (global.set $__line (i32.const 1418))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1419
    (global.set $__line (i32.const 1419))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1420
    (global.set $__line (i32.const 1420))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1421
    (global.set $__line (i32.const 1421))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1422
    (global.set $__line (i32.const 1422))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1423
    (global.set $__line (i32.const 1423))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1424
    (global.set $__line (i32.const 1424))
    (call $__break)
    )) ;; end block / LAB L484 = idx 202
    (if (i32.eq (local.get $__lab) (i32.const 202)) (then ;; L484
    ;; line 7:1426
    (global.set $__line (i32.const 1426))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1427
    (global.set $__line (i32.const 1427))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1428
    (global.set $__line (i32.const 1428))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1868))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1429
    (global.set $__line (i32.const 1429))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1430
    (global.set $__line (i32.const 1430))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1431
    (global.set $__line (i32.const 1431))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1432
    (global.set $__line (i32.const 1432))
    (call $__break)
    )) ;; end block / LAB L485 = idx 203
    (if (i32.eq (local.get $__lab) (i32.const 203)) (then ;; L485
    ;; line 7:1435
    (global.set $__line (i32.const 1435))
    (call $__break)
      (local.set $__lab (i32.const 204)) (br $__dispatch)
    )) ;; end block / LAB L486 = idx 204
    (if (i32.eq (local.get $__lab) (i32.const 204)) (then ;; L486
      (local.set $__lab (i32.const 205)) (br $__dispatch)
    )) ;; end block / LAB L487 = idx 205
    (if (i32.eq (local.get $__lab) (i32.const 205)) (then ;; L487
      (local.set $__lab (i32.const 206)) (br $__dispatch)
    )) ;; end block / LAB L488 = idx 206
    (if (i32.eq (local.get $__lab) (i32.const 206)) (then ;; L488
      (local.set $__lab (i32.const 207)) (br $__dispatch)
    )) ;; end block / LAB L489 = idx 207
    (if (i32.eq (local.get $__lab) (i32.const 207)) (then ;; L489
    ;; line 7:1436
    (global.set $__line (i32.const 1436))
    (call $__break)
      (local.set $__lab (i32.const 208)) (br $__dispatch)
    )) ;; end block / LAB L490 = idx 208
    (if (i32.eq (local.get $__lab) (i32.const 208)) (then ;; L490
      (local.set $__lab (i32.const 209)) (br $__dispatch)
    )) ;; end block / LAB L491 = idx 209
    (if (i32.eq (local.get $__lab) (i32.const 209)) (then ;; L491
      (local.set $__lab (i32.const 210)) (br $__dispatch)
    )) ;; end block / LAB L492 = idx 210
    (if (i32.eq (local.get $__lab) (i32.const 210)) (then ;; L492
    ;; line 7:1437
    (global.set $__line (i32.const 1437))
    (call $__break)
      (local.set $__lab (i32.const 211)) (br $__dispatch)
    )) ;; end block / LAB L493 = idx 211
    (if (i32.eq (local.get $__lab) (i32.const 211)) (then ;; L493
      (local.set $__lab (i32.const 212)) (br $__dispatch)
    )) ;; end block / LAB L494 = idx 212
    (if (i32.eq (local.get $__lab) (i32.const 212)) (then ;; L494
      (local.set $__lab (i32.const 213)) (br $__dispatch)
    )) ;; end block / LAB L495 = idx 213
    (if (i32.eq (local.get $__lab) (i32.const 213)) (then ;; L495
    ;; line 7:1438
    (global.set $__line (i32.const 1438))
    (call $__break)
      (local.set $__lab (i32.const 214)) (br $__dispatch)
    )) ;; end block / LAB L496 = idx 214
    (if (i32.eq (local.get $__lab) (i32.const 214)) (then ;; L496
      (local.set $__lab (i32.const 215)) (br $__dispatch)
    )) ;; end block / LAB L497 = idx 215
    (if (i32.eq (local.get $__lab) (i32.const 215)) (then ;; L497
    ;; line 7:1439
    (global.set $__line (i32.const 1439))
    (call $__break)
      (local.set $__lab (i32.const 216)) (br $__dispatch)
    )) ;; end block / LAB L498 = idx 216
    (if (i32.eq (local.get $__lab) (i32.const 216)) (then ;; L498
      (local.set $__lab (i32.const 217)) (br $__dispatch)
    )) ;; end block / LAB L499 = idx 217
    (if (i32.eq (local.get $__lab) (i32.const 217)) (then ;; L499
      (local.set $__lab (i32.const 218)) (br $__dispatch)
    )) ;; end block / LAB L500 = idx 218
    (if (i32.eq (local.get $__lab) (i32.const 218)) (then ;; L500
      (local.set $__lab (i32.const 219)) (br $__dispatch)
    )) ;; end block / LAB L501 = idx 219
    (if (i32.eq (local.get $__lab) (i32.const 219)) (then ;; L501
      (local.set $__lab (i32.const 220)) (br $__dispatch)
    )) ;; end block / LAB L502 = idx 220
    (if (i32.eq (local.get $__lab) (i32.const 220)) (then ;; L502
      (local.set $__lab (i32.const 221)) (br $__dispatch)
    )) ;; end block / LAB L503 = idx 221
    (if (i32.eq (local.get $__lab) (i32.const 221)) (then ;; L503
    ;; line 7:1440
    (global.set $__line (i32.const 1440))
    (call $__break)
      (local.set $__lab (i32.const 222)) (br $__dispatch)
    )) ;; end block / LAB L504 = idx 222
    (if (i32.eq (local.get $__lab) (i32.const 222)) (then ;; L504
      (local.set $__lab (i32.const 223)) (br $__dispatch)
    )) ;; end block / LAB L505 = idx 223
    (if (i32.eq (local.get $__lab) (i32.const 223)) (then ;; L505
      (local.set $__lab (i32.const 224)) (br $__dispatch)
    )) ;; end block / LAB L506 = idx 224
    (if (i32.eq (local.get $__lab) (i32.const 224)) (then ;; L506
    ;; line 7:1441
    (global.set $__line (i32.const 1441))
    (call $__break)
      (local.set $__lab (i32.const 225)) (br $__dispatch)
    )) ;; end block / LAB L507 = idx 225
    (if (i32.eq (local.get $__lab) (i32.const 225)) (then ;; L507
      (local.set $__lab (i32.const 226)) (br $__dispatch)
    )) ;; end block / LAB L508 = idx 226
    (if (i32.eq (local.get $__lab) (i32.const 226)) (then ;; L508
    ;; line 7:1442
    (global.set $__line (i32.const 1442))
    (call $__break)
      (local.set $__lab (i32.const 227)) (br $__dispatch)
    )) ;; end block / LAB L509 = idx 227
    (if (i32.eq (local.get $__lab) (i32.const 227)) (then ;; L509
      (local.set $__lab (i32.const 228)) (br $__dispatch)
    )) ;; end block / LAB L510 = idx 228
    (if (i32.eq (local.get $__lab) (i32.const 228)) (then ;; L510
    ;; line 7:1443
    (global.set $__line (i32.const 1443))
    (call $__break)
      (local.set $__lab (i32.const 229)) (br $__dispatch)
    )) ;; end block / LAB L511 = idx 229
    (if (i32.eq (local.get $__lab) (i32.const 229)) (then ;; L511
      (local.set $__lab (i32.const 230)) (br $__dispatch)
    )) ;; end block / LAB L512 = idx 230
    (if (i32.eq (local.get $__lab) (i32.const 230)) (then ;; L512
      (local.set $__lab (i32.const 231)) (br $__dispatch)
    )) ;; end block / LAB L513 = idx 231
    (if (i32.eq (local.get $__lab) (i32.const 231)) (then ;; L513
      (local.set $__lab (i32.const 232)) (br $__dispatch)
    )) ;; end block / LAB L514 = idx 232
    (if (i32.eq (local.get $__lab) (i32.const 232)) (then ;; L514
    ;; line 7:1444
    (global.set $__line (i32.const 1444))
    (call $__break)
      (local.set $__lab (i32.const 233)) (br $__dispatch)
    )) ;; end block / LAB L515 = idx 233
    (if (i32.eq (local.get $__lab) (i32.const 233)) (then ;; L515
      (local.set $__lab (i32.const 234)) (br $__dispatch)
    )) ;; end block / LAB L516 = idx 234
    (if (i32.eq (local.get $__lab) (i32.const 234)) (then ;; L516
    ;; line 7:1445
    (global.set $__line (i32.const 1445))
    (call $__break)
      (local.set $__lab (i32.const 235)) (br $__dispatch)
    )) ;; end block / LAB L517 = idx 235
    (if (i32.eq (local.get $__lab) (i32.const 235)) (then ;; L517
      (local.set $__lab (i32.const 236)) (br $__dispatch)
    )) ;; end block / LAB L518 = idx 236
    (if (i32.eq (local.get $__lab) (i32.const 236)) (then ;; L518
      (local.set $__lab (i32.const 237)) (br $__dispatch)
    )) ;; end block / LAB L519 = idx 237
    (if (i32.eq (local.get $__lab) (i32.const 237)) (then ;; L519
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1446
    (global.set $__line (i32.const 1446))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t3))
    ;; line 7:1447
    (global.set $__line (i32.const 1447))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1448
    (global.set $__line (i32.const 1448))
    (call $__break)
    )) ;; end block / LAB L520 = idx 238
    (if (i32.eq (local.get $__lab) (i32.const 238)) (then ;; L520
    ;; line 7:1450
    (global.set $__line (i32.const 1450))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1451
    (global.set $__line (i32.const 1451))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1452
    (global.set $__line (i32.const 1452))
    (call $__break)
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
    ;; line 7:1453
    (global.set $__line (i32.const 1453))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1454
    (global.set $__line (i32.const 1454))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1455
    (global.set $__line (i32.const 1455))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1456
    (global.set $__line (i32.const 1456))
    (call $__break)
      (local.set $__lab (i32.const 239)) (br $__dispatch)
    )) ;; end block / LAB L521 = idx 239
    (if (i32.eq (local.get $__lab) (i32.const 239)) (then ;; L521
    ;; line 7:1459
    (global.set $__line (i32.const 1459))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1460
    (global.set $__line (i32.const 1460))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1461
    (global.set $__line (i32.const 1461))
    (call $__break)
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
    ;; line 7:1462
    (global.set $__line (i32.const 1462))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1463
    (global.set $__line (i32.const 1463))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1464
    (global.set $__line (i32.const 1464))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1465
    (global.set $__line (i32.const 1465))
    (call $__break)
      (local.set $__lab (i32.const 240)) (br $__dispatch)
    )) ;; end block / LAB L522 = idx 240
    (if (i32.eq (local.get $__lab) (i32.const 240)) (then ;; L522
    ;; line 7:1468
    (global.set $__line (i32.const 1468))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1469
    (global.set $__line (i32.const 1469))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1470
    (global.set $__line (i32.const 1470))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1471
    (global.set $__line (i32.const 1471))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1409))) ;; LSTR
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
    ;; line 7:1472
    (global.set $__line (i32.const 1472))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1474
    (global.set $__line (i32.const 1474))
    (call $__break)
    (local.set $t4 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1475
    (global.set $__line (i32.const 1475))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1476
    (global.set $__line (i32.const 1476))
    (call $__break)
      (local.set $__lab (i32.const 241)) (br $__dispatch)
    )) ;; end block / LAB L523 = idx 241
    (if (i32.eq (local.get $__lab) (i32.const 241)) (then ;; L523
    ;; line 7:1479
    (global.set $__line (i32.const 1479))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1483
    (global.set $__line (i32.const 1483))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:1484
    (global.set $__line (i32.const 1484))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 242)) (br $__dispatch)
    ))
    ;; line 7:1485
    (global.set $__line (i32.const 1485))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
      (local.set $__lab (i32.const 242)) (br $__dispatch)
    )) ;; end block / LAB L524 = idx 242
    (if (i32.eq (local.get $__lab) (i32.const 242)) (then ;; L524
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1486
    (global.set $__line (i32.const 1486))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1427))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1487
    (global.set $__line (i32.const 1487))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1438))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1488
    (global.set $__line (i32.const 1488))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1489
    (global.set $__line (i32.const 1489))
    (call $__break)
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1490
    (global.set $__line (i32.const 1490))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1491
    (global.set $__line (i32.const 1491))
    (call $__break)
    )) ;; end block / LAB L525 = idx 243
    (if (i32.eq (local.get $__lab) (i32.const 243)) (then ;; L525
    ;; line 7:1494
    (global.set $__line (i32.const 1494))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1495
    (global.set $__line (i32.const 1495))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1496
    (global.set $__line (i32.const 1496))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1449))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1497
    (global.set $__line (i32.const 1497))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1453))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1498
    (global.set $__line (i32.const 1498))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1471))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1499
    (global.set $__line (i32.const 1499))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1500
    (global.set $__line (i32.const 1500))
    (call $__break)
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1501
    (global.set $__line (i32.const 1501))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1502
    (global.set $__line (i32.const 1502))
    (call $__break)
    )) ;; end block / LAB L526 = idx 244
    (if (i32.eq (local.get $__lab) (i32.const 244)) (then ;; L526
    ;; line 7:1504
    (global.set $__line (i32.const 1504))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1505
    (global.set $__line (i32.const 1505))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:1506
    (global.set $__line (i32.const 1506))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1507
    (global.set $__line (i32.const 1507))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1478))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1508
    (global.set $__line (i32.const 1508))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1482))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1513
    (global.set $__line (i32.const 1513))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1453))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1514
    (global.set $__line (i32.const 1514))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1493))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1515
    (global.set $__line (i32.const 1515))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1516
    (global.set $__line (i32.const 1516))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:1518
    (global.set $__line (i32.const 1518))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 245)) (br $__dispatch)
    ))
    ;; line 7:1519
    (global.set $__line (i32.const 1519))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
      (local.set $__lab (i32.const 245)) (br $__dispatch)
    )) ;; end block / LAB L527 = idx 245
    (if (i32.eq (local.get $__lab) (i32.const 245)) (then ;; L527
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1520
    (global.set $__line (i32.const 1520))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1521
    (global.set $__line (i32.const 1521))
    (call $__break)
    )) ;; end block / LAB L528 = idx 246
    (if (i32.eq (local.get $__lab) (i32.const 246)) (then ;; L528
    ;; line 7:1524
    (global.set $__line (i32.const 1524))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1525
    (global.set $__line (i32.const 1525))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1526
    (global.set $__line (i32.const 1526))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1527
    (global.set $__line (i32.const 1527))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1528
    (global.set $__line (i32.const 1528))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1502))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1529
    (global.set $__line (i32.const 1529))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1482))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1530
    (global.set $__line (i32.const 1530))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    ;; line 7:1531
    (global.set $__line (i32.const 1531))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 247)) (br $__dispatch)
    ))
    ;; line 7:1532
    (global.set $__line (i32.const 1532))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
      (local.set $__lab (i32.const 247)) (br $__dispatch)
    )) ;; end block / LAB L529 = idx 247
    (if (i32.eq (local.get $__lab) (i32.const 247)) (then ;; L529
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1533
    (global.set $__line (i32.const 1533))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1534
    (global.set $__line (i32.const 1534))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1536
    (global.set $__line (i32.const 1536))
    (call $__break)
      (local.set $__lab (i32.const 248)) (br $__dispatch)
    )) ;; end block / LAB L530 = idx 248
    (if (i32.eq (local.get $__lab) (i32.const 248)) (then ;; L530
    ;; line 7:1539
    (global.set $__line (i32.const 1539))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1540
    (global.set $__line (i32.const 1540))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1541
    (global.set $__line (i32.const 1541))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1514))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1542
    (global.set $__line (i32.const 1542))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1519))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1543
    (global.set $__line (i32.const 1543))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1544
    (global.set $__line (i32.const 1544))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:1545
    (global.set $__line (i32.const 1545))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1546
    (global.set $__line (i32.const 1546))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1547
    (global.set $__line (i32.const 1547))
    (call $__break)
      (local.set $__lab (i32.const 249)) (br $__dispatch)
    )) ;; end block / LAB L531 = idx 249
    (if (i32.eq (local.get $__lab) (i32.const 249)) (then ;; L531
    ;; line 7:1550
    (global.set $__line (i32.const 1550))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1551
    (global.set $__line (i32.const 1551))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (if (i32.ne  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 250)) (br $__dispatch)
    ))
    ;; line 7:1552
    (global.set $__line (i32.const 1552))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    )) ;; end block / LAB L532 = idx 250
    (if (i32.eq (local.get $__lab) (i32.const 250)) (then ;; L532
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1553
    (global.set $__line (i32.const 1553))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1554
    (global.set $__line (i32.const 1554))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 251)) (br $__dispatch)
    ))
    ;; line 7:1555
    (global.set $__line (i32.const 1555))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
      (local.set $__lab (i32.const 251)) (br $__dispatch)
    )) ;; end block / LAB L533 = idx 251
    (if (i32.eq (local.get $__lab) (i32.const 251)) (then ;; L533
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 254)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 252)) (br $__dispatch)
    )) ;; end block / LAB L534 = idx 252
    (if (i32.eq (local.get $__lab) (i32.const 252)) (then ;; L534
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
    ;; line 7:1559
    (global.set $__line (i32.const 1559))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 253)) (br $__dispatch)
    ))
    ;; line 7:1560
    (global.set $__line (i32.const 1560))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1561
    (global.set $__line (i32.const 1561))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1562
    (global.set $__line (i32.const 1562))
    (call $__break)
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1535))) ;; LSTR
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
      (local.set $__lab (i32.const 253)) (br $__dispatch)
    )) ;; end block / LAB L536 = idx 253
    (if (i32.eq (local.get $__lab) (i32.const 253)) (then ;; L536
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 252)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 254)) (br $__dispatch)
    )) ;; end block / LAB L535 = idx 254
    (if (i32.eq (local.get $__lab) (i32.const 254)) (then ;; L535
    ;; line 7:1558
    (global.set $__line (i32.const 1558))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 257)) (br $__dispatch)
    ))
    ;; line 7:1570
    (global.set $__line (i32.const 1570))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 256)) (br $__dispatch) ;; JUMP L539
    )) ;; end block / LAB L538 = idx 255
    (if (i32.eq (local.get $__lab) (i32.const 255)) (then ;; L538
    ;; line 7:1571
    (global.set $__line (i32.const 1571))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1572
    (global.set $__line (i32.const 1572))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1573
    (global.set $__line (i32.const 1573))
    (call $__break)
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1544))) ;; LSTR
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
      (local.set $__lab (i32.const 256)) (br $__dispatch)
    )) ;; end block / LAB L539 = idx 256
    (if (i32.eq (local.get $__lab) (i32.const 256)) (then ;; L539
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 255)) (br $__dispatch)
    ))
    ;; line 7:1574
    (global.set $__line (i32.const 1574))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t4))
      (local.set $__lab (i32.const 257)) (br $__dispatch)
    )) ;; end block / LAB L537 = idx 257
    (if (i32.eq (local.get $__lab) (i32.const 257)) (then ;; L537
    ;; line 7:1576
    (global.set $__line (i32.const 1576))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:1578
    (global.set $__line (i32.const 1578))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1579
    (global.set $__line (i32.const 1579))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1580
    (global.set $__line (i32.const 1580))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1581
    (global.set $__line (i32.const 1581))
    (call $__break)
      (local.set $__lab (i32.const 258)) (br $__dispatch)
    )) ;; end block / LAB L540 = idx 258
    (if (i32.eq (local.get $__lab) (i32.const 258)) (then ;; L540
    ;; line 7:1584
    (global.set $__line (i32.const 1584))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (if (i32.eq  (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 303)) (br $__dispatch)
    ))
    ;; line 7:1585
    (global.set $__line (i32.const 1585))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1586
    (global.set $__line (i32.const 1586))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1587
    (global.set $__line (i32.const 1587))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 259)) (br $__dispatch)
    ))
    ;; line 7:1593
    (global.set $__line (i32.const 1593))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
      (local.set $__lab (i32.const 259)) (br $__dispatch)
    )) ;; end block / LAB L541 = idx 259
    (if (i32.eq (local.get $__lab) (i32.const 259)) (then ;; L541
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 261)) (br $__dispatch) ;; JUMP L543
    )) ;; end block / LAB L542 = idx 260
    (if (i32.eq (local.get $__lab) (i32.const 260)) (then ;; L542
    ;; line 7:1594
    (global.set $__line (i32.const 1594))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1595
    (global.set $__line (i32.const 1595))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1596
    (global.set $__line (i32.const 1596))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1556))) ;; LSTR
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
      (local.set $__lab (i32.const 261)) (br $__dispatch)
    )) ;; end block / LAB L543 = idx 261
    (if (i32.eq (local.get $__lab) (i32.const 261)) (then ;; L543
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 260)) (br $__dispatch)
    ))
    ;; line 7:1597
    (global.set $__line (i32.const 1597))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:1599
    (global.set $__line (i32.const 1599))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1600
    (global.set $__line (i32.const 1600))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1601
    (global.set $__line (i32.const 1601))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1602
    (global.set $__line (i32.const 1602))
    (call $__break)
    )) ;; end block / LAB L544 = idx 262
    (if (i32.eq (local.get $__lab) (i32.const 262)) (then ;; L544
    ;; line 7:1605
    (global.set $__line (i32.const 1605))
    (call $__break)
      (local.set $__lab (i32.const 263)) (br $__dispatch)
    )) ;; end block / LAB L545 = idx 263
    (if (i32.eq (local.get $__lab) (i32.const 263)) (then ;; L545
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1606
    (global.set $__line (i32.const 1606))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1607
    (global.set $__line (i32.const 1607))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1608
    (global.set $__line (i32.const 1608))
    (call $__break)
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
    ;; line 7:1609
    (global.set $__line (i32.const 1609))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1610
    (global.set $__line (i32.const 1610))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1611
    (global.set $__line (i32.const 1611))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1612
    (global.set $__line (i32.const 1612))
    (call $__break)
      (local.set $__lab (i32.const 264)) (br $__dispatch)
    )) ;; end block / LAB L546 = idx 264
    (if (i32.eq (local.get $__lab) (i32.const 264)) (then ;; L546
    ;; line 7:1615
    (global.set $__line (i32.const 1615))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1616
    (global.set $__line (i32.const 1616))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1617
    (global.set $__line (i32.const 1617))
    (call $__break)
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1566))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1618
    (global.set $__line (i32.const 1618))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1619
    (global.set $__line (i32.const 1619))
    (call $__break)
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1620
    (global.set $__line (i32.const 1620))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1621
    (global.set $__line (i32.const 1621))
    (call $__break)
    )) ;; end block / LAB L547 = idx 265
    (if (i32.eq (local.get $__lab) (i32.const 265)) (then ;; L547
    ;; line 7:1623
    (global.set $__line (i32.const 1623))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1627
    (global.set $__line (i32.const 1627))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    ;; line 7:1628
    (global.set $__line (i32.const 1628))
    (call $__break)
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1629
    (global.set $__line (i32.const 1629))
    (call $__break)
    (local.set $t5 (i32.add (global.get $P) (i32.const 6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; flush t5 (pre-stack-up)
    ;; line 7:1630
    (global.set $__line (i32.const 1630))
    (call $__break)
    (local.set $t71 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t71)) ;; STORE slot 71
    ;; line 7:1631
    (global.set $__line (i32.const 1631))
    (call $__break)
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t74 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t73) (i32.const 2)) (local.get $t74)) (local.get $t72))
    ;; line 7:1634
    (global.set $__line (i32.const 1634))
    (call $__break)
    (local.set $t72 (i32.const 1))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (if (i32.gt_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 267)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 266)) (br $__dispatch)
    )) ;; end block / LAB L548 = idx 266
    (if (i32.eq (local.get $__lab) (i32.const 266)) (then ;; L548
    ;; line 7:1635
    (global.set $__line (i32.const 1635))
    (call $__break)
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (local.set $t74 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t74)) ;; flush FNAP result
    (local.set $t75 (i32.const 255))
    (local.set $t74 (i32.and (local.get $t74) (local.get $t75)))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (i32.store8 (i32.add (i32.shl (local.get $t75) (i32.const 2)) (local.get $t76)) (local.get $t74))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t75 (i32.const 1))
    (local.set $t74 (i32.add (local.get $t74) (local.get $t75)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t74))
    (local.set $t72 (local.get $t74))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (if (i32.le_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 266)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 267)) (br $__dispatch)
    )) ;; end block / LAB L549 = idx 267
    (if (i32.eq (local.get $__lab) (i32.const 267)) (then ;; L549
    (local.set $t72 (i32.const 0))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t74 (i32.const 1))
    (local.set $t73 (i32.sub (local.get $t73) (local.get $t74)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
      (local.set $__lab (i32.const 275)) (br $__dispatch) ;; JUMP L551
    )) ;; end block / LAB L550 = idx 268
    (if (i32.eq (local.get $__lab) (i32.const 268)) (then ;; L550
    ;; line 7:1638
    (global.set $__line (i32.const 1638))
    (call $__break)
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t74 (i32.add (local.get $t74) (local.get $t75)))
    (local.set $t74 (i32.load (i32.shl (local.get $t74) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t74)) ;; STORE slot 74
    ;; line 7:1639
    (global.set $__line (i32.const 1639))
    (call $__break)
    (local.set $t75 (i32.const 1))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t75 (i32.load (i32.shl (local.get $t75) (i32.const 2))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75)) ;; STORE slot 75
    ;; line 7:1640
    (global.set $__line (i32.const 1640))
    (call $__break)
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (if (i32.ne  (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 274)) (br $__dispatch)
    ))
    ;; line 7:1641
    (global.set $__line (i32.const 1641))
    (call $__break)
    (local.set $t76 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76)) ;; STORE slot 76
    ;; line 7:1642
    (global.set $__line (i32.const 1642))
    (call $__break)
    (local.set $t77 (i32.const 0))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t79 (i32.const 1))
    (local.set $t78 (i32.sub (local.get $t78) (local.get $t79)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t77)) ;; STORE slot 77
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78)) ;; STORE slot 78
      (local.set $__lab (i32.const 271)) (br $__dispatch) ;; JUMP L554
    )) ;; end block / LAB L553 = idx 269
    (if (i32.eq (local.get $__lab) (i32.const 269)) (then ;; L553
    ;; line 7:1643
    (global.set $__line (i32.const 1643))
    (call $__break)
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308))))
    (local.set $t80 (i32.const 4))
    (local.set $t79 (i32.div_s (local.get $t79) (local.get $t80)))
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296))))
    (local.set $t79 (i32.add (local.get $t79) (local.get $t80)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (local.get $t79)) ;; STORE slot 79
    ;; line 7:1644
    (global.set $__line (i32.const 1644))
    (call $__break)
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308))))
    (local.set $t81 (i32.const 4))
    (local.set $t80 (i32.rem_s (local.get $t80) (local.get $t81)))
    (local.set $t81 (i32.const 8))
    (local.set $t80 (i32.mul (local.get $t80) (local.get $t81)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t80)) ;; STORE slot 80
    ;; line 7:1645
    (global.set $__line (i32.const 1645))
    (call $__break)
    (local.set $t81 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t81 (i32.add (local.get $t81) (local.get $t82)))
    (local.set $t81 (i32.load (i32.shl (local.get $t81) (i32.const 2))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320))))
    (local.set $t81 (i32.shr_u (local.get $t81) (local.get $t82)))
    (local.set $t82 (i32.const 255))
    (local.set $t81 (i32.and (local.get $t81) (local.get $t82)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324)) (local.get $t81)) ;; STORE slot 81
    ;; line 7:1646
    (global.set $__line (i32.const 1646))
    (call $__break)
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t83 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308))))
    (local.set $t82 (i32.load8_u (i32.add (i32.shl (local.get $t82) (i32.const 2)) (local.get $t83))))
    (local.set $t83 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 324))))
    (if (i32.eq  (local.get $t82) (local.get $t83)) (then
      (local.set $__lab (i32.const 270)) (br $__dispatch)
    ))
    ;; line 7:1647
    (global.set $__line (i32.const 1647))
    (call $__break)
    (local.set $t82 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t82))
    (local.set $t76 (local.get $t82))
      (local.set $__lab (i32.const 272)) (br $__dispatch) ;; JUMP L556
    )) ;; end block / LAB L555 = idx 270
    (if (i32.eq (local.get $__lab) (i32.const 270)) (then ;; L555
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308))))
    (local.set $t80 (i32.const 1))
    (local.set $t79 (i32.add (local.get $t79) (local.get $t80)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t79))
    (local.set $t77 (local.get $t79))
      (local.set $__lab (i32.const 271)) (br $__dispatch)
    )) ;; end block / LAB L554 = idx 271
    (if (i32.eq (local.get $__lab) (i32.const 271)) (then ;; L554
    (local.set $t79 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308))))
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312))))
    (if (i32.le_s (local.get $t79) (local.get $t80)) (then
      (local.set $__lab (i32.const 269)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 272)) (br $__dispatch)
    )) ;; end block / LAB L556 = idx 272
    (if (i32.eq (local.get $__lab) (i32.const 272)) (then ;; L556
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304))))
    (if (i32.eqz (local.get $t77)) (then
      (local.set $__lab (i32.const 273)) (br $__dispatch)
    ))
    ;; line 7:1649
    (global.set $__line (i32.const 1649))
    (call $__break)
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t77))
    (local.set $t71 (local.get $t77))
      (local.set $__lab (i32.const 276)) (br $__dispatch) ;; JUMP L558
    )) ;; end block / LAB L557 = idx 273
    (if (i32.eq (local.get $__lab) (i32.const 273)) (then ;; L557
      (local.set $__lab (i32.const 274)) (br $__dispatch)
    )) ;; end block / LAB L552 = idx 274
    (if (i32.eq (local.get $__lab) (i32.const 274)) (then ;; L552
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t75 (i32.const 2))
    (local.set $t74 (i32.add (local.get $t74) (local.get $t75)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t74))
    (local.set $t72 (local.get $t74))
      (local.set $__lab (i32.const 275)) (br $__dispatch)
    )) ;; end block / LAB L551 = idx 275
    (if (i32.eq (local.get $__lab) (i32.const 275)) (then ;; L551
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (if (i32.le_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 268)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 276)) (br $__dispatch)
    )) ;; end block / LAB L558 = idx 276
    (if (i32.eq (local.get $__lab) (i32.const 276)) (then ;; L558
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t73 (i32.const 0))
    (if (i32.ge_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 282)) (br $__dispatch)
    ))
    ;; line 7:1654
    (global.set $__line (i32.const 1654))
    (call $__break)
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284)) (local.get $t72))
    (local.set $t71 (local.get $t72))
    ;; line 7:1655
    (global.set $__line (i32.const 1655))
    (call $__break)
    (local.set $t72 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    ;; line 7:1656
    (global.set $__line (i32.const 1656))
    (call $__break)
    (local.set $t73 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    ;; line 7:1657
    (global.set $__line (i32.const 1657))
    (call $__break)
    (local.set $t74 (i32.const 0))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t76 (i32.const 1))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t74)) ;; STORE slot 74
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75)) ;; STORE slot 75
      (local.set $__lab (i32.const 279)) (br $__dispatch) ;; JUMP L561
    )) ;; end block / LAB L560 = idx 277
    (if (i32.eq (local.get $__lab) (i32.const 277)) (then ;; L560
    ;; line 7:1658
    (global.set $__line (i32.const 1658))
    (call $__break)
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296))))
    (local.set $t76 (i32.load8_u (i32.add (i32.shl (local.get $t76) (i32.const 2)) (local.get $t77))))
    (local.set $t77 (i32.const 8))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t77 (i32.mul (local.get $t77) (local.get $t78)))
    (local.set $t76 (i32.shl (local.get $t76) (local.get $t77)))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t76 (i32.or (local.get $t76) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t76))
    (local.set $t72 (local.get $t76))
    ;; line 7:1659
    (global.set $__line (i32.const 1659))
    (call $__break)
    (local.set $t76 (i32.const 1))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t76))
    (local.set $t73 (local.get $t76))
    ;; line 7:1660
    (global.set $__line (i32.const 1660))
    (call $__break)
    (local.set $t76 (i32.const 4))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (if (i32.ne  (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 278)) (br $__dispatch)
    ))
    ;; line 7:1661
    (global.set $__line (i32.const 1661))
    (call $__break)
    (local.set $t79 (i32.const -1))
    (local.set $t80 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t81 (i32.add (global.get $TB) (i32.const 39))) ;; LF L49
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t81)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 76)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t81)))
    (local.set $t76 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (local.get $t76))
    (local.set $t72 (local.get $t76))
    (local.set $t76 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (local.get $t76))
    (local.set $t73 (local.get $t76))
      (local.set $__lab (i32.const 278)) (br $__dispatch)
    )) ;; end block / LAB L562 = idx 278
    (if (i32.eq (local.get $__lab) (i32.const 278)) (then ;; L562
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296))))
    (local.set $t77 (i32.const 1))
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t76))
    (local.set $t74 (local.get $t76))
      (local.set $__lab (i32.const 279)) (br $__dispatch)
    )) ;; end block / LAB L561 = idx 279
    (if (i32.eq (local.get $__lab) (i32.const 279)) (then ;; L561
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296))))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300))))
    (if (i32.le_s (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 277)) (br $__dispatch)
    ))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292))))
    (local.set $t75 (i32.const 0))
    (if (i32.le_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 280)) (br $__dispatch)
    ))
    ;; line 7:1663
    (global.set $__line (i32.const 1663))
    (call $__break)
    (local.set $t77 (i32.const -1))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288))))
    (local.set $t79 (i32.add (global.get $TB) (i32.const 39))) ;; LF L49
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t79)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t79)))
      (local.set $__lab (i32.const 280)) (br $__dispatch)
    )) ;; end block / LAB L563 = idx 280
    (if (i32.eq (local.get $__lab) (i32.const 280)) (then ;; L563
    (local.set $t72 (i32.const 2))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.const 2))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (local.set $t73 (i32.mul (local.get $t73) (local.get $t74)))
    (if (i32.gt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 281)) (br $__dispatch)
    ))
    ;; line 7:1665
    (global.set $__line (i32.const 1665))
    (call $__break)
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.shl (local.get $t73) (i32.const 2)) (local.get $t72))
    ;; line 7:1666
    (global.set $__line (i32.const 1666))
    (call $__break)
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t73 (i32.const 1))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.shl (local.get $t73) (i32.const 2)) (local.get $t72))
    ;; line 7:1667
    (global.set $__line (i32.const 1667))
    (call $__break)
    (local.set $t72 (i32.const 2))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024)) (local.get $t72))
      (local.set $__lab (i32.const 281)) (br $__dispatch)
    )) ;; end block / LAB L564 = idx 281
    (if (i32.eq (local.get $__lab) (i32.const 281)) (then ;; L564
      (local.set $__lab (i32.const 282)) (br $__dispatch)
    )) ;; end block / LAB L559 = idx 282
    (if (i32.eq (local.get $__lab) (i32.const 282)) (then ;; L559
    ;; line 7:1668
    (global.set $__line (i32.const 1668))
    (call $__break)
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t76)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t76)))
    ;; line 7:1672
    (global.set $__line (i32.const 1672))
    (call $__break)
    (local.set $t75 (i32.add (global.get $SB) (i32.const 1576))) ;; LSTR
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 284))))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t78)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t78)))
    ;; line 7:1673
    (global.set $__line (i32.const 1673))
    (call $__break)
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 296)) (local.get $t76)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t76)))
    ;; line 7:1675
    (global.set $__line (i32.const 1675))
    (call $__break)
    (local.set $t72 (i32.const 1))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t72))
    ;; line 7:1676
    (global.set $__line (i32.const 1676))
    (call $__break)
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1678
    (global.set $__line (i32.const 1678))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1679
    (global.set $__line (i32.const 1679))
    (call $__break)
      (local.set $__lab (i32.const 283)) (br $__dispatch)
    )) ;; end block / LAB L565 = idx 283
    (if (i32.eq (local.get $__lab) (i32.const 283)) (then ;; L565
    ;; line 7:1682
    (global.set $__line (i32.const 1682))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1683
    (global.set $__line (i32.const 1683))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:1684
    (global.set $__line (i32.const 1684))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1685
    (global.set $__line (i32.const 1685))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1686
    (global.set $__line (i32.const 1686))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    ;; line 7:1687
    (global.set $__line (i32.const 1687))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1594))) ;; LSTR
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
    ;; line 7:1688
    (global.set $__line (i32.const 1688))
    (call $__break)
    (local.set $t5 (i32.const 1))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    ;; line 7:1690
    (global.set $__line (i32.const 1690))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1691
    (global.set $__line (i32.const 1691))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1693
    (global.set $__line (i32.const 1693))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1694
    (global.set $__line (i32.const 1694))
    (call $__break)
    )) ;; end block / LAB L566 = idx 284
    (if (i32.eq (local.get $__lab) (i32.const 284)) (then ;; L566
    ;; line 7:1697
    (global.set $__line (i32.const 1697))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    ;; line 7:1704
    (global.set $__line (i32.const 1704))
    (call $__break)
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:1705
    (global.set $__line (i32.const 1705))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1706
    (global.set $__line (i32.const 1706))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 3))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1707
    (global.set $__line (i32.const 1707))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1708
    (global.set $__line (i32.const 1708))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 3))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:1709
    (global.set $__line (i32.const 1709))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 285)) (br $__dispatch)
    ))
    ;; line 7:1710
    (global.set $__line (i32.const 1710))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
      (local.set $__lab (i32.const 285)) (br $__dispatch)
    )) ;; end block / LAB L567 = idx 285
    (if (i32.eq (local.get $__lab) (i32.const 285)) (then ;; L567
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1620))) ;; LSTR
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
    ;; line 7:1711
    (global.set $__line (i32.const 1711))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1713
    (global.set $__line (i32.const 1713))
    (call $__break)
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1715
    (global.set $__line (i32.const 1715))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1716
    (global.set $__line (i32.const 1716))
    (call $__break)
    )) ;; end block / LAB L568 = idx 286
    (if (i32.eq (local.get $__lab) (i32.const 286)) (then ;; L568
    ;; line 7:1719
    (global.set $__line (i32.const 1719))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1720
    (global.set $__line (i32.const 1720))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:1721
    (global.set $__line (i32.const 1721))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    ;; line 7:1722
    (global.set $__line (i32.const 1722))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1723
    (global.set $__line (i32.const 1723))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1724
    (global.set $__line (i32.const 1724))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:1725
    (global.set $__line (i32.const 1725))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 287)) (br $__dispatch)
    ))
    ;; line 7:1726
    (global.set $__line (i32.const 1726))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
      (local.set $__lab (i32.const 287)) (br $__dispatch)
    )) ;; end block / LAB L569 = idx 287
    (if (i32.eq (local.get $__lab) (i32.const 287)) (then ;; L569
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1646))) ;; LSTR
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
    ;; line 7:1727
    (global.set $__line (i32.const 1727))
    (call $__break)
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 289)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 288)) (br $__dispatch)
    )) ;; end block / LAB L570 = idx 288
    (if (i32.eq (local.get $__lab) (i32.const 288)) (then ;; L570
    ;; line 7:1728
    (global.set $__line (i32.const 1728))
    (call $__break)
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 7:1729
    (global.set $__line (i32.const 1729))
    (call $__break)
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 7:1730
    (global.set $__line (i32.const 1730))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1656))) ;; LSTR
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
    ;; line 7:1731
    (global.set $__line (i32.const 1731))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1670))) ;; LSTR
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
      (local.set $__lab (i32.const 288)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 289)) (br $__dispatch)
    )) ;; end block / LAB L571 = idx 289
    (if (i32.eq (local.get $__lab) (i32.const 289)) (then ;; L571
    ;; line 7:1732
    (global.set $__line (i32.const 1732))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1734
    (global.set $__line (i32.const 1734))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1735
    (global.set $__line (i32.const 1735))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1737
    (global.set $__line (i32.const 1737))
    (call $__break)
      (local.set $__lab (i32.const 290)) (br $__dispatch)
    )) ;; end block / LAB L572 = idx 290
    (if (i32.eq (local.get $__lab) (i32.const 290)) (then ;; L572
    ;; line 7:1740
    (global.set $__line (i32.const 1740))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1741
    (global.set $__line (i32.const 1741))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 291)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 291)) (br $__dispatch)
    ))
    ;; line 7:1746
    (global.set $__line (i32.const 1746))
    (call $__break)
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
      (local.set $__lab (i32.const 291)) (br $__dispatch)
    )) ;; end block / LAB L573 = idx 291
    (if (i32.eq (local.get $__lab) (i32.const 291)) (then ;; L573
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1747
    (global.set $__line (i32.const 1747))
    (call $__break)
      (local.set $__lab (i32.const 292)) (br $__dispatch)
    )) ;; end block / LAB L574 = idx 292
    (if (i32.eq (local.get $__lab) (i32.const 292)) (then ;; L574
    ;; line 7:1750
    (global.set $__line (i32.const 1750))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1751
    (global.set $__line (i32.const 1751))
    (call $__break)
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
    ;; line 7:1752
    (global.set $__line (i32.const 1752))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1753
    (global.set $__line (i32.const 1753))
    (call $__break)
      (local.set $__lab (i32.const 293)) (br $__dispatch)
    )) ;; end block / LAB L575 = idx 293
    (if (i32.eq (local.get $__lab) (i32.const 293)) (then ;; L575
    ;; line 7:1756
    (global.set $__line (i32.const 1756))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1757
    (global.set $__line (i32.const 1757))
    (call $__break)
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
    ;; line 7:1758
    (global.set $__line (i32.const 1758))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1759
    (global.set $__line (i32.const 1759))
    (call $__break)
      (local.set $__lab (i32.const 294)) (br $__dispatch)
    )) ;; end block / LAB L576 = idx 294
    (if (i32.eq (local.get $__lab) (i32.const 294)) (then ;; L576
    ;; line 7:1762
    (global.set $__line (i32.const 1762))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1763
    (global.set $__line (i32.const 1763))
    (call $__break)
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
    ;; line 7:1764
    (global.set $__line (i32.const 1764))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1765
    (global.set $__line (i32.const 1765))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    ;; line 7:1767
    (global.set $__line (i32.const 1767))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 390))) ;; LSTR
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
    ;; line 7:1768
    (global.set $__line (i32.const 1768))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 295)) (br $__dispatch)
    ))
    ;; line 7:1770
    (global.set $__line (i32.const 1770))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1685))) ;; LSTR
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
      (local.set $__lab (i32.const 295)) (br $__dispatch)
    )) ;; end block / LAB L577 = idx 295
    (if (i32.eq (local.get $__lab) (i32.const 295)) (then ;; L577
    ;; line 7:1771
    (global.set $__line (i32.const 1771))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 296)) (br $__dispatch)
    ))
    ;; line 7:1773
    (global.set $__line (i32.const 1773))
    (call $__break)
    (local.set $t8 (i32.add (global.get $SB) (i32.const 585))) ;; LSTR
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
      (local.set $__lab (i32.const 296)) (br $__dispatch)
    )) ;; end block / LAB L578 = idx 296
    (if (i32.eq (local.get $__lab) (i32.const 296)) (then ;; L578
    ;; line 7:1774
    (global.set $__line (i32.const 1774))
    (call $__break)
    (local.set $t5 (i32.const 1))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    ;; line 7:1776
    (global.set $__line (i32.const 1776))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    ;; line 7:1777
    (global.set $__line (i32.const 1777))
    (call $__break)
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t5))
    ;; line 7:1778
    (global.set $__line (i32.const 1778))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
    ;; line 7:1779
    (global.set $__line (i32.const 1779))
    (call $__break)
      (local.set $__lab (i32.const 297)) (br $__dispatch)
    )) ;; end block / LAB L579 = idx 297
    (if (i32.eq (local.get $__lab) (i32.const 297)) (then ;; L579
    ;; line 7:1782
    (global.set $__line (i32.const 1782))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1783
    (global.set $__line (i32.const 1783))
    (call $__break)
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
    ;; line 7:1784
    (global.set $__line (i32.const 1784))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1785
    (global.set $__line (i32.const 1785))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:1790
    (global.set $__line (i32.const 1790))
    (call $__break)
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 7:1791
    (global.set $__line (i32.const 1791))
    (call $__break)
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t9 (i32.const 32))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 298)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const -1))
    ;; RES L580: save result, jump to RSTACK
    (local.set $__res (local.get $t8))
      (local.set $__lab (i32.const 299)) (br $__dispatch)
      (local.set $__lab (i32.const 298)) (br $__dispatch)
    )) ;; end block / LAB L581 = idx 298
    (if (i32.eq (local.get $__lab) (i32.const 298)) (then ;; L581
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t8 (i32.shl (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    ;; RES L580: save result, jump to RSTACK
    (local.set $__res (local.get $t8))
      (local.set $__lab (i32.const 299)) (br $__dispatch)
    )) ;; end block / LAB L580 = idx 299
    (if (i32.eq (local.get $__lab) (i32.const 299)) (then ;; L580
    ;; RSTACK 8
    (local.set $t8 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 7:1792
    (global.set $__line (i32.const 1792))
    (call $__break)
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t9 (i32.shl (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.xor (local.get $t9) (i32.const -1)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 7:1793
    (global.set $__line (i32.const 1793))
    (call $__break)
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (if (i32.eq  (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 300)) (br $__dispatch)
    ))
    ;; line 7:1794
    (global.set $__line (i32.const 1794))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1702))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
      (local.set $__lab (i32.const 300)) (br $__dispatch)
    )) ;; end block / LAB L582 = idx 300
    (if (i32.eq (local.get $__lab) (i32.const 300)) (then ;; L582
    ;; line 7:1795
    (global.set $__line (i32.const 1795))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1379))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    ;; line 7:1796
    (global.set $__line (i32.const 1796))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1714))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    ;; line 7:1797
    (global.set $__line (i32.const 1797))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1726))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    ;; line 7:1798
    (global.set $__line (i32.const 1798))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1730))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    ;; line 7:1799
    (global.set $__line (i32.const 1799))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1735))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    ;; line 7:1800
    (global.set $__line (i32.const 1800))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1751))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    ;; line 7:1801
    (global.set $__line (i32.const 1801))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1758))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    ;; line 7:1802
    (global.set $__line (i32.const 1802))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1763))) ;; LSTR
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
    ;; line 7:1803
    (global.set $__line (i32.const 1803))
    (call $__break)
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1777))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    ;; line 7:1804
    (global.set $__line (i32.const 1804))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:1806
    (global.set $__line (i32.const 1806))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 301)) (br $__dispatch)
    ))
    ;; line 7:1807
    (global.set $__line (i32.const 1807))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
      (local.set $__lab (i32.const 301)) (br $__dispatch)
    )) ;; end block / LAB L583 = idx 301
    (if (i32.eq (local.get $__lab) (i32.const 301)) (then ;; L583
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    ;; line 7:1808
    (global.set $__line (i32.const 1808))
    (call $__break)
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:1809
    (global.set $__line (i32.const 1809))
    (call $__break)
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L284
      (local.set $__lab (i32.const 302)) (br $__dispatch)
    )) ;; end block / LAB L283 = idx 302
    (if (i32.eq (local.get $__lab) (i32.const 302)) (then ;; L283
    ;; RSTACK 3
    (local.set $t3 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 85 cases default L285
    (if (i32.eq (local.get $t3) (i32.const 203)) (then
      (local.set $__lab (i32.const 297)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 202)) (then
      (local.set $__lab (i32.const 294)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 162)) (then
      (local.set $__lab (i32.const 293)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 161)) (then
      (local.set $__lab (i32.const 292)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 160)) (then
      (local.set $__lab (i32.const 290)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 63)) (then
      (local.set $__lab (i32.const 286)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 165)) (then
      (local.set $__lab (i32.const 284)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 164)) (then
      (local.set $__lab (i32.const 283)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 138)) (then
      (local.set $__lab (i32.const 265)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 61)) (then
      (local.set $__lab (i32.const 264)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 42)) (then
      (local.set $__lab (i32.const 263)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 10)) (then
      (local.set $__lab (i32.const 262)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 153)) (then
      (local.set $__lab (i32.const 258)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 152)) (then
      (local.set $__lab (i32.const 249)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 154)) (then
      (local.set $__lab (i32.const 248)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 159)) (then
      (local.set $__lab (i32.const 246)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 157)) (then
      (local.set $__lab (i32.const 244)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 158)) (then
      (local.set $__lab (i32.const 243)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 43)) (then
      (local.set $__lab (i32.const 241)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 147)) (then
      (local.set $__lab (i32.const 240)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 149)) (then
      (local.set $__lab (i32.const 239)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 148)) (then
      (local.set $__lab (i32.const 238)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 35)) (then
      (local.set $__lab (i32.const 237)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 34)) (then
      (local.set $__lab (i32.const 236)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 33)) (then
      (local.set $__lab (i32.const 235)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 32)) (then
      (local.set $__lab (i32.const 234)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 31)) (then
      (local.set $__lab (i32.const 233)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 30)) (then
      (local.set $__lab (i32.const 232)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 24)) (then
      (local.set $__lab (i32.const 231)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 23)) (then
      (local.set $__lab (i32.const 230)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 22)) (then
      (local.set $__lab (i32.const 229)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 21)) (then
      (local.set $__lab (i32.const 228)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 20)) (then
      (local.set $__lab (i32.const 227)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 19)) (then
      (local.set $__lab (i32.const 226)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 18)) (then
      (local.set $__lab (i32.const 225)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 17)) (then
      (local.set $__lab (i32.const 224)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 16)) (then
      (local.set $__lab (i32.const 223)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 15)) (then
      (local.set $__lab (i32.const 222)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 14)) (then
      (local.set $__lab (i32.const 221)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 182)) (then
      (local.set $__lab (i32.const 220)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 181)) (then
      (local.set $__lab (i32.const 219)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 180)) (then
      (local.set $__lab (i32.const 218)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 179)) (then
      (local.set $__lab (i32.const 217)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 178)) (then
      (local.set $__lab (i32.const 216)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 177)) (then
      (local.set $__lab (i32.const 215)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 174)) (then
      (local.set $__lab (i32.const 214)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 173)) (then
      (local.set $__lab (i32.const 213)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 172)) (then
      (local.set $__lab (i32.const 212)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 171)) (then
      (local.set $__lab (i32.const 211)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 170)) (then
      (local.set $__lab (i32.const 210)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 13)) (then
      (local.set $__lab (i32.const 209)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 12)) (then
      (local.set $__lab (i32.const 208)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 29)) (then
      (local.set $__lab (i32.const 207)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 169)) (then
      (local.set $__lab (i32.const 206)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 176)) (then
      (local.set $__lab (i32.const 205)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 168)) (then
      (local.set $__lab (i32.const 204)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 167)) (then
      (local.set $__lab (i32.const 203)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 8)) (then
      (local.set $__lab (i32.const 202)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 146)) (then
      (local.set $__lab (i32.const 201)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 145)) (then
      (local.set $__lab (i32.const 197)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 144)) (then
      (local.set $__lab (i32.const 196)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 143)) (then
      (local.set $__lab (i32.const 195)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 11)) (then
      (local.set $__lab (i32.const 194)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 5)) (then
      (local.set $__lab (i32.const 193)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 4)) (then
      (local.set $__lab (i32.const 192)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 137)) (then
      (local.set $__lab (i32.const 191)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 136)) (then
      (local.set $__lab (i32.const 190)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 142)) (then
      (local.set $__lab (i32.const 187)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 141)) (then
      (local.set $__lab (i32.const 186)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 140)) (then
      (local.set $__lab (i32.const 185)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 139)) (then
      (local.set $__lab (i32.const 182)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 133)) (then
      (local.set $__lab (i32.const 173)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 135)) (then
      (local.set $__lab (i32.const 172)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 134)) (then
      (local.set $__lab (i32.const 171)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 151)) (then
      (local.set $__lab (i32.const 169)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 163)) (then
      (local.set $__lab (i32.const 167)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 156)) (then
      (local.set $__lab (i32.const 166)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 155)) (then
      (local.set $__lab (i32.const 29)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 40)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 39)) (then
      (local.set $__lab (i32.const 25)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 209)) (then
      (local.set $__lab (i32.const 22)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 70)) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 150)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 208)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 0)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L284 = idx 303
    (if (i32.eq (local.get $__lab) (i32.const 303)) (then ;; L284
    ;; line 7:863
    (global.set $__line (i32.const 863))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t3))
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L281
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:1819
    (global.set $__line (i32.const 1819))
    (call $__break)
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1820
    (global.set $__line (i32.const 1820))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t7 (i32.const 32768))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:1821
    (global.set $__line (i32.const 1821))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:1822
    (global.set $__line (i32.const 1822))
    (call $__break)
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992)) (local.get $t6))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L584 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L584
    ;; line 7:1823
    (global.set $__line (i32.const 1823))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:1827
    (global.set $__line (i32.const 1827))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L585 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L585
    ;; line 7:1828
    (global.set $__line (i32.const 1828))
    (call $__break)
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20))))
    ;; FNRN
    (local.set $__res (local.get $t6))
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
  ) ;; end func $fn_L49

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L10) (ref.func $fn_L11) (ref.func $fn_L12) (ref.func $fn_L13) (ref.func $fn_L14) (ref.func $fn_L15) (ref.func $fn_L16) (ref.func $fn_L17) (ref.func $fn_L18) (ref.func $fn_L19) (ref.func $fn_L20) (ref.func $fn_L21) (ref.func $fn_L22) (ref.func $fn_L23) (ref.func $fn_L24) (ref.func $fn_L25) (ref.func $fn_L26) (ref.func $fn_L27) (ref.func $fn_L28) (ref.func $fn_L29) (ref.func $fn_L30) (ref.func $fn_L31) (ref.func $fn_L32) (ref.func $fn_L33) (ref.func $fn_L34) (ref.func $fn_L35) (ref.func $fn_L36) (ref.func $fn_L37) (ref.func $fn_L38) (ref.func $fn_L39) (ref.func $fn_L40) (ref.func $fn_L41) (ref.func $fn_L42) (ref.func $fn_L43) (ref.func $fn_L44) (ref.func $fn_L45) (ref.func $fn_L46) (ref.func $fn_L47) (ref.func $fn_L48) (ref.func $fn_L49))

  ;; static data — passive segment (1785 words)
  (data $stat "\1E\57\41\53\4D\20\43\47\3A\20\54\6F\6F\20\6C\69\74\74\6C\65\20\77\6F\72\6B\73\70\61\63\65\0A\00\32\57\41\53\4D\20\43\47\3A\20\74\61\72\67\65\74\20\77\6F\72\64\20\73\69\7A\65\20\25\6E\20\62\79\74\65\73\20\6E\6F\74\20\73\75\70\70\6F\72\74\65\64\2E\0A\00\31\20\20\20\20\20\20\20\20\20\52\65\2D\69\6E\76\6F\6B\65\20\62\63\70\6C\77\61\73\6D\20\77\69\74\68\20\74\68\65\20\54\33\32\20\6F\70\74\69\6F\6E\2E\0A\00\00\0E\20\20\3B\3B\20\53\45\43\54\49\4F\4E\3A\20\00\40\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\00\00\00\40\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\47\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\00\00\00\15\57\41\53\4D\20\43\47\3A\20\70\65\6E\64\5F\76\20\66\75\6C\6C\0A\00\00\08\28\6D\6F\64\75\6C\65\0A\00\00\00\26\20\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\20\28\66\75\6E\63\20\28\72\65\73\75\6C\74\20\69\33\32\29\29\29\0A\00\19\20\20\28\74\79\70\65\20\24\76\6F\69\64\5F\66\6E\20\28\66\75\6E\63\29\29\0A\00\00\25\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\6D\65\6D\22\20\20\20\20\28\6D\65\6D\6F\72\79\20\34\29\29\0A\00\00\36\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\66\74\61\62\6C\65\22\20\28\74\61\62\6C\65\20\24\66\74\61\62\6C\65\20\32\35\36\20\66\75\6E\63\72\65\66\29\29\0A\00\2B\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\50\22\20\28\67\6C\6F\62\61\6C\20\24\50\20\28\6D\75\74\20\69\33\32\29\29\29\0A\25\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\47\22\20\28\67\6C\6F\62\61\6C\20\24\47\20\69\33\32\29\29\0A\00\00\30\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\73\74\61\74\69\63\5F\62\61\73\65\22\20\28\67\6C\6F\62\61\6C\20\24\53\42\20\69\33\32\29\29\0A\00\00\00\30\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\74\61\62\6C\65\5F\62\61\73\65\22\20\20\28\67\6C\6F\62\61\6C\20\24\54\42\20\69\33\32\29\29\0A\00\00\00\35\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\5F\5F\6C\69\6E\65\22\20\28\67\6C\6F\62\61\6C\20\24\5F\5F\6C\69\6E\65\20\28\6D\75\74\20\69\33\32\29\29\29\0A\00\00\3F\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\62\63\70\6C\5F\62\72\65\61\6B\22\20\28\66\75\6E\63\20\24\5F\5F\62\72\65\61\6B\20\28\74\79\70\65\20\24\76\6F\69\64\5F\66\6E\29\29\29\0A\0A\2C\20\20\3B\3B\20\2D\2D\2D\20\66\75\6E\63\74\69\6F\6E\20\74\61\62\6C\65\20\73\6C\69\63\65\20\28\70\61\73\73\69\76\65\29\20\2D\2D\2D\0A\00\00\00\15\20\20\28\65\6C\65\6D\20\24\66\74\61\62\20\66\75\6E\63\72\65\66\00\00\13\20\28\72\65\66\2E\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\29\03\29\0A\0A\30\20\20\3B\3B\20\73\74\61\74\69\63\20\64\61\74\61\20\E2\80\94\20\70\61\73\73\69\76\65\20\73\65\67\6D\65\6E\74\20\28\25\6E\20\77\6F\72\64\73\29\0A\00\00\00\0F\20\20\28\64\61\74\61\20\24\73\74\61\74\20\22\10\5C\25\58\32\5C\25\58\32\5C\25\58\32\5C\25\58\32\00\00\00\04\22\29\0A\0A\00\00\00\26\20\20\28\66\75\6E\63\20\24\72\65\67\69\73\74\65\72\20\28\65\78\70\6F\72\74\20\22\72\65\67\69\73\74\65\72\22\29\0A\00\17\20\20\20\20\28\6D\65\6D\6F\72\79\2E\69\6E\69\74\20\24\73\74\61\74\0A\2F\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\14\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\0A\00\00\00\16\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\16\20\20\20\20\28\64\61\74\61\2E\64\72\6F\70\20\24\73\74\61\74\29\0A\00\1E\20\20\20\20\28\74\61\62\6C\65\2E\69\6E\69\74\20\24\66\74\61\62\6C\65\20\24\66\74\61\62\0A\00\17\20\20\20\20\20\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\0A\16\20\20\20\20\28\65\6C\65\6D\2E\64\72\6F\70\20\24\66\74\61\62\29\0A\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\34\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\47\21\25\6E\0A\00\00\00\04\20\20\29\0A\00\00\00\37\20\20\28\66\75\6E\63\20\24\73\74\61\74\5F\77\6F\72\64\73\20\28\65\78\70\6F\72\74\20\22\73\74\61\74\5F\77\6F\72\64\73\22\29\20\28\72\65\73\75\6C\74\20\69\33\32\29\0A\14\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\33\20\20\28\66\75\6E\63\20\24\66\6E\5F\63\6F\75\6E\74\20\28\65\78\70\6F\72\74\20\22\66\6E\5F\63\6F\75\6E\74\22\29\20\28\72\65\73\75\6C\74\20\69\33\32\29\0A\11\29\0A\20\3B\3B\20\65\6E\64\20\6D\6F\64\75\6C\65\0A\00\00\24\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\1E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\00\03\29\29\0A\49\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\0A\00\00\3C\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\25\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\00\00\7E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\20\28\25\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\80\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\25\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\78\6F\72\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\2D\31\29\29\29\0A\14\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\0A\00\00\00\41\20\20\20\20\20\20\28\69\66\20\28\72\65\73\75\6C\74\20\69\33\32\29\20\28\69\33\32\2E\67\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\20\20\20\20\20\20\20\20\20\28\74\68\65\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\3A\20\20\20\20\20\20\20\20\28\65\6C\73\65\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\78\6F\72\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\6E\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\50\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\20\28\66\33\32\2E\63\6F\6E\76\65\72\74\5F\69\33\32\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\00\00\4E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\74\72\75\6E\63\5F\66\33\32\5F\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\54\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\25\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\00\00\13\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\26\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\4A\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\39\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\0A\00\00\1F\20\20\20\20\28\69\66\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\74\68\65\6E\0A\29\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\7A\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\6E\65\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\6C\74\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\67\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\67\74\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\6C\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\07\20\20\20\20\29\29\0A\1C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\29\20\3B\3B\20\73\61\76\65\20\50\0A\00\00\00\2B\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\72\65\74\75\72\6E\20\61\64\64\72\20\70\6C\61\63\65\68\6F\6C\64\65\72\0A\23\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\65\6E\74\72\79\20\66\6E\5F\69\64\78\0A\3D\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\50\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\00\4E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\63\61\6C\6C\5F\69\6E\64\69\72\65\63\74\20\24\66\74\61\62\6C\65\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\28\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\46\4E\41\50\20\72\65\73\75\6C\74\0A\00\00\00\44\20\20\20\20\28\64\72\6F\70\20\28\63\61\6C\6C\5F\69\6E\64\69\72\65\63\74\20\24\66\74\61\62\6C\65\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\00\00\07\69\33\32\2E\61\64\64\07\69\33\32\2E\73\75\62\07\69\33\32\2E\6D\75\6C\09\69\33\32\2E\64\69\76\5F\73\00\00\09\69\33\32\2E\72\65\6D\5F\73\00\00\07\69\33\32\2E\73\68\6C\09\69\33\32\2E\73\68\72\5F\75\00\00\07\69\33\32\2E\61\6E\64\06\69\33\32\2E\6F\72\00\07\69\33\32\2E\78\6F\72\07\66\33\32\2E\61\64\64\07\66\33\32\2E\73\75\62\07\66\33\32\2E\6D\75\6C\07\66\33\32\2E\64\69\76\29\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\0A\00\00\0F\20\20\20\20\20\20\28\66\33\32\2E\73\75\62\0A\2F\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\11\20\20\20\20\20\20\20\20\28\66\33\32\2E\6D\75\6C\0A\00\00\15\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\74\72\75\6E\63\0A\00\00\15\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\64\69\76\0A\00\00\35\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\37\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\35\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\29\0A\00\00\06\69\33\32\2E\65\71\00\06\69\33\32\2E\6E\65\00\08\69\33\32\2E\6C\74\5F\73\00\00\00\08\69\33\32\2E\67\74\5F\73\00\00\00\08\69\33\32\2E\6C\65\5F\73\00\00\00\08\69\33\32\2E\67\65\5F\73\00\00\00\06\66\33\32\2E\65\71\00\06\66\33\32\2E\6E\65\00\06\66\33\32\2E\6C\74\00\06\66\33\32\2E\67\74\00\06\66\33\32\2E\6C\65\00\06\66\33\32\2E\67\65\00\3B\0A\57\41\53\4D\20\43\47\3A\20\74\72\65\65\2D\6F\6E\6C\79\20\6F\70\20\25\6E\20\6C\65\61\6B\65\64\20\69\6E\74\6F\20\4F\43\4F\44\45\20\28\66\72\6F\6E\74\65\6E\64\20\62\75\67\29\0A\1A\0A\57\41\53\4D\20\43\47\3A\20\75\6E\68\61\6E\64\6C\65\64\20\6F\70\20\25\6E\0A\00\12\20\20\20\20\3B\3B\20\6C\69\6E\65\20\25\6E\3A\25\6E\0A\00\28\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\5F\5F\6C\69\6E\65\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\14\20\20\20\20\28\63\61\6C\6C\20\24\5F\5F\62\72\65\61\6B\29\0A\00\00\00\16\20\20\20\20\20\20\3B\3B\20\69\6D\70\6C\69\63\69\74\20\65\6E\64\0A\00\1D\20\20\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\19\20\20\20\20\29\29\20\3B\3B\20\65\6E\64\20\6C\61\73\74\20\62\6C\6F\63\6B\0A\00\00\19\20\20\20\20\29\20\3B\3B\20\65\6E\64\20\24\5F\5F\64\69\73\70\61\74\63\68\0A\00\00\12\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\0A\00\19\20\20\29\20\3B\3B\20\65\6E\64\20\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\0A\0A\00\00\07\20\20\20\20\3B\3B\20\16\20\20\3B\3B\20\42\43\50\4C\20\66\6E\20\25\73\20\28\4C\25\6E\29\0A\00\32\20\20\28\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\20\28\65\78\70\6F\72\74\20\22\66\6E\5F\4C\25\6E\22\29\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\0A\00\17\20\20\20\20\28\6C\6F\63\61\6C\20\24\5F\5F\6C\61\62\20\69\33\32\29\0A\17\20\20\20\20\28\6C\6F\63\61\6C\20\24\5F\5F\72\65\73\20\69\33\32\29\0A\15\20\20\20\20\28\6C\6F\63\61\6C\20\24\74\25\6E\20\69\33\32\29\0A\00\00\16\20\20\20\20\28\6C\6F\6F\70\20\24\5F\5F\64\69\73\70\61\74\63\68\0A\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\7A\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\6C\61\62\29\29\20\28\74\68\65\6E\20\3B\3B\20\65\6E\74\72\79\20\62\6C\6F\63\6B\0A\00\1D\20\20\20\20\20\20\3B\3B\20\65\6E\64\70\72\6F\63\20\66\61\6C\6C\74\68\72\6F\75\67\68\0A\00\00\28\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\3B\3B\20\75\6E\72\65\61\63\68\61\62\6C\65\20\72\65\74\75\72\6E\0A\00\00\00\27\20\20\20\20\29\29\20\3B\3B\20\65\6E\64\20\62\6C\6F\63\6B\20\2F\20\4C\41\42\20\4C\25\6E\20\3D\20\69\64\78\20\25\6E\0A\40\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\6C\61\62\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\74\68\65\6E\20\3B\3B\20\4C\25\6E\0A\00\00\00\49\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\46\20\4C\25\6E\0A\00\00\35\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\3B\3B\20\4C\46\20\4C\25\6E\20\28\64\69\73\70\29\0A\00\00\6C\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\20\3B\3B\20\4C\4C\20\4C\25\6E\0A\00\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\47\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\4A\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\4C\4C\20\4C\25\6E\0A\00\38\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\51\55\45\52\59\20\28\75\6E\64\65\66\69\6E\65\64\29\0A\00\00\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\0A\48\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\00\00\00\18\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\45\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\20\3B\3B\20\4A\55\4D\50\20\4C\25\6E\0A\00\00\2A\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\2A\20\20\20\20\20\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\20\3B\3B\20\47\4F\54\4F\20\28\63\6F\6D\70\75\74\65\64\29\0A\00\0C\20\20\20\20\3B\3B\20\52\54\52\4E\0A\00\00\00\47\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\50\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\0A\1B\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\0C\20\20\20\20\3B\3B\20\46\4E\52\4E\0A\00\00\00\28\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\72\65\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\20\20\20\20\20\28\72\65\74\75\72\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\72\65\73\29\29\0A\00\00\00\2C\20\20\20\20\3B\3B\20\52\45\53\20\4C\25\6E\3A\20\73\61\76\65\20\72\65\73\75\6C\74\2C\20\6A\75\6D\70\20\74\6F\20\52\53\54\41\43\4B\0A\00\00\00\11\20\20\20\20\3B\3B\20\52\53\54\41\43\4B\20\25\6E\0A\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\72\65\73\29\29\20\3B\3B\20\72\65\73\74\6F\72\65\20\52\45\53\20\72\65\73\75\6C\74\0A\00\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\74\25\6E\0A\00\00\00\2F\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\74\25\6E\20\28\70\72\65\2D\73\74\61\63\6B\2D\75\70\29\0A\24\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\53\54\4F\52\45\20\73\6C\6F\74\20\25\6E\0A\00\00\00\25\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\46\49\4E\49\53\48\0A\00\00\47\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\53\54\52\0A\67\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\38\5F\75\20\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\66\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\38\20\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\25\20\20\20\20\3B\3B\20\53\57\49\54\43\48\4F\4E\20\25\6E\20\63\61\73\65\73\20\64\65\66\61\75\6C\74\20\4C\25\6E\0A\00\00\37\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\29\29\0A\41\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\68\72\5F\75\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\00\2E\20\20\20\20\3B\3B\20\53\45\4C\53\54\3A\20\73\66\6F\70\20\25\6E\20\6E\6F\74\20\73\75\70\70\6F\72\74\65\64\2C\20\75\73\69\6E\67\20\3A\3D\0A\00\2F\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\0E\20\20\20\20\20\20\28\69\33\32\2E\6F\72\0A\00\11\20\20\20\20\20\20\20\20\28\69\33\32\2E\61\6E\64\0A\00\00\3E\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\0A\00\1A\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\11\20\20\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\0A\00\00\34\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\61\6E\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\1C\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\29\0A\00\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 7140))
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
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060)) (i32.add (global.get $TB) (i32.const 11))) ;; G!515
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2056)) (i32.add (global.get $TB) (i32.const 10))) ;; G!514
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2064)) (i32.add (global.get $TB) (i32.const 9))) ;; G!516
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1924)) (i32.add (global.get $TB) (i32.const 8))) ;; G!481
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920)) (i32.add (global.get $TB) (i32.const 7))) ;; G!480
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916)) (i32.add (global.get $TB) (i32.const 6))) ;; G!479
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852)) (i32.add (global.get $TB) (i32.const 5))) ;; G!463
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848)) (i32.add (global.get $TB) (i32.const 4))) ;; G!462
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1804)) (i32.add (global.get $TB) (i32.const 3))) ;; G!451
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2068)) (i32.add (global.get $TB) (i32.const 2))) ;; G!517
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1800)) (i32.add (global.get $TB) (i32.const 1))) ;; G!450
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 952)) (i32.add (global.get $TB) (i32.const 0))) ;; G!238
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 1785))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 40))
)
 ;; end module
