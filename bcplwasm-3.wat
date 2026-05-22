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

  ;; SECTION: BCPLCGWASM
  ;; BCPL fn codegenerate (L10)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:125
    (global.set $__line (i32.const 125))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:126
    (global.set $__line (i32.const 126))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.const 8192))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:127
    (global.set $__line (i32.const 127))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 0))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:128
    (global.set $__line (i32.const 128))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068)) (local.get $t6))
    ;; line 7:129
    (global.set $__line (i32.const 129))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 860))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 864))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 64))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L51 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L51
    ;; line 7:130
    (global.set $__line (i32.const 130))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 4))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1060))))
    (if (i32.eq  (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:137
    (global.set $__line (i32.const 137))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 8))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1060))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:138
    (global.set $__line (i32.const 138))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 21))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:139
    (global.set $__line (i32.const 139))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068)) (local.get $t6))
    ;; line 7:140
    (global.set $__line (i32.const 140))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 860))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 864))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 64))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L52 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L52
    ;; line 7:141
    (global.set $__line (i32.const 141))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960)) (local.get $t6))
    ;; line 7:144
    (global.set $__line (i32.const 144))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 16384))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 16384))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992)) (local.get $t6))
    ;; line 7:145
    (global.set $__line (i32.const 145))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000)) (local.get $t6))
    ;; line 7:146
    (global.set $__line (i32.const 146))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 16384))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t6))
    ;; line 7:147
    (global.set $__line (i32.const 147))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 512))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t6))
    ;; line 7:148
    (global.set $__line (i32.const 148))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1536))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036)) (local.get $t6))
    ;; line 7:149
    (global.set $__line (i32.const 149))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 768))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 768))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024)) (local.get $t6))
    ;; line 7:150
    (global.set $__line (i32.const 150))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 2048))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6))
    (local.set $t5 (local.get $t6))
    (local.set $t6 (i32.const 1024))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032)) (local.get $t6))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 16383))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L53 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L53
    ;; line 7:152
    (global.set $__line (i32.const 152))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
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
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L54 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L54
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 32767))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L55 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L55
    ;; line 7:153
    (global.set $__line (i32.const 153))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
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
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L56 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L56
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996)) (local.get $t6))
    ;; line 7:154
    (global.set $__line (i32.const 154))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012)) (local.get $t6))
    ;; line 7:155
    (global.set $__line (i32.const 155))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020)) (local.get $t6))
    ;; line 7:156
    (global.set $__line (i32.const 156))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040)) (local.get $t6))
    ;; line 7:157
    (global.set $__line (i32.const 157))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028)) (local.get $t6))
    ;; line 7:158
    (global.set $__line (i32.const 158))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048)) (local.get $t6))
    ;; line 7:159
    (global.set $__line (i32.const 159))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t6))
    ;; line 7:161
    (global.set $__line (i32.const 161))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 4096))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.const 4096))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1800))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:170
    (global.set $__line (i32.const 170))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L57 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L57
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048))))
    (if (local.get $t5) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:171
    (global.set $__line (i32.const 171))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048)) (local.get $t5))
    ;; line 7:172
    (global.set $__line (i32.const 172))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1820))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L59 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L59
    ;; line 7:173
    (global.set $__line (i32.const 173))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 40))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:176
    (global.set $__line (i32.const 176))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:177
    (global.set $__line (i32.const 177))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:178
    (global.set $__line (i32.const 178))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 34))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:179
    (global.set $__line (i32.const 179))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L61 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L61
    ;; line 7:180
    (global.set $__line (i32.const 180))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (local.set $t11 (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; flush FNAP result
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L62 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L62
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:181
    (global.set $__line (i32.const 181))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:182
    (global.set $__line (i32.const 182))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t6))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L60 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L60
    ;; line 7:183
    (global.set $__line (i32.const 183))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2072))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:186
    (global.set $__line (i32.const 186))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 39))) ;; LF L49
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:187
    (global.set $__line (i32.const 187))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t5))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L58 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L58
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
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:194
    (global.set $__line (i32.const 194))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:195
    (global.set $__line (i32.const 195))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:196
    (global.set $__line (i32.const 196))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:197
    (global.set $__line (i32.const 197))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:243
    (global.set $__line (i32.const 243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L64 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L64
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; RES L65: save result, jump to RSTACK
    (local.set $__res (local.get $t7))
      (local.set $__lab (i32.const 55)) (br $__dispatch)
    ;; line 7:199
    (global.set $__line (i32.const 199))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L67 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L67
    ;; line 7:200
    (global.set $__line (i32.const 200))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
    )) ;; end block / LAB L68 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L68
    ;; line 7:201
    (global.set $__line (i32.const 201))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 57)) ;; LF L63 (disp)
      (local.set $__lab (local.get $t7))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L69 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L69
    ;; line 7:202
    (global.set $__line (i32.const 202))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 57)) ;; LF L63 (disp)
      (local.set $__lab (local.get $t7))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L70 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L70
    ;; line 7:203
    (global.set $__line (i32.const 203))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:204
    (global.set $__line (i32.const 204))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 7:205
    (global.set $__line (i32.const 205))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L71 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L71
    ;; line 7:206
    (global.set $__line (i32.const 206))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L72 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L72
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t10 (i32.const 512))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 7:207
    (global.set $__line (i32.const 207))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 7:208
    (global.set $__line (i32.const 208))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L75
    )) ;; end block / LAB L74 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L74
    ;; line 7:209
    (global.set $__line (i32.const 209))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ne  (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 7:210
    (global.set $__line (i32.const 210))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12))
    (local.set $t9 (local.get $t12))
      (local.set $__lab (i32.const 11)) (br $__dispatch) ;; JUMP L77
    )) ;; end block / LAB L76 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L76
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12))
    (local.set $t10 (local.get $t12))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L75 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L75
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 44))))
    (if (i32.le_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L77 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L77
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (local.get $t10) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 7:211
    (global.set $__line (i32.const 211))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 7:212
    (global.set $__line (i32.const 212))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 1))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020)) (local.get $t10))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L78 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L78
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L73 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L73
    ;; line 7:213
    (global.set $__line (i32.const 213))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    ;; line 7:216
    (global.set $__line (i32.const 216))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
    ;; line 7:217
    (global.set $__line (i32.const 217))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L79 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L79
    ;; line 7:219
    (global.set $__line (i32.const 219))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
    ;; line 7:220
    (global.set $__line (i32.const 220))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
    ;; line 7:221
    (global.set $__line (i32.const 221))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L80 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L80
    ;; line 7:222
    (global.set $__line (i32.const 222))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L81 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L81
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L82 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L82
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L83 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L83
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L84 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L84
    ;; line 7:223
    (global.set $__line (i32.const 223))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L85 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L85
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L86 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L86
    ;; line 7:224
    (global.set $__line (i32.const 224))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L87 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L87
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L88 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L88
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L89 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L89
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L90 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L90
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:225
    (global.set $__line (i32.const 225))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
    )) ;; end block / LAB L91 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L91
    ;; line 7:226
    (global.set $__line (i32.const 226))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L92 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L92
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L93 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L93
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L94 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L94
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L95 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L95
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    )) ;; end block / LAB L96 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L96
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    )) ;; end block / LAB L97 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L97
    ;; line 7:227
    (global.set $__line (i32.const 227))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L98 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L98
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    )) ;; end block / LAB L99 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L99
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    )) ;; end block / LAB L100 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L100
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    )) ;; end block / LAB L101 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L101
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    )) ;; end block / LAB L102 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L102
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:228
    (global.set $__line (i32.const 228))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
    )) ;; end block / LAB L103 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L103
    ;; line 7:229
    (global.set $__line (i32.const 229))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:230
    (global.set $__line (i32.const 230))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.gt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    )) ;; end block / LAB L104 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L104
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    )) ;; end block / LAB L105 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L105
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    )) ;; end block / LAB L106 = idx 41
    (if (i32.eq (local.get $__lab) (i32.const 41)) (then ;; L106
    ;; line 7:231
    (global.set $__line (i32.const 231))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:232
    (global.set $__line (i32.const 232))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.gt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    )) ;; end block / LAB L107 = idx 42
    (if (i32.eq (local.get $__lab) (i32.const 42)) (then ;; L107
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    )) ;; end block / LAB L108 = idx 43
    (if (i32.eq (local.get $__lab) (i32.const 43)) (then ;; L108
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
      (local.set $__lab (i32.const 44)) (br $__dispatch)
    )) ;; end block / LAB L109 = idx 44
    (if (i32.eq (local.get $__lab) (i32.const 44)) (then ;; L109
    ;; line 7:233
    (global.set $__line (i32.const 233))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
    )) ;; end block / LAB L110 = idx 45
    (if (i32.eq (local.get $__lab) (i32.const 45)) (then ;; L110
    ;; line 7:234
    (global.set $__line (i32.const 234))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
    )) ;; end block / LAB L111 = idx 46
    (if (i32.eq (local.get $__lab) (i32.const 46)) (then ;; L111
    ;; line 7:235
    (global.set $__line (i32.const 235))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 47)) (br $__dispatch)
    )) ;; end block / LAB L112 = idx 47
    (if (i32.eq (local.get $__lab) (i32.const 47)) (then ;; L112
      (local.set $__lab (i32.const 48)) (br $__dispatch)
    )) ;; end block / LAB L113 = idx 48
    (if (i32.eq (local.get $__lab) (i32.const 48)) (then ;; L113
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:236
    (global.set $__line (i32.const 236))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.gt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    )) ;; end block / LAB L114 = idx 49
    (if (i32.eq (local.get $__lab) (i32.const 49)) (then ;; L114
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10))
    (local.set $t8 (local.get $t10))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    )) ;; end block / LAB L115 = idx 50
    (if (i32.eq (local.get $__lab) (i32.const 50)) (then ;; L115
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
      (local.set $__lab (i32.const 51)) (br $__dispatch)
    )) ;; end block / LAB L116 = idx 51
    (if (i32.eq (local.get $__lab) (i32.const 51)) (then ;; L116
    ;; line 7:237
    (global.set $__line (i32.const 237))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 52)) (br $__dispatch)
    )) ;; end block / LAB L117 = idx 52
    (if (i32.eq (local.get $__lab) (i32.const 52)) (then ;; L117
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
    )) ;; end block / LAB L118 = idx 53
    (if (i32.eq (local.get $__lab) (i32.const 53)) (then ;; L118
    ;; line 7:238
    (global.set $__line (i32.const 238))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
    )) ;; end block / LAB L119 = idx 54
    (if (i32.eq (local.get $__lab) (i32.const 54)) (then ;; L119
    ;; line 7:239
    (global.set $__line (i32.const 239))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L66
    )) ;; end block / LAB L65 = idx 55
    (if (i32.eq (local.get $__lab) (i32.const 55)) (then ;; L65
    ;; RSTACK 7
    (local.set $t7 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 38 cases default L67
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
    )) ;; end block / LAB L66 = idx 56
    (if (i32.eq (local.get $__lab) (i32.const 56)) (then ;; L66
    ;; line 7:199
    (global.set $__line (i32.const 199))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7))
    (local.set $t5 (local.get $t7))
      (local.set $__lab (i32.const 1)) (br $__dispatch) ;; JUMP L64
    ;; line 7:241
    (global.set $__line (i32.const 241))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L63 = idx 57
    (if (i32.eq (local.get $__lab) (i32.const 57)) (then ;; L63
    ;; line 7:243
    (global.set $__line (i32.const 243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t7))
    ;; line 7:244
    (global.set $__line (i32.const 244))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t7))
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
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:252
    (global.set $__line (i32.const 252))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 236))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 7:253
    (global.set $__line (i32.const 253))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:254
    (global.set $__line (i32.const 254))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t16 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:255
    (global.set $__line (i32.const 255))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:264
    (global.set $__line (i32.const 264))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 38))) ;; LSTR
    (local.set $t8 (i32.const 4))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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

  ;; BCPL fn emit_pb_refresh (L15)
  (func $fn_L15 (export "fn_L15") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:269
    (global.set $__line (i32.const 269))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 49))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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

  ;; BCPL fn emit_g_addr (L16)
  (func $fn_L16 (export "fn_L16") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:273
    (global.set $__line (i32.const 273))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 65))) ;; LSTR
    (local.set $t8 (i32.const 4))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.mul (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L16

  ;; BCPL fn rdl (L17)
  (func $fn_L17 (export "fn_L17") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
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

  ;; BCPL fn rdgn (L18)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
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
  ) ;; end func $fn_L18

  ;; BCPL fn rdname (L19)
  (func $fn_L19 (export "fn_L19") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:280
    (global.set $__line (i32.const 280))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 63))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:285
    (global.set $__line (i32.const 285))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    ;; RES L120: save result, jump to RSTACK
    (local.set $__res (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L121 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L121
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    ;; RES L120: save result, jump to RSTACK
    (local.set $__res (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L120 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L120
    ;; RSTACK 6
    (local.set $t6 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:286
    (global.set $__line (i32.const 286))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L122 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L122
    ;; line 7:287
    (global.set $__line (i32.const 287))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (i32.store8 (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11)) (local.get $t9))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L123 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L123
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L124 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L124
    ;; line 7:288
    (global.set $__line (i32.const 288))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L125 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L125
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
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
  ) ;; end func $fn_L19

  ;; BCPL fn skip_inner_body (L20)
  (func $fn_L20 (export "fn_L20") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:295
    (global.set $__line (i32.const 295))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:296
    (global.set $__line (i32.const 296))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:297
    (global.set $__line (i32.const 297))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L126 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L126
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    ;; RES L127: save result, jump to RSTACK
    (local.set $__res (local.get $t5))
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    ;; line 7:298
    (global.set $__line (i32.const 298))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L129 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L129
    ;; line 7:299
    (global.set $__line (i32.const 299))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
    )) ;; end block / LAB L130 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L130
    ;; line 7:300
    (global.set $__line (i32.const 300))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:301
    (global.set $__line (i32.const 301))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 7:302
    (global.set $__line (i32.const 302))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L131 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L131
    ;; line 7:303
    (global.set $__line (i32.const 303))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L132 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L132
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t7))
    (local.set $t3 (local.get $t7))
    ;; line 7:304
    (global.set $__line (i32.const 304))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
    ;; line 7:305
    (global.set $__line (i32.const 305))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L133 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L133
    ;; line 7:307
    (global.set $__line (i32.const 307))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
    ;; line 7:308
    (global.set $__line (i32.const 308))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L134 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L134
    ;; line 7:309
    (global.set $__line (i32.const 309))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
    ;; line 7:310
    (global.set $__line (i32.const 310))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L135 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L135
    ;; line 7:311
    (global.set $__line (i32.const 311))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L136 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L136
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L137 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L137
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L138 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L138
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L139 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L139
    ;; line 7:312
    (global.set $__line (i32.const 312))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L140 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L140
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L141 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L141
    ;; line 7:313
    (global.set $__line (i32.const 313))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L142 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L142
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    )) ;; end block / LAB L143 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L143
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    )) ;; end block / LAB L144 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L144
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L145 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L145
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:314
    (global.set $__line (i32.const 314))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
    )) ;; end block / LAB L146 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L146
    ;; line 7:315
    (global.set $__line (i32.const 315))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L147 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L147
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L148 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L148
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L149 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L149
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L150 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L150
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L151 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L151
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L152 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L152
    ;; line 7:316
    (global.set $__line (i32.const 316))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    )) ;; end block / LAB L153 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L153
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L154 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L154
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L155 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L155
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L156 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L156
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L157 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L157
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:317
    (global.set $__line (i32.const 317))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
    )) ;; end block / LAB L158 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L158
    ;; line 7:318
    (global.set $__line (i32.const 318))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:319
    (global.set $__line (i32.const 319))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    )) ;; end block / LAB L159 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L159
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L160 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L160
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
      (local.set $__lab (i32.const 34)) (br $__dispatch)
    )) ;; end block / LAB L161 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L161
    ;; line 7:320
    (global.set $__line (i32.const 320))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:321
    (global.set $__line (i32.const 321))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    )) ;; end block / LAB L162 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L162
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    )) ;; end block / LAB L163 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L163
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    )) ;; end block / LAB L164 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L164
    ;; line 7:322
    (global.set $__line (i32.const 322))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
    )) ;; end block / LAB L165 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L165
    ;; line 7:323
    (global.set $__line (i32.const 323))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
    )) ;; end block / LAB L166 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L166
    ;; line 7:324
    (global.set $__line (i32.const 324))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    )) ;; end block / LAB L167 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L167
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    )) ;; end block / LAB L168 = idx 41
    (if (i32.eq (local.get $__lab) (i32.const 41)) (then ;; L168
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:325
    (global.set $__line (i32.const 325))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    )) ;; end block / LAB L169 = idx 42
    (if (i32.eq (local.get $__lab) (i32.const 42)) (then ;; L169
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    )) ;; end block / LAB L170 = idx 43
    (if (i32.eq (local.get $__lab) (i32.const 43)) (then ;; L170
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
      (local.set $__lab (i32.const 44)) (br $__dispatch)
    )) ;; end block / LAB L171 = idx 44
    (if (i32.eq (local.get $__lab) (i32.const 44)) (then ;; L171
    ;; line 7:326
    (global.set $__line (i32.const 326))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 45)) (br $__dispatch)
    )) ;; end block / LAB L172 = idx 45
    (if (i32.eq (local.get $__lab) (i32.const 45)) (then ;; L172
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
    )) ;; end block / LAB L173 = idx 46
    (if (i32.eq (local.get $__lab) (i32.const 46)) (then ;; L173
    ;; line 7:327
    (global.set $__line (i32.const 327))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
    )) ;; end block / LAB L174 = idx 47
    (if (i32.eq (local.get $__lab) (i32.const 47)) (then ;; L174
    ;; line 7:328
    (global.set $__line (i32.const 328))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L128
    )) ;; end block / LAB L175 = idx 48
    (if (i32.eq (local.get $__lab) (i32.const 48)) (then ;; L175
    ;; line 7:329
    (global.set $__line (i32.const 329))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L127 = idx 49
    (if (i32.eq (local.get $__lab) (i32.const 49)) (then ;; L127
    ;; RSTACK 5
    (local.set $t5 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 37 cases default L129
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
    )) ;; end block / LAB L128 = idx 50
    (if (i32.eq (local.get $__lab) (i32.const 50)) (then ;; L128
    ;; line 7:298
    (global.set $__line (i32.const 298))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t5))
    (local.set $t4 (local.get $t5))
      (local.set $__lab (i32.const 1)) (br $__dispatch) ;; JUMP L126
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

  ;; BCPL fn queue_inner (L21)
  (func $fn_L21 (export "fn_L21") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:338
    (global.set $__line (i32.const 338))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:339
    (global.set $__line (i32.const 339))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 82))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:340
    (global.set $__line (i32.const 340))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L176 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L176
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:342
    (global.set $__line (i32.const 342))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:343
    (global.set $__line (i32.const 343))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:344
    (global.set $__line (i32.const 344))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t7 (i32.const 512))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:345
    (global.set $__line (i32.const 345))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:346
    (global.set $__line (i32.const 346))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020)) (local.get $t6))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L177 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L177
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

  ;; BCPL fn drain_pending (L22)
  (func $fn_L22 (export "fn_L22") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:353
    (global.set $__line (i32.const 353))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:354
    (global.set $__line (i32.const 354))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:355
    (global.set $__line (i32.const 355))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:356
    (global.set $__line (i32.const 356))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:357
    (global.set $__line (i32.const 357))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L178 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L178
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 7:359
    (global.set $__line (i32.const 359))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 7:360
    (global.set $__line (i32.const 360))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t9))
    ;; line 7:361
    (global.set $__line (i32.const 361))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924)) (local.get $t9))
    ;; line 7:362
    (global.set $__line (i32.const 362))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t9))
    ;; line 7:363
    (global.set $__line (i32.const 363))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 39))) ;; LF L49
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:364
    (global.set $__line (i32.const 364))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 3))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9))
    (local.set $t6 (local.get $t9))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (if (i32.lt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L179 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L179
    ;; line 7:358
    (global.set $__line (i32.const 358))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040)) (local.get $t7))
    ;; line 7:369
    (global.set $__line (i32.const 369))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924)) (local.get $t7))
    ;; line 7:370
    (global.set $__line (i32.const 370))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t7))
    ;; line 7:371
    (global.set $__line (i32.const 371))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t7))
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

  ;; BCPL fn emit_mod_header (L23)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:385
    (global.set $__line (i32.const 385))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:386
    (global.set $__line (i32.const 386))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 88))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:387
    (global.set $__line (i32.const 387))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 91))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:388
    (global.set $__line (i32.const 388))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 101))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:389
    (global.set $__line (i32.const 389))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 108))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:390
    (global.set $__line (i32.const 390))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 118))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:391
    (global.set $__line (i32.const 391))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 132))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:392
    (global.set $__line (i32.const 392))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 143))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:393
    (global.set $__line (i32.const 393))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 153))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:394
    (global.set $__line (i32.const 394))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 166))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:395
    (global.set $__line (i32.const 395))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 179))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:396
    (global.set $__line (i32.const 396))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 193))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:401
    (global.set $__line (i32.const 401))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 209))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:402
    (global.set $__line (i32.const 402))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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

  ;; BCPL fn emit_mod_footer (L24)
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
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:414
    (global.set $__line (i32.const 414))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:415
    (global.set $__line (i32.const 415))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 225))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:419
    (global.set $__line (i32.const 419))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 237))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:420
    (global.set $__line (i32.const 420))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L181
    )) ;; end block / LAB L180 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L180
    ;; line 7:421
    (global.set $__line (i32.const 421))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 243))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.load (i32.shl (local.get $t9) (i32.const 2))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L181 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L181
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 248))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:422
    (global.set $__line (i32.const 422))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:424
    (global.set $__line (i32.const 424))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 249))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:425
    (global.set $__line (i32.const 425))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 262))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:426
    (global.set $__line (i32.const 426))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L184
    )) ;; end block / LAB L183 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L183
    ;; line 7:427
    (global.set $__line (i32.const 427))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:428
    (global.set $__line (i32.const 428))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 266))) ;; LSTR
    (local.set $t10 (i32.const 255))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t10 (i32.and (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.const 8))
    (local.set $t11 (i32.shr_u (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 255))
    (local.set $t11 (i32.and (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.const 16))
    (local.set $t12 (i32.shr_u (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 255))
    (local.set $t12 (i32.and (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t14 (i32.const 24))
    (local.set $t13 (i32.shr_u (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.const 255))
    (local.set $t13 (i32.and (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L184 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L184
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 7:429
    (global.set $__line (i32.const 429))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 271))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    )) ;; end block / LAB L182 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L182
    ;; line 7:432
    (global.set $__line (i32.const 432))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 273))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:437
    (global.set $__line (i32.const 437))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 7:438
    (global.set $__line (i32.const 438))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 283))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:439
    (global.set $__line (i32.const 439))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 289))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:440
    (global.set $__line (i32.const 440))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 301))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:441
    (global.set $__line (i32.const 441))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 307))) ;; LSTR
    (local.set $t7 (i32.const 4))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t7 (i32.mul (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:442
    (global.set $__line (i32.const 442))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 313))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L185 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L185
    ;; line 7:443
    (global.set $__line (i32.const 443))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 7:445
    (global.set $__line (i32.const 445))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 319))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:446
    (global.set $__line (i32.const 446))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 327))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:447
    (global.set $__line (i32.const 447))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 301))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:448
    (global.set $__line (i32.const 448))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 307))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:449
    (global.set $__line (i32.const 449))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 333))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L186 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L186
    ;; line 7:450
    (global.set $__line (i32.const 450))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L188
    )) ;; end block / LAB L187 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L187
    ;; line 7:452
    (global.set $__line (i32.const 452))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:453
    (global.set $__line (i32.const 453))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:454
    (global.set $__line (i32.const 454))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:455
    (global.set $__line (i32.const 455))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:456
    (global.set $__line (i32.const 456))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 343))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L188 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L188
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 7:457
    (global.set $__line (i32.const 457))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 357))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:460
    (global.set $__line (i32.const 460))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 359))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:462
    (global.set $__line (i32.const 462))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 373))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:463
    (global.set $__line (i32.const 463))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 379))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:464
    (global.set $__line (i32.const 464))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 373))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:465
    (global.set $__line (i32.const 465))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 392))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:467
    (global.set $__line (i32.const 467))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L24

  ;; BCPL fn lab_idx (L25)
  (func $fn_L25 (export "fn_L25") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:475
    (global.set $__line (i32.const 475))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:476
    (global.set $__line (i32.const 476))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:477
    (global.set $__line (i32.const 477))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L190 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L190
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t4))
    ;; line 7:478
    (global.set $__line (i32.const 478))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    ;; line 7:479
    (global.set $__line (i32.const 479))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    )) ;; end block / LAB L189 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L189
    ;; line 7:480
    (global.set $__line (i32.const 480))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
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
  ) ;; end func $fn_L25

  ;; BCPL fn push_const (L26)
  (func $fn_L26 (export "fn_L26") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:489
    (global.set $__line (i32.const 489))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 397))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:490
    (global.set $__line (i32.const 490))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
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

  ;; BCPL fn push_load_p (L27)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:494
    (global.set $__line (i32.const 494))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 407))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:495
    (global.set $__line (i32.const 495))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:496
    (global.set $__line (i32.const 496))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 415))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:497
    (global.set $__line (i32.const 497))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
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

  ;; BCPL fn push_load_g (L28)
  (func $fn_L28 (export "fn_L28") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:501
    (global.set $__line (i32.const 501))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 407))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:502
    (global.set $__line (i32.const 502))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:503
    (global.set $__line (i32.const 503))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 415))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:504
    (global.set $__line (i32.const 504))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
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

  ;; BCPL fn push_rv (L29)
  (func $fn_L29 (export "fn_L29") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:508
    (global.set $__line (i32.const 508))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:510
    (global.set $__line (i32.const 510))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 416))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:511
    (global.set $__line (i32.const 511))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
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

  ;; BCPL fn binop (L30)
  (func $fn_L30 (export "fn_L30") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:516
    (global.set $__line (i32.const 516))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:517
    (global.set $__line (i32.const 517))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 435))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:518
    (global.set $__line (i32.const 518))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:520
    (global.set $__line (i32.const 520))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:521
    (global.set $__line (i32.const 521))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t4))
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

  ;; BCPL fn fbinop (L31)
  (func $fn_L31 (export "fn_L31") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:526
    (global.set $__line (i32.const 526))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:527
    (global.set $__line (i32.const 527))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 451))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:528
    (global.set $__line (i32.const 528))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:530
    (global.set $__line (i32.const 530))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:531
    (global.set $__line (i32.const 531))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t4))
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

  ;; BCPL fn fcmp_op (L32)
  (func $fn_L32 (export "fn_L32") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:535
    (global.set $__line (i32.const 535))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:536
    (global.set $__line (i32.const 536))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 483))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:537
    (global.set $__line (i32.const 537))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:539
    (global.set $__line (i32.const 539))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:540
    (global.set $__line (i32.const 540))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t4))
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
  ) ;; end func $fn_L32

  ;; BCPL fn unop_neg (L33)
  (func $fn_L33 (export "fn_L33") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:543
    (global.set $__line (i32.const 543))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:544
    (global.set $__line (i32.const 544))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 516))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:545
    (global.set $__line (i32.const 545))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
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

  ;; BCPL fn unop_not (L34)
  (func $fn_L34 (export "fn_L34") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:550
    (global.set $__line (i32.const 550))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:551
    (global.set $__line (i32.const 551))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 532))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:552
    (global.set $__line (i32.const 552))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
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

  ;; BCPL fn unop_abs (L35)
  (func $fn_L35 (export "fn_L35") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:557
    (global.set $__line (i32.const 557))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:558
    (global.set $__line (i32.const 558))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 548))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:559
    (global.set $__line (i32.const 559))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 554))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:560
    (global.set $__line (i32.const 560))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 571))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:561
    (global.set $__line (i32.const 561))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 580))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:562
    (global.set $__line (i32.const 562))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
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

  ;; BCPL fn unop_fneg (L36)
  (func $fn_L36 (export "fn_L36") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:567
    (global.set $__line (i32.const 567))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:568
    (global.set $__line (i32.const 568))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 595))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.const -2147483648))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:569
    (global.set $__line (i32.const 569))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
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

  ;; BCPL fn unop_fabs (L37)
  (func $fn_L37 (export "fn_L37") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:575
    (global.set $__line (i32.const 575))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:576
    (global.set $__line (i32.const 576))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 611))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.const 2147483647))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:577
    (global.set $__line (i32.const 577))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
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

  ;; BCPL fn unop_float (L38)
  (func $fn_L38 (export "fn_L38") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:583
    (global.set $__line (i32.const 583))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:584
    (global.set $__line (i32.const 584))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 627))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:585
    (global.set $__line (i32.const 585))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
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

  ;; BCPL fn unop_fix (L39)
  (func $fn_L39 (export "fn_L39") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:591
    (global.set $__line (i32.const 591))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:592
    (global.set $__line (i32.const 592))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 648))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:593
    (global.set $__line (i32.const 593))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
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

  ;; BCPL fn cmp_op (L40)
  (func $fn_L40 (export "fn_L40") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:598
    (global.set $__line (i32.const 598))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:601
    (global.set $__line (i32.const 601))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 668))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:602
    (global.set $__line (i32.const 602))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:604
    (global.set $__line (i32.const 604))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:605
    (global.set $__line (i32.const 605))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L194 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L194
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

  ;; BCPL fn store_p (L41)
  (func $fn_L41 (export "fn_L41") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:608
    (global.set $__line (i32.const 608))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:609
    (global.set $__line (i32.const 609))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:610
    (global.set $__line (i32.const 610))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:611
    (global.set $__line (i32.const 611))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 690))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:612
    (global.set $__line (i32.const 612))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 3))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.eq  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:616
    (global.set $__line (i32.const 616))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 695))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L195 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L195
    ;; line 7:617
    (global.set $__line (i32.const 617))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:618
    (global.set $__line (i32.const 618))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L196 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L196
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

  ;; BCPL fn store_g (L42)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:621
    (global.set $__line (i32.const 621))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:622
    (global.set $__line (i32.const 622))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:623
    (global.set $__line (i32.const 623))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:624
    (global.set $__line (i32.const 624))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 690))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:625
    (global.set $__line (i32.const 625))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:626
    (global.set $__line (i32.const 626))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t4))
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

  ;; BCPL fn store_ind (L43)
  (func $fn_L43 (export "fn_L43") (type $bcpl_fn)
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
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:629
    (global.set $__line (i32.const 629))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 2))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:632
    (global.set $__line (i32.const 632))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 705))) ;; LSTR
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:633
    (global.set $__line (i32.const 633))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:635
    (global.set $__line (i32.const 635))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L198 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L198
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

  ;; BCPL fn emit_goto_lab (L44)
  (func $fn_L44 (export "fn_L44") (type $bcpl_fn)
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
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:642
    (global.set $__line (i32.const 642))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1836))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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

  ;; BCPL fn emit_goto_idx (L45)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:646
    (global.set $__line (i32.const 646))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 724))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:647
    (global.set $__line (i32.const 647))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
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

  ;; BCPL fn emit_condjump (L46)
  (func $fn_L46 (export "fn_L46") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:651
    (global.set $__line (i32.const 651))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:652
    (global.set $__line (i32.const 652))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    ;; RES L199: save result, jump to RSTACK
    (local.set $__res (local.get $t6))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ;; line 7:655
    (global.set $__line (i32.const 655))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L201 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L201
    ;; line 7:656
    (global.set $__line (i32.const 656))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:657
    (global.set $__line (i32.const 657))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:658
    (global.set $__line (i32.const 658))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:659
    (global.set $__line (i32.const 659))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 739))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L204
    )) ;; end block / LAB L202 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L202
    ;; line 7:660
    (global.set $__line (i32.const 660))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 747))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L204 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L204
    ;; line 7:661
    (global.set $__line (i32.const 661))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L200
    ;; line 7:662
    (global.set $__line (i32.const 662))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L205 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L205
    ;; line 7:664
    (global.set $__line (i32.const 664))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:665
    (global.set $__line (i32.const 665))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:666
    (global.set $__line (i32.const 666))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 739))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L208
    )) ;; end block / LAB L206 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L206
    ;; line 7:667
    (global.set $__line (i32.const 667))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 747))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    )) ;; end block / LAB L208 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L208
    ;; line 7:668
    (global.set $__line (i32.const 668))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L200
    ;; line 7:669
    (global.set $__line (i32.const 669))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L209 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L209
    ;; line 7:671
    (global.set $__line (i32.const 671))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:672
    (global.set $__line (i32.const 672))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 7:673
    (global.set $__line (i32.const 673))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 758))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L212
    )) ;; end block / LAB L210 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L210
    ;; line 7:674
    (global.set $__line (i32.const 674))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 773))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    )) ;; end block / LAB L212 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L212
    ;; line 7:675
    (global.set $__line (i32.const 675))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L200
    ;; line 7:676
    (global.set $__line (i32.const 676))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L213 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L213
    ;; line 7:677
    (global.set $__line (i32.const 677))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:678
    (global.set $__line (i32.const 678))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 7:679
    (global.set $__line (i32.const 679))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 773))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 12)) (br $__dispatch) ;; JUMP L216
    )) ;; end block / LAB L214 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L214
    ;; line 7:680
    (global.set $__line (i32.const 680))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 758))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    )) ;; end block / LAB L216 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L216
    ;; line 7:681
    (global.set $__line (i32.const 681))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L200
    ;; line 7:682
    (global.set $__line (i32.const 682))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L217 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L217
    ;; line 7:683
    (global.set $__line (i32.const 683))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:684
    (global.set $__line (i32.const 684))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; line 7:685
    (global.set $__line (i32.const 685))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 788))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 15)) (br $__dispatch) ;; JUMP L220
    )) ;; end block / LAB L218 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L218
    ;; line 7:686
    (global.set $__line (i32.const 686))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 803))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L220 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L220
    ;; line 7:687
    (global.set $__line (i32.const 687))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L200
    ;; line 7:688
    (global.set $__line (i32.const 688))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L221 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L221
    ;; line 7:689
    (global.set $__line (i32.const 689))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:690
    (global.set $__line (i32.const 690))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; line 7:691
    (global.set $__line (i32.const 691))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 818))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 18)) (br $__dispatch) ;; JUMP L224
    )) ;; end block / LAB L222 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L222
    ;; line 7:692
    (global.set $__line (i32.const 692))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 833))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L224 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L224
    ;; line 7:693
    (global.set $__line (i32.const 693))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L200
    ;; line 7:694
    (global.set $__line (i32.const 694))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L225 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L225
    ;; line 7:695
    (global.set $__line (i32.const 695))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:696
    (global.set $__line (i32.const 696))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 7:697
    (global.set $__line (i32.const 697))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 833))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 21)) (br $__dispatch) ;; JUMP L228
    )) ;; end block / LAB L226 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L226
    ;; line 7:698
    (global.set $__line (i32.const 698))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 818))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L228 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L228
    ;; line 7:699
    (global.set $__line (i32.const 699))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L200
    ;; line 7:700
    (global.set $__line (i32.const 700))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L229 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L229
    ;; line 7:701
    (global.set $__line (i32.const 701))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:702
    (global.set $__line (i32.const 702))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
    ;; line 7:703
    (global.set $__line (i32.const 703))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 803))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 24)) (br $__dispatch) ;; JUMP L232
    )) ;; end block / LAB L230 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L230
    ;; line 7:704
    (global.set $__line (i32.const 704))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 788))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
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
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L232 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L232
    ;; line 7:705
    (global.set $__line (i32.const 705))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L200
    )) ;; end block / LAB L199 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L199
    ;; RSTACK 6
    (local.set $t6 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 7 cases default L201
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
    )) ;; end block / LAB L200 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L200
    ;; line 7:655
    (global.set $__line (i32.const 655))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    ;; line 7:708
    (global.set $__line (i32.const 708))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
    ;; line 7:710
    (global.set $__line (i32.const 710))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t6))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L233 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L233
    (local.set $t9 (i32.add (global.get $SB) (i32.const 724))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:712
    (global.set $__line (i32.const 712))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 848))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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

  ;; BCPL fn emit_apply (L47)
  (func $fn_L47 (export "fn_L47") (type $bcpl_fn)
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
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:720
    (global.set $__line (i32.const 720))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:727
    (global.set $__line (i32.const 727))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 4))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:728
    (global.set $__line (i32.const 728))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t8 (i32.const 0))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:729
    (global.set $__line (i32.const 729))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7))
    (local.set $t6 (local.get $t7))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L234 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L234
    (local.set $t7 (i32.const 0))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L236
    )) ;; end block / LAB L235 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L235
    ;; line 7:732
    (global.set $__line (i32.const 732))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:733
    (global.set $__line (i32.const 733))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 3))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:734
    (global.set $__line (i32.const 734))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.add (global.get $SB) (i32.const 690))) ;; LSTR
    (local.set $t13 (i32.const 3))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9))
    (local.set $t7 (local.get $t9))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L236 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L236
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:735
    (global.set $__line (i32.const 735))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:739
    (global.set $__line (i32.const 739))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:740
    (global.set $__line (i32.const 740))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 850))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:741
    (global.set $__line (i32.const 741))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:743
    (global.set $__line (i32.const 743))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 1))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:744
    (global.set $__line (i32.const 744))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 858))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:745
    (global.set $__line (i32.const 745))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:747
    (global.set $__line (i32.const 747))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 2))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:748
    (global.set $__line (i32.const 748))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 869))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:749
    (global.set $__line (i32.const 749))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 878))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:752
    (global.set $__line (i32.const 752))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 10))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:754
    (global.set $__line (i32.const 754))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 894))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:756
    (global.set $__line (i32.const 756))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:759
    (global.set $__line (i32.const 759))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:762
    (global.set $__line (i32.const 762))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:763
    (global.set $__line (i32.const 763))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 914))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:764
    (global.set $__line (i32.const 764))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t7))
    ;; line 7:765
    (global.set $__line (i32.const 765))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 7:768
    (global.set $__line (i32.const 768))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t7))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L238 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L238
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L237 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L237
    ;; line 7:769
    (global.set $__line (i32.const 769))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 925))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:772
    (global.set $__line (i32.const 772))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:774
    (global.set $__line (i32.const 774))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t7))
    ;; line 7:775
    (global.set $__line (i32.const 775))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 7:777
    (global.set $__line (i32.const 777))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L239 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L239
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

  ;; BCPL fn cgpendingop_wasm (L48)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:784
    (global.set $__line (i32.const 784))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:785
    (global.set $__line (i32.const 785))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 236))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:786
    (global.set $__line (i32.const 786))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t5))
    ;; line 7:787
    (global.set $__line (i32.const 787))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 132))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L240 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L240
    ;; line 7:788
    (global.set $__line (i32.const 788))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:794
    (global.set $__line (i32.const 794))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    ;; RES L241: save result, jump to RSTACK
    (local.set $__res (local.get $t5))
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ;; line 7:795
    (global.set $__line (i32.const 795))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L243 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L243
    ;; line 7:796
    (global.set $__line (i32.const 796))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L244 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L244
    ;; line 7:797
    (global.set $__line (i32.const 797))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1892))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L245 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L245
    ;; line 7:798
    (global.set $__line (i32.const 798))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1896))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L246 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L246
    ;; line 7:799
    (global.set $__line (i32.const 799))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1900))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L247 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L247
    ;; line 7:800
    (global.set $__line (i32.const 800))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1912))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L248 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L248
    ;; line 7:801
    (global.set $__line (i32.const 801))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L249 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L249
    ;; line 7:802
    (global.set $__line (i32.const 802))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1904))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L250 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L250
    ;; line 7:803
    (global.set $__line (i32.const 803))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1908))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L251 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L251
    ;; line 7:804
    (global.set $__line (i32.const 804))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 943))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L252 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L252
    ;; line 7:805
    (global.set $__line (i32.const 805))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 945))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L253 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L253
    ;; line 7:806
    (global.set $__line (i32.const 806))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 947))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L254 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L254
    ;; line 7:807
    (global.set $__line (i32.const 807))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 949))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L255 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L255
    ;; line 7:808
    (global.set $__line (i32.const 808))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 952))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L256 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L256
    ;; line 7:809
    (global.set $__line (i32.const 809))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 955))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L257 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L257
    ;; line 7:810
    (global.set $__line (i32.const 810))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 957))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L258 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L258
    ;; line 7:811
    (global.set $__line (i32.const 811))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 960))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L259 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L259
    ;; line 7:812
    (global.set $__line (i32.const 812))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 962))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L260 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L260
    ;; line 7:813
    (global.set $__line (i32.const 813))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 964))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L261 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L261
    ;; line 7:814
    (global.set $__line (i32.const 814))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 964))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1896))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L262 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L262
    ;; line 7:815
    (global.set $__line (i32.const 815))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 966))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L263 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L263
    ;; line 7:816
    (global.set $__line (i32.const 816))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 968))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L264 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L264
    ;; line 7:817
    (global.set $__line (i32.const 817))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 970))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L265 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L265
    ;; line 7:818
    (global.set $__line (i32.const 818))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 972))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L266 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L266
    ;; line 7:819
    (global.set $__line (i32.const 819))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:822
    (global.set $__line (i32.const 822))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:823
    (global.set $__line (i32.const 823))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t7))
    ;; line 7:824
    (global.set $__line (i32.const 824))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 974))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:825
    (global.set $__line (i32.const 825))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 985))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:826
    (global.set $__line (i32.const 826))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 989))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:827
    (global.set $__line (i32.const 827))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1001))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:828
    (global.set $__line (i32.const 828))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1006))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:829
    (global.set $__line (i32.const 829))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1012))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:830
    (global.set $__line (i32.const 830))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1018))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:831
    (global.set $__line (i32.const 831))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1032))) ;; LSTR
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
    ;; line 7:832
    (global.set $__line (i32.const 832))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1046))) ;; LSTR
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
    ;; line 7:833
    (global.set $__line (i32.const 833))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    ;; line 7:834
    (global.set $__line (i32.const 834))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t7))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    )) ;; end block / LAB L267 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L267
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    ;; line 7:836
    (global.set $__line (i32.const 836))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L268 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L268
    ;; line 7:837
    (global.set $__line (i32.const 837))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1060))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L269 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L269
    ;; line 7:838
    (global.set $__line (i32.const 838))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1062))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L270 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L270
    ;; line 7:839
    (global.set $__line (i32.const 839))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1064))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L271 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L271
    ;; line 7:840
    (global.set $__line (i32.const 840))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1067))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L272 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L272
    ;; line 7:841
    (global.set $__line (i32.const 841))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1070))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L273 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L273
    ;; line 7:842
    (global.set $__line (i32.const 842))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1073))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L274 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L274
    ;; line 7:843
    (global.set $__line (i32.const 843))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1076))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L275 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L275
    ;; line 7:844
    (global.set $__line (i32.const 844))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1078))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L276 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L276
    ;; line 7:845
    (global.set $__line (i32.const 845))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1080))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L277 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L277
    ;; line 7:846
    (global.set $__line (i32.const 846))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1082))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L278 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L278
    ;; line 7:847
    (global.set $__line (i32.const 847))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1084))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L279 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L279
    ;; line 7:848
    (global.set $__line (i32.const 848))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1086))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L242
    )) ;; end block / LAB L241 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L241
    ;; RSTACK 5
    (local.set $t5 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 35 cases default L243
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
    )) ;; end block / LAB L242 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L242
    ;; line 7:795
    (global.set $__line (i32.const 795))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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

  ;; BCPL fn scan_emit (L49)
  (func $fn_L49 (export "fn_L49") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:858
    (global.set $__line (i32.const 858))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:859
    (global.set $__line (i32.const 859))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t3))
    ;; line 7:860
    (global.set $__line (i32.const 860))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:861
    (global.set $__line (i32.const 861))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:862
    (global.set $__line (i32.const 862))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t3))
    ;; line 7:863
    (global.set $__line (i32.const 863))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956)) (local.get $t3))
    ;; line 7:864
    (global.set $__line (i32.const 864))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t3))
    ;; line 7:865
    (global.set $__line (i32.const 865))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L281
    )) ;; end block / LAB L280 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L280
    ;; line 7:866
    (global.set $__line (i32.const 866))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const -1))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L281 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L281
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    )) ;; end block / LAB L282 = idx 3
    (if (i32.eq (local.get $__lab) (i32.const 3)) (then ;; L282
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 256))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (local.set $t4 (i32.const 0))
    (if (i32.eq  (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 7:874
    (global.set $__line (i32.const 874))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 255))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t3))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    )) ;; end block / LAB L283 = idx 4
    (if (i32.eq (local.get $__lab) (i32.const 4)) (then ;; L283
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    ;; RES L284: save result, jump to RSTACK
    (local.set $__res (local.get $t3))
      (local.set $__lab (i32.const 302)) (br $__dispatch)
    ;; line 7:876
    (global.set $__line (i32.const 876))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L286 = idx 5
    (if (i32.eq (local.get $__lab) (i32.const 5)) (then ;; L286
    ;; line 7:877
    (global.set $__line (i32.const 877))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (local.set $t4 (i32.const 84))
    (if (i32.lt_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (local.set $t4 (i32.const 112))
    (if (i32.gt_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 7:882
    (global.set $__line (i32.const 882))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1088))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L289
    )) ;; end block / LAB L287 = idx 6
    (if (i32.eq (local.get $__lab) (i32.const 6)) (then ;; L287
    ;; line 7:883
    (global.set $__line (i32.const 883))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1103))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    )) ;; end block / LAB L289 = idx 7
    (if (i32.eq (local.get $__lab) (i32.const 7)) (then ;; L289
    ;; line 7:884
    (global.set $__line (i32.const 884))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068)) (local.get $t3))
    ;; line 7:885
    (global.set $__line (i32.const 885))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:886
    (global.set $__line (i32.const 886))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L290 = idx 8
    (if (i32.eq (local.get $__lab) (i32.const 8)) (then ;; L290
    ;; line 7:888
    (global.set $__line (i32.const 888))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end block / LAB L291 = idx 9
    (if (i32.eq (local.get $__lab) (i32.const 9)) (then ;; L291
    ;; line 7:890
    (global.set $__line (i32.const 890))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:898
    (global.set $__line (i32.const 898))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:899
    (global.set $__line (i32.const 899))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; line 7:900
    (global.set $__line (i32.const 900))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:901
    (global.set $__line (i32.const 901))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1110))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:902
    (global.set $__line (i32.const 902))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1115))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:903
    (global.set $__line (i32.const 903))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1126))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:909
    (global.set $__line (i32.const 909))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1141))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:910
    (global.set $__line (i32.const 910))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    )) ;; end block / LAB L292 = idx 10
    (if (i32.eq (local.get $__lab) (i32.const 10)) (then ;; L292
    ;; line 7:911
    (global.set $__line (i32.const 911))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:913
    (global.set $__line (i32.const 913))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    )) ;; end block / LAB L293 = idx 11
    (if (i32.eq (local.get $__lab) (i32.const 11)) (then ;; L293
    ;; line 7:916
    (global.set $__line (i32.const 916))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    )) ;; end block / LAB L294 = idx 12
    (if (i32.eq (local.get $__lab) (i32.const 12)) (then ;; L294
    ;; line 7:918
    (global.set $__line (i32.const 918))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:920
    (global.set $__line (i32.const 920))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (local.set $t5 (i32.const 0))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; line 7:922
    (global.set $__line (i32.const 922))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:923
    (global.set $__line (i32.const 923))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (if (local.get $t4) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 7:924
    (global.set $__line (i32.const 924))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1150))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:925
    (global.set $__line (i32.const 925))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1156))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    )) ;; end block / LAB L296 = idx 13
    (if (i32.eq (local.get $__lab) (i32.const 13)) (then ;; L296
    ;; line 7:926
    (global.set $__line (i32.const 926))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1164))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:928
    (global.set $__line (i32.const 928))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1171))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:929
    (global.set $__line (i32.const 929))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1178))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:930
    (global.set $__line (i32.const 930))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1183))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:931
    (global.set $__line (i32.const 931))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:932
    (global.set $__line (i32.const 932))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t4))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    )) ;; end block / LAB L295 = idx 14
    (if (i32.eq (local.get $__lab) (i32.const 14)) (then ;; L295
    ;; line 7:933
    (global.set $__line (i32.const 933))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    )) ;; end block / LAB L297 = idx 15
    (if (i32.eq (local.get $__lab) (i32.const 15)) (then ;; L297
    ;; line 7:935
    (global.set $__line (i32.const 935))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1924))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (local.set $t6 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush FNAP result
    ;; line 7:936
    (global.set $__line (i32.const 936))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:937
    (global.set $__line (i32.const 937))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 7:940
    (global.set $__line (i32.const 940))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
      (local.set $__lab (i32.const 18)) (br $__dispatch) ;; JUMP L300
    )) ;; end block / LAB L299 = idx 16
    (if (i32.eq (local.get $__lab) (i32.const 16)) (then ;; L299
    ;; line 7:941
    (global.set $__line (i32.const 941))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; line 7:942
    (global.set $__line (i32.const 942))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11))
    (local.set $t8 (local.get $t11))
      (local.set $__lab (i32.const 19)) (br $__dispatch) ;; JUMP L302
    )) ;; end block / LAB L301 = idx 17
    (if (i32.eq (local.get $__lab) (i32.const 17)) (then ;; L301
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11))
    (local.set $t9 (local.get $t11))
      (local.set $__lab (i32.const 18)) (br $__dispatch)
    )) ;; end block / LAB L300 = idx 18
    (if (i32.eq (local.get $__lab) (i32.const 18)) (then ;; L300
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 40))))
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
    )) ;; end block / LAB L302 = idx 19
    (if (i32.eq (local.get $__lab) (i32.const 19)) (then ;; L302
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t10 (i32.const 512))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 7:943
    (global.set $__line (i32.const 943))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    ;; line 7:944
    (global.set $__line (i32.const 944))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012)) (local.get $t9))
    ;; line 7:945
    (global.set $__line (i32.const 945))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    ;; line 7:946
    (global.set $__line (i32.const 946))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012)) (local.get $t9))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    )) ;; end block / LAB L303 = idx 20
    (if (i32.eq (local.get $__lab) (i32.const 20)) (then ;; L303
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    )) ;; end block / LAB L298 = idx 21
    (if (i32.eq (local.get $__lab) (i32.const 21)) (then ;; L298
    ;; line 7:947
    (global.set $__line (i32.const 947))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2064))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:950
    (global.set $__line (i32.const 950))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1824))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:951
    (global.set $__line (i32.const 951))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; line 7:952
    (global.set $__line (i32.const 952))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
    )) ;; end block / LAB L304 = idx 22
    (if (i32.eq (local.get $__lab) (i32.const 22)) (then ;; L304
    ;; line 7:955
    (global.set $__line (i32.const 955))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:956
    (global.set $__line (i32.const 956))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:957
    (global.set $__line (i32.const 957))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1190))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:958
    (global.set $__line (i32.const 958))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    )) ;; end block / LAB L305 = idx 23
    (if (i32.eq (local.get $__lab) (i32.const 23)) (then ;; L305
    ;; line 7:959
    (global.set $__line (i32.const 959))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    )) ;; end block / LAB L306 = idx 24
    (if (i32.eq (local.get $__lab) (i32.const 24)) (then ;; L306
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:960
    (global.set $__line (i32.const 960))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:961
    (global.set $__line (i32.const 961))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:962
    (global.set $__line (i32.const 962))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    )) ;; end block / LAB L307 = idx 25
    (if (i32.eq (local.get $__lab) (i32.const 25)) (then ;; L307
    ;; line 7:965
    (global.set $__line (i32.const 965))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    )) ;; end block / LAB L308 = idx 26
    (if (i32.eq (local.get $__lab) (i32.const 26)) (then ;; L308
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:966
    (global.set $__line (i32.const 966))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    )) ;; end block / LAB L309 = idx 27
    (if (i32.eq (local.get $__lab) (i32.const 27)) (then ;; L309
    ;; line 7:967
    (global.set $__line (i32.const 967))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    )) ;; end block / LAB L310 = idx 28
    (if (i32.eq (local.get $__lab) (i32.const 28)) (then ;; L310
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:968
    (global.set $__line (i32.const 968))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 29)) (br $__dispatch)
    )) ;; end block / LAB L311 = idx 29
    (if (i32.eq (local.get $__lab) (i32.const 29)) (then ;; L311
    ;; line 7:971
    (global.set $__line (i32.const 971))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
    ;; line 7:974
    (global.set $__line (i32.const 974))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:975
    (global.set $__line (i32.const 975))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:976
    (global.set $__line (i32.const 976))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:977
    (global.set $__line (i32.const 977))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $P) (i32.const 7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush t6 (pre-stack-up)
    ;; line 7:978
    (global.set $__line (i32.const 978))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1928))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:979
    (global.set $__line (i32.const 979))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2068))))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:980
    (global.set $__line (i32.const 980))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:981
    (global.set $__line (i32.const 981))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    )) ;; end block / LAB L312 = idx 30
    (if (i32.eq (local.get $__lab) (i32.const 30)) (then ;; L312
    ;; line 7:982
    (global.set $__line (i32.const 982))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:985
    (global.set $__line (i32.const 985))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:986
    (global.set $__line (i32.const 986))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.add (global.get $P) (i32.const 6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush t5 (pre-stack-up)
    ;; line 7:987
    (global.set $__line (i32.const 987))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1928))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:988
    (global.set $__line (i32.const 988))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 7:993
    (global.set $__line (i32.const 993))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 7:994
    (global.set $__line (i32.const 994))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 3))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    ;; line 7:1159
    (global.set $__line (i32.const 1159))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 0))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
      (local.set $__lab (i32.const 32)) (br $__dispatch) ;; JUMP L315
    )) ;; end block / LAB L314 = idx 31
    (if (i32.eq (local.get $__lab) (i32.const 31)) (then ;; L314
    ;; line 7:996
    (global.set $__line (i32.const 996))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const -1))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.shl (local.get $t30) (i32.const 2)) (local.get $t29))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29))
    (local.set $t27 (local.get $t29))
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    )) ;; end block / LAB L315 = idx 32
    (if (i32.eq (local.get $__lab) (i32.const 32)) (then ;; L315
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (if (i32.le_s (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
    (local.set $t27 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t27))
    ;; line 7:997
    (global.set $__line (i32.const 997))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956)) (local.get $t27))
    ;; line 7:998
    (global.set $__line (i32.const 998))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t27))
    ;; line 7:999
    (global.set $__line (i32.const 999))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t27))
    ;; line 7:1000
    (global.set $__line (i32.const 1000))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t27))
    ;; line 7:1001
    (global.set $__line (i32.const 1001))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    )) ;; end block / LAB L316 = idx 33
    (if (i32.eq (local.get $__lab) (i32.const 33)) (then ;; L316
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    ;; RES L317: save result, jump to RSTACK
    (local.set $__res (local.get $t27))
      (local.set $__lab (i32.const 154)) (br $__dispatch)
    ;; line 7:1002
    (global.set $__line (i32.const 1002))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L319 = idx 34
    (if (i32.eq (local.get $__lab) (i32.const 34)) (then ;; L319
    ;; line 7:1003
    (global.set $__line (i32.const 1003))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    )) ;; end block / LAB L320 = idx 35
    (if (i32.eq (local.get $__lab) (i32.const 35)) (then ;; L320
    ;; line 7:1004
    (global.set $__line (i32.const 1004))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1005
    (global.set $__line (i32.const 1005))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    ;; line 7:1006
    (global.set $__line (i32.const 1006))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956)) (local.get $t28))
    ;; line 7:1007
    (global.set $__line (i32.const 1007))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    )) ;; end block / LAB L321 = idx 36
    (if (i32.eq (local.get $__lab) (i32.const 36)) (then ;; L321
    ;; line 7:1008
    (global.set $__line (i32.const 1008))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1010
    (global.set $__line (i32.const 1010))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    )) ;; end block / LAB L322 = idx 37
    (if (i32.eq (local.get $__lab) (i32.const 37)) (then ;; L322
    ;; line 7:1012
    (global.set $__line (i32.const 1012))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1013
    (global.set $__line (i32.const 1013))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ))
    ;; line 7:1014
    (global.set $__line (i32.const 1014))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t28))
    ;; line 7:1015
    (global.set $__line (i32.const 1015))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ge_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 38)) (br $__dispatch)
    ))
    ;; line 7:1016
    (global.set $__line (i32.const 1016))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (i32.store (i32.shl (local.get $t29) (i32.const 2)) (local.get $t28))
      (local.set $__lab (i32.const 38)) (br $__dispatch)
    )) ;; end block / LAB L324 = idx 38
    (if (i32.eq (local.get $__lab) (i32.const 38)) (then ;; L324
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    )) ;; end block / LAB L323 = idx 39
    (if (i32.eq (local.get $__lab) (i32.const 39)) (then ;; L323
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1018
    (global.set $__line (i32.const 1018))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    )) ;; end block / LAB L325 = idx 40
    (if (i32.eq (local.get $__lab) (i32.const 40)) (then ;; L325
    ;; line 7:1020
    (global.set $__line (i32.const 1020))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1021
    (global.set $__line (i32.const 1021))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    (local.set $t29 (i32.const 1))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (if (i32.gt_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    )) ;; end block / LAB L326 = idx 41
    (if (i32.eq (local.get $__lab) (i32.const 41)) (then ;; L326
    ;; line 7:1022
    (global.set $__line (i32.const 1022))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t32 (i32.const 1))
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t31))
    (local.set $t29 (local.get $t31))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (local.set $t32 (i32.load (i32.add (local.get $Pb) (i32.const 120))))
    (if (i32.le_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 41)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    )) ;; end block / LAB L327 = idx 42
    (if (i32.eq (local.get $__lab) (i32.const 42)) (then ;; L327
    (local.set $t29 (i32.const 1))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t29))
    (local.set $t25 (local.get $t29))
    ;; line 7:1023
    (global.set $__line (i32.const 1023))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1024
    (global.set $__line (i32.const 1024))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    )) ;; end block / LAB L328 = idx 43
    (if (i32.eq (local.get $__lab) (i32.const 43)) (then ;; L328
    ;; line 7:1026
    (global.set $__line (i32.const 1026))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27))
    (local.set $t25 (local.get $t27))
    ;; line 7:1027
    (global.set $__line (i32.const 1027))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (local.set $t28 (i32.const 0))
    (if (i32.gt_s (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 44)) (br $__dispatch)
    ))
    ;; line 7:1028
    (global.set $__line (i32.const 1028))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t27))
    (local.set $t27 (i32.const 157)) ;; LF L313 (disp)
      (local.set $__lab (local.get $t27))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L329 = idx 44
    (if (i32.eq (local.get $__lab) (i32.const 44)) (then ;; L329
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1029
    (global.set $__line (i32.const 1029))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L330 = idx 45
    (if (i32.eq (local.get $__lab) (i32.const 45)) (then ;; L330
    ;; line 7:1032
    (global.set $__line (i32.const 1032))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 46)) (br $__dispatch)
    )) ;; end block / LAB L331 = idx 46
    (if (i32.eq (local.get $__lab) (i32.const 46)) (then ;; L331
      (local.set $__lab (i32.const 47)) (br $__dispatch)
    )) ;; end block / LAB L332 = idx 47
    (if (i32.eq (local.get $__lab) (i32.const 47)) (then ;; L332
      (local.set $__lab (i32.const 48)) (br $__dispatch)
    )) ;; end block / LAB L333 = idx 48
    (if (i32.eq (local.get $__lab) (i32.const 48)) (then ;; L333
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    )) ;; end block / LAB L334 = idx 49
    (if (i32.eq (local.get $__lab) (i32.const 49)) (then ;; L334
    ;; line 7:1033
    (global.set $__line (i32.const 1033))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1034
    (global.set $__line (i32.const 1034))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    ))
    ;; line 7:1035
    (global.set $__line (i32.const 1035))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    )) ;; end block / LAB L335 = idx 50
    (if (i32.eq (local.get $__lab) (i32.const 50)) (then ;; L335
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1036
    (global.set $__line (i32.const 1036))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L336 = idx 51
    (if (i32.eq (local.get $__lab) (i32.const 51)) (then ;; L336
    ;; line 7:1037
    (global.set $__line (i32.const 1037))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 52)) (br $__dispatch)
    )) ;; end block / LAB L337 = idx 52
    (if (i32.eq (local.get $__lab) (i32.const 52)) (then ;; L337
      (local.set $__lab (i32.const 53)) (br $__dispatch)
    )) ;; end block / LAB L338 = idx 53
    (if (i32.eq (local.get $__lab) (i32.const 53)) (then ;; L338
      (local.set $__lab (i32.const 54)) (br $__dispatch)
    )) ;; end block / LAB L339 = idx 54
    (if (i32.eq (local.get $__lab) (i32.const 54)) (then ;; L339
      (local.set $__lab (i32.const 55)) (br $__dispatch)
    )) ;; end block / LAB L340 = idx 55
    (if (i32.eq (local.get $__lab) (i32.const 55)) (then ;; L340
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1038
    (global.set $__line (i32.const 1038))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 56)) (br $__dispatch)
    ))
    ;; line 7:1039
    (global.set $__line (i32.const 1039))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 56)) (br $__dispatch)
    )) ;; end block / LAB L341 = idx 56
    (if (i32.eq (local.get $__lab) (i32.const 56)) (then ;; L341
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1040
    (global.set $__line (i32.const 1040))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L342 = idx 57
    (if (i32.eq (local.get $__lab) (i32.const 57)) (then ;; L342
    ;; line 7:1041
    (global.set $__line (i32.const 1041))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 58)) (br $__dispatch)
    )) ;; end block / LAB L343 = idx 58
    (if (i32.eq (local.get $__lab) (i32.const 58)) (then ;; L343
      (local.set $__lab (i32.const 59)) (br $__dispatch)
    )) ;; end block / LAB L344 = idx 59
    (if (i32.eq (local.get $__lab) (i32.const 59)) (then ;; L344
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 60)) (br $__dispatch)
    ))
    ;; line 7:1042
    (global.set $__line (i32.const 1042))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t27 (i32.add (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 60)) (br $__dispatch)
    )) ;; end block / LAB L345 = idx 60
    (if (i32.eq (local.get $__lab) (i32.const 60)) (then ;; L345
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1043
    (global.set $__line (i32.const 1043))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L346 = idx 61
    (if (i32.eq (local.get $__lab) (i32.const 61)) (then ;; L346
    ;; line 7:1044
    (global.set $__line (i32.const 1044))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1045
    (global.set $__line (i32.const 1045))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 63)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 62)) (br $__dispatch)
    )) ;; end block / LAB L347 = idx 62
    (if (i32.eq (local.get $__lab) (i32.const 62)) (then ;; L347
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 62)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 63)) (br $__dispatch)
    )) ;; end block / LAB L348 = idx 63
    (if (i32.eq (local.get $__lab) (i32.const 63)) (then ;; L348
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    ))
    ;; line 7:1046
    (global.set $__line (i32.const 1046))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    )) ;; end block / LAB L349 = idx 64
    (if (i32.eq (local.get $__lab) (i32.const 64)) (then ;; L349
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1047
    (global.set $__line (i32.const 1047))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 65)) (br $__dispatch)
    )) ;; end block / LAB L350 = idx 65
    (if (i32.eq (local.get $__lab) (i32.const 65)) (then ;; L350
    ;; line 7:1051
    (global.set $__line (i32.const 1051))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 66)) (br $__dispatch)
    )) ;; end block / LAB L351 = idx 66
    (if (i32.eq (local.get $__lab) (i32.const 66)) (then ;; L351
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1052
    (global.set $__line (i32.const 1052))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 67)) (br $__dispatch)
    ))
    ;; line 7:1053
    (global.set $__line (i32.const 1053))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 67)) (br $__dispatch)
    )) ;; end block / LAB L352 = idx 67
    (if (i32.eq (local.get $__lab) (i32.const 67)) (then ;; L352
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1054
    (global.set $__line (i32.const 1054))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L353 = idx 68
    (if (i32.eq (local.get $__lab) (i32.const 68)) (then ;; L353
    ;; line 7:1055
    (global.set $__line (i32.const 1055))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1056
    (global.set $__line (i32.const 1056))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 69)) (br $__dispatch)
    ))
    ;; line 7:1057
    (global.set $__line (i32.const 1057))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 69)) (br $__dispatch)
    )) ;; end block / LAB L354 = idx 69
    (if (i32.eq (local.get $__lab) (i32.const 69)) (then ;; L354
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1058
    (global.set $__line (i32.const 1058))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L355 = idx 70
    (if (i32.eq (local.get $__lab) (i32.const 70)) (then ;; L355
    ;; line 7:1059
    (global.set $__line (i32.const 1059))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 71)) (br $__dispatch)
    ))
    ;; line 7:1060
    (global.set $__line (i32.const 1060))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.const 2))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 71)) (br $__dispatch)
    )) ;; end block / LAB L356 = idx 71
    (if (i32.eq (local.get $__lab) (i32.const 71)) (then ;; L356
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1061
    (global.set $__line (i32.const 1061))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L357 = idx 72
    (if (i32.eq (local.get $__lab) (i32.const 72)) (then ;; L357
    ;; line 7:1064
    (global.set $__line (i32.const 1064))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1065
    (global.set $__line (i32.const 1065))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 73)) (br $__dispatch)
    ))
    ;; line 7:1066
    (global.set $__line (i32.const 1066))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 73)) (br $__dispatch)
    )) ;; end block / LAB L358 = idx 73
    (if (i32.eq (local.get $__lab) (i32.const 73)) (then ;; L358
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1067
    (global.set $__line (i32.const 1067))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 74)) (br $__dispatch)
    )) ;; end block / LAB L359 = idx 74
    (if (i32.eq (local.get $__lab) (i32.const 74)) (then ;; L359
    ;; line 7:1069
    (global.set $__line (i32.const 1069))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1070
    (global.set $__line (i32.const 1070))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 75)) (br $__dispatch)
    ))
    ;; line 7:1071
    (global.set $__line (i32.const 1071))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 75)) (br $__dispatch)
    )) ;; end block / LAB L360 = idx 75
    (if (i32.eq (local.get $__lab) (i32.const 75)) (then ;; L360
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1072
    (global.set $__line (i32.const 1072))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 76)) (br $__dispatch)
    )) ;; end block / LAB L361 = idx 76
    (if (i32.eq (local.get $__lab) (i32.const 76)) (then ;; L361
    ;; line 7:1074
    (global.set $__line (i32.const 1074))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    )) ;; end block / LAB L362 = idx 77
    (if (i32.eq (local.get $__lab) (i32.const 77)) (then ;; L362
    ;; line 7:1077
    (global.set $__line (i32.const 1077))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 78)) (br $__dispatch)
    )) ;; end block / LAB L363 = idx 78
    (if (i32.eq (local.get $__lab) (i32.const 78)) (then ;; L363
      (local.set $__lab (i32.const 79)) (br $__dispatch)
    )) ;; end block / LAB L364 = idx 79
    (if (i32.eq (local.get $__lab) (i32.const 79)) (then ;; L364
      (local.set $__lab (i32.const 80)) (br $__dispatch)
    )) ;; end block / LAB L365 = idx 80
    (if (i32.eq (local.get $__lab) (i32.const 80)) (then ;; L365
    ;; line 7:1078
    (global.set $__line (i32.const 1078))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 81)) (br $__dispatch)
    )) ;; end block / LAB L366 = idx 81
    (if (i32.eq (local.get $__lab) (i32.const 81)) (then ;; L366
      (local.set $__lab (i32.const 82)) (br $__dispatch)
    )) ;; end block / LAB L367 = idx 82
    (if (i32.eq (local.get $__lab) (i32.const 82)) (then ;; L367
    ;; line 7:1079
    (global.set $__line (i32.const 1079))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 83)) (br $__dispatch)
    )) ;; end block / LAB L368 = idx 83
    (if (i32.eq (local.get $__lab) (i32.const 83)) (then ;; L368
      (local.set $__lab (i32.const 84)) (br $__dispatch)
    )) ;; end block / LAB L369 = idx 84
    (if (i32.eq (local.get $__lab) (i32.const 84)) (then ;; L369
      (local.set $__lab (i32.const 85)) (br $__dispatch)
    )) ;; end block / LAB L370 = idx 85
    (if (i32.eq (local.get $__lab) (i32.const 85)) (then ;; L370
    ;; line 7:1080
    (global.set $__line (i32.const 1080))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1081
    (global.set $__line (i32.const 1081))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L371 = idx 86
    (if (i32.eq (local.get $__lab) (i32.const 86)) (then ;; L371
    ;; line 7:1084
    (global.set $__line (i32.const 1084))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 87)) (br $__dispatch)
    )) ;; end block / LAB L372 = idx 87
    (if (i32.eq (local.get $__lab) (i32.const 87)) (then ;; L372
      (local.set $__lab (i32.const 88)) (br $__dispatch)
    )) ;; end block / LAB L373 = idx 88
    (if (i32.eq (local.get $__lab) (i32.const 88)) (then ;; L373
      (local.set $__lab (i32.const 89)) (br $__dispatch)
    )) ;; end block / LAB L374 = idx 89
    (if (i32.eq (local.get $__lab) (i32.const 89)) (then ;; L374
    ;; line 7:1085
    (global.set $__line (i32.const 1085))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 90)) (br $__dispatch)
    )) ;; end block / LAB L375 = idx 90
    (if (i32.eq (local.get $__lab) (i32.const 90)) (then ;; L375
      (local.set $__lab (i32.const 91)) (br $__dispatch)
    )) ;; end block / LAB L376 = idx 91
    (if (i32.eq (local.get $__lab) (i32.const 91)) (then ;; L376
    ;; line 7:1086
    (global.set $__line (i32.const 1086))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 92)) (br $__dispatch)
    )) ;; end block / LAB L377 = idx 92
    (if (i32.eq (local.get $__lab) (i32.const 92)) (then ;; L377
      (local.set $__lab (i32.const 93)) (br $__dispatch)
    )) ;; end block / LAB L378 = idx 93
    (if (i32.eq (local.get $__lab) (i32.const 93)) (then ;; L378
    ;; line 7:1087
    (global.set $__line (i32.const 1087))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 94)) (br $__dispatch)
    )) ;; end block / LAB L379 = idx 94
    (if (i32.eq (local.get $__lab) (i32.const 94)) (then ;; L379
      (local.set $__lab (i32.const 95)) (br $__dispatch)
    )) ;; end block / LAB L380 = idx 95
    (if (i32.eq (local.get $__lab) (i32.const 95)) (then ;; L380
      (local.set $__lab (i32.const 96)) (br $__dispatch)
    )) ;; end block / LAB L381 = idx 96
    (if (i32.eq (local.get $__lab) (i32.const 96)) (then ;; L381
      (local.set $__lab (i32.const 97)) (br $__dispatch)
    )) ;; end block / LAB L382 = idx 97
    (if (i32.eq (local.get $__lab) (i32.const 97)) (then ;; L382
    ;; line 7:1088
    (global.set $__line (i32.const 1088))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 98)) (br $__dispatch)
    )) ;; end block / LAB L383 = idx 98
    (if (i32.eq (local.get $__lab) (i32.const 98)) (then ;; L383
      (local.set $__lab (i32.const 99)) (br $__dispatch)
    )) ;; end block / LAB L384 = idx 99
    (if (i32.eq (local.get $__lab) (i32.const 99)) (then ;; L384
    ;; line 7:1089
    (global.set $__line (i32.const 1089))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 100)) (br $__dispatch)
    )) ;; end block / LAB L385 = idx 100
    (if (i32.eq (local.get $__lab) (i32.const 100)) (then ;; L385
      (local.set $__lab (i32.const 101)) (br $__dispatch)
    )) ;; end block / LAB L386 = idx 101
    (if (i32.eq (local.get $__lab) (i32.const 101)) (then ;; L386
      (local.set $__lab (i32.const 102)) (br $__dispatch)
    )) ;; end block / LAB L387 = idx 102
    (if (i32.eq (local.get $__lab) (i32.const 102)) (then ;; L387
      (local.set $__lab (i32.const 103)) (br $__dispatch)
    )) ;; end block / LAB L388 = idx 103
    (if (i32.eq (local.get $__lab) (i32.const 103)) (then ;; L388
    ;; line 7:1090
    (global.set $__line (i32.const 1090))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 104)) (br $__dispatch)
    )) ;; end block / LAB L389 = idx 104
    (if (i32.eq (local.get $__lab) (i32.const 104)) (then ;; L389
      (local.set $__lab (i32.const 105)) (br $__dispatch)
    )) ;; end block / LAB L390 = idx 105
    (if (i32.eq (local.get $__lab) (i32.const 105)) (then ;; L390
      (local.set $__lab (i32.const 106)) (br $__dispatch)
    )) ;; end block / LAB L391 = idx 106
    (if (i32.eq (local.get $__lab) (i32.const 106)) (then ;; L391
    ;; line 7:1091
    (global.set $__line (i32.const 1091))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 107)) (br $__dispatch)
    )) ;; end block / LAB L392 = idx 107
    (if (i32.eq (local.get $__lab) (i32.const 107)) (then ;; L392
      (local.set $__lab (i32.const 108)) (br $__dispatch)
    )) ;; end block / LAB L393 = idx 108
    (if (i32.eq (local.get $__lab) (i32.const 108)) (then ;; L393
    ;; line 7:1092
    (global.set $__line (i32.const 1092))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 109)) (br $__dispatch)
    )) ;; end block / LAB L394 = idx 109
    (if (i32.eq (local.get $__lab) (i32.const 109)) (then ;; L394
      (local.set $__lab (i32.const 110)) (br $__dispatch)
    )) ;; end block / LAB L395 = idx 110
    (if (i32.eq (local.get $__lab) (i32.const 110)) (then ;; L395
    ;; line 7:1093
    (global.set $__line (i32.const 1093))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 111)) (br $__dispatch)
    )) ;; end block / LAB L396 = idx 111
    (if (i32.eq (local.get $__lab) (i32.const 111)) (then ;; L396
      (local.set $__lab (i32.const 112)) (br $__dispatch)
    )) ;; end block / LAB L397 = idx 112
    (if (i32.eq (local.get $__lab) (i32.const 112)) (then ;; L397
      (local.set $__lab (i32.const 113)) (br $__dispatch)
    )) ;; end block / LAB L398 = idx 113
    (if (i32.eq (local.get $__lab) (i32.const 113)) (then ;; L398
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 114)) (br $__dispatch)
    ))
    ;; line 7:1094
    (global.set $__line (i32.const 1094))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 114)) (br $__dispatch)
    )) ;; end block / LAB L399 = idx 114
    (if (i32.eq (local.get $__lab) (i32.const 114)) (then ;; L399
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1095
    (global.set $__line (i32.const 1095))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L400 = idx 115
    (if (i32.eq (local.get $__lab) (i32.const 115)) (then ;; L400
    ;; line 7:1098
    (global.set $__line (i32.const 1098))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1099
    (global.set $__line (i32.const 1099))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 116)) (br $__dispatch)
    ))
    ;; line 7:1100
    (global.set $__line (i32.const 1100))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 116)) (br $__dispatch)
    )) ;; end block / LAB L401 = idx 116
    (if (i32.eq (local.get $__lab) (i32.const 116)) (then ;; L401
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1101
    (global.set $__line (i32.const 1101))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 117)) (br $__dispatch)
    )) ;; end block / LAB L402 = idx 117
    (if (i32.eq (local.get $__lab) (i32.const 117)) (then ;; L402
    ;; line 7:1103
    (global.set $__line (i32.const 1103))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1104
    (global.set $__line (i32.const 1104))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 118)) (br $__dispatch)
    ))
    ;; line 7:1105
    (global.set $__line (i32.const 1105))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 118)) (br $__dispatch)
    )) ;; end block / LAB L403 = idx 118
    (if (i32.eq (local.get $__lab) (i32.const 118)) (then ;; L403
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1106
    (global.set $__line (i32.const 1106))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 119)) (br $__dispatch)
    )) ;; end block / LAB L404 = idx 119
    (if (i32.eq (local.get $__lab) (i32.const 119)) (then ;; L404
    ;; line 7:1110
    (global.set $__line (i32.const 1110))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 120)) (br $__dispatch)
    )) ;; end block / LAB L405 = idx 120
    (if (i32.eq (local.get $__lab) (i32.const 120)) (then ;; L405
      (local.set $__lab (i32.const 121)) (br $__dispatch)
    )) ;; end block / LAB L406 = idx 121
    (if (i32.eq (local.get $__lab) (i32.const 121)) (then ;; L406
    ;; line 7:1111
    (global.set $__line (i32.const 1111))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 122)) (br $__dispatch)
    )) ;; end block / LAB L407 = idx 122
    (if (i32.eq (local.get $__lab) (i32.const 122)) (then ;; L407
    (local.set $t27 (i32.const 148))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (if (i32.eq  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 123)) (br $__dispatch)
    ))
    (local.set $t27 (i32.const 149))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 124)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 123)) (br $__dispatch)
    )) ;; end block / LAB L409 = idx 123
    (if (i32.eq (local.get $__lab) (i32.const 123)) (then ;; L409
    ;; line 7:1112
    (global.set $__line (i32.const 1112))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 124)) (br $__dispatch)
    )) ;; end block / LAB L408 = idx 124
    (if (i32.eq (local.get $__lab) (i32.const 124)) (then ;; L408
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 125)) (br $__dispatch)
    ))
    ;; line 7:1113
    (global.set $__line (i32.const 1113))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 125)) (br $__dispatch)
    )) ;; end block / LAB L410 = idx 125
    (if (i32.eq (local.get $__lab) (i32.const 125)) (then ;; L410
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1114
    (global.set $__line (i32.const 1114))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L411 = idx 126
    (if (i32.eq (local.get $__lab) (i32.const 126)) (then ;; L411
    ;; line 7:1115
    (global.set $__line (i32.const 1115))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1116
    (global.set $__line (i32.const 1116))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 127)) (br $__dispatch)
    ))
    ;; line 7:1117
    (global.set $__line (i32.const 1117))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 127)) (br $__dispatch)
    )) ;; end block / LAB L412 = idx 127
    (if (i32.eq (local.get $__lab) (i32.const 127)) (then ;; L412
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1118
    (global.set $__line (i32.const 1118))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L413 = idx 128
    (if (i32.eq (local.get $__lab) (i32.const 128)) (then ;; L413
    ;; line 7:1119
    (global.set $__line (i32.const 1119))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1120
    (global.set $__line (i32.const 1120))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1121
    (global.set $__line (i32.const 1121))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L414 = idx 129
    (if (i32.eq (local.get $__lab) (i32.const 129)) (then ;; L414
    ;; line 7:1122
    (global.set $__line (i32.const 1122))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 130)) (br $__dispatch)
    ))
    ;; line 7:1123
    (global.set $__line (i32.const 1123))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 130)) (br $__dispatch)
    )) ;; end block / LAB L415 = idx 130
    (if (i32.eq (local.get $__lab) (i32.const 130)) (then ;; L415
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1124
    (global.set $__line (i32.const 1124))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L416 = idx 131
    (if (i32.eq (local.get $__lab) (i32.const 131)) (then ;; L416
    ;; line 7:1127
    (global.set $__line (i32.const 1127))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 132)) (br $__dispatch)
    ))
    ;; line 7:1128
    (global.set $__line (i32.const 1128))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.const 1))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 132)) (br $__dispatch)
    )) ;; end block / LAB L417 = idx 132
    (if (i32.eq (local.get $__lab) (i32.const 132)) (then ;; L417
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1129
    (global.set $__line (i32.const 1129))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L418 = idx 133
    (if (i32.eq (local.get $__lab) (i32.const 133)) (then ;; L418
    ;; line 7:1130
    (global.set $__line (i32.const 1130))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 134)) (br $__dispatch)
    ))
    ;; line 7:1131
    (global.set $__line (i32.const 1131))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.const 3))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 134)) (br $__dispatch)
    )) ;; end block / LAB L419 = idx 134
    (if (i32.eq (local.get $__lab) (i32.const 134)) (then ;; L419
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1132
    (global.set $__line (i32.const 1132))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L420 = idx 135
    (if (i32.eq (local.get $__lab) (i32.const 135)) (then ;; L420
    ;; line 7:1134
    (global.set $__line (i32.const 1134))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1135
    (global.set $__line (i32.const 1135))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 137)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 136)) (br $__dispatch)
    )) ;; end block / LAB L421 = idx 136
    (if (i32.eq (local.get $__lab) (i32.const 136)) (then ;; L421
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 136)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 137)) (br $__dispatch)
    )) ;; end block / LAB L422 = idx 137
    (if (i32.eq (local.get $__lab) (i32.const 137)) (then ;; L422
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 138)) (br $__dispatch)
    ))
    ;; line 7:1136
    (global.set $__line (i32.const 1136))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t28))
    (local.set $t26 (local.get $t28))
      (local.set $__lab (i32.const 138)) (br $__dispatch)
    )) ;; end block / LAB L423 = idx 138
    (if (i32.eq (local.get $__lab) (i32.const 138)) (then ;; L423
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1137
    (global.set $__line (i32.const 1137))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 139)) (br $__dispatch)
    )) ;; end block / LAB L424 = idx 139
    (if (i32.eq (local.get $__lab) (i32.const 139)) (then ;; L424
    ;; line 7:1140
    (global.set $__line (i32.const 1140))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    )) ;; end block / LAB L425 = idx 140
    (if (i32.eq (local.get $__lab) (i32.const 140)) (then ;; L425
    ;; line 7:1141
    (global.set $__line (i32.const 1141))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1142
    (global.set $__line (i32.const 1142))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 141)) (br $__dispatch)
    ))
    ;; line 7:1143
    (global.set $__line (i32.const 1143))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.const 2))
    (local.set $t27 (i32.sub (local.get $t27) (local.get $t28)))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27))
    (local.set $t26 (local.get $t27))
      (local.set $__lab (i32.const 141)) (br $__dispatch)
    )) ;; end block / LAB L426 = idx 141
    (if (i32.eq (local.get $__lab) (i32.const 141)) (then ;; L426
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    ;; line 7:1144
    (global.set $__line (i32.const 1144))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L427 = idx 142
    (if (i32.eq (local.get $__lab) (i32.const 142)) (then ;; L427
    ;; line 7:1146
    (global.set $__line (i32.const 1146))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    )) ;; end block / LAB L428 = idx 143
    (if (i32.eq (local.get $__lab) (i32.const 143)) (then ;; L428
    ;; line 7:1147
    (global.set $__line (i32.const 1147))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 144)) (br $__dispatch)
    )) ;; end block / LAB L429 = idx 144
    (if (i32.eq (local.get $__lab) (i32.const 144)) (then ;; L429
      (local.set $__lab (i32.const 145)) (br $__dispatch)
    )) ;; end block / LAB L430 = idx 145
    (if (i32.eq (local.get $__lab) (i32.const 145)) (then ;; L430
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    ;; line 7:1148
    (global.set $__line (i32.const 1148))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 108))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.gt_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 147)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 146)) (br $__dispatch)
    )) ;; end block / LAB L431 = idx 146
    (if (i32.eq (local.get $__lab) (i32.const 146)) (then ;; L431
    (local.set $t33 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t33)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 30)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t33)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t30))
    (local.set $t28 (local.get $t30))
    (local.set $t30 (i32.load (i32.add (local.get $Pb) (i32.const 112))))
    (local.set $t31 (i32.load (i32.add (local.get $Pb) (i32.const 116))))
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 146)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 147)) (br $__dispatch)
    )) ;; end block / LAB L432 = idx 147
    (if (i32.eq (local.get $__lab) (i32.const 147)) (then ;; L432
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
      (local.set $__lab (i32.const 148)) (br $__dispatch)
    )) ;; end block / LAB L433 = idx 148
    (if (i32.eq (local.get $__lab) (i32.const 148)) (then ;; L433
    ;; line 7:1149
    (global.set $__line (i32.const 1149))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 149)) (br $__dispatch)
    )) ;; end block / LAB L434 = idx 149
    (if (i32.eq (local.get $__lab) (i32.const 149)) (then ;; L434
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    )) ;; end block / LAB L435 = idx 150
    (if (i32.eq (local.get $__lab) (i32.const 150)) (then ;; L435
    ;; line 7:1150
    (global.set $__line (i32.const 1150))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    )) ;; end block / LAB L436 = idx 151
    (if (i32.eq (local.get $__lab) (i32.const 151)) (then ;; L436
    ;; line 7:1151
    (global.set $__line (i32.const 1151))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 155)) (br $__dispatch) ;; JUMP L318
    )) ;; end block / LAB L437 = idx 152
    (if (i32.eq (local.get $__lab) (i32.const 152)) (then ;; L437
    ;; line 7:1153
    (global.set $__line (i32.const 1153))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 157)) ;; LF L313 (disp)
      (local.set $__lab (local.get $t27))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L438 = idx 153
    (if (i32.eq (local.get $__lab) (i32.const 153)) (then ;; L438
    ;; line 7:1154
    (global.set $__line (i32.const 1154))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 157)) ;; LF L313 (disp)
      (local.set $__lab (local.get $t27))
      (br $__dispatch) ;; GOTO (computed)
    )) ;; end block / LAB L317 = idx 154
    (if (i32.eq (local.get $__lab) (i32.const 154)) (then ;; L317
    ;; RSTACK 27
    (local.set $t27 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 86 cases default L319
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
    )) ;; end block / LAB L318 = idx 155
    (if (i32.eq (local.get $__lab) (i32.const 155)) (then ;; L318
    ;; line 7:1002
    (global.set $__line (i32.const 1002))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 1))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.ne  (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 156)) (br $__dispatch)
    ))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t27) (local.get $t28)) (then
      (local.set $__lab (i32.const 156)) (br $__dispatch)
    ))
    ;; line 7:1156
    (global.set $__line (i32.const 1156))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 104))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t27))
      (local.set $__lab (i32.const 156)) (br $__dispatch)
    )) ;; end block / LAB L439 = idx 156
    (if (i32.eq (local.get $__lab) (i32.const 156)) (then ;; L439
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 27)))
    (local.set $t27 (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t27))
      (local.set $__lab (i32.const 33)) (br $__dispatch) ;; JUMP L316
    ;; line 7:1157
    (global.set $__line (i32.const 1157))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L313 = idx 157
    (if (i32.eq (local.get $__lab) (i32.const 157)) (then ;; L313
    ;; line 7:1159
    (global.set $__line (i32.const 1159))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t27))
    ;; line 7:1160
    (global.set $__line (i32.const 1160))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 7:1167
    (global.set $__line (i32.const 1167))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
      (local.set $__lab (i32.const 160)) (br $__dispatch) ;; JUMP L441
    )) ;; end block / LAB L440 = idx 158
    (if (i32.eq (local.get $__lab) (i32.const 158)) (then ;; L440
    ;; line 7:1168
    (global.set $__line (i32.const 1168))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t26 (i32.load (i32.shl (local.get $t26) (i32.const 2))))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.ne  (local.get $t26) (local.get $t27)) (then
      (local.set $__lab (i32.const 159)) (br $__dispatch)
    ))
    ;; line 7:1169
    (global.set $__line (i32.const 1169))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t26))
    (local.set $t23 (local.get $t26))
      (local.set $__lab (i32.const 161)) (br $__dispatch) ;; JUMP L443
    )) ;; end block / LAB L442 = idx 159
    (if (i32.eq (local.get $__lab) (i32.const 159)) (then ;; L442
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t27 (i32.const 1))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t26))
    (local.set $t24 (local.get $t26))
      (local.set $__lab (i32.const 160)) (br $__dispatch)
    )) ;; end block / LAB L441 = idx 160
    (if (i32.eq (local.get $__lab) (i32.const 160)) (then ;; L441
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 100))))
    (if (i32.le_s (local.get $t26) (local.get $t27)) (then
      (local.set $__lab (i32.const 158)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 161)) (br $__dispatch)
    )) ;; end block / LAB L443 = idx 161
    (if (i32.eq (local.get $__lab) (i32.const 161)) (then ;; L443
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (if (local.get $t24) (then
      (local.set $__lab (i32.const 163)) (br $__dispatch)
    ))
    ;; line 7:1170
    (global.set $__line (i32.const 1170))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t25 (i32.const 512))
    (if (i32.ge_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 162)) (br $__dispatch)
    ))
    ;; line 7:1171
    (global.set $__line (i32.const 1171))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    ;; line 7:1172
    (global.set $__line (i32.const 1172))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.const 1))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020)) (local.get $t24))
      (local.set $__lab (i32.const 162)) (br $__dispatch)
    )) ;; end block / LAB L445 = idx 162
    (if (i32.eq (local.get $__lab) (i32.const 162)) (then ;; L445
      (local.set $__lab (i32.const 163)) (br $__dispatch)
    )) ;; end block / LAB L444 = idx 163
    (if (i32.eq (local.get $__lab) (i32.const 163)) (then ;; L444
    ;; line 7:1173
    (global.set $__line (i32.const 1173))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1180
    (global.set $__line (i32.const 1180))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1192))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1182
    (global.set $__line (i32.const 1182))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1198))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t28 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1183
    (global.set $__line (i32.const 1183))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1211))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1184
    (global.set $__line (i32.const 1184))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1217))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1185
    (global.set $__line (i32.const 1185))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1223))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1186
    (global.set $__line (i32.const 1186))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t25 (i32.const 1))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
      (local.set $__lab (i32.const 165)) (br $__dispatch) ;; JUMP L447
    )) ;; end block / LAB L446 = idx 164
    (if (i32.eq (local.get $__lab) (i32.const 164)) (then ;; L446
    ;; line 7:1187
    (global.set $__line (i32.const 1187))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.add (global.get $SB) (i32.const 1229))) ;; LSTR
    (local.set $t29 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t25))
    (local.set $t23 (local.get $t25))
      (local.set $__lab (i32.const 165)) (br $__dispatch)
    )) ;; end block / LAB L447 = idx 165
    (if (i32.eq (local.get $__lab) (i32.const 165)) (then ;; L447
    (local.set $t25 (i32.load (i32.add (local.get $Pb) (i32.const 92))))
    (local.set $t26 (i32.load (i32.add (local.get $Pb) (i32.const 96))))
    (if (i32.le_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 164)) (br $__dispatch)
    ))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t26)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t26)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1190
    (global.set $__line (i32.const 1190))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1235))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1191
    (global.set $__line (i32.const 1191))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1241))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1192
    (global.set $__line (i32.const 1192))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1193
    (global.set $__line (i32.const 1193))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t23))
    ;; line 7:1195
    (global.set $__line (i32.const 1195))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t23))
    ;; line 7:1196
    (global.set $__line (i32.const 1196))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t23))
    ;; line 7:1197
    (global.set $__line (i32.const 1197))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1199
    (global.set $__line (i32.const 1199))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L448 = idx 166
    (if (i32.eq (local.get $__lab) (i32.const 166)) (then ;; L448
    ;; line 7:1202
    (global.set $__line (i32.const 1202))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:1203
    (global.set $__line (i32.const 1203))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t3))
    ;; line 7:1204
    (global.set $__line (i32.const 1204))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1205
    (global.set $__line (i32.const 1205))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L449 = idx 167
    (if (i32.eq (local.get $__lab) (i32.const 167)) (then ;; L449
    ;; line 7:1208
    (global.set $__line (i32.const 1208))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1209
    (global.set $__line (i32.const 1209))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (if (local.get $t3) (then
      (local.set $__lab (i32.const 168)) (br $__dispatch)
    ))
    ;; line 7:1210
    (global.set $__line (i32.const 1210))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1256))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1211
    (global.set $__line (i32.const 1211))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1156))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 168)) (br $__dispatch)
    )) ;; end block / LAB L450 = idx 168
    (if (i32.eq (local.get $__lab) (i32.const 168)) (then ;; L450
    ;; line 7:1212
    (global.set $__line (i32.const 1212))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1164))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1214
    (global.set $__line (i32.const 1214))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1171))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1215
    (global.set $__line (i32.const 1215))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1264))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1216
    (global.set $__line (i32.const 1216))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1183))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1217
    (global.set $__line (i32.const 1217))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1218
    (global.set $__line (i32.const 1218))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t3))
    ;; line 7:1219
    (global.set $__line (i32.const 1219))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1220
    (global.set $__line (i32.const 1220))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1221
    (global.set $__line (i32.const 1221))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L451 = idx 169
    (if (i32.eq (local.get $__lab) (i32.const 169)) (then ;; L451
    ;; line 7:1224
    (global.set $__line (i32.const 1224))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1225
    (global.set $__line (i32.const 1225))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:1226
    (global.set $__line (i32.const 1226))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1227
    (global.set $__line (i32.const 1227))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1228
    (global.set $__line (i32.const 1228))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (if (local.get $t5) (then
      (local.set $__lab (i32.const 170)) (br $__dispatch)
    ))
    ;; line 7:1230
    (global.set $__line (i32.const 1230))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 724))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 170)) (br $__dispatch)
    )) ;; end block / LAB L452 = idx 170
    (if (i32.eq (local.get $__lab) (i32.const 170)) (then ;; L452
    ;; line 7:1231
    (global.set $__line (i32.const 1231))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1275))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1233
    (global.set $__line (i32.const 1233))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1285))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1235
    (global.set $__line (i32.const 1235))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1237
    (global.set $__line (i32.const 1237))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t5))
    ;; line 7:1238
    (global.set $__line (i32.const 1238))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1239
    (global.set $__line (i32.const 1239))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 171)) (br $__dispatch)
    )) ;; end block / LAB L453 = idx 171
    (if (i32.eq (local.get $__lab) (i32.const 171)) (then ;; L453
    ;; line 7:1242
    (global.set $__line (i32.const 1242))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1243
    (global.set $__line (i32.const 1243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1244
    (global.set $__line (i32.const 1244))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1245
    (global.set $__line (i32.const 1245))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1864))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1246
    (global.set $__line (i32.const 1246))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1247
    (global.set $__line (i32.const 1247))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1248
    (global.set $__line (i32.const 1248))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1249
    (global.set $__line (i32.const 1249))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 172)) (br $__dispatch)
    )) ;; end block / LAB L454 = idx 172
    (if (i32.eq (local.get $__lab) (i32.const 172)) (then ;; L454
    ;; line 7:1252
    (global.set $__line (i32.const 1252))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1924))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1253
    (global.set $__line (i32.const 1253))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1254
    (global.set $__line (i32.const 1254))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1255
    (global.set $__line (i32.const 1255))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1868))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1256
    (global.set $__line (i32.const 1256))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1257
    (global.set $__line (i32.const 1257))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1258
    (global.set $__line (i32.const 1258))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1259
    (global.set $__line (i32.const 1259))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 173)) (br $__dispatch)
    )) ;; end block / LAB L455 = idx 173
    (if (i32.eq (local.get $__lab) (i32.const 173)) (then ;; L455
    ;; line 7:1262
    (global.set $__line (i32.const 1262))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1263
    (global.set $__line (i32.const 1263))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1264
    (global.set $__line (i32.const 1264))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1265
    (global.set $__line (i32.const 1265))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1268
    (global.set $__line (i32.const 1268))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1269
    (global.set $__line (i32.const 1269))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 176)) (br $__dispatch) ;; JUMP L457
    )) ;; end block / LAB L456 = idx 174
    (if (i32.eq (local.get $__lab) (i32.const 174)) (then ;; L456
    ;; line 7:1270
    (global.set $__line (i32.const 1270))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 175)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t8))
    (local.set $t4 (local.get $t8))
    ;; line 7:1271
    (global.set $__line (i32.const 1271))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8))
    (local.set $t5 (local.get $t8))
      (local.set $__lab (i32.const 177)) (br $__dispatch) ;; JUMP L459
    )) ;; end block / LAB L458 = idx 175
    (if (i32.eq (local.get $__lab) (i32.const 175)) (then ;; L458
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
      (local.set $__lab (i32.const 176)) (br $__dispatch)
    )) ;; end block / LAB L457 = idx 176
    (if (i32.eq (local.get $__lab) (i32.const 176)) (then ;; L457
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 174)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 177)) (br $__dispatch)
    )) ;; end block / LAB L459 = idx 177
    (if (i32.eq (local.get $__lab) (i32.const 177)) (then ;; L459
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (local.get $t6) (then
      (local.set $__lab (i32.const 179)) (br $__dispatch)
    ))
    ;; line 7:1272
    (global.set $__line (i32.const 1272))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 178)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 178)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 178)) (br $__dispatch)
    ))
    ;; line 7:1273
    (global.set $__line (i32.const 1273))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 178)) (br $__dispatch)
    )) ;; end block / LAB L461 = idx 178
    (if (i32.eq (local.get $__lab) (i32.const 178)) (then ;; L461
      (local.set $__lab (i32.const 179)) (br $__dispatch)
    )) ;; end block / LAB L460 = idx 179
    (if (i32.eq (local.get $__lab) (i32.const 179)) (then ;; L460
    ;; line 7:1274
    (global.set $__line (i32.const 1274))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 180)) (br $__dispatch)
    ))
    ;; line 7:1275
    (global.set $__line (i32.const 1275))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1302))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 181)) (br $__dispatch) ;; JUMP L464
    )) ;; end block / LAB L462 = idx 180
    (if (i32.eq (local.get $__lab) (i32.const 180)) (then ;; L462
    ;; line 7:1276
    (global.set $__line (i32.const 1276))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1321))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 181)) (br $__dispatch)
    )) ;; end block / LAB L464 = idx 181
    (if (i32.eq (local.get $__lab) (i32.const 181)) (then ;; L464
    ;; line 7:1278
    (global.set $__line (i32.const 1278))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1281
    (global.set $__line (i32.const 1281))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:1282
    (global.set $__line (i32.const 1282))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1283
    (global.set $__line (i32.const 1283))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1284
    (global.set $__line (i32.const 1284))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 182)) (br $__dispatch)
    )) ;; end block / LAB L465 = idx 182
    (if (i32.eq (local.get $__lab) (i32.const 182)) (then ;; L465
    ;; line 7:1287
    (global.set $__line (i32.const 1287))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1288
    (global.set $__line (i32.const 1288))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1289
    (global.set $__line (i32.const 1289))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1290
    (global.set $__line (i32.const 1290))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; line 7:1295
    (global.set $__line (i32.const 1295))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 183)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 183)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 183)) (br $__dispatch)
    ))
    ;; line 7:1296
    (global.set $__line (i32.const 1296))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L466: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 184)) (br $__dispatch)
    )) ;; end block / LAB L467 = idx 183
    (if (i32.eq (local.get $__lab) (i32.const 183)) (then ;; L467
    ;; line 7:1297
    (global.set $__line (i32.const 1297))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    ;; RES L466: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 184)) (br $__dispatch)
    )) ;; end block / LAB L466 = idx 184
    (if (i32.eq (local.get $__lab) (i32.const 184)) (then ;; L466
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1295
    (global.set $__line (i32.const 1295))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1335))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1300
    (global.set $__line (i32.const 1300))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1303
    (global.set $__line (i32.const 1303))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:1304
    (global.set $__line (i32.const 1304))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1305
    (global.set $__line (i32.const 1305))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1306
    (global.set $__line (i32.const 1306))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 185)) (br $__dispatch)
    )) ;; end block / LAB L468 = idx 185
    (if (i32.eq (local.get $__lab) (i32.const 185)) (then ;; L468
    ;; line 7:1309
    (global.set $__line (i32.const 1309))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1310
    (global.set $__line (i32.const 1310))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1311
    (global.set $__line (i32.const 1311))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1312
    (global.set $__line (i32.const 1312))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1363))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1313
    (global.set $__line (i32.const 1313))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1315
    (global.set $__line (i32.const 1315))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:1316
    (global.set $__line (i32.const 1316))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1317
    (global.set $__line (i32.const 1317))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1318
    (global.set $__line (i32.const 1318))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 186)) (br $__dispatch)
    )) ;; end block / LAB L469 = idx 186
    (if (i32.eq (local.get $__lab) (i32.const 186)) (then ;; L469
    ;; line 7:1321
    (global.set $__line (i32.const 1321))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1924))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1322
    (global.set $__line (i32.const 1322))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1323
    (global.set $__line (i32.const 1323))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1324
    (global.set $__line (i32.const 1324))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1379))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1325
    (global.set $__line (i32.const 1325))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1327
    (global.set $__line (i32.const 1327))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:1328
    (global.set $__line (i32.const 1328))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1329
    (global.set $__line (i32.const 1329))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1330
    (global.set $__line (i32.const 1330))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 187)) (br $__dispatch)
    )) ;; end block / LAB L470 = idx 187
    (if (i32.eq (local.get $__lab) (i32.const 187)) (then ;; L470
    ;; line 7:1333
    (global.set $__line (i32.const 1333))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1334
    (global.set $__line (i32.const 1334))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1335
    (global.set $__line (i32.const 1335))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1336
    (global.set $__line (i32.const 1336))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; line 7:1337
    (global.set $__line (i32.const 1337))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 188)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 188)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 188)) (br $__dispatch)
    ))
    ;; line 7:1338
    (global.set $__line (i32.const 1338))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L471: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 189)) (br $__dispatch)
    )) ;; end block / LAB L472 = idx 188
    (if (i32.eq (local.get $__lab) (i32.const 188)) (then ;; L472
    ;; line 7:1339
    (global.set $__line (i32.const 1339))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    ;; RES L471: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 189)) (br $__dispatch)
    )) ;; end block / LAB L471 = idx 189
    (if (i32.eq (local.get $__lab) (i32.const 189)) (then ;; L471
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1337
    (global.set $__line (i32.const 1337))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1395))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1342
    (global.set $__line (i32.const 1342))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1345
    (global.set $__line (i32.const 1345))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:1346
    (global.set $__line (i32.const 1346))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1347
    (global.set $__line (i32.const 1347))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1348
    (global.set $__line (i32.const 1348))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 190)) (br $__dispatch)
    )) ;; end block / LAB L473 = idx 190
    (if (i32.eq (local.get $__lab) (i32.const 190)) (then ;; L473
    ;; line 7:1351
    (global.set $__line (i32.const 1351))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1352
    (global.set $__line (i32.const 1352))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1353
    (global.set $__line (i32.const 1353))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1354
    (global.set $__line (i32.const 1354))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1355
    (global.set $__line (i32.const 1355))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1356
    (global.set $__line (i32.const 1356))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1357
    (global.set $__line (i32.const 1357))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1358
    (global.set $__line (i32.const 1358))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 191)) (br $__dispatch)
    )) ;; end block / LAB L474 = idx 191
    (if (i32.eq (local.get $__lab) (i32.const 191)) (then ;; L474
    ;; line 7:1361
    (global.set $__line (i32.const 1361))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1362
    (global.set $__line (i32.const 1362))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1363
    (global.set $__line (i32.const 1363))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1364
    (global.set $__line (i32.const 1364))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1365
    (global.set $__line (i32.const 1365))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1366
    (global.set $__line (i32.const 1366))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1367
    (global.set $__line (i32.const 1367))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1368
    (global.set $__line (i32.const 1368))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 192)) (br $__dispatch)
    )) ;; end block / LAB L475 = idx 192
    (if (i32.eq (local.get $__lab) (i32.const 192)) (then ;; L475
    ;; line 7:1371
    (global.set $__line (i32.const 1371))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1372
    (global.set $__line (i32.const 1372))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1373
    (global.set $__line (i32.const 1373))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const -1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1374
    (global.set $__line (i32.const 1374))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1375
    (global.set $__line (i32.const 1375))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1376
    (global.set $__line (i32.const 1376))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1377
    (global.set $__line (i32.const 1377))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L476 = idx 193
    (if (i32.eq (local.get $__lab) (i32.const 193)) (then ;; L476
    ;; line 7:1379
    (global.set $__line (i32.const 1379))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1380
    (global.set $__line (i32.const 1380))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1381
    (global.set $__line (i32.const 1381))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1382
    (global.set $__line (i32.const 1382))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1383
    (global.set $__line (i32.const 1383))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1384
    (global.set $__line (i32.const 1384))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1385
    (global.set $__line (i32.const 1385))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L477 = idx 194
    (if (i32.eq (local.get $__lab) (i32.const 194)) (then ;; L477
    ;; line 7:1387
    (global.set $__line (i32.const 1387))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1388
    (global.set $__line (i32.const 1388))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1389
    (global.set $__line (i32.const 1389))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1414))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1390
    (global.set $__line (i32.const 1390))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1391
    (global.set $__line (i32.const 1391))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:1392
    (global.set $__line (i32.const 1392))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1393
    (global.set $__line (i32.const 1393))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1394
    (global.set $__line (i32.const 1394))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L478 = idx 195
    (if (i32.eq (local.get $__lab) (i32.const 195)) (then ;; L478
    ;; line 7:1397
    (global.set $__line (i32.const 1397))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1398
    (global.set $__line (i32.const 1398))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1399
    (global.set $__line (i32.const 1399))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1400
    (global.set $__line (i32.const 1400))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1932))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1401
    (global.set $__line (i32.const 1401))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1402
    (global.set $__line (i32.const 1402))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1403
    (global.set $__line (i32.const 1403))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1404
    (global.set $__line (i32.const 1404))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 196)) (br $__dispatch)
    )) ;; end block / LAB L479 = idx 196
    (if (i32.eq (local.get $__lab) (i32.const 196)) (then ;; L479
    ;; line 7:1407
    (global.set $__line (i32.const 1407))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1924))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1408
    (global.set $__line (i32.const 1408))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1409
    (global.set $__line (i32.const 1409))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1410
    (global.set $__line (i32.const 1410))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1411
    (global.set $__line (i32.const 1411))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1412
    (global.set $__line (i32.const 1412))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1413
    (global.set $__line (i32.const 1413))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1414
    (global.set $__line (i32.const 1414))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 197)) (br $__dispatch)
    )) ;; end block / LAB L480 = idx 197
    (if (i32.eq (local.get $__lab) (i32.const 197)) (then ;; L480
    ;; line 7:1417
    (global.set $__line (i32.const 1417))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1418
    (global.set $__line (i32.const 1418))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1419
    (global.set $__line (i32.const 1419))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1420
    (global.set $__line (i32.const 1420))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; line 7:1421
    (global.set $__line (i32.const 1421))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 198)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 198)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 198)) (br $__dispatch)
    ))
    ;; line 7:1422
    (global.set $__line (i32.const 1422))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L481: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 199)) (br $__dispatch)
    )) ;; end block / LAB L482 = idx 198
    (if (i32.eq (local.get $__lab) (i32.const 198)) (then ;; L482
    ;; line 7:1423
    (global.set $__line (i32.const 1423))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    ;; RES L481: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 199)) (br $__dispatch)
    )) ;; end block / LAB L481 = idx 199
    (if (i32.eq (local.get $__lab) (i32.const 199)) (then ;; L481
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1421
    (global.set $__line (i32.const 1421))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
    ;; line 7:1426
    (global.set $__line (i32.const 1426))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 200)) (br $__dispatch)
    ))
    ;; line 7:1427
    (global.set $__line (i32.const 1427))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t5))
      (local.set $__lab (i32.const 200)) (br $__dispatch)
    )) ;; end block / LAB L483 = idx 200
    (if (i32.eq (local.get $__lab) (i32.const 200)) (then ;; L483
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1429))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1428
    (global.set $__line (i32.const 1428))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1433))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1429
    (global.set $__line (i32.const 1429))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1452))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1431
    (global.set $__line (i32.const 1431))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1433
    (global.set $__line (i32.const 1433))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1434
    (global.set $__line (i32.const 1434))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1435
    (global.set $__line (i32.const 1435))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 201)) (br $__dispatch)
    )) ;; end block / LAB L484 = idx 201
    (if (i32.eq (local.get $__lab) (i32.const 201)) (then ;; L484
    ;; line 7:1438
    (global.set $__line (i32.const 1438))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1439
    (global.set $__line (i32.const 1439))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1440
    (global.set $__line (i32.const 1440))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1441
    (global.set $__line (i32.const 1441))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1442
    (global.set $__line (i32.const 1442))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1443
    (global.set $__line (i32.const 1443))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1444
    (global.set $__line (i32.const 1444))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L485 = idx 202
    (if (i32.eq (local.get $__lab) (i32.const 202)) (then ;; L485
    ;; line 7:1446
    (global.set $__line (i32.const 1446))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1447
    (global.set $__line (i32.const 1447))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1448
    (global.set $__line (i32.const 1448))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1449
    (global.set $__line (i32.const 1449))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1450
    (global.set $__line (i32.const 1450))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1451
    (global.set $__line (i32.const 1451))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1452
    (global.set $__line (i32.const 1452))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L486 = idx 203
    (if (i32.eq (local.get $__lab) (i32.const 203)) (then ;; L486
    ;; line 7:1455
    (global.set $__line (i32.const 1455))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 204)) (br $__dispatch)
    )) ;; end block / LAB L487 = idx 204
    (if (i32.eq (local.get $__lab) (i32.const 204)) (then ;; L487
      (local.set $__lab (i32.const 205)) (br $__dispatch)
    )) ;; end block / LAB L488 = idx 205
    (if (i32.eq (local.get $__lab) (i32.const 205)) (then ;; L488
      (local.set $__lab (i32.const 206)) (br $__dispatch)
    )) ;; end block / LAB L489 = idx 206
    (if (i32.eq (local.get $__lab) (i32.const 206)) (then ;; L489
      (local.set $__lab (i32.const 207)) (br $__dispatch)
    )) ;; end block / LAB L490 = idx 207
    (if (i32.eq (local.get $__lab) (i32.const 207)) (then ;; L490
    ;; line 7:1456
    (global.set $__line (i32.const 1456))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 208)) (br $__dispatch)
    )) ;; end block / LAB L491 = idx 208
    (if (i32.eq (local.get $__lab) (i32.const 208)) (then ;; L491
      (local.set $__lab (i32.const 209)) (br $__dispatch)
    )) ;; end block / LAB L492 = idx 209
    (if (i32.eq (local.get $__lab) (i32.const 209)) (then ;; L492
      (local.set $__lab (i32.const 210)) (br $__dispatch)
    )) ;; end block / LAB L493 = idx 210
    (if (i32.eq (local.get $__lab) (i32.const 210)) (then ;; L493
    ;; line 7:1457
    (global.set $__line (i32.const 1457))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 211)) (br $__dispatch)
    )) ;; end block / LAB L494 = idx 211
    (if (i32.eq (local.get $__lab) (i32.const 211)) (then ;; L494
      (local.set $__lab (i32.const 212)) (br $__dispatch)
    )) ;; end block / LAB L495 = idx 212
    (if (i32.eq (local.get $__lab) (i32.const 212)) (then ;; L495
      (local.set $__lab (i32.const 213)) (br $__dispatch)
    )) ;; end block / LAB L496 = idx 213
    (if (i32.eq (local.get $__lab) (i32.const 213)) (then ;; L496
    ;; line 7:1458
    (global.set $__line (i32.const 1458))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 214)) (br $__dispatch)
    )) ;; end block / LAB L497 = idx 214
    (if (i32.eq (local.get $__lab) (i32.const 214)) (then ;; L497
      (local.set $__lab (i32.const 215)) (br $__dispatch)
    )) ;; end block / LAB L498 = idx 215
    (if (i32.eq (local.get $__lab) (i32.const 215)) (then ;; L498
    ;; line 7:1459
    (global.set $__line (i32.const 1459))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 216)) (br $__dispatch)
    )) ;; end block / LAB L499 = idx 216
    (if (i32.eq (local.get $__lab) (i32.const 216)) (then ;; L499
      (local.set $__lab (i32.const 217)) (br $__dispatch)
    )) ;; end block / LAB L500 = idx 217
    (if (i32.eq (local.get $__lab) (i32.const 217)) (then ;; L500
      (local.set $__lab (i32.const 218)) (br $__dispatch)
    )) ;; end block / LAB L501 = idx 218
    (if (i32.eq (local.get $__lab) (i32.const 218)) (then ;; L501
      (local.set $__lab (i32.const 219)) (br $__dispatch)
    )) ;; end block / LAB L502 = idx 219
    (if (i32.eq (local.get $__lab) (i32.const 219)) (then ;; L502
      (local.set $__lab (i32.const 220)) (br $__dispatch)
    )) ;; end block / LAB L503 = idx 220
    (if (i32.eq (local.get $__lab) (i32.const 220)) (then ;; L503
      (local.set $__lab (i32.const 221)) (br $__dispatch)
    )) ;; end block / LAB L504 = idx 221
    (if (i32.eq (local.get $__lab) (i32.const 221)) (then ;; L504
    ;; line 7:1460
    (global.set $__line (i32.const 1460))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 222)) (br $__dispatch)
    )) ;; end block / LAB L505 = idx 222
    (if (i32.eq (local.get $__lab) (i32.const 222)) (then ;; L505
      (local.set $__lab (i32.const 223)) (br $__dispatch)
    )) ;; end block / LAB L506 = idx 223
    (if (i32.eq (local.get $__lab) (i32.const 223)) (then ;; L506
      (local.set $__lab (i32.const 224)) (br $__dispatch)
    )) ;; end block / LAB L507 = idx 224
    (if (i32.eq (local.get $__lab) (i32.const 224)) (then ;; L507
    ;; line 7:1461
    (global.set $__line (i32.const 1461))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 225)) (br $__dispatch)
    )) ;; end block / LAB L508 = idx 225
    (if (i32.eq (local.get $__lab) (i32.const 225)) (then ;; L508
      (local.set $__lab (i32.const 226)) (br $__dispatch)
    )) ;; end block / LAB L509 = idx 226
    (if (i32.eq (local.get $__lab) (i32.const 226)) (then ;; L509
    ;; line 7:1462
    (global.set $__line (i32.const 1462))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 227)) (br $__dispatch)
    )) ;; end block / LAB L510 = idx 227
    (if (i32.eq (local.get $__lab) (i32.const 227)) (then ;; L510
      (local.set $__lab (i32.const 228)) (br $__dispatch)
    )) ;; end block / LAB L511 = idx 228
    (if (i32.eq (local.get $__lab) (i32.const 228)) (then ;; L511
    ;; line 7:1463
    (global.set $__line (i32.const 1463))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 229)) (br $__dispatch)
    )) ;; end block / LAB L512 = idx 229
    (if (i32.eq (local.get $__lab) (i32.const 229)) (then ;; L512
      (local.set $__lab (i32.const 230)) (br $__dispatch)
    )) ;; end block / LAB L513 = idx 230
    (if (i32.eq (local.get $__lab) (i32.const 230)) (then ;; L513
      (local.set $__lab (i32.const 231)) (br $__dispatch)
    )) ;; end block / LAB L514 = idx 231
    (if (i32.eq (local.get $__lab) (i32.const 231)) (then ;; L514
      (local.set $__lab (i32.const 232)) (br $__dispatch)
    )) ;; end block / LAB L515 = idx 232
    (if (i32.eq (local.get $__lab) (i32.const 232)) (then ;; L515
    ;; line 7:1464
    (global.set $__line (i32.const 1464))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 233)) (br $__dispatch)
    )) ;; end block / LAB L516 = idx 233
    (if (i32.eq (local.get $__lab) (i32.const 233)) (then ;; L516
      (local.set $__lab (i32.const 234)) (br $__dispatch)
    )) ;; end block / LAB L517 = idx 234
    (if (i32.eq (local.get $__lab) (i32.const 234)) (then ;; L517
    ;; line 7:1465
    (global.set $__line (i32.const 1465))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 235)) (br $__dispatch)
    )) ;; end block / LAB L518 = idx 235
    (if (i32.eq (local.get $__lab) (i32.const 235)) (then ;; L518
      (local.set $__lab (i32.const 236)) (br $__dispatch)
    )) ;; end block / LAB L519 = idx 236
    (if (i32.eq (local.get $__lab) (i32.const 236)) (then ;; L519
      (local.set $__lab (i32.const 237)) (br $__dispatch)
    )) ;; end block / LAB L520 = idx 237
    (if (i32.eq (local.get $__lab) (i32.const 237)) (then ;; L520
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1466
    (global.set $__line (i32.const 1466))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t3))
    ;; line 7:1467
    (global.set $__line (i32.const 1467))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1468
    (global.set $__line (i32.const 1468))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L521 = idx 238
    (if (i32.eq (local.get $__lab) (i32.const 238)) (then ;; L521
    ;; line 7:1470
    (global.set $__line (i32.const 1470))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1471
    (global.set $__line (i32.const 1471))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1472
    (global.set $__line (i32.const 1472))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.const -1))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1840))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1473
    (global.set $__line (i32.const 1473))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1474
    (global.set $__line (i32.const 1474))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1475
    (global.set $__line (i32.const 1475))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1476
    (global.set $__line (i32.const 1476))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 239)) (br $__dispatch)
    )) ;; end block / LAB L522 = idx 239
    (if (i32.eq (local.get $__lab) (i32.const 239)) (then ;; L522
    ;; line 7:1479
    (global.set $__line (i32.const 1479))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1480
    (global.set $__line (i32.const 1480))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1481
    (global.set $__line (i32.const 1481))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1840))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1482
    (global.set $__line (i32.const 1482))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1483
    (global.set $__line (i32.const 1483))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1484
    (global.set $__line (i32.const 1484))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1485
    (global.set $__line (i32.const 1485))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 240)) (br $__dispatch)
    )) ;; end block / LAB L523 = idx 240
    (if (i32.eq (local.get $__lab) (i32.const 240)) (then ;; L523
    ;; line 7:1488
    (global.set $__line (i32.const 1488))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1489
    (global.set $__line (i32.const 1489))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1490
    (global.set $__line (i32.const 1490))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1491
    (global.set $__line (i32.const 1491))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1459))) ;; LSTR
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush t7 (pre-stack-up)
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1492
    (global.set $__line (i32.const 1492))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1494
    (global.set $__line (i32.const 1494))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1495
    (global.set $__line (i32.const 1495))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1496
    (global.set $__line (i32.const 1496))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 241)) (br $__dispatch)
    )) ;; end block / LAB L524 = idx 241
    (if (i32.eq (local.get $__lab) (i32.const 241)) (then ;; L524
    ;; line 7:1499
    (global.set $__line (i32.const 1499))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1503
    (global.set $__line (i32.const 1503))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:1504
    (global.set $__line (i32.const 1504))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 242)) (br $__dispatch)
    ))
    ;; line 7:1505
    (global.set $__line (i32.const 1505))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t3))
      (local.set $__lab (i32.const 242)) (br $__dispatch)
    )) ;; end block / LAB L525 = idx 242
    (if (i32.eq (local.get $__lab) (i32.const 242)) (then ;; L525
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1506
    (global.set $__line (i32.const 1506))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1477))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1507
    (global.set $__line (i32.const 1507))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1488))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1508
    (global.set $__line (i32.const 1508))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1509
    (global.set $__line (i32.const 1509))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1510
    (global.set $__line (i32.const 1510))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1511
    (global.set $__line (i32.const 1511))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L526 = idx 243
    (if (i32.eq (local.get $__lab) (i32.const 243)) (then ;; L526
    ;; line 7:1514
    (global.set $__line (i32.const 1514))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1515
    (global.set $__line (i32.const 1515))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1516
    (global.set $__line (i32.const 1516))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1499))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1517
    (global.set $__line (i32.const 1517))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1503))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1518
    (global.set $__line (i32.const 1518))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1521))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1519
    (global.set $__line (i32.const 1519))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1520
    (global.set $__line (i32.const 1520))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1521
    (global.set $__line (i32.const 1521))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1522
    (global.set $__line (i32.const 1522))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L527 = idx 244
    (if (i32.eq (local.get $__lab) (i32.const 244)) (then ;; L527
    ;; line 7:1524
    (global.set $__line (i32.const 1524))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1525
    (global.set $__line (i32.const 1525))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:1526
    (global.set $__line (i32.const 1526))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1527
    (global.set $__line (i32.const 1527))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1528))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1528
    (global.set $__line (i32.const 1528))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1532))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1533
    (global.set $__line (i32.const 1533))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1503))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1534
    (global.set $__line (i32.const 1534))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1543))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1535
    (global.set $__line (i32.const 1535))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1536
    (global.set $__line (i32.const 1536))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
    ;; line 7:1538
    (global.set $__line (i32.const 1538))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 245)) (br $__dispatch)
    ))
    ;; line 7:1539
    (global.set $__line (i32.const 1539))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t3))
      (local.set $__lab (i32.const 245)) (br $__dispatch)
    )) ;; end block / LAB L528 = idx 245
    (if (i32.eq (local.get $__lab) (i32.const 245)) (then ;; L528
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1540
    (global.set $__line (i32.const 1540))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1541
    (global.set $__line (i32.const 1541))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L529 = idx 246
    (if (i32.eq (local.get $__lab) (i32.const 246)) (then ;; L529
    ;; line 7:1544
    (global.set $__line (i32.const 1544))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1545
    (global.set $__line (i32.const 1545))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1546
    (global.set $__line (i32.const 1546))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1547
    (global.set $__line (i32.const 1547))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1548
    (global.set $__line (i32.const 1548))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1552))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1549
    (global.set $__line (i32.const 1549))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1532))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1550
    (global.set $__line (i32.const 1550))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
    ;; line 7:1551
    (global.set $__line (i32.const 1551))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 247)) (br $__dispatch)
    ))
    ;; line 7:1552
    (global.set $__line (i32.const 1552))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t5))
      (local.set $__lab (i32.const 247)) (br $__dispatch)
    )) ;; end block / LAB L530 = idx 247
    (if (i32.eq (local.get $__lab) (i32.const 247)) (then ;; L530
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1553
    (global.set $__line (i32.const 1553))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1554
    (global.set $__line (i32.const 1554))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1556
    (global.set $__line (i32.const 1556))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 248)) (br $__dispatch)
    )) ;; end block / LAB L531 = idx 248
    (if (i32.eq (local.get $__lab) (i32.const 248)) (then ;; L531
    ;; line 7:1559
    (global.set $__line (i32.const 1559))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1560
    (global.set $__line (i32.const 1560))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1561
    (global.set $__line (i32.const 1561))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1564))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1562
    (global.set $__line (i32.const 1562))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1569))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1563
    (global.set $__line (i32.const 1563))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1564
    (global.set $__line (i32.const 1564))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:1565
    (global.set $__line (i32.const 1565))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1566
    (global.set $__line (i32.const 1566))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1567
    (global.set $__line (i32.const 1567))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 249)) (br $__dispatch)
    )) ;; end block / LAB L532 = idx 249
    (if (i32.eq (local.get $__lab) (i32.const 249)) (then ;; L532
    ;; line 7:1570
    (global.set $__line (i32.const 1570))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1571
    (global.set $__line (i32.const 1571))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (if (i32.ne  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 250)) (br $__dispatch)
    ))
    ;; line 7:1572
    (global.set $__line (i32.const 1572))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t4))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    )) ;; end block / LAB L533 = idx 250
    (if (i32.eq (local.get $__lab) (i32.const 250)) (then ;; L533
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1573
    (global.set $__line (i32.const 1573))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1574
    (global.set $__line (i32.const 1574))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 251)) (br $__dispatch)
    ))
    ;; line 7:1575
    (global.set $__line (i32.const 1575))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t4))
      (local.set $__lab (i32.const 251)) (br $__dispatch)
    )) ;; end block / LAB L534 = idx 251
    (if (i32.eq (local.get $__lab) (i32.const 251)) (then ;; L534
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 254)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 252)) (br $__dispatch)
    )) ;; end block / LAB L535 = idx 252
    (if (i32.eq (local.get $__lab) (i32.const 252)) (then ;; L535
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
    ;; line 7:1579
    (global.set $__line (i32.const 1579))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 253)) (br $__dispatch)
    ))
    ;; line 7:1580
    (global.set $__line (i32.const 1580))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1581
    (global.set $__line (i32.const 1581))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1582
    (global.set $__line (i32.const 1582))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1585))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 253)) (br $__dispatch)
    )) ;; end block / LAB L537 = idx 253
    (if (i32.eq (local.get $__lab) (i32.const 253)) (then ;; L537
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 252)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 254)) (br $__dispatch)
    )) ;; end block / LAB L536 = idx 254
    (if (i32.eq (local.get $__lab) (i32.const 254)) (then ;; L536
    ;; line 7:1578
    (global.set $__line (i32.const 1578))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 257)) (br $__dispatch)
    ))
    ;; line 7:1590
    (global.set $__line (i32.const 1590))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 256)) (br $__dispatch) ;; JUMP L540
    )) ;; end block / LAB L539 = idx 255
    (if (i32.eq (local.get $__lab) (i32.const 255)) (then ;; L539
    ;; line 7:1591
    (global.set $__line (i32.const 1591))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1592
    (global.set $__line (i32.const 1592))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1593
    (global.set $__line (i32.const 1593))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1594))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
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
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t6))
    (local.set $t4 (local.get $t6))
      (local.set $__lab (i32.const 256)) (br $__dispatch)
    )) ;; end block / LAB L540 = idx 256
    (if (i32.eq (local.get $__lab) (i32.const 256)) (then ;; L540
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 255)) (br $__dispatch)
    ))
    ;; line 7:1594
    (global.set $__line (i32.const 1594))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t4))
      (local.set $__lab (i32.const 257)) (br $__dispatch)
    )) ;; end block / LAB L538 = idx 257
    (if (i32.eq (local.get $__lab) (i32.const 257)) (then ;; L538
    ;; line 7:1596
    (global.set $__line (i32.const 1596))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t4))
    ;; line 7:1598
    (global.set $__line (i32.const 1598))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1599
    (global.set $__line (i32.const 1599))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1600
    (global.set $__line (i32.const 1600))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1601
    (global.set $__line (i32.const 1601))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 258)) (br $__dispatch)
    )) ;; end block / LAB L541 = idx 258
    (if (i32.eq (local.get $__lab) (i32.const 258)) (then ;; L541
    ;; line 7:1604
    (global.set $__line (i32.const 1604))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (if (i32.eq  (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 303)) (br $__dispatch)
    ))
    ;; line 7:1605
    (global.set $__line (i32.const 1605))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1606
    (global.set $__line (i32.const 1606))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1607
    (global.set $__line (i32.const 1607))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 259)) (br $__dispatch)
    ))
    ;; line 7:1613
    (global.set $__line (i32.const 1613))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t3))
      (local.set $__lab (i32.const 259)) (br $__dispatch)
    )) ;; end block / LAB L542 = idx 259
    (if (i32.eq (local.get $__lab) (i32.const 259)) (then ;; L542
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 261)) (br $__dispatch) ;; JUMP L544
    )) ;; end block / LAB L543 = idx 260
    (if (i32.eq (local.get $__lab) (i32.const 260)) (then ;; L543
    ;; line 7:1614
    (global.set $__line (i32.const 1614))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 339))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1615
    (global.set $__line (i32.const 1615))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1616
    (global.set $__line (i32.const 1616))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1606))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t5))
    (local.set $t3 (local.get $t5))
      (local.set $__lab (i32.const 261)) (br $__dispatch)
    )) ;; end block / LAB L544 = idx 261
    (if (i32.eq (local.get $__lab) (i32.const 261)) (then ;; L544
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 260)) (br $__dispatch)
    ))
    ;; line 7:1617
    (global.set $__line (i32.const 1617))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t3))
    ;; line 7:1619
    (global.set $__line (i32.const 1619))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1620
    (global.set $__line (i32.const 1620))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1621
    (global.set $__line (i32.const 1621))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1622
    (global.set $__line (i32.const 1622))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L545 = idx 262
    (if (i32.eq (local.get $__lab) (i32.const 262)) (then ;; L545
    ;; line 7:1625
    (global.set $__line (i32.const 1625))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 263)) (br $__dispatch)
    )) ;; end block / LAB L546 = idx 263
    (if (i32.eq (local.get $__lab) (i32.const 263)) (then ;; L546
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1626
    (global.set $__line (i32.const 1626))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1627
    (global.set $__line (i32.const 1627))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1628
    (global.set $__line (i32.const 1628))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1844))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1629
    (global.set $__line (i32.const 1629))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1630
    (global.set $__line (i32.const 1630))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1631
    (global.set $__line (i32.const 1631))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1632
    (global.set $__line (i32.const 1632))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 264)) (br $__dispatch)
    )) ;; end block / LAB L547 = idx 264
    (if (i32.eq (local.get $__lab) (i32.const 264)) (then ;; L547
    ;; line 7:1635
    (global.set $__line (i32.const 1635))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1636
    (global.set $__line (i32.const 1636))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1637
    (global.set $__line (i32.const 1637))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1616))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1638
    (global.set $__line (i32.const 1638))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1639
    (global.set $__line (i32.const 1639))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1640
    (global.set $__line (i32.const 1640))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1641
    (global.set $__line (i32.const 1641))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L548 = idx 265
    (if (i32.eq (local.get $__lab) (i32.const 265)) (then ;; L548
    ;; line 7:1643
    (global.set $__line (i32.const 1643))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1647
    (global.set $__line (i32.const 1647))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1648
    (global.set $__line (i32.const 1648))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1649
    (global.set $__line (i32.const 1649))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.add (global.get $P) (i32.const 6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush t5 (pre-stack-up)
    ;; line 7:1650
    (global.set $__line (i32.const 1650))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t71 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71)) ;; STORE slot 71
    ;; line 7:1651
    (global.set $__line (i32.const 1651))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t74 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t73) (i32.const 2)) (local.get $t74)) (local.get $t72))
    ;; line 7:1654
    (global.set $__line (i32.const 1654))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 1))
    (local.set $t73 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (if (i32.gt_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 267)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 266)) (br $__dispatch)
    )) ;; end block / LAB L549 = idx 266
    (if (i32.eq (local.get $__lab) (i32.const 266)) (then ;; L549
    ;; line 7:1655
    (global.set $__line (i32.const 1655))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t77)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (local.set $t74 (call_indirect $ftable (type $bcpl_fn) (local.get $t77)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74)) ;; flush FNAP result
    (local.set $t75 (i32.const 255))
    (local.set $t74 (i32.and (local.get $t74) (local.get $t75)))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (i32.store8 (i32.add (i32.shl (local.get $t75) (i32.const 2)) (local.get $t76)) (local.get $t74))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t75 (i32.const 1))
    (local.set $t74 (i32.add (local.get $t74) (local.get $t75)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t74))
    (local.set $t72 (local.get $t74))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (if (i32.le_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 266)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 267)) (br $__dispatch)
    )) ;; end block / LAB L550 = idx 267
    (if (i32.eq (local.get $__lab) (i32.const 267)) (then ;; L550
    (local.set $t72 (i32.const 0))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (local.set $t74 (i32.const 1))
    (local.set $t73 (i32.sub (local.get $t73) (local.get $t74)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
      (local.set $__lab (i32.const 275)) (br $__dispatch) ;; JUMP L552
    )) ;; end block / LAB L551 = idx 268
    (if (i32.eq (local.get $__lab) (i32.const 268)) (then ;; L551
    ;; line 7:1658
    (global.set $__line (i32.const 1658))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t74 (i32.add (local.get $t74) (local.get $t75)))
    (local.set $t74 (i32.load (i32.shl (local.get $t74) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74)) ;; STORE slot 74
    ;; line 7:1659
    (global.set $__line (i32.const 1659))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.const 1))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t75 (i32.load (i32.shl (local.get $t75) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75)) ;; STORE slot 75
    ;; line 7:1660
    (global.set $__line (i32.const 1660))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 300))))
    (if (i32.ne  (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 274)) (br $__dispatch)
    ))
    ;; line 7:1661
    (global.set $__line (i32.const 1661))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76)) ;; STORE slot 76
    ;; line 7:1662
    (global.set $__line (i32.const 1662))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (i32.const 0))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t79 (i32.const 1))
    (local.set $t78 (i32.sub (local.get $t78) (local.get $t79)))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77)) ;; STORE slot 77
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78)) ;; STORE slot 78
      (local.set $__lab (i32.const 271)) (br $__dispatch) ;; JUMP L555
    )) ;; end block / LAB L554 = idx 269
    (if (i32.eq (local.get $__lab) (i32.const 269)) (then ;; L554
    ;; line 7:1663
    (global.set $__line (i32.const 1663))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 308))))
    (local.set $t80 (i32.const 4))
    (local.set $t79 (i32.div_s (local.get $t79) (local.get $t80)))
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 296))))
    (local.set $t79 (i32.add (local.get $t79) (local.get $t80)))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79)) ;; STORE slot 79
    ;; line 7:1664
    (global.set $__line (i32.const 1664))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 308))))
    (local.set $t81 (i32.const 4))
    (local.set $t80 (i32.rem_s (local.get $t80) (local.get $t81)))
    (local.set $t81 (i32.const 8))
    (local.set $t80 (i32.mul (local.get $t80) (local.get $t81)))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80)) ;; STORE slot 80
    ;; line 7:1665
    (global.set $__line (i32.const 1665))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t81 (i32.load (i32.add (local.get $Pb) (i32.const 316))))
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t81 (i32.add (local.get $t81) (local.get $t82)))
    (local.set $t81 (i32.load (i32.shl (local.get $t81) (i32.const 2))))
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 320))))
    (local.set $t81 (i32.shr_u (local.get $t81) (local.get $t82)))
    (local.set $t82 (i32.const 255))
    (local.set $t81 (i32.and (local.get $t81) (local.get $t82)))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81)) ;; STORE slot 81
    ;; line 7:1666
    (global.set $__line (i32.const 1666))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t82 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t83 (i32.load (i32.add (local.get $Pb) (i32.const 308))))
    (local.set $t82 (i32.load8_u (i32.add (i32.shl (local.get $t82) (i32.const 2)) (local.get $t83))))
    (local.set $t83 (i32.load (i32.add (local.get $Pb) (i32.const 324))))
    (if (i32.eq  (local.get $t82) (local.get $t83)) (then
      (local.set $__lab (i32.const 270)) (br $__dispatch)
    ))
    ;; line 7:1667
    (global.set $__line (i32.const 1667))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t82 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t82))
    (local.set $t76 (local.get $t82))
      (local.set $__lab (i32.const 272)) (br $__dispatch) ;; JUMP L557
    )) ;; end block / LAB L556 = idx 270
    (if (i32.eq (local.get $__lab) (i32.const 270)) (then ;; L556
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 308))))
    (local.set $t80 (i32.const 1))
    (local.set $t79 (i32.add (local.get $t79) (local.get $t80)))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t79))
    (local.set $t77 (local.get $t79))
      (local.set $__lab (i32.const 271)) (br $__dispatch)
    )) ;; end block / LAB L555 = idx 271
    (if (i32.eq (local.get $__lab) (i32.const 271)) (then ;; L555
    (local.set $t79 (i32.load (i32.add (local.get $Pb) (i32.const 308))))
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 312))))
    (if (i32.le_s (local.get $t79) (local.get $t80)) (then
      (local.set $__lab (i32.const 269)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 272)) (br $__dispatch)
    )) ;; end block / LAB L557 = idx 272
    (if (i32.eq (local.get $__lab) (i32.const 272)) (then ;; L557
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 304))))
    (if (i32.eqz (local.get $t77)) (then
      (local.set $__lab (i32.const 273)) (br $__dispatch)
    ))
    ;; line 7:1669
    (global.set $__line (i32.const 1669))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 296))))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t77))
    (local.set $t71 (local.get $t77))
      (local.set $__lab (i32.const 276)) (br $__dispatch) ;; JUMP L559
    )) ;; end block / LAB L558 = idx 273
    (if (i32.eq (local.get $__lab) (i32.const 273)) (then ;; L558
      (local.set $__lab (i32.const 274)) (br $__dispatch)
    )) ;; end block / LAB L553 = idx 274
    (if (i32.eq (local.get $__lab) (i32.const 274)) (then ;; L553
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t75 (i32.const 2))
    (local.set $t74 (i32.add (local.get $t74) (local.get $t75)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t74))
    (local.set $t72 (local.get $t74))
      (local.set $__lab (i32.const 275)) (br $__dispatch)
    )) ;; end block / LAB L552 = idx 275
    (if (i32.eq (local.get $__lab) (i32.const 275)) (then ;; L552
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (if (i32.le_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 268)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 276)) (br $__dispatch)
    )) ;; end block / LAB L559 = idx 276
    (if (i32.eq (local.get $__lab) (i32.const 276)) (then ;; L559
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t73 (i32.const 0))
    (if (i32.ge_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 282)) (br $__dispatch)
    ))
    ;; line 7:1674
    (global.set $__line (i32.const 1674))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t72))
    (local.set $t71 (local.get $t72))
    ;; line 7:1675
    (global.set $__line (i32.const 1675))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    ;; line 7:1676
    (global.set $__line (i32.const 1676))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    ;; line 7:1677
    (global.set $__line (i32.const 1677))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t74 (i32.const 0))
    (local.set $t75 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t76 (i32.const 1))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74)) ;; STORE slot 74
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75)) ;; STORE slot 75
      (local.set $__lab (i32.const 279)) (br $__dispatch) ;; JUMP L562
    )) ;; end block / LAB L561 = idx 277
    (if (i32.eq (local.get $__lab) (i32.const 277)) (then ;; L561
    ;; line 7:1678
    (global.set $__line (i32.const 1678))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 296))))
    (local.set $t76 (i32.load8_u (i32.add (i32.shl (local.get $t76) (i32.const 2)) (local.get $t77))))
    (local.set $t77 (i32.const 8))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t77 (i32.mul (local.get $t77) (local.get $t78)))
    (local.set $t76 (i32.shl (local.get $t76) (local.get $t77)))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t76 (i32.or (local.get $t76) (local.get $t77)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t76))
    (local.set $t72 (local.get $t76))
    ;; line 7:1679
    (global.set $__line (i32.const 1679))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.const 1))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t76))
    (local.set $t73 (local.get $t76))
    ;; line 7:1680
    (global.set $__line (i32.const 1680))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.const 4))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (if (i32.ne  (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 278)) (br $__dispatch)
    ))
    ;; line 7:1681
    (global.set $__line (i32.const 1681))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t79 (i32.const -1))
    (local.set $t80 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t81 (i32.add (global.get $TB) (i32.const 40))) ;; LF L50
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t81)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 76)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t81)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t76 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t76))
    (local.set $t72 (local.get $t76))
    (local.set $t76 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t76))
    (local.set $t73 (local.get $t76))
      (local.set $__lab (i32.const 278)) (br $__dispatch)
    )) ;; end block / LAB L563 = idx 278
    (if (i32.eq (local.get $__lab) (i32.const 278)) (then ;; L563
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 296))))
    (local.set $t77 (i32.const 1))
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t76))
    (local.set $t74 (local.get $t76))
      (local.set $__lab (i32.const 279)) (br $__dispatch)
    )) ;; end block / LAB L562 = idx 279
    (if (i32.eq (local.get $__lab) (i32.const 279)) (then ;; L562
    (local.set $t76 (i32.load (i32.add (local.get $Pb) (i32.const 296))))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 300))))
    (if (i32.le_s (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 277)) (br $__dispatch)
    ))
    (local.set $t74 (i32.load (i32.add (local.get $Pb) (i32.const 292))))
    (local.set $t75 (i32.const 0))
    (if (i32.le_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 280)) (br $__dispatch)
    ))
    ;; line 7:1683
    (global.set $__line (i32.const 1683))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (i32.const -1))
    (local.set $t78 (i32.load (i32.add (local.get $Pb) (i32.const 288))))
    (local.set $t79 (i32.add (global.get $TB) (i32.const 40))) ;; LF L50
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t79)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t79)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 280)) (br $__dispatch)
    )) ;; end block / LAB L564 = idx 280
    (if (i32.eq (local.get $__lab) (i32.const 280)) (then ;; L564
    (local.set $t72 (i32.const 2))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.const 2))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t73 (i32.mul (local.get $t73) (local.get $t74)))
    (if (i32.gt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 281)) (br $__dispatch)
    ))
    ;; line 7:1685
    (global.set $__line (i32.const 1685))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.shl (local.get $t73) (i32.const 2)) (local.get $t72))
    ;; line 7:1686
    (global.set $__line (i32.const 1686))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t73 (i32.const 1))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.shl (local.get $t73) (i32.const 2)) (local.get $t72))
    ;; line 7:1687
    (global.set $__line (i32.const 1687))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 2))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028)) (local.get $t72))
      (local.set $__lab (i32.const 281)) (br $__dispatch)
    )) ;; end block / LAB L565 = idx 281
    (if (i32.eq (local.get $__lab) (i32.const 281)) (then ;; L565
      (local.set $__lab (i32.const 282)) (br $__dispatch)
    )) ;; end block / LAB L560 = idx 282
    (if (i32.eq (local.get $__lab) (i32.const 282)) (then ;; L560
    ;; line 7:1688
    (global.set $__line (i32.const 1688))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t76)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t76)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1692
    (global.set $__line (i32.const 1692))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.add (global.get $SB) (i32.const 1626))) ;; LSTR
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t77 (i32.load (i32.add (local.get $Pb) (i32.const 284))))
    (local.set $t78 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t78)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t78)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1693
    (global.set $__line (i32.const 1693))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t76)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 72)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t76)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1695
    (global.set $__line (i32.const 1695))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 1))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t72))
    ;; line 7:1696
    (global.set $__line (i32.const 1696))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1698
    (global.set $__line (i32.const 1698))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1699
    (global.set $__line (i32.const 1699))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 283)) (br $__dispatch)
    )) ;; end block / LAB L566 = idx 283
    (if (i32.eq (local.get $__lab) (i32.const 283)) (then ;; L566
    ;; line 7:1702
    (global.set $__line (i32.const 1702))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1703
    (global.set $__line (i32.const 1703))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:1704
    (global.set $__line (i32.const 1704))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1705
    (global.set $__line (i32.const 1705))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1706
    (global.set $__line (i32.const 1706))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
    ;; line 7:1707
    (global.set $__line (i32.const 1707))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1644))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1708
    (global.set $__line (i32.const 1708))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 1))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
    ;; line 7:1710
    (global.set $__line (i32.const 1710))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1711
    (global.set $__line (i32.const 1711))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1713
    (global.set $__line (i32.const 1713))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1714
    (global.set $__line (i32.const 1714))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L567 = idx 284
    (if (i32.eq (local.get $__lab) (i32.const 284)) (then ;; L567
    ;; line 7:1717
    (global.set $__line (i32.const 1717))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1724
    (global.set $__line (i32.const 1724))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:1725
    (global.set $__line (i32.const 1725))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1726
    (global.set $__line (i32.const 1726))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.const 3))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1727
    (global.set $__line (i32.const 1727))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1728
    (global.set $__line (i32.const 1728))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 3))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:1729
    (global.set $__line (i32.const 1729))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 285)) (br $__dispatch)
    ))
    ;; line 7:1730
    (global.set $__line (i32.const 1730))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t6))
      (local.set $__lab (i32.const 285)) (br $__dispatch)
    )) ;; end block / LAB L568 = idx 285
    (if (i32.eq (local.get $__lab) (i32.const 285)) (then ;; L568
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1670))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1731
    (global.set $__line (i32.const 1731))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1733
    (global.set $__line (i32.const 1733))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1735
    (global.set $__line (i32.const 1735))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1736
    (global.set $__line (i32.const 1736))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    )) ;; end block / LAB L569 = idx 286
    (if (i32.eq (local.get $__lab) (i32.const 286)) (then ;; L569
    ;; line 7:1739
    (global.set $__line (i32.const 1739))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1740
    (global.set $__line (i32.const 1740))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:1741
    (global.set $__line (i32.const 1741))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1742
    (global.set $__line (i32.const 1742))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1743
    (global.set $__line (i32.const 1743))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1744
    (global.set $__line (i32.const 1744))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:1745
    (global.set $__line (i32.const 1745))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 287)) (br $__dispatch)
    ))
    ;; line 7:1746
    (global.set $__line (i32.const 1746))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t6))
      (local.set $__lab (i32.const 287)) (br $__dispatch)
    )) ;; end block / LAB L570 = idx 287
    (if (i32.eq (local.get $__lab) (i32.const 287)) (then ;; L570
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1696))) ;; LSTR
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
    ;; line 7:1747
    (global.set $__line (i32.const 1747))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 289)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 288)) (br $__dispatch)
    )) ;; end block / LAB L571 = idx 288
    (if (i32.eq (local.get $__lab) (i32.const 288)) (then ;; L571
    ;; line 7:1748
    (global.set $__line (i32.const 1748))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    ;; line 7:1749
    (global.set $__line (i32.const 1749))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (local.set $t9 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; flush FNAP result
    ;; line 7:1750
    (global.set $__line (i32.const 1750))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1706))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1751
    (global.set $__line (i32.const 1751))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1720))) ;; LSTR
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush t13 (pre-stack-up)
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 14)))
    (local.set $t14 (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14)) ;; flush FNAP result
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 288)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 289)) (br $__dispatch)
    )) ;; end block / LAB L572 = idx 289
    (if (i32.eq (local.get $__lab) (i32.const 289)) (then ;; L572
    ;; line 7:1752
    (global.set $__line (i32.const 1752))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1754
    (global.set $__line (i32.const 1754))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1755
    (global.set $__line (i32.const 1755))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1757
    (global.set $__line (i32.const 1757))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 290)) (br $__dispatch)
    )) ;; end block / LAB L573 = idx 290
    (if (i32.eq (local.get $__lab) (i32.const 290)) (then ;; L573
    ;; line 7:1760
    (global.set $__line (i32.const 1760))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1761
    (global.set $__line (i32.const 1761))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 291)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 291)) (br $__dispatch)
    ))
    ;; line 7:1766
    (global.set $__line (i32.const 1766))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
      (local.set $__lab (i32.const 291)) (br $__dispatch)
    )) ;; end block / LAB L574 = idx 291
    (if (i32.eq (local.get $__lab) (i32.const 291)) (then ;; L574
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1767
    (global.set $__line (i32.const 1767))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 292)) (br $__dispatch)
    )) ;; end block / LAB L575 = idx 292
    (if (i32.eq (local.get $__lab) (i32.const 292)) (then ;; L575
    ;; line 7:1770
    (global.set $__line (i32.const 1770))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1771
    (global.set $__line (i32.const 1771))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const -1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 40))) ;; LF L50
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1772
    (global.set $__line (i32.const 1772))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1773
    (global.set $__line (i32.const 1773))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 293)) (br $__dispatch)
    )) ;; end block / LAB L576 = idx 293
    (if (i32.eq (local.get $__lab) (i32.const 293)) (then ;; L576
    ;; line 7:1776
    (global.set $__line (i32.const 1776))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1777
    (global.set $__line (i32.const 1777))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const -1))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t9 (i32.add (global.get $TB) (i32.const 40))) ;; LF L50
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1778
    (global.set $__line (i32.const 1778))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1779
    (global.set $__line (i32.const 1779))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 294)) (br $__dispatch)
    )) ;; end block / LAB L577 = idx 294
    (if (i32.eq (local.get $__lab) (i32.const 294)) (then ;; L577
    ;; line 7:1782
    (global.set $__line (i32.const 1782))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1783
    (global.set $__line (i32.const 1783))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1784
    (global.set $__line (i32.const 1784))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1785
    (global.set $__line (i32.const 1785))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
    ;; line 7:1787
    (global.set $__line (i32.const 1787))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 416))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1788
    (global.set $__line (i32.const 1788))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 295)) (br $__dispatch)
    ))
    ;; line 7:1790
    (global.set $__line (i32.const 1790))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1735))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 295)) (br $__dispatch)
    )) ;; end block / LAB L578 = idx 295
    (if (i32.eq (local.get $__lab) (i32.const 295)) (then ;; L578
    ;; line 7:1791
    (global.set $__line (i32.const 1791))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 296)) (br $__dispatch)
    ))
    ;; line 7:1793
    (global.set $__line (i32.const 1793))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 611))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t11 (i32.shl (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 296)) (br $__dispatch)
    )) ;; end block / LAB L579 = idx 296
    (if (i32.eq (local.get $__lab) (i32.const 296)) (then ;; L579
    ;; line 7:1794
    (global.set $__line (i32.const 1794))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 1))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
    ;; line 7:1796
    (global.set $__line (i32.const 1796))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1797
    (global.set $__line (i32.const 1797))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t5))
    ;; line 7:1798
    (global.set $__line (i32.const 1798))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
    ;; line 7:1799
    (global.set $__line (i32.const 1799))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 297)) (br $__dispatch)
    )) ;; end block / LAB L580 = idx 297
    (if (i32.eq (local.get $__lab) (i32.const 297)) (then ;; L580
    ;; line 7:1802
    (global.set $__line (i32.const 1802))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1803
    (global.set $__line (i32.const 1803))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1804
    (global.set $__line (i32.const 1804))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1805
    (global.set $__line (i32.const 1805))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:1810
    (global.set $__line (i32.const 1810))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 7:1811
    (global.set $__line (i32.const 1811))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t9 (i32.const 32))
    (if (i32.lt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 298)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const -1))
    ;; RES L581: save result, jump to RSTACK
    (local.set $__res (local.get $t8))
      (local.set $__lab (i32.const 299)) (br $__dispatch)
      (local.set $__lab (i32.const 298)) (br $__dispatch)
    )) ;; end block / LAB L582 = idx 298
    (if (i32.eq (local.get $__lab) (i32.const 298)) (then ;; L582
    (local.set $t8 (i32.const 1))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t8 (i32.shl (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    ;; RES L581: save result, jump to RSTACK
    (local.set $__res (local.get $t8))
      (local.set $__lab (i32.const 299)) (br $__dispatch)
    )) ;; end block / LAB L581 = idx 299
    (if (i32.eq (local.get $__lab) (i32.const 299)) (then ;; L581
    ;; RSTACK 8
    (local.set $t8 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 7:1812
    (global.set $__line (i32.const 1812))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t10 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t9 (i32.shl (local.get $t9) (local.get $t10)))
    (local.set $t9 (i32.xor (local.get $t9) (i32.const -1)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 7:1813
    (global.set $__line (i32.const 1813))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (if (i32.eq  (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 300)) (br $__dispatch)
    ))
    ;; line 7:1814
    (global.set $__line (i32.const 1814))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1752))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 300)) (br $__dispatch)
    )) ;; end block / LAB L583 = idx 300
    (if (i32.eq (local.get $__lab) (i32.const 300)) (then ;; L583
    ;; line 7:1815
    (global.set $__line (i32.const 1815))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1429))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1816
    (global.set $__line (i32.const 1816))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1764))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1817
    (global.set $__line (i32.const 1817))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1776))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1818
    (global.set $__line (i32.const 1818))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1780))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1819
    (global.set $__line (i32.const 1819))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1785))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1820
    (global.set $__line (i32.const 1820))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1801))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 36))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1821
    (global.set $__line (i32.const 1821))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1808))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1822
    (global.set $__line (i32.const 1822))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1813))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t15 (i32.load (i32.add (local.get $Pb) (i32.const 32))))
    (local.set $t16 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t15))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t16)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t16)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1823
    (global.set $__line (i32.const 1823))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1827))) ;; LSTR
    (local.set $t14 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t15 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13))
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (local.get $t14))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t15)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t15)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1824
    (global.set $__line (i32.const 1824))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:1826
    (global.set $__line (i32.const 1826))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 301)) (br $__dispatch)
    ))
    ;; line 7:1827
    (global.set $__line (i32.const 1827))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t6))
      (local.set $__lab (i32.const 301)) (br $__dispatch)
    )) ;; end block / LAB L584 = idx 301
    (if (i32.eq (local.get $__lab) (i32.const 301)) (then ;; L584
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1828
    (global.set $__line (i32.const 1828))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t6))
    ;; line 7:1829
    (global.set $__line (i32.const 1829))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 303)) (br $__dispatch) ;; JUMP L285
      (local.set $__lab (i32.const 302)) (br $__dispatch)
    )) ;; end block / LAB L284 = idx 302
    (if (i32.eq (local.get $__lab) (i32.const 302)) (then ;; L284
    ;; RSTACK 3
    (local.set $t3 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 85 cases default L286
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
    )) ;; end block / LAB L285 = idx 303
    (if (i32.eq (local.get $__lab) (i32.const 303)) (then ;; L285
    ;; line 7:876
    (global.set $__line (i32.const 876))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t3))
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L282
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L49

  ;; BCPL fn alloc_static (L50)
  (func $fn_L50 (export "fn_L50") (type $bcpl_fn)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    ;; line 7:1839
    (global.set $__line (i32.const 1839))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1840
    (global.set $__line (i32.const 1840))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t7 (i32.const 32768))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:1841
    (global.set $__line (i32.const 1841))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 16))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:1842
    (global.set $__line (i32.const 1842))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996)) (local.get $t6))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    )) ;; end block / LAB L585 = idx 1
    (if (i32.eq (local.get $__lab) (i32.const 1)) (then ;; L585
    ;; line 7:1843
    (global.set $__line (i32.const 1843))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:1847
    (global.set $__line (i32.const 1847))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 12))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    )) ;; end block / LAB L586 = idx 2
    (if (i32.eq (local.get $__lab) (i32.const 2)) (then ;; L586
    ;; line 7:1848
    (global.set $__line (i32.const 1848))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 20))))
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
  ) ;; end func $fn_L50

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L10) (ref.func $fn_L11) (ref.func $fn_L12) (ref.func $fn_L13) (ref.func $fn_L14) (ref.func $fn_L15) (ref.func $fn_L16) (ref.func $fn_L17) (ref.func $fn_L18) (ref.func $fn_L19) (ref.func $fn_L20) (ref.func $fn_L21) (ref.func $fn_L22) (ref.func $fn_L23) (ref.func $fn_L24) (ref.func $fn_L25) (ref.func $fn_L26) (ref.func $fn_L27) (ref.func $fn_L28) (ref.func $fn_L29) (ref.func $fn_L30) (ref.func $fn_L31) (ref.func $fn_L32) (ref.func $fn_L33) (ref.func $fn_L34) (ref.func $fn_L35) (ref.func $fn_L36) (ref.func $fn_L37) (ref.func $fn_L38) (ref.func $fn_L39) (ref.func $fn_L40) (ref.func $fn_L41) (ref.func $fn_L42) (ref.func $fn_L43) (ref.func $fn_L44) (ref.func $fn_L45) (ref.func $fn_L46) (ref.func $fn_L47) (ref.func $fn_L48) (ref.func $fn_L49) (ref.func $fn_L50))

  ;; static data — passive segment (1835 words)
  (data $stat "\1E\57\41\53\4D\20\43\47\3A\20\54\6F\6F\20\6C\69\74\74\6C\65\20\77\6F\72\6B\73\70\61\63\65\0A\00\32\57\41\53\4D\20\43\47\3A\20\74\61\72\67\65\74\20\77\6F\72\64\20\73\69\7A\65\20\25\6E\20\62\79\74\65\73\20\6E\6F\74\20\73\75\70\70\6F\72\74\65\64\2E\0A\00\31\20\20\20\20\20\20\20\20\20\52\65\2D\69\6E\76\6F\6B\65\20\62\63\70\6C\77\61\73\6D\20\77\69\74\68\20\74\68\65\20\54\33\32\20\6F\70\74\69\6F\6E\2E\0A\00\00\0E\20\20\3B\3B\20\53\45\43\54\49\4F\4E\3A\20\00\28\28\69\33\32\2E\61\64\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\50\62\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\00\00\00\3C\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\50\62\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\0A\00\00\00\40\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\47\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\00\00\00\15\57\41\53\4D\20\43\47\3A\20\70\65\6E\64\5F\76\20\66\75\6C\6C\0A\00\00\08\28\6D\6F\64\75\6C\65\0A\00\00\00\26\20\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\20\28\66\75\6E\63\20\28\72\65\73\75\6C\74\20\69\33\32\29\29\29\0A\00\19\20\20\28\74\79\70\65\20\24\76\6F\69\64\5F\66\6E\20\28\66\75\6E\63\29\29\0A\00\00\25\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\6D\65\6D\22\20\20\20\20\28\6D\65\6D\6F\72\79\20\34\29\29\0A\00\00\36\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\66\74\61\62\6C\65\22\20\28\74\61\62\6C\65\20\24\66\74\61\62\6C\65\20\32\35\36\20\66\75\6E\63\72\65\66\29\29\0A\00\2B\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\50\22\20\28\67\6C\6F\62\61\6C\20\24\50\20\28\6D\75\74\20\69\33\32\29\29\29\0A\25\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\47\22\20\28\67\6C\6F\62\61\6C\20\24\47\20\69\33\32\29\29\0A\00\00\30\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\73\74\61\74\69\63\5F\62\61\73\65\22\20\28\67\6C\6F\62\61\6C\20\24\53\42\20\69\33\32\29\29\0A\00\00\00\30\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\74\61\62\6C\65\5F\62\61\73\65\22\20\20\28\67\6C\6F\62\61\6C\20\24\54\42\20\69\33\32\29\29\0A\00\00\00\35\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\5F\5F\6C\69\6E\65\22\20\28\67\6C\6F\62\61\6C\20\24\5F\5F\6C\69\6E\65\20\28\6D\75\74\20\69\33\32\29\29\29\0A\00\00\3D\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\5F\5F\62\70\5F\61\72\6D\65\64\22\20\28\67\6C\6F\62\61\6C\20\24\5F\5F\62\70\5F\61\72\6D\65\64\20\28\6D\75\74\20\69\33\32\29\29\29\0A\00\00\3F\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\62\63\70\6C\5F\62\72\65\61\6B\22\20\28\66\75\6E\63\20\24\5F\5F\62\72\65\61\6B\20\28\74\79\70\65\20\24\76\6F\69\64\5F\66\6E\29\29\29\0A\0A\2C\20\20\3B\3B\20\2D\2D\2D\20\66\75\6E\63\74\69\6F\6E\20\74\61\62\6C\65\20\73\6C\69\63\65\20\28\70\61\73\73\69\76\65\29\20\2D\2D\2D\0A\00\00\00\15\20\20\28\65\6C\65\6D\20\24\66\74\61\62\20\66\75\6E\63\72\65\66\00\00\13\20\28\72\65\66\2E\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\29\03\29\0A\0A\30\20\20\3B\3B\20\73\74\61\74\69\63\20\64\61\74\61\20\E2\80\94\20\70\61\73\73\69\76\65\20\73\65\67\6D\65\6E\74\20\28\25\6E\20\77\6F\72\64\73\29\0A\00\00\00\0F\20\20\28\64\61\74\61\20\24\73\74\61\74\20\22\10\5C\25\58\32\5C\25\58\32\5C\25\58\32\5C\25\58\32\00\00\00\04\22\29\0A\0A\00\00\00\26\20\20\28\66\75\6E\63\20\24\72\65\67\69\73\74\65\72\20\28\65\78\70\6F\72\74\20\22\72\65\67\69\73\74\65\72\22\29\0A\00\17\20\20\20\20\28\6D\65\6D\6F\72\79\2E\69\6E\69\74\20\24\73\74\61\74\0A\2F\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\14\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\0A\00\00\00\16\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\16\20\20\20\20\28\64\61\74\61\2E\64\72\6F\70\20\24\73\74\61\74\29\0A\00\1E\20\20\20\20\28\74\61\62\6C\65\2E\69\6E\69\74\20\24\66\74\61\62\6C\65\20\24\66\74\61\62\0A\00\17\20\20\20\20\20\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\0A\16\20\20\20\20\28\65\6C\65\6D\2E\64\72\6F\70\20\24\66\74\61\62\29\0A\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\34\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\47\21\25\6E\0A\00\00\00\04\20\20\29\0A\00\00\00\37\20\20\28\66\75\6E\63\20\24\73\74\61\74\5F\77\6F\72\64\73\20\28\65\78\70\6F\72\74\20\22\73\74\61\74\5F\77\6F\72\64\73\22\29\20\28\72\65\73\75\6C\74\20\69\33\32\29\0A\14\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\33\20\20\28\66\75\6E\63\20\24\66\6E\5F\63\6F\75\6E\74\20\28\65\78\70\6F\72\74\20\22\66\6E\5F\63\6F\75\6E\74\22\29\20\28\72\65\73\75\6C\74\20\69\33\32\29\0A\11\29\0A\20\3B\3B\20\65\6E\64\20\6D\6F\64\75\6C\65\0A\00\00\24\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\1E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\00\03\29\29\0A\49\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\0A\00\00\3C\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\25\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\00\00\7E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\20\28\25\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\80\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\25\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\78\6F\72\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\2D\31\29\29\29\0A\14\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\0A\00\00\00\41\20\20\20\20\20\20\28\69\66\20\28\72\65\73\75\6C\74\20\69\33\32\29\20\28\69\33\32\2E\67\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\20\20\20\20\20\20\20\20\20\28\74\68\65\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\3A\20\20\20\20\20\20\20\20\28\65\6C\73\65\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\78\6F\72\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\6E\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\50\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\20\28\66\33\32\2E\63\6F\6E\76\65\72\74\5F\69\33\32\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\00\00\4E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\74\72\75\6E\63\5F\66\33\32\5F\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\54\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\25\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\00\00\13\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\26\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\4A\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\39\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\0A\00\00\1F\20\20\20\20\28\69\66\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\74\68\65\6E\0A\29\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\7A\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\6E\65\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\6C\74\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\67\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\67\74\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\6C\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\07\20\20\20\20\29\29\0A\1C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\29\20\3B\3B\20\73\61\76\65\20\50\0A\00\00\00\2B\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\72\65\74\75\72\6E\20\61\64\64\72\20\70\6C\61\63\65\68\6F\6C\64\65\72\0A\23\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\65\6E\74\72\79\20\66\6E\5F\69\64\78\0A\3D\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\50\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\00\4E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\63\61\6C\6C\5F\69\6E\64\69\72\65\63\74\20\24\66\74\61\62\6C\65\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\28\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\46\4E\41\50\20\72\65\73\75\6C\74\0A\00\00\00\44\20\20\20\20\28\64\72\6F\70\20\28\63\61\6C\6C\5F\69\6E\64\69\72\65\63\74\20\24\66\74\61\62\6C\65\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\00\00\07\69\33\32\2E\61\64\64\07\69\33\32\2E\73\75\62\07\69\33\32\2E\6D\75\6C\09\69\33\32\2E\64\69\76\5F\73\00\00\09\69\33\32\2E\72\65\6D\5F\73\00\00\07\69\33\32\2E\73\68\6C\09\69\33\32\2E\73\68\72\5F\75\00\00\07\69\33\32\2E\61\6E\64\06\69\33\32\2E\6F\72\00\07\69\33\32\2E\78\6F\72\07\66\33\32\2E\61\64\64\07\66\33\32\2E\73\75\62\07\66\33\32\2E\6D\75\6C\07\66\33\32\2E\64\69\76\29\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\0A\00\00\0F\20\20\20\20\20\20\28\66\33\32\2E\73\75\62\0A\2F\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\11\20\20\20\20\20\20\20\20\28\66\33\32\2E\6D\75\6C\0A\00\00\15\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\74\72\75\6E\63\0A\00\00\15\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\64\69\76\0A\00\00\35\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\37\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\35\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\29\0A\00\00\06\69\33\32\2E\65\71\00\06\69\33\32\2E\6E\65\00\08\69\33\32\2E\6C\74\5F\73\00\00\00\08\69\33\32\2E\67\74\5F\73\00\00\00\08\69\33\32\2E\6C\65\5F\73\00\00\00\08\69\33\32\2E\67\65\5F\73\00\00\00\06\66\33\32\2E\65\71\00\06\66\33\32\2E\6E\65\00\06\66\33\32\2E\6C\74\00\06\66\33\32\2E\67\74\00\06\66\33\32\2E\6C\65\00\06\66\33\32\2E\67\65\00\3B\0A\57\41\53\4D\20\43\47\3A\20\74\72\65\65\2D\6F\6E\6C\79\20\6F\70\20\25\6E\20\6C\65\61\6B\65\64\20\69\6E\74\6F\20\4F\43\4F\44\45\20\28\66\72\6F\6E\74\65\6E\64\20\62\75\67\29\0A\1A\0A\57\41\53\4D\20\43\47\3A\20\75\6E\68\61\6E\64\6C\65\64\20\6F\70\20\25\6E\0A\00\12\20\20\20\20\3B\3B\20\6C\69\6E\65\20\25\6E\3A\25\6E\0A\00\28\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\5F\5F\6C\69\6E\65\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\38\20\20\20\20\28\69\66\20\28\69\33\32\2E\6E\65\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\5F\5F\62\70\5F\61\72\6D\65\64\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\00\20\20\20\20\20\20\20\20\20\28\74\68\65\6E\20\28\63\61\6C\6C\20\24\5F\5F\62\72\65\61\6B\29\29\29\0A\00\00\00\16\20\20\20\20\20\20\3B\3B\20\69\6D\70\6C\69\63\69\74\20\65\6E\64\0A\00\1D\20\20\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\19\20\20\20\20\29\29\20\3B\3B\20\65\6E\64\20\6C\61\73\74\20\62\6C\6F\63\6B\0A\00\00\19\20\20\20\20\29\20\3B\3B\20\65\6E\64\20\24\5F\5F\64\69\73\70\61\74\63\68\0A\00\00\12\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\0A\00\19\20\20\29\20\3B\3B\20\65\6E\64\20\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\0A\0A\00\00\07\20\20\20\20\3B\3B\20\16\20\20\3B\3B\20\42\43\50\4C\20\66\6E\20\25\73\20\28\4C\25\6E\29\0A\00\32\20\20\28\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\20\28\65\78\70\6F\72\74\20\22\66\6E\5F\4C\25\6E\22\29\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\0A\00\17\20\20\20\20\28\6C\6F\63\61\6C\20\24\5F\5F\6C\61\62\20\69\33\32\29\0A\17\20\20\20\20\28\6C\6F\63\61\6C\20\24\5F\5F\72\65\73\20\69\33\32\29\0A\14\20\20\20\20\28\6C\6F\63\61\6C\20\24\50\62\20\69\33\32\29\0A\00\00\00\15\20\20\20\20\28\6C\6F\63\61\6C\20\24\74\25\6E\20\69\33\32\29\0A\00\00\16\20\20\20\20\28\6C\6F\6F\70\20\24\5F\5F\64\69\73\70\61\74\63\68\0A\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\7A\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\6C\61\62\29\29\20\28\74\68\65\6E\20\3B\3B\20\65\6E\74\72\79\20\62\6C\6F\63\6B\0A\00\1D\20\20\20\20\20\20\3B\3B\20\65\6E\64\70\72\6F\63\20\66\61\6C\6C\74\68\72\6F\75\67\68\0A\00\00\28\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\3B\3B\20\75\6E\72\65\61\63\68\61\62\6C\65\20\72\65\74\75\72\6E\0A\00\00\00\27\20\20\20\20\29\29\20\3B\3B\20\65\6E\64\20\62\6C\6F\63\6B\20\2F\20\4C\41\42\20\4C\25\6E\20\3D\20\69\64\78\20\25\6E\0A\40\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\6C\61\62\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\74\68\65\6E\20\3B\3B\20\4C\25\6E\0A\00\00\00\49\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\46\20\4C\25\6E\0A\00\00\35\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\3B\3B\20\4C\46\20\4C\25\6E\20\28\64\69\73\70\29\0A\00\00\6C\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\20\3B\3B\20\4C\4C\20\4C\25\6E\0A\00\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\47\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\4A\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\4C\4C\20\4C\25\6E\0A\00\38\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\51\55\45\52\59\20\28\75\6E\64\65\66\69\6E\65\64\29\0A\00\00\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\0A\48\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\00\00\00\18\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\45\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\20\3B\3B\20\4A\55\4D\50\20\4C\25\6E\0A\00\00\2A\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\2A\20\20\20\20\20\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\20\3B\3B\20\47\4F\54\4F\20\28\63\6F\6D\70\75\74\65\64\29\0A\00\0C\20\20\20\20\3B\3B\20\52\54\52\4E\0A\00\00\00\47\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\50\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\0A\1B\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\0C\20\20\20\20\3B\3B\20\46\4E\52\4E\0A\00\00\00\28\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\72\65\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\20\20\20\20\20\28\72\65\74\75\72\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\72\65\73\29\29\0A\00\00\00\2C\20\20\20\20\3B\3B\20\52\45\53\20\4C\25\6E\3A\20\73\61\76\65\20\72\65\73\75\6C\74\2C\20\6A\75\6D\70\20\74\6F\20\52\53\54\41\43\4B\0A\00\00\00\11\20\20\20\20\3B\3B\20\52\53\54\41\43\4B\20\25\6E\0A\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\72\65\73\29\29\20\3B\3B\20\72\65\73\74\6F\72\65\20\52\45\53\20\72\65\73\75\6C\74\0A\00\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\74\25\6E\0A\00\00\00\2F\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\74\25\6E\20\28\70\72\65\2D\73\74\61\63\6B\2D\75\70\29\0A\24\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\53\54\4F\52\45\20\73\6C\6F\74\20\25\6E\0A\00\00\00\25\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\46\49\4E\49\53\48\0A\00\00\47\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\53\54\52\0A\67\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\38\5F\75\20\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\66\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\38\20\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\25\20\20\20\20\3B\3B\20\53\57\49\54\43\48\4F\4E\20\25\6E\20\63\61\73\65\73\20\64\65\66\61\75\6C\74\20\4C\25\6E\0A\00\00\37\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\29\29\0A\41\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\68\72\5F\75\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\00\2E\20\20\20\20\3B\3B\20\53\45\4C\53\54\3A\20\73\66\6F\70\20\25\6E\20\6E\6F\74\20\73\75\70\70\6F\72\74\65\64\2C\20\75\73\69\6E\67\20\3A\3D\0A\00\2F\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\0E\20\20\20\20\20\20\28\69\33\32\2E\6F\72\0A\00\11\20\20\20\20\20\20\20\20\28\69\33\32\2E\61\6E\64\0A\00\00\3E\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\0A\00\1A\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\11\20\20\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\0A\00\00\34\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\61\6E\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\1C\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\29\0A\00\00\00")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 7340))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 41))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828)) (i32.add (global.get $TB) (i32.const 38))) ;; G!457
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1844)) (i32.add (global.get $TB) (i32.const 37))) ;; G!461
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1840)) (i32.add (global.get $TB) (i32.const 36))) ;; G!460
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1836)) (i32.add (global.get $TB) (i32.const 35))) ;; G!459
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832)) (i32.add (global.get $TB) (i32.const 34))) ;; G!458
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940)) (i32.add (global.get $TB) (i32.const 33))) ;; G!485
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1936)) (i32.add (global.get $TB) (i32.const 32))) ;; G!484
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1932)) (i32.add (global.get $TB) (i32.const 31))) ;; G!483
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884)) (i32.add (global.get $TB) (i32.const 30))) ;; G!471
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916)) (i32.add (global.get $TB) (i32.const 29))) ;; G!479
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1912)) (i32.add (global.get $TB) (i32.const 28))) ;; G!478
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1908)) (i32.add (global.get $TB) (i32.const 27))) ;; G!477
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1904)) (i32.add (global.get $TB) (i32.const 26))) ;; G!476
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1900)) (i32.add (global.get $TB) (i32.const 25))) ;; G!475
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1896)) (i32.add (global.get $TB) (i32.const 24))) ;; G!474
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1892)) (i32.add (global.get $TB) (i32.const 23))) ;; G!473
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888)) (i32.add (global.get $TB) (i32.const 22))) ;; G!472
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880)) (i32.add (global.get $TB) (i32.const 21))) ;; G!470
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876)) (i32.add (global.get $TB) (i32.const 20))) ;; G!469
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872)) (i32.add (global.get $TB) (i32.const 19))) ;; G!468
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1868)) (i32.add (global.get $TB) (i32.const 18))) ;; G!467
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1864)) (i32.add (global.get $TB) (i32.const 17))) ;; G!466
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860)) (i32.add (global.get $TB) (i32.const 16))) ;; G!465
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944)) (i32.add (global.get $TB) (i32.const 15))) ;; G!486
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1824)) (i32.add (global.get $TB) (i32.const 14))) ;; G!456
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1820)) (i32.add (global.get $TB) (i32.const 13))) ;; G!455
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2064)) (i32.add (global.get $TB) (i32.const 12))) ;; G!516
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060)) (i32.add (global.get $TB) (i32.const 11))) ;; G!515
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2068)) (i32.add (global.get $TB) (i32.const 10))) ;; G!517
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1928)) (i32.add (global.get $TB) (i32.const 9))) ;; G!482
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1924)) (i32.add (global.get $TB) (i32.const 8))) ;; G!481
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920)) (i32.add (global.get $TB) (i32.const 7))) ;; G!480
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852)) (i32.add (global.get $TB) (i32.const 6))) ;; G!463
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856)) (i32.add (global.get $TB) (i32.const 5))) ;; G!464
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848)) (i32.add (global.get $TB) (i32.const 4))) ;; G!462
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1804)) (i32.add (global.get $TB) (i32.const 3))) ;; G!451
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2072)) (i32.add (global.get $TB) (i32.const 2))) ;; G!518
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1800)) (i32.add (global.get $TB) (i32.const 1))) ;; G!450
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 952)) (i32.add (global.get $TB) (i32.const 0))) ;; G!238
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 1835))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 41))
)
 ;; end module
