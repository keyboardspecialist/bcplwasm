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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (loop $__dispatch
      (block $__default
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:137
    (global.set $__line (i32.const 137))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:138
    (global.set $__line (i32.const 138))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.const 8192))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:139
    (global.set $__line (i32.const 139))
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
    ;; line 7:140
    (global.set $__line (i32.const 140))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068)) (local.get $t6))
    ;; line 7:141
    (global.set $__line (i32.const 141))
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
      ) ;; close $__case_1 — LAB L52
    ;; line 7:142
    (global.set $__line (i32.const 142))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 4))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1060))))
    (if (i32.eq  (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:149
    (global.set $__line (i32.const 149))
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
    ;; line 7:150
    (global.set $__line (i32.const 150))
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
    ;; line 7:151
    (global.set $__line (i32.const 151))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068)) (local.get $t6))
    ;; line 7:152
    (global.set $__line (i32.const 152))
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
      ) ;; close $__case_2 — LAB L53
    ;; line 7:153
    (global.set $__line (i32.const 153))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960)) (local.get $t6))
    ;; line 7:156
    (global.set $__line (i32.const 156))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 16384))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (local.get $t6)) ;; SP promoted P!5
    (local.set $t6 (i32.const 16384))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964)) (local.get $t6))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012)) (local.get $t6))
    ;; line 7:157
    (global.set $__line (i32.const 157))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (local.get $t6)) ;; SP promoted P!5
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020)) (local.get $t6))
    ;; line 7:158
    (global.set $__line (i32.const 158))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 32768))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (local.get $t6)) ;; SP promoted P!5
    (local.set $t6 (i32.const 16384))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024)) (local.get $t6))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028)) (local.get $t6))
    ;; line 7:159
    (global.set $__line (i32.const 159))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 512))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (local.get $t6)) ;; SP promoted P!5
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036)) (local.get $t6))
    ;; line 7:160
    (global.set $__line (i32.const 160))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1536))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (local.get $t6)) ;; SP promoted P!5
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2056)) (local.get $t6))
    ;; line 7:161
    (global.set $__line (i32.const 161))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 768))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (local.get $t6)) ;; SP promoted P!5
    (local.set $t6 (i32.const 768))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2064)) (local.get $t6))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044)) (local.get $t6))
    ;; line 7:162
    (global.set $__line (i32.const 162))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 2048))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (local.get $t6)) ;; SP promoted P!5
    (local.set $t6 (i32.const 1024))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2052)) (local.get $t6))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968)) (local.get $t6))
    ;; line 7:168
    (global.set $__line (i32.const 168))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 256))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t5 (local.get $t6)) ;; SP promoted P!5
    (local.set $t6 (i32.const 256))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972)) (local.get $t6))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 16383))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L54
    ;; line 7:170
    (global.set $__line (i32.const 170))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.shl (local.get $t9) (i32.const 2)) (local.get $t8))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L55
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.const 32767))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L56
    ;; line 7:171
    (global.set $__line (i32.const 171))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.shl (local.get $t9) (i32.const 2)) (local.get $t8))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L57
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t6))
    ;; line 7:172
    (global.set $__line (i32.const 172))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032)) (local.get $t6))
    ;; line 7:173
    (global.set $__line (i32.const 173))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040)) (local.get $t6))
    ;; line 7:174
    (global.set $__line (i32.const 174))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060)) (local.get $t6))
    ;; line 7:175
    (global.set $__line (i32.const 175))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048)) (local.get $t6))
    ;; line 7:176
    (global.set $__line (i32.const 176))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2068)) (local.get $t6))
    ;; line 7:177
    (global.set $__line (i32.const 177))
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
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
    ;; line 7:179
    (global.set $__line (i32.const 179))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 4096))
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
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
      ) ;; close $__default
      (unreachable)
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (loop $__dispatch
      (block $__default
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:188
    (global.set $__line (i32.const 188))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.eq  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L58
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2068))))
    (if (local.get $t5) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:189
    (global.set $__line (i32.const 189))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2068)) (local.get $t5))
    ;; line 7:190
    (global.set $__line (i32.const 190))
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
      ) ;; close $__case_2 — LAB L60
    ;; line 7:191
    (global.set $__line (i32.const 191))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 40))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:194
    (global.set $__line (i32.const 194))
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
    ;; line 7:195
    (global.set $__line (i32.const 195))
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
    ;; line 7:196
    (global.set $__line (i32.const 196))
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
    ;; line 7:197
    (global.set $__line (i32.const 197))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L62
    ;; line 7:198
    (global.set $__line (i32.const 198))
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
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L63
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:199
    (global.set $__line (i32.const 199))
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
    ;; line 7:200
    (global.set $__line (i32.const 200))
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
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t6))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L61
    ;; line 7:201
    (global.set $__line (i32.const 201))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2092))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:204
    (global.set $__line (i32.const 204))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $TB) (i32.const 40))) ;; LF L50
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:205
    (global.set $__line (i32.const 205))
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
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t5))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L59
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
      (block $__default
      (block $__case_57
      (block $__case_56
      (block $__case_55
      (block $__case_54
      (block $__case_53
      (block $__case_52
      (block $__case_51
      (block $__case_50
      (block $__case_49
      (block $__case_48
      (block $__case_47
      (block $__case_46
      (block $__case_45
      (block $__case_44
      (block $__case_43
      (block $__case_42
      (block $__case_41
      (block $__case_40
      (block $__case_39
      (block $__case_38
      (block $__case_37
      (block $__case_36
      (block $__case_35
      (block $__case_34
      (block $__case_33
      (block $__case_32
      (block $__case_31
      (block $__case_30
      (block $__case_29
      (block $__case_28
      (block $__case_27
      (block $__case_26
      (block $__case_25
      (block $__case_24
      (block $__case_23
      (block $__case_22
      (block $__case_21
      (block $__case_20
      (block $__case_19
      (block $__case_18
      (block $__case_17
      (block $__case_16
      (block $__case_15
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__case_28 $__case_29 $__case_30 $__case_31 $__case_32 $__case_33 $__case_34 $__case_35 $__case_36 $__case_37 $__case_38 $__case_39 $__case_40 $__case_41 $__case_42 $__case_43 $__case_44 $__case_45 $__case_46 $__case_47 $__case_48 $__case_49 $__case_50 $__case_51 $__case_52 $__case_53 $__case_54 $__case_55 $__case_56 $__case_57 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:212
    (global.set $__line (i32.const 212))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:213
    (global.set $__line (i32.const 213))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:214
    (global.set $__line (i32.const 214))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:215
    (global.set $__line (i32.const 215))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:261
    (global.set $__line (i32.const 261))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L65
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    ;; RES L66: save result, jump to RSTACK
    (local.set $__res (local.get $t7))
      (local.set $__lab (i32.const 55)) (br $__dispatch)
    ;; line 7:217
    (global.set $__line (i32.const 217))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_2 — LAB L68
    ;; line 7:218
    (global.set $__line (i32.const 218))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      ) ;; close $__case_3 — LAB L69
    ;; line 7:219
    (global.set $__line (i32.const 219))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 57)) ;; LF L64 (disp)
      (local.set $__lab (local.get $t7))
      (br $__dispatch) ;; GOTO (computed)
      ) ;; close $__case_4 — LAB L70
    ;; line 7:220
    (global.set $__line (i32.const 220))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 57)) ;; LF L64 (disp)
      (local.set $__lab (local.get $t7))
      (br $__dispatch) ;; GOTO (computed)
      ) ;; close $__case_5 — LAB L71
    ;; line 7:221
    (global.set $__line (i32.const 221))
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
    ;; line 7:222
    (global.set $__line (i32.const 222))
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
    ;; line 7:223
    (global.set $__line (i32.const 223))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (if (i32.gt_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L72
    ;; line 7:224
    (global.set $__line (i32.const 224))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t14 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t14)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 11)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t14)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t9 (local.get $t11)) ;; SP promoted P!9
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L73
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t10 (i32.const 512))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 7:225
    (global.set $__line (i32.const 225))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 7:226
    (global.set $__line (i32.const 226))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.sub (local.get $t11) (local.get $t12)))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
      (local.set $__lab (i32.const 10)) (br $__dispatch) ;; JUMP L76
      ) ;; close $__case_8 — LAB L75
    ;; line 7:227
    (global.set $__line (i32.const 227))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t12 (i32.load (i32.shl (local.get $t12) (i32.const 2))))
    (local.set $t13 (local.get $t7)) ;; LP promoted P!7
    (if (i32.ne  (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 9)) (br $__dispatch)
    ))
    ;; line 7:228
    (global.set $__line (i32.const 228))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const -1))
    (local.set $t9 (local.get $t12)) ;; SP promoted P!9
      (local.set $__lab (i32.const 11)) (br $__dispatch) ;; JUMP L78
      ) ;; close $__case_9 — LAB L77
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (local.set $t13 (i32.const 1))
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t10 (local.get $t12)) ;; SP promoted P!10
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L76
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (local.set $t13 (local.get $t11)) ;; LP promoted P!11
    (if (i32.le_s (local.get $t12) (local.get $t13)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L78
    (local.set $t10 (local.get $t9)) ;; LP promoted P!9
    (if (local.get $t10) (then
      (local.set $__lab (i32.const 12)) (br $__dispatch)
    ))
    ;; line 7:229
    (global.set $__line (i32.const 229))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t7)) ;; LP promoted P!7
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (i32.store (i32.shl (local.get $t11) (i32.const 2)) (local.get $t10))
    ;; line 7:230
    (global.set $__line (i32.const 230))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 1))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040)) (local.get $t10))
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L79
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L74
    ;; line 7:231
    (global.set $__line (i32.const 231))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t6 (local.get $t9)) ;; SP promoted P!6
    ;; line 7:234
    (global.set $__line (i32.const 234))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
    ;; line 7:235
    (global.set $__line (i32.const 235))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
      ) ;; close $__case_14 — LAB L80
    ;; line 7:237
    (global.set $__line (i32.const 237))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (local.set $t6 (local.get $t7)) ;; SP promoted P!6
    ;; line 7:238
    (global.set $__line (i32.const 238))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
    ;; line 7:239
    (global.set $__line (i32.const 239))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_15 — LAB L81
    ;; line 7:240
    (global.set $__line (i32.const 240))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L82
      (local.set $__lab (i32.const 17)) (br $__dispatch)
      ) ;; close $__case_17 — LAB L83
      (local.set $__lab (i32.const 18)) (br $__dispatch)
      ) ;; close $__case_18 — LAB L84
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      ) ;; close $__case_19 — LAB L85
    ;; line 7:241
    (global.set $__line (i32.const 241))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L86
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L87
    ;; line 7:242
    (global.set $__line (i32.const 242))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
      ) ;; close $__case_22 — LAB L88
      (local.set $__lab (i32.const 23)) (br $__dispatch)
      ) ;; close $__case_23 — LAB L89
      (local.set $__lab (i32.const 24)) (br $__dispatch)
      ) ;; close $__case_24 — LAB L90
      (local.set $__lab (i32.const 25)) (br $__dispatch)
      ) ;; close $__case_25 — LAB L91
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:243
    (global.set $__line (i32.const 243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      ) ;; close $__case_26 — LAB L92
    ;; line 7:244
    (global.set $__line (i32.const 244))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L93
      (local.set $__lab (i32.const 28)) (br $__dispatch)
      ) ;; close $__case_28 — LAB L94
      (local.set $__lab (i32.const 29)) (br $__dispatch)
      ) ;; close $__case_29 — LAB L95
      (local.set $__lab (i32.const 30)) (br $__dispatch)
      ) ;; close $__case_30 — LAB L96
      (local.set $__lab (i32.const 31)) (br $__dispatch)
      ) ;; close $__case_31 — LAB L97
      (local.set $__lab (i32.const 32)) (br $__dispatch)
      ) ;; close $__case_32 — LAB L98
    ;; line 7:245
    (global.set $__line (i32.const 245))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
      ) ;; close $__case_33 — LAB L99
      (local.set $__lab (i32.const 34)) (br $__dispatch)
      ) ;; close $__case_34 — LAB L100
      (local.set $__lab (i32.const 35)) (br $__dispatch)
      ) ;; close $__case_35 — LAB L101
      (local.set $__lab (i32.const 36)) (br $__dispatch)
      ) ;; close $__case_36 — LAB L102
      (local.set $__lab (i32.const 37)) (br $__dispatch)
      ) ;; close $__case_37 — LAB L103
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:246
    (global.set $__line (i32.const 246))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      ) ;; close $__case_38 — LAB L104
    ;; line 7:247
    (global.set $__line (i32.const 247))
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
    ;; line 7:248
    (global.set $__line (i32.const 248))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (if (i32.gt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 39)) (br $__dispatch)
      ) ;; close $__case_39 — LAB L105
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t8 (local.get $t10)) ;; SP promoted P!8
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 40)) (br $__dispatch)
      ) ;; close $__case_40 — LAB L106
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      (local.set $__lab (i32.const 41)) (br $__dispatch)
      ) ;; close $__case_41 — LAB L107
    ;; line 7:249
    (global.set $__line (i32.const 249))
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
    ;; line 7:250
    (global.set $__line (i32.const 250))
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
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (if (i32.gt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 42)) (br $__dispatch)
      ) ;; close $__case_42 — LAB L108
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
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t8 (local.get $t10)) ;; SP promoted P!8
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 43)) (br $__dispatch)
      ) ;; close $__case_43 — LAB L109
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      (local.set $__lab (i32.const 44)) (br $__dispatch)
      ) ;; close $__case_44 — LAB L110
    ;; line 7:251
    (global.set $__line (i32.const 251))
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
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      ) ;; close $__case_45 — LAB L111
    ;; line 7:252
    (global.set $__line (i32.const 252))
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
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      ) ;; close $__case_46 — LAB L112
    ;; line 7:253
    (global.set $__line (i32.const 253))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 47)) (br $__dispatch)
      ) ;; close $__case_47 — LAB L113
      (local.set $__lab (i32.const 48)) (br $__dispatch)
      ) ;; close $__case_48 — LAB L114
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (local.set $t7 (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush FNAP result
    ;; line 7:254
    (global.set $__line (i32.const 254))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (if (i32.gt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 50)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 49)) (br $__dispatch)
      ) ;; close $__case_49 — LAB L115
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 10)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t8 (local.get $t10)) ;; SP promoted P!8
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (if (i32.le_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 50)) (br $__dispatch)
      ) ;; close $__case_50 — LAB L116
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      (local.set $__lab (i32.const 51)) (br $__dispatch)
      ) ;; close $__case_51 — LAB L117
    ;; line 7:255
    (global.set $__line (i32.const 255))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 52)) (br $__dispatch)
      ) ;; close $__case_52 — LAB L118
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      ) ;; close $__case_53 — LAB L119
    ;; line 7:256
    (global.set $__line (i32.const 256))
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
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      ) ;; close $__case_54 — LAB L120
    ;; line 7:257
    (global.set $__line (i32.const 257))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 56)) (br $__dispatch) ;; JUMP L67
      ) ;; close $__case_55 — LAB L66
    ;; RSTACK 7
    (local.set $t7 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 38 cases default L68
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
      ) ;; close $__case_56 — LAB L67
    ;; line 7:217
    (global.set $__line (i32.const 217))
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
    (local.set $t5 (local.get $t7)) ;; SP promoted P!5
      (local.set $__lab (i32.const 1)) (br $__dispatch) ;; JUMP L65
    ;; line 7:259
    (global.set $__line (i32.const 259))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_57 — LAB L64
    ;; line 7:261
    (global.set $__line (i32.const 261))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t7))
    ;; line 7:262
    (global.set $__line (i32.const 262))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t7))
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (local.set $t6 (i32.load (i32.add (local.get $Pb) (i32.const 24)))) ;; init promoted P!6
    (local.set $t7 (i32.load (i32.add (local.get $Pb) (i32.const 28)))) ;; init promoted P!7
    ;; line 7:270
    (global.set $__line (i32.const 270))
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
    ;; line 7:271
    (global.set $__line (i32.const 271))
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
    ;; line 7:272
    (global.set $__line (i32.const 272))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t3)) ;; LP promoted P!3
    (local.set $t13 (local.get $t4)) ;; LP promoted P!4
    (local.set $t14 (local.get $t5)) ;; LP promoted P!5
    (local.set $t15 (local.get $t6)) ;; LP promoted P!6
    (local.set $t16 (local.get $t7)) ;; LP promoted P!7
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
    ;; line 7:273
    (global.set $__line (i32.const 273))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (local.get $t8)) ;; LP promoted P!8
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    ;; line 7:282
    (global.set $__line (i32.const 282))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 38))) ;; LSTR
    (local.set $t8 (i32.const 4))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:287
    (global.set $__line (i32.const 287))
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L15

  ;; BCPL fn is_promotable (L16)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 3))
    (local.set $t4 (i32.sub (i32.const 0) (i32.ge_s (local.get $t4) (local.get $t5))))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t5 (i32.sub (i32.const 0) (i32.lt_s (local.get $t5) (local.get $t6))))
    (local.set $t4 (i32.and (local.get $t4) (local.get $t5)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t5 (i32.sub (i32.const 0) (i32.lt_s (local.get $t5) (local.get $t6))))
    (local.set $t4 (i32.and (local.get $t4) (local.get $t5)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (local.set $t6 (i32.const 0))
    (local.set $t5 (i32.sub (i32.const 0) (i32.eq (local.get $t5) (local.get $t6))))
    (local.set $t4 (i32.and (local.get $t4) (local.get $t5)))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (local.set $t4 (i32.const 0))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L16

  ;; BCPL fn emit_g_addr (L17)
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
    (local $t7 i32)
    (local $t8 i32)
    (local $t9 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    ;; line 7:315
    (global.set $__line (i32.const 315))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 65))) ;; LSTR
    (local.set $t8 (i32.const 4))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L17

  ;; BCPL fn rdl (L18)
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L18

  ;; BCPL fn rdgn (L19)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L19

  ;; BCPL fn rdname (L20)
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (loop $__dispatch
      (block $__default
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:322
    (global.set $__line (i32.const 322))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 63))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:327
    (global.set $__line (i32.const 327))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    ;; RES L121: save result, jump to RSTACK
    (local.set $__res (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L122
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    ;; RES L121: save result, jump to RSTACK
    (local.set $__res (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L121
    ;; RSTACK 6
    (local.set $t6 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:328
    (global.set $__line (i32.const 328))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L123
    ;; line 7:329
    (global.set $__line (i32.const 329))
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
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (local.get $t7)) ;; LP promoted P!7
    (i32.store8 (i32.add (i32.shl (local.get $t10) (i32.const 2)) (local.get $t11)) (local.get $t9))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L124
    (local.set $t7 (i32.const 1))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L125
    ;; line 7:330
    (global.set $__line (i32.const 330))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L126
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (local.set $t9 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t8) (i32.const 2)) (local.get $t9)) (local.get $t7))
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
  ) ;; end func $fn_L20

  ;; BCPL fn skip_inner_body (L21)
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
    (local $t11 i32)
    (local $t12 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_50
      (block $__case_49
      (block $__case_48
      (block $__case_47
      (block $__case_46
      (block $__case_45
      (block $__case_44
      (block $__case_43
      (block $__case_42
      (block $__case_41
      (block $__case_40
      (block $__case_39
      (block $__case_38
      (block $__case_37
      (block $__case_36
      (block $__case_35
      (block $__case_34
      (block $__case_33
      (block $__case_32
      (block $__case_31
      (block $__case_30
      (block $__case_29
      (block $__case_28
      (block $__case_27
      (block $__case_26
      (block $__case_25
      (block $__case_24
      (block $__case_23
      (block $__case_22
      (block $__case_21
      (block $__case_20
      (block $__case_19
      (block $__case_18
      (block $__case_17
      (block $__case_16
      (block $__case_15
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__case_28 $__case_29 $__case_30 $__case_31 $__case_32 $__case_33 $__case_34 $__case_35 $__case_36 $__case_37 $__case_38 $__case_39 $__case_40 $__case_41 $__case_42 $__case_43 $__case_44 $__case_45 $__case_46 $__case_47 $__case_48 $__case_49 $__case_50 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:337
    (global.set $__line (i32.const 337))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:338
    (global.set $__line (i32.const 338))
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
    ;; line 7:339
    (global.set $__line (i32.const 339))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L127
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t4)) ;; LP promoted P!4
    ;; RES L128: save result, jump to RSTACK
    (local.set $__res (local.get $t5))
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    ;; line 7:340
    (global.set $__line (i32.const 340))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_2 — LAB L130
    ;; line 7:341
    (global.set $__line (i32.const 341))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      ) ;; close $__case_3 — LAB L131
    ;; line 7:342
    (global.set $__line (i32.const 342))
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
    ;; line 7:343
    (global.set $__line (i32.const 343))
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
    ;; line 7:344
    (global.set $__line (i32.const 344))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.gt_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L132
    ;; line 7:345
    (global.set $__line (i32.const 345))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 5)) (br $__dispatch)
      ) ;; close $__case_5 — LAB L133
    (local.set $t7 (i32.const 1))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t3 (local.get $t7)) ;; SP promoted P!3
    ;; line 7:346
    (global.set $__line (i32.const 346))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
    ;; line 7:347
    (global.set $__line (i32.const 347))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 6)) (br $__dispatch)
      ) ;; close $__case_6 — LAB L134
    ;; line 7:349
    (global.set $__line (i32.const 349))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (local.set $t3 (local.get $t5)) ;; SP promoted P!3
    ;; line 7:350
    (global.set $__line (i32.const 350))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_7 — LAB L135
    ;; line 7:351
    (global.set $__line (i32.const 351))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
    ;; line 7:352
    (global.set $__line (i32.const 352))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_8 — LAB L136
    ;; line 7:353
    (global.set $__line (i32.const 353))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L137
      (local.set $__lab (i32.const 10)) (br $__dispatch)
      ) ;; close $__case_10 — LAB L138
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L139
      (local.set $__lab (i32.const 12)) (br $__dispatch)
      ) ;; close $__case_12 — LAB L140
    ;; line 7:354
    (global.set $__line (i32.const 354))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L141
      (local.set $__lab (i32.const 14)) (br $__dispatch)
      ) ;; close $__case_14 — LAB L142
    ;; line 7:355
    (global.set $__line (i32.const 355))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L143
      (local.set $__lab (i32.const 16)) (br $__dispatch)
      ) ;; close $__case_16 — LAB L144
      (local.set $__lab (i32.const 17)) (br $__dispatch)
      ) ;; close $__case_17 — LAB L145
      (local.set $__lab (i32.const 18)) (br $__dispatch)
      ) ;; close $__case_18 — LAB L146
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:356
    (global.set $__line (i32.const 356))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      ) ;; close $__case_19 — LAB L147
    ;; line 7:357
    (global.set $__line (i32.const 357))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L148
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L149
      (local.set $__lab (i32.const 22)) (br $__dispatch)
      ) ;; close $__case_22 — LAB L150
      (local.set $__lab (i32.const 23)) (br $__dispatch)
      ) ;; close $__case_23 — LAB L151
      (local.set $__lab (i32.const 24)) (br $__dispatch)
      ) ;; close $__case_24 — LAB L152
      (local.set $__lab (i32.const 25)) (br $__dispatch)
      ) ;; close $__case_25 — LAB L153
    ;; line 7:358
    (global.set $__line (i32.const 358))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
      ) ;; close $__case_26 — LAB L154
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L155
      (local.set $__lab (i32.const 28)) (br $__dispatch)
      ) ;; close $__case_28 — LAB L156
      (local.set $__lab (i32.const 29)) (br $__dispatch)
      ) ;; close $__case_29 — LAB L157
      (local.set $__lab (i32.const 30)) (br $__dispatch)
      ) ;; close $__case_30 — LAB L158
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:359
    (global.set $__line (i32.const 359))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      ) ;; close $__case_31 — LAB L159
    ;; line 7:360
    (global.set $__line (i32.const 360))
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
    ;; line 7:361
    (global.set $__line (i32.const 361))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 32)) (br $__dispatch)
      ) ;; close $__case_32 — LAB L160
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 32)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 33)) (br $__dispatch)
      ) ;; close $__case_33 — LAB L161
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      (local.set $__lab (i32.const 34)) (br $__dispatch)
      ) ;; close $__case_34 — LAB L162
    ;; line 7:362
    (global.set $__line (i32.const 362))
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
    ;; line 7:363
    (global.set $__line (i32.const 363))
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
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 35)) (br $__dispatch)
      ) ;; close $__case_35 — LAB L163
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
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 35)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 36)) (br $__dispatch)
      ) ;; close $__case_36 — LAB L164
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      (local.set $__lab (i32.const 37)) (br $__dispatch)
      ) ;; close $__case_37 — LAB L165
    ;; line 7:364
    (global.set $__line (i32.const 364))
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
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      ) ;; close $__case_38 — LAB L166
    ;; line 7:365
    (global.set $__line (i32.const 365))
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
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      ) ;; close $__case_39 — LAB L167
    ;; line 7:366
    (global.set $__line (i32.const 366))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 40)) (br $__dispatch)
      ) ;; close $__case_40 — LAB L168
      (local.set $__lab (i32.const 41)) (br $__dispatch)
      ) ;; close $__case_41 — LAB L169
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:367
    (global.set $__line (i32.const 367))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 42)) (br $__dispatch)
      ) ;; close $__case_42 — LAB L170
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t6 (local.get $t8)) ;; SP promoted P!6
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 42)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 43)) (br $__dispatch)
      ) ;; close $__case_43 — LAB L171
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      (local.set $__lab (i32.const 44)) (br $__dispatch)
      ) ;; close $__case_44 — LAB L172
    ;; line 7:368
    (global.set $__line (i32.const 368))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 45)) (br $__dispatch)
      ) ;; close $__case_45 — LAB L173
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      ) ;; close $__case_46 — LAB L174
    ;; line 7:369
    (global.set $__line (i32.const 369))
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
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      ) ;; close $__case_47 — LAB L175
    ;; line 7:370
    (global.set $__line (i32.const 370))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch) ;; JUMP L129
      ) ;; close $__case_48 — LAB L176
    ;; line 7:371
    (global.set $__line (i32.const 371))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_49 — LAB L128
    ;; RSTACK 5
    (local.set $t5 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 37 cases default L130
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
      ) ;; close $__case_50 — LAB L129
    ;; line 7:340
    (global.set $__line (i32.const 340))
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
    (local.set $t4 (local.get $t5)) ;; SP promoted P!4
      (local.set $__lab (i32.const 1)) (br $__dispatch) ;; JUMP L127
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
  ) ;; end func $fn_L21

  ;; BCPL fn queue_inner (L22)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (local.set $t5 (i32.load (i32.add (local.get $Pb) (i32.const 20)))) ;; init promoted P!5
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:380
    (global.set $__line (i32.const 380))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 3))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2064))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:381
    (global.set $__line (i32.const 381))
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
    ;; line 7:382
    (global.set $__line (i32.const 382))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L177
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2056))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:384
    (global.set $__line (i32.const 384))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060)) (local.get $t6))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2056))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:385
    (global.set $__line (i32.const 385))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060)) (local.get $t6))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2056))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:386
    (global.set $__line (i32.const 386))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060)) (local.get $t6))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t7 (i32.const 512))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:387
    (global.set $__line (i32.const 387))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:388
    (global.set $__line (i32.const 388))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040)) (local.get $t6))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_2 — LAB L178
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
  ) ;; end func $fn_L22

  ;; BCPL fn drain_pending (L23)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:395
    (global.set $__line (i32.const 395))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:396
    (global.set $__line (i32.const 396))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:397
    (global.set $__line (i32.const 397))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:398
    (global.set $__line (i32.const 398))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:399
    (global.set $__line (i32.const 399))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L179
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2056))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t7 (i32.load (i32.shl (local.get $t7) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 7:401
    (global.set $__line (i32.const 401))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2056))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 7:402
    (global.set $__line (i32.const 402))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t9))
    ;; line 7:403
    (global.set $__line (i32.const 403))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t8)) ;; LP promoted P!8
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924)) (local.get $t9))
    ;; line 7:404
    (global.set $__line (i32.const 404))
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
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t9))
    ;; line 7:405
    (global.set $__line (i32.const 405))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.add (global.get $TB) (i32.const 40))) ;; LF L50
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:406
    (global.set $__line (i32.const 406))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 3))
    (local.set $t10 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t6 (local.get $t9)) ;; SP promoted P!6
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060))))
    (if (i32.lt_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L180
    ;; line 7:400
    (global.set $__line (i32.const 400))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2060)) (local.get $t7))
    ;; line 7:411
    (global.set $__line (i32.const 411))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 924)) (local.get $t7))
    ;; line 7:412
    (global.set $__line (i32.const 412))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t7))
    ;; line 7:413
    (global.set $__line (i32.const 413))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t7))
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
  ) ;; end func $fn_L23

  ;; BCPL fn emit_mod_header (L24)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:427
    (global.set $__line (i32.const 427))
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
    ;; line 7:428
    (global.set $__line (i32.const 428))
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
    ;; line 7:429
    (global.set $__line (i32.const 429))
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
    ;; line 7:430
    (global.set $__line (i32.const 430))
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
    ;; line 7:431
    (global.set $__line (i32.const 431))
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
    ;; line 7:432
    (global.set $__line (i32.const 432))
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
    ;; line 7:433
    (global.set $__line (i32.const 433))
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
    ;; line 7:434
    (global.set $__line (i32.const 434))
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
    ;; line 7:435
    (global.set $__line (i32.const 435))
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
    ;; line 7:436
    (global.set $__line (i32.const 436))
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
    ;; line 7:437
    (global.set $__line (i32.const 437))
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
    ;; line 7:438
    (global.set $__line (i32.const 438))
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
    ;; line 7:443
    (global.set $__line (i32.const 443))
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
    ;; line 7:444
    (global.set $__line (i32.const 444))
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L24

  ;; BCPL fn emit_mod_footer (L25)
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
    ;; line 7:456
    (global.set $__line (i32.const 456))
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
    ;; line 7:457
    (global.set $__line (i32.const 457))
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
    ;; line 7:461
    (global.set $__line (i32.const 461))
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
    ;; line 7:462
    (global.set $__line (i32.const 462))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L182
      ) ;; close $__case_1 — LAB L181
    ;; line 7:463
    (global.set $__line (i32.const 463))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 243))) ;; LSTR
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
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
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t3 (local.get $t5)) ;; SP promoted P!3
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L182
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
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
    ;; line 7:464
    (global.set $__line (i32.const 464))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:466
    (global.set $__line (i32.const 466))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 249))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:467
    (global.set $__line (i32.const 467))
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
    ;; line 7:468
    (global.set $__line (i32.const 468))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L185
      ) ;; close $__case_3 — LAB L184
    ;; line 7:469
    (global.set $__line (i32.const 469))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:470
    (global.set $__line (i32.const 470))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 266))) ;; LSTR
    (local.set $t10 (i32.const 255))
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (i32.and (local.get $t10) (local.get $t11)))
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t12 (i32.const 8))
    (local.set $t11 (i32.shr_u (local.get $t11) (local.get $t12)))
    (local.set $t12 (i32.const 255))
    (local.set $t11 (i32.and (local.get $t11) (local.get $t12)))
    (local.set $t12 (local.get $t5)) ;; LP promoted P!5
    (local.set $t13 (i32.const 16))
    (local.set $t12 (i32.shr_u (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.const 255))
    (local.set $t12 (i32.and (local.get $t12) (local.get $t13)))
    (local.set $t13 (local.get $t5)) ;; LP promoted P!5
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
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t3 (local.get $t5)) ;; SP promoted P!3
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L185
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 7:471
    (global.set $__line (i32.const 471))
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
      ) ;; close $__case_5 — LAB L183
    ;; line 7:474
    (global.set $__line (i32.const 474))
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
    ;; line 7:479
    (global.set $__line (i32.const 479))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 7:480
    (global.set $__line (i32.const 480))
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
    ;; line 7:481
    (global.set $__line (i32.const 481))
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
    ;; line 7:482
    (global.set $__line (i32.const 482))
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
    ;; line 7:483
    (global.set $__line (i32.const 483))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 307))) ;; LSTR
    (local.set $t7 (i32.const 4))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
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
    ;; line 7:484
    (global.set $__line (i32.const 484))
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
      ) ;; close $__case_6 — LAB L186
    ;; line 7:485
    (global.set $__line (i32.const 485))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 7)) (br $__dispatch)
    ))
    ;; line 7:487
    (global.set $__line (i32.const 487))
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
    ;; line 7:488
    (global.set $__line (i32.const 488))
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
    ;; line 7:489
    (global.set $__line (i32.const 489))
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
    ;; line 7:490
    (global.set $__line (i32.const 490))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 307))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:491
    (global.set $__line (i32.const 491))
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
      ) ;; close $__case_7 — LAB L187
    ;; line 7:492
    (global.set $__line (i32.const 492))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L189
      ) ;; close $__case_8 — LAB L188
    ;; line 7:494
    (global.set $__line (i32.const 494))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t5 (i32.load (i32.shl (local.get $t5) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:495
    (global.set $__line (i32.const 495))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:496
    (global.set $__line (i32.const 496))
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
    ;; line 7:497
    (global.set $__line (i32.const 497))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:498
    (global.set $__line (i32.const 498))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 343))) ;; LSTR
    (local.set $t11 (local.get $t6)) ;; LP promoted P!6
    (local.set $t12 (local.get $t5)) ;; LP promoted P!5
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
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t3 (local.get $t5)) ;; SP promoted P!3
      (local.set $__lab (i32.const 9)) (br $__dispatch)
      ) ;; close $__case_9 — LAB L189
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 7:499
    (global.set $__line (i32.const 499))
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
    ;; line 7:502
    (global.set $__line (i32.const 502))
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
    ;; line 7:504
    (global.set $__line (i32.const 504))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 373))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:505
    (global.set $__line (i32.const 505))
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
    ;; line 7:506
    (global.set $__line (i32.const 506))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 373))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:507
    (global.set $__line (i32.const 507))
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
    ;; line 7:509
    (global.set $__line (i32.const 509))
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L25

  ;; BCPL fn lab_idx (L26)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:517
    (global.set $__line (i32.const 517))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:518
    (global.set $__line (i32.const 518))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:519
    (global.set $__line (i32.const 519))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_1 — LAB L191
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t4))
    ;; line 7:520
    (global.set $__line (i32.const 520))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
    ;; line 7:521
    (global.set $__line (i32.const 521))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    ;; FNRN
    (local.set $__res (local.get $t4))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $__res))
      ) ;; close $__case_2 — LAB L190
    ;; line 7:522
    (global.set $__line (i32.const 522))
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L26

  ;; BCPL fn push_const (L27)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    ;; line 7:531
    (global.set $__line (i32.const 531))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 397))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:532
    (global.set $__line (i32.const 532))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L27

  ;; BCPL fn push_load_p (L28)
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
    (local $t10 i32)
    (local $t11 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:536
    (global.set $__line (i32.const 536))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.add (global.get $TB) (i32.const 6))) ;; LF L16
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (if (i32.eqz (local.get $t4)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:537
    (global.set $__line (i32.const 537))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 407))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L194
      ) ;; close $__case_1 — LAB L192
    ;; line 7:538
    (global.set $__line (i32.const 538))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 422))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:540
    (global.set $__line (i32.const 540))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:541
    (global.set $__line (i32.const 541))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 430))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L194
    ;; line 7:542
    (global.set $__line (i32.const 542))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
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
  ) ;; end func $fn_L28

  ;; BCPL fn push_load_g (L29)
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    ;; line 7:547
    (global.set $__line (i32.const 547))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 422))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:548
    (global.set $__line (i32.const 548))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:549
    (global.set $__line (i32.const 549))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 430))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:550
    (global.set $__line (i32.const 550))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L29

  ;; BCPL fn push_rv (L30)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:554
    (global.set $__line (i32.const 554))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:556
    (global.set $__line (i32.const 556))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 431))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:557
    (global.set $__line (i32.const 557))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L30

  ;; BCPL fn binop (L31)
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:563
    (global.set $__line (i32.const 563))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:564
    (global.set $__line (i32.const 564))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 450))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:565
    (global.set $__line (i32.const 565))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:567
    (global.set $__line (i32.const 567))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:568
    (global.set $__line (i32.const 568))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L195
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
  ) ;; end func $fn_L31

  ;; BCPL fn fbinop (L32)
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:573
    (global.set $__line (i32.const 573))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:574
    (global.set $__line (i32.const 574))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 466))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:575
    (global.set $__line (i32.const 575))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:577
    (global.set $__line (i32.const 577))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:578
    (global.set $__line (i32.const 578))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L196
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
  ) ;; end func $fn_L32

  ;; BCPL fn fcmp_op (L33)
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
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:582
    (global.set $__line (i32.const 582))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:583
    (global.set $__line (i32.const 583))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 498))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:584
    (global.set $__line (i32.const 584))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:586
    (global.set $__line (i32.const 586))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:587
    (global.set $__line (i32.const 587))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L197
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
  ) ;; end func $fn_L33

  ;; BCPL fn unop_neg (L34)
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
    ;; line 7:590
    (global.set $__line (i32.const 590))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:591
    (global.set $__line (i32.const 591))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 531))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:592
    (global.set $__line (i32.const 592))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L34

  ;; BCPL fn unop_not (L35)
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
    (local $t9 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:597
    (global.set $__line (i32.const 597))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:598
    (global.set $__line (i32.const 598))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 547))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:599
    (global.set $__line (i32.const 599))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L35

  ;; BCPL fn unop_abs (L36)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:604
    (global.set $__line (i32.const 604))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:605
    (global.set $__line (i32.const 605))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 563))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:606
    (global.set $__line (i32.const 606))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 569))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:607
    (global.set $__line (i32.const 607))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 586))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:608
    (global.set $__line (i32.const 608))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 595))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:609
    (global.set $__line (i32.const 609))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L36

  ;; BCPL fn unop_fneg (L37)
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
    ;; line 7:614
    (global.set $__line (i32.const 614))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:615
    (global.set $__line (i32.const 615))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 610))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:616
    (global.set $__line (i32.const 616))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L37

  ;; BCPL fn unop_fabs (L38)
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
    (local $t10 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:622
    (global.set $__line (i32.const 622))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:623
    (global.set $__line (i32.const 623))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 626))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:624
    (global.set $__line (i32.const 624))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L38

  ;; BCPL fn unop_float (L39)
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
    ;; line 7:630
    (global.set $__line (i32.const 630))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:631
    (global.set $__line (i32.const 631))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 642))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:632
    (global.set $__line (i32.const 632))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L39

  ;; BCPL fn unop_fix (L40)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:638
    (global.set $__line (i32.const 638))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:639
    (global.set $__line (i32.const 639))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 663))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:640
    (global.set $__line (i32.const 640))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L40

  ;; BCPL fn cmp_op (L41)
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
    (local $t11 i32)
    (local $t12 i32)
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:645
    (global.set $__line (i32.const 645))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:648
    (global.set $__line (i32.const 648))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 683))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:649
    (global.set $__line (i32.const 649))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:651
    (global.set $__line (i32.const 651))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:652
    (global.set $__line (i32.const 652))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L198
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
  ) ;; end func $fn_L41

  ;; BCPL fn store_p (L42)
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:655
    (global.set $__line (i32.const 655))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:656
    (global.set $__line (i32.const 656))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.add (global.get $TB) (i32.const 6))) ;; LF L16
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    (if (i32.eqz (local.get $t4)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:657
    (global.set $__line (i32.const 657))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (if (i32.eq  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:659
    (global.set $__line (i32.const 659))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 705))) ;; LSTR
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L201
      ) ;; close $__case_1 — LAB L202
      (local.set $__lab (i32.const 4)) (br $__dispatch) ;; JUMP L201
      ) ;; close $__case_2 — LAB L199
    ;; line 7:660
    (global.set $__line (i32.const 660))
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
    ;; line 7:663
    (global.set $__line (i32.const 663))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:664
    (global.set $__line (i32.const 664))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 720))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:665
    (global.set $__line (i32.const 665))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 3))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (if (i32.eq  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 3)) (br $__dispatch)
    ))
    ;; line 7:669
    (global.set $__line (i32.const 669))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 725))) ;; LSTR
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L203
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L201
    ;; line 7:670
    (global.set $__line (i32.const 670))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:672
    (global.set $__line (i32.const 672))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_5 — LAB L204
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
  ) ;; end func $fn_L42

  ;; BCPL fn store_g (L43)
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:675
    (global.set $__line (i32.const 675))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:676
    (global.set $__line (i32.const 676))
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
    ;; line 7:677
    (global.set $__line (i32.const 677))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:678
    (global.set $__line (i32.const 678))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 720))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:679
    (global.set $__line (i32.const 679))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:680
    (global.set $__line (i32.const 680))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L205
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
  ) ;; end func $fn_L43

  ;; BCPL fn store_ind (L44)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:683
    (global.set $__line (i32.const 683))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 2))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:686
    (global.set $__line (i32.const 686))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 735))) ;; LSTR
    (local.set $t7 (i32.const 1))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:687
    (global.set $__line (i32.const 687))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:689
    (global.set $__line (i32.const 689))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L206
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
  ) ;; end func $fn_L44

  ;; BCPL fn emit_goto_lab (L45)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    ;; line 7:696
    (global.set $__line (i32.const 696))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
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
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L45

  ;; BCPL fn emit_goto_idx (L46)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    ;; line 7:700
    (global.set $__line (i32.const 700))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 754))) ;; LSTR
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:701
    (global.set $__line (i32.const 701))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L46

  ;; BCPL fn emit_condjump (L47)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (loop $__dispatch
      (block $__default
      (block $__case_27
      (block $__case_26
      (block $__case_25
      (block $__case_24
      (block $__case_23
      (block $__case_22
      (block $__case_21
      (block $__case_20
      (block $__case_19
      (block $__case_18
      (block $__case_17
      (block $__case_16
      (block $__case_15
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:705
    (global.set $__line (i32.const 705))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (local.set $t5 (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush FNAP result
    ;; line 7:706
    (global.set $__line (i32.const 706))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    ;; RES L207: save result, jump to RSTACK
    (local.set $__res (local.get $t6))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
    ;; line 7:709
    (global.set $__line (i32.const 709))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_1 — LAB L209
    ;; line 7:710
    (global.set $__line (i32.const 710))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:711
    (global.set $__line (i32.const 711))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:712
    (global.set $__line (i32.const 712))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:713
    (global.set $__line (i32.const 713))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 769))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L212
      ) ;; close $__case_2 — LAB L210
    ;; line 7:714
    (global.set $__line (i32.const 714))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 777))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      ) ;; close $__case_3 — LAB L212
    ;; line 7:715
    (global.set $__line (i32.const 715))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L208
    ;; line 7:716
    (global.set $__line (i32.const 716))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_4 — LAB L213
    ;; line 7:718
    (global.set $__line (i32.const 718))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:719
    (global.set $__line (i32.const 719))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:720
    (global.set $__line (i32.const 720))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 769))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 6)) (br $__dispatch) ;; JUMP L216
      ) ;; close $__case_5 — LAB L214
    ;; line 7:721
    (global.set $__line (i32.const 721))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 777))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      ) ;; close $__case_6 — LAB L216
    ;; line 7:722
    (global.set $__line (i32.const 722))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L208
    ;; line 7:723
    (global.set $__line (i32.const 723))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_7 — LAB L217
    ;; line 7:725
    (global.set $__line (i32.const 725))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:726
    (global.set $__line (i32.const 726))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 8)) (br $__dispatch)
    ))
    ;; line 7:727
    (global.set $__line (i32.const 727))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 788))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      (local.set $__lab (i32.const 9)) (br $__dispatch) ;; JUMP L220
      ) ;; close $__case_8 — LAB L218
    ;; line 7:728
    (global.set $__line (i32.const 728))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 803))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      ) ;; close $__case_9 — LAB L220
    ;; line 7:729
    (global.set $__line (i32.const 729))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L208
    ;; line 7:730
    (global.set $__line (i32.const 730))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_10 — LAB L221
    ;; line 7:731
    (global.set $__line (i32.const 731))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:732
    (global.set $__line (i32.const 732))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 11)) (br $__dispatch)
    ))
    ;; line 7:733
    (global.set $__line (i32.const 733))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 803))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      (local.set $__lab (i32.const 12)) (br $__dispatch) ;; JUMP L224
      ) ;; close $__case_11 — LAB L222
    ;; line 7:734
    (global.set $__line (i32.const 734))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 788))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      ) ;; close $__case_12 — LAB L224
    ;; line 7:735
    (global.set $__line (i32.const 735))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L208
    ;; line 7:736
    (global.set $__line (i32.const 736))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_13 — LAB L225
    ;; line 7:737
    (global.set $__line (i32.const 737))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:738
    (global.set $__line (i32.const 738))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; line 7:739
    (global.set $__line (i32.const 739))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 818))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      (local.set $__lab (i32.const 15)) (br $__dispatch) ;; JUMP L228
      ) ;; close $__case_14 — LAB L226
    ;; line 7:740
    (global.set $__line (i32.const 740))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 833))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      ) ;; close $__case_15 — LAB L228
    ;; line 7:741
    (global.set $__line (i32.const 741))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L208
    ;; line 7:742
    (global.set $__line (i32.const 742))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_16 — LAB L229
    ;; line 7:743
    (global.set $__line (i32.const 743))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:744
    (global.set $__line (i32.const 744))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; line 7:745
    (global.set $__line (i32.const 745))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 848))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      (local.set $__lab (i32.const 18)) (br $__dispatch) ;; JUMP L232
      ) ;; close $__case_17 — LAB L230
    ;; line 7:746
    (global.set $__line (i32.const 746))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 863))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      ) ;; close $__case_18 — LAB L232
    ;; line 7:747
    (global.set $__line (i32.const 747))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L208
    ;; line 7:748
    (global.set $__line (i32.const 748))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_19 — LAB L233
    ;; line 7:749
    (global.set $__line (i32.const 749))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:750
    (global.set $__line (i32.const 750))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 7:751
    (global.set $__line (i32.const 751))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 863))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      (local.set $__lab (i32.const 21)) (br $__dispatch) ;; JUMP L236
      ) ;; close $__case_20 — LAB L234
    ;; line 7:752
    (global.set $__line (i32.const 752))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 848))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      ) ;; close $__case_21 — LAB L236
    ;; line 7:753
    (global.set $__line (i32.const 753))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L208
    ;; line 7:754
    (global.set $__line (i32.const 754))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_22 — LAB L237
    ;; line 7:755
    (global.set $__line (i32.const 755))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:756
    (global.set $__line (i32.const 756))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
    ;; line 7:757
    (global.set $__line (i32.const 757))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 833))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      (local.set $__lab (i32.const 24)) (br $__dispatch) ;; JUMP L240
      ) ;; close $__case_23 — LAB L238
    ;; line 7:758
    (global.set $__line (i32.const 758))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 818))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      ) ;; close $__case_24 — LAB L240
    ;; line 7:759
    (global.set $__line (i32.const 759))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch) ;; JUMP L208
      ) ;; close $__case_25 — LAB L207
    ;; RSTACK 6
    (local.set $t6 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 7 cases default L209
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
      ) ;; close $__case_26 — LAB L208
    ;; line 7:709
    (global.set $__line (i32.const 709))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t6))
    ;; line 7:762
    (global.set $__line (i32.const 762))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
    ;; line 7:764
    (global.set $__line (i32.const 764))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t6))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L241
    (local.set $t9 (i32.add (global.get $SB) (i32.const 754))) ;; LSTR
    (local.set $t10 (local.get $t5)) ;; LP promoted P!5
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:766
    (global.set $__line (i32.const 766))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 878))) ;; LSTR
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L47

  ;; BCPL fn emit_apply (L48)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (loop $__dispatch
      (block $__default
      (block $__case_6
      (block $__case_5
      (block $__case_4
      (block $__case_3
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:774
    (global.set $__line (i32.const 774))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:781
    (global.set $__line (i32.const 781))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 4))
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:782
    (global.set $__line (i32.const 782))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t6)) ;; LP promoted P!6
    (local.set $t8 (i32.const 0))
    (if (i32.ge_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:783
    (global.set $__line (i32.const 783))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 0))
    (local.set $t6 (local.get $t7)) ;; SP promoted P!6
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L242
    (local.set $t7 (i32.const 0))
    (local.set $t8 (local.get $t6)) ;; LP promoted P!6
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.sub (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L244
      ) ;; close $__case_2 — LAB L243
    ;; line 7:786
    (global.set $__line (i32.const 786))
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
    ;; line 7:787
    (global.set $__line (i32.const 787))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 3))
    (local.set $t13 (local.get $t4)) ;; LP promoted P!4
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (local.get $t7)) ;; LP promoted P!7
    (local.set $t12 (i32.add (local.get $t12) (local.get $t13)))
    (local.set $t13 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t13)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 9)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t13)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:788
    (global.set $__line (i32.const 788))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.add (global.get $SB) (i32.const 720))) ;; LSTR
    (local.set $t13 (i32.const 3))
    (local.set $t14 (local.get $t4)) ;; LP promoted P!4
    (local.set $t13 (i32.add (local.get $t13) (local.get $t14)))
    (local.set $t14 (local.get $t7)) ;; LP promoted P!7
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
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (i32.const 1))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (local.set $t7 (local.get $t9)) ;; SP promoted P!7
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L244
    (local.set $t9 (local.get $t7)) ;; LP promoted P!7
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (if (i32.le_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:789
    (global.set $__line (i32.const 789))
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
    ;; line 7:793
    (global.set $__line (i32.const 793))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:794
    (global.set $__line (i32.const 794))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 880))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:795
    (global.set $__line (i32.const 795))
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
    ;; line 7:797
    (global.set $__line (i32.const 797))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 1))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:798
    (global.set $__line (i32.const 798))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 888))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:799
    (global.set $__line (i32.const 799))
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
    ;; line 7:801
    (global.set $__line (i32.const 801))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.const 2))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:802
    (global.set $__line (i32.const 802))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 899))) ;; LSTR
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:803
    (global.set $__line (i32.const 803))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 908))) ;; LSTR
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:806
    (global.set $__line (i32.const 806))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 10))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (if (i32.ne  (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 5)) (br $__dispatch)
    ))
    ;; line 7:808
    (global.set $__line (i32.const 808))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 924))) ;; LSTR
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t12 (local.get $t5)) ;; LP promoted P!5
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
    ;; line 7:810
    (global.set $__line (i32.const 810))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:813
    (global.set $__line (i32.const 813))
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
    ;; line 7:816
    (global.set $__line (i32.const 816))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:817
    (global.set $__line (i32.const 817))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 944))) ;; LSTR
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:818
    (global.set $__line (i32.const 818))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t7))
    ;; line 7:819
    (global.set $__line (i32.const 819))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t8 (i32.const 1))
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 7:822
    (global.set $__line (i32.const 822))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const 1))
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t7))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L246
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_5 — LAB L245
    ;; line 7:823
    (global.set $__line (i32.const 823))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 955))) ;; LSTR
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:826
    (global.set $__line (i32.const 826))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:828
    (global.set $__line (i32.const 828))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t7))
    ;; line 7:829
    (global.set $__line (i32.const 829))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 7:831
    (global.set $__line (i32.const 831))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t4)) ;; LP promoted P!4
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t7))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_6 — LAB L247
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

  ;; BCPL fn cgpendingop_wasm (L49)
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
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (loop $__dispatch
      (block $__default
      (block $__case_40
      (block $__case_39
      (block $__case_38
      (block $__case_37
      (block $__case_36
      (block $__case_35
      (block $__case_34
      (block $__case_33
      (block $__case_32
      (block $__case_31
      (block $__case_30
      (block $__case_29
      (block $__case_28
      (block $__case_27
      (block $__case_26
      (block $__case_25
      (block $__case_24
      (block $__case_23
      (block $__case_22
      (block $__case_21
      (block $__case_20
      (block $__case_19
      (block $__case_18
      (block $__case_17
      (block $__case_16
      (block $__case_15
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__case_28 $__case_29 $__case_30 $__case_31 $__case_32 $__case_33 $__case_34 $__case_35 $__case_36 $__case_37 $__case_38 $__case_39 $__case_40 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:838
    (global.set $__line (i32.const 838))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:839
    (global.set $__line (i32.const 839))
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
    ;; line 7:840
    (global.set $__line (i32.const 840))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t5))
    ;; line 7:841
    (global.set $__line (i32.const 841))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 132))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (if (i32.ne  (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_1 — LAB L248
    ;; line 7:842
    (global.set $__line (i32.const 842))
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
    ;; line 7:848
    (global.set $__line (i32.const 848))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    ;; RES L249: save result, jump to RSTACK
    (local.set $__res (local.get $t5))
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ;; line 7:849
    (global.set $__line (i32.const 849))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_2 — LAB L251
    ;; line 7:850
    (global.set $__line (i32.const 850))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_3 — LAB L252
    ;; line 7:851
    (global.set $__line (i32.const 851))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1892))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_4 — LAB L253
    ;; line 7:852
    (global.set $__line (i32.const 852))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1896))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_5 — LAB L254
    ;; line 7:853
    (global.set $__line (i32.const 853))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1900))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_6 — LAB L255
    ;; line 7:854
    (global.set $__line (i32.const 854))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1912))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_7 — LAB L256
    ;; line 7:855
    (global.set $__line (i32.const 855))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_8 — LAB L257
    ;; line 7:856
    (global.set $__line (i32.const 856))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1904))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_9 — LAB L258
    ;; line 7:857
    (global.set $__line (i32.const 857))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1908))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_10 — LAB L259
    ;; line 7:858
    (global.set $__line (i32.const 858))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 973))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_11 — LAB L260
    ;; line 7:859
    (global.set $__line (i32.const 859))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 975))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_12 — LAB L261
    ;; line 7:860
    (global.set $__line (i32.const 860))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 977))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_13 — LAB L262
    ;; line 7:861
    (global.set $__line (i32.const 861))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 979))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_14 — LAB L263
    ;; line 7:862
    (global.set $__line (i32.const 862))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 982))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_15 — LAB L264
    ;; line 7:863
    (global.set $__line (i32.const 863))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 985))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_16 — LAB L265
    ;; line 7:864
    (global.set $__line (i32.const 864))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 987))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_17 — LAB L266
    ;; line 7:865
    (global.set $__line (i32.const 865))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 990))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_18 — LAB L267
    ;; line 7:866
    (global.set $__line (i32.const 866))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 992))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_19 — LAB L268
    ;; line 7:867
    (global.set $__line (i32.const 867))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 994))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_20 — LAB L269
    ;; line 7:868
    (global.set $__line (i32.const 868))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 994))) ;; LSTR
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
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_21 — LAB L270
    ;; line 7:869
    (global.set $__line (i32.const 869))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 996))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_22 — LAB L271
    ;; line 7:870
    (global.set $__line (i32.const 870))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 998))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_23 — LAB L272
    ;; line 7:871
    (global.set $__line (i32.const 871))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1000))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_24 — LAB L273
    ;; line 7:872
    (global.set $__line (i32.const 872))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1002))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_25 — LAB L274
    ;; line 7:873
    (global.set $__line (i32.const 873))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:876
    (global.set $__line (i32.const 876))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:877
    (global.set $__line (i32.const 877))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t7))
    ;; line 7:878
    (global.set $__line (i32.const 878))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1004))) ;; LSTR
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:879
    (global.set $__line (i32.const 879))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1015))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:880
    (global.set $__line (i32.const 880))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1019))) ;; LSTR
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:881
    (global.set $__line (i32.const 881))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1031))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:882
    (global.set $__line (i32.const 882))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1036))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:883
    (global.set $__line (i32.const 883))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1042))) ;; LSTR
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t11)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t11)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:884
    (global.set $__line (i32.const 884))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1048))) ;; LSTR
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:885
    (global.set $__line (i32.const 885))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1062))) ;; LSTR
    (local.set $t11 (local.get $t6)) ;; LP promoted P!6
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:886
    (global.set $__line (i32.const 886))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (i32.add (global.get $SB) (i32.const 1076))) ;; LSTR
    (local.set $t11 (local.get $t6)) ;; LP promoted P!6
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 7)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:887
    (global.set $__line (i32.const 887))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t7) (local.get $t8)) (then
      (local.set $__lab (i32.const 26)) (br $__dispatch)
    ))
    ;; line 7:888
    (global.set $__line (i32.const 888))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t7))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
      ) ;; close $__case_26 — LAB L275
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
    ;; line 7:890
    (global.set $__line (i32.const 890))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_27 — LAB L276
    ;; line 7:891
    (global.set $__line (i32.const 891))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1090))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_28 — LAB L277
    ;; line 7:892
    (global.set $__line (i32.const 892))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1092))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_29 — LAB L278
    ;; line 7:893
    (global.set $__line (i32.const 893))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1094))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_30 — LAB L279
    ;; line 7:894
    (global.set $__line (i32.const 894))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1097))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_31 — LAB L280
    ;; line 7:895
    (global.set $__line (i32.const 895))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1100))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_32 — LAB L281
    ;; line 7:896
    (global.set $__line (i32.const 896))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1103))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_33 — LAB L282
    ;; line 7:897
    (global.set $__line (i32.const 897))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1106))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_34 — LAB L283
    ;; line 7:898
    (global.set $__line (i32.const 898))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1108))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_35 — LAB L284
    ;; line 7:899
    (global.set $__line (i32.const 899))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1110))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_36 — LAB L285
    ;; line 7:900
    (global.set $__line (i32.const 900))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1112))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_37 — LAB L286
    ;; line 7:901
    (global.set $__line (i32.const 901))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1114))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_38 — LAB L287
    ;; line 7:902
    (global.set $__line (i32.const 902))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1116))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 40)) (br $__dispatch) ;; JUMP L250
      ) ;; close $__case_39 — LAB L249
    ;; RSTACK 5
    (local.set $t5 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 35 cases default L251
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
      ) ;; close $__case_40 — LAB L250
    ;; line 7:849
    (global.set $__line (i32.const 849))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
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
      ) ;; close $__default
      (unreachable)
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L49

  ;; BCPL fn scan_emit (L50)
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
      (block $__default
      (block $__case_353
      (block $__case_352
      (block $__case_351
      (block $__case_350
      (block $__case_349
      (block $__case_348
      (block $__case_347
      (block $__case_346
      (block $__case_345
      (block $__case_344
      (block $__case_343
      (block $__case_342
      (block $__case_341
      (block $__case_340
      (block $__case_339
      (block $__case_338
      (block $__case_337
      (block $__case_336
      (block $__case_335
      (block $__case_334
      (block $__case_333
      (block $__case_332
      (block $__case_331
      (block $__case_330
      (block $__case_329
      (block $__case_328
      (block $__case_327
      (block $__case_326
      (block $__case_325
      (block $__case_324
      (block $__case_323
      (block $__case_322
      (block $__case_321
      (block $__case_320
      (block $__case_319
      (block $__case_318
      (block $__case_317
      (block $__case_316
      (block $__case_315
      (block $__case_314
      (block $__case_313
      (block $__case_312
      (block $__case_311
      (block $__case_310
      (block $__case_309
      (block $__case_308
      (block $__case_307
      (block $__case_306
      (block $__case_305
      (block $__case_304
      (block $__case_303
      (block $__case_302
      (block $__case_301
      (block $__case_300
      (block $__case_299
      (block $__case_298
      (block $__case_297
      (block $__case_296
      (block $__case_295
      (block $__case_294
      (block $__case_293
      (block $__case_292
      (block $__case_291
      (block $__case_290
      (block $__case_289
      (block $__case_288
      (block $__case_287
      (block $__case_286
      (block $__case_285
      (block $__case_284
      (block $__case_283
      (block $__case_282
      (block $__case_281
      (block $__case_280
      (block $__case_279
      (block $__case_278
      (block $__case_277
      (block $__case_276
      (block $__case_275
      (block $__case_274
      (block $__case_273
      (block $__case_272
      (block $__case_271
      (block $__case_270
      (block $__case_269
      (block $__case_268
      (block $__case_267
      (block $__case_266
      (block $__case_265
      (block $__case_264
      (block $__case_263
      (block $__case_262
      (block $__case_261
      (block $__case_260
      (block $__case_259
      (block $__case_258
      (block $__case_257
      (block $__case_256
      (block $__case_255
      (block $__case_254
      (block $__case_253
      (block $__case_252
      (block $__case_251
      (block $__case_250
      (block $__case_249
      (block $__case_248
      (block $__case_247
      (block $__case_246
      (block $__case_245
      (block $__case_244
      (block $__case_243
      (block $__case_242
      (block $__case_241
      (block $__case_240
      (block $__case_239
      (block $__case_238
      (block $__case_237
      (block $__case_236
      (block $__case_235
      (block $__case_234
      (block $__case_233
      (block $__case_232
      (block $__case_231
      (block $__case_230
      (block $__case_229
      (block $__case_228
      (block $__case_227
      (block $__case_226
      (block $__case_225
      (block $__case_224
      (block $__case_223
      (block $__case_222
      (block $__case_221
      (block $__case_220
      (block $__case_219
      (block $__case_218
      (block $__case_217
      (block $__case_216
      (block $__case_215
      (block $__case_214
      (block $__case_213
      (block $__case_212
      (block $__case_211
      (block $__case_210
      (block $__case_209
      (block $__case_208
      (block $__case_207
      (block $__case_206
      (block $__case_205
      (block $__case_204
      (block $__case_203
      (block $__case_202
      (block $__case_201
      (block $__case_200
      (block $__case_199
      (block $__case_198
      (block $__case_197
      (block $__case_196
      (block $__case_195
      (block $__case_194
      (block $__case_193
      (block $__case_192
      (block $__case_191
      (block $__case_190
      (block $__case_189
      (block $__case_188
      (block $__case_187
      (block $__case_186
      (block $__case_185
      (block $__case_184
      (block $__case_183
      (block $__case_182
      (block $__case_181
      (block $__case_180
      (block $__case_179
      (block $__case_178
      (block $__case_177
      (block $__case_176
      (block $__case_175
      (block $__case_174
      (block $__case_173
      (block $__case_172
      (block $__case_171
      (block $__case_170
      (block $__case_169
      (block $__case_168
      (block $__case_167
      (block $__case_166
      (block $__case_165
      (block $__case_164
      (block $__case_163
      (block $__case_162
      (block $__case_161
      (block $__case_160
      (block $__case_159
      (block $__case_158
      (block $__case_157
      (block $__case_156
      (block $__case_155
      (block $__case_154
      (block $__case_153
      (block $__case_152
      (block $__case_151
      (block $__case_150
      (block $__case_149
      (block $__case_148
      (block $__case_147
      (block $__case_146
      (block $__case_145
      (block $__case_144
      (block $__case_143
      (block $__case_142
      (block $__case_141
      (block $__case_140
      (block $__case_139
      (block $__case_138
      (block $__case_137
      (block $__case_136
      (block $__case_135
      (block $__case_134
      (block $__case_133
      (block $__case_132
      (block $__case_131
      (block $__case_130
      (block $__case_129
      (block $__case_128
      (block $__case_127
      (block $__case_126
      (block $__case_125
      (block $__case_124
      (block $__case_123
      (block $__case_122
      (block $__case_121
      (block $__case_120
      (block $__case_119
      (block $__case_118
      (block $__case_117
      (block $__case_116
      (block $__case_115
      (block $__case_114
      (block $__case_113
      (block $__case_112
      (block $__case_111
      (block $__case_110
      (block $__case_109
      (block $__case_108
      (block $__case_107
      (block $__case_106
      (block $__case_105
      (block $__case_104
      (block $__case_103
      (block $__case_102
      (block $__case_101
      (block $__case_100
      (block $__case_99
      (block $__case_98
      (block $__case_97
      (block $__case_96
      (block $__case_95
      (block $__case_94
      (block $__case_93
      (block $__case_92
      (block $__case_91
      (block $__case_90
      (block $__case_89
      (block $__case_88
      (block $__case_87
      (block $__case_86
      (block $__case_85
      (block $__case_84
      (block $__case_83
      (block $__case_82
      (block $__case_81
      (block $__case_80
      (block $__case_79
      (block $__case_78
      (block $__case_77
      (block $__case_76
      (block $__case_75
      (block $__case_74
      (block $__case_73
      (block $__case_72
      (block $__case_71
      (block $__case_70
      (block $__case_69
      (block $__case_68
      (block $__case_67
      (block $__case_66
      (block $__case_65
      (block $__case_64
      (block $__case_63
      (block $__case_62
      (block $__case_61
      (block $__case_60
      (block $__case_59
      (block $__case_58
      (block $__case_57
      (block $__case_56
      (block $__case_55
      (block $__case_54
      (block $__case_53
      (block $__case_52
      (block $__case_51
      (block $__case_50
      (block $__case_49
      (block $__case_48
      (block $__case_47
      (block $__case_46
      (block $__case_45
      (block $__case_44
      (block $__case_43
      (block $__case_42
      (block $__case_41
      (block $__case_40
      (block $__case_39
      (block $__case_38
      (block $__case_37
      (block $__case_36
      (block $__case_35
      (block $__case_34
      (block $__case_33
      (block $__case_32
      (block $__case_31
      (block $__case_30
      (block $__case_29
      (block $__case_28
      (block $__case_27
      (block $__case_26
      (block $__case_25
      (block $__case_24
      (block $__case_23
      (block $__case_22
      (block $__case_21
      (block $__case_20
      (block $__case_19
      (block $__case_18
      (block $__case_17
      (block $__case_16
      (block $__case_15
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
        (br_table $__case_0 $__case_1 $__case_2 $__case_3 $__case_4 $__case_5 $__case_6 $__case_7 $__case_8 $__case_9 $__case_10 $__case_11 $__case_12 $__case_13 $__case_14 $__case_15 $__case_16 $__case_17 $__case_18 $__case_19 $__case_20 $__case_21 $__case_22 $__case_23 $__case_24 $__case_25 $__case_26 $__case_27 $__case_28 $__case_29 $__case_30 $__case_31 $__case_32 $__case_33 $__case_34 $__case_35 $__case_36 $__case_37 $__case_38 $__case_39 $__case_40 $__case_41 $__case_42 $__case_43 $__case_44 $__case_45 $__case_46 $__case_47 $__case_48 $__case_49 $__case_50 $__case_51 $__case_52 $__case_53 $__case_54 $__case_55 $__case_56 $__case_57 $__case_58 $__case_59 $__case_60 $__case_61 $__case_62 $__case_63 $__case_64 $__case_65 $__case_66 $__case_67 $__case_68 $__case_69 $__case_70 $__case_71 $__case_72 $__case_73 $__case_74 $__case_75 $__case_76 $__case_77 $__case_78 $__case_79 $__case_80 $__case_81 $__case_82 $__case_83 $__case_84 $__case_85 $__case_86 $__case_87 $__case_88 $__case_89 $__case_90 $__case_91 $__case_92 $__case_93 $__case_94 $__case_95 $__case_96 $__case_97 $__case_98 $__case_99 $__case_100 $__case_101 $__case_102 $__case_103 $__case_104 $__case_105 $__case_106 $__case_107 $__case_108 $__case_109 $__case_110 $__case_111 $__case_112 $__case_113 $__case_114 $__case_115 $__case_116 $__case_117 $__case_118 $__case_119 $__case_120 $__case_121 $__case_122 $__case_123 $__case_124 $__case_125 $__case_126 $__case_127 $__case_128 $__case_129 $__case_130 $__case_131 $__case_132 $__case_133 $__case_134 $__case_135 $__case_136 $__case_137 $__case_138 $__case_139 $__case_140 $__case_141 $__case_142 $__case_143 $__case_144 $__case_145 $__case_146 $__case_147 $__case_148 $__case_149 $__case_150 $__case_151 $__case_152 $__case_153 $__case_154 $__case_155 $__case_156 $__case_157 $__case_158 $__case_159 $__case_160 $__case_161 $__case_162 $__case_163 $__case_164 $__case_165 $__case_166 $__case_167 $__case_168 $__case_169 $__case_170 $__case_171 $__case_172 $__case_173 $__case_174 $__case_175 $__case_176 $__case_177 $__case_178 $__case_179 $__case_180 $__case_181 $__case_182 $__case_183 $__case_184 $__case_185 $__case_186 $__case_187 $__case_188 $__case_189 $__case_190 $__case_191 $__case_192 $__case_193 $__case_194 $__case_195 $__case_196 $__case_197 $__case_198 $__case_199 $__case_200 $__case_201 $__case_202 $__case_203 $__case_204 $__case_205 $__case_206 $__case_207 $__case_208 $__case_209 $__case_210 $__case_211 $__case_212 $__case_213 $__case_214 $__case_215 $__case_216 $__case_217 $__case_218 $__case_219 $__case_220 $__case_221 $__case_222 $__case_223 $__case_224 $__case_225 $__case_226 $__case_227 $__case_228 $__case_229 $__case_230 $__case_231 $__case_232 $__case_233 $__case_234 $__case_235 $__case_236 $__case_237 $__case_238 $__case_239 $__case_240 $__case_241 $__case_242 $__case_243 $__case_244 $__case_245 $__case_246 $__case_247 $__case_248 $__case_249 $__case_250 $__case_251 $__case_252 $__case_253 $__case_254 $__case_255 $__case_256 $__case_257 $__case_258 $__case_259 $__case_260 $__case_261 $__case_262 $__case_263 $__case_264 $__case_265 $__case_266 $__case_267 $__case_268 $__case_269 $__case_270 $__case_271 $__case_272 $__case_273 $__case_274 $__case_275 $__case_276 $__case_277 $__case_278 $__case_279 $__case_280 $__case_281 $__case_282 $__case_283 $__case_284 $__case_285 $__case_286 $__case_287 $__case_288 $__case_289 $__case_290 $__case_291 $__case_292 $__case_293 $__case_294 $__case_295 $__case_296 $__case_297 $__case_298 $__case_299 $__case_300 $__case_301 $__case_302 $__case_303 $__case_304 $__case_305 $__case_306 $__case_307 $__case_308 $__case_309 $__case_310 $__case_311 $__case_312 $__case_313 $__case_314 $__case_315 $__case_316 $__case_317 $__case_318 $__case_319 $__case_320 $__case_321 $__case_322 $__case_323 $__case_324 $__case_325 $__case_326 $__case_327 $__case_328 $__case_329 $__case_330 $__case_331 $__case_332 $__case_333 $__case_334 $__case_335 $__case_336 $__case_337 $__case_338 $__case_339 $__case_340 $__case_341 $__case_342 $__case_343 $__case_344 $__case_345 $__case_346 $__case_347 $__case_348 $__case_349 $__case_350 $__case_351 $__case_352 $__case_353 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:912
    (global.set $__line (i32.const 912))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:913
    (global.set $__line (i32.const 913))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:914
    (global.set $__line (i32.const 914))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 132))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t3))
    ;; line 7:915
    (global.set $__line (i32.const 915))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:916
    (global.set $__line (i32.const 916))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t3))
    ;; line 7:917
    (global.set $__line (i32.const 917))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956)) (local.get $t3))
    ;; line 7:918
    (global.set $__line (i32.const 918))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t3))
    ;; line 7:919
    (global.set $__line (i32.const 919))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 2)) (br $__dispatch) ;; JUMP L289
      ) ;; close $__case_1 — LAB L288
    ;; line 7:920
    (global.set $__line (i32.const 920))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const -1))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.shl (local.get $t6) (i32.const 2)) (local.get $t5))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t3 (local.get $t5)) ;; SP promoted P!3
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L289
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 3)) (br $__dispatch)
      ) ;; close $__case_3 — LAB L290
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 256))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (local.set $t4 (i32.const 0))
    (if (i32.eq  (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 4)) (br $__dispatch)
    ))
    ;; line 7:928
    (global.set $__line (i32.const 928))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 255))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t3 (i32.and (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t3))
      (local.set $__lab (i32.const 4)) (br $__dispatch)
      ) ;; close $__case_4 — LAB L291
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    ;; RES L292: save result, jump to RSTACK
    (local.set $__res (local.get $t3))
      (local.set $__lab (i32.const 350)) (br $__dispatch)
    ;; line 7:930
    (global.set $__line (i32.const 930))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_5 — LAB L294
    ;; line 7:931
    (global.set $__line (i32.const 931))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 84))
    (if (i32.lt_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t4 (i32.const 112))
    (if (i32.gt_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 6)) (br $__dispatch)
    ))
    ;; line 7:936
    (global.set $__line (i32.const 936))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1118))) ;; LSTR
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
      (local.set $__lab (i32.const 7)) (br $__dispatch) ;; JUMP L297
      ) ;; close $__case_6 — LAB L295
    ;; line 7:937
    (global.set $__line (i32.const 937))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1133))) ;; LSTR
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
      (local.set $__lab (i32.const 7)) (br $__dispatch)
      ) ;; close $__case_7 — LAB L297
    ;; line 7:938
    (global.set $__line (i32.const 938))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1068)) (local.get $t3))
    ;; line 7:939
    (global.set $__line (i32.const 939))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:940
    (global.set $__line (i32.const 940))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_8 — LAB L298
    ;; line 7:942
    (global.set $__line (i32.const 942))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
      ) ;; close $__case_9 — LAB L299
    ;; line 7:944
    (global.set $__line (i32.const 944))
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
    ;; line 7:952
    (global.set $__line (i32.const 952))
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
    ;; line 7:953
    (global.set $__line (i32.const 953))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 10)) (br $__dispatch)
    ))
    ;; line 7:954
    (global.set $__line (i32.const 954))
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
    ;; line 7:955
    (global.set $__line (i32.const 955))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1140))) ;; LSTR
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
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
    ;; line 7:956
    (global.set $__line (i32.const 956))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1145))) ;; LSTR
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:957
    (global.set $__line (i32.const 957))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1156))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:963
    (global.set $__line (i32.const 963))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1171))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:964
    (global.set $__line (i32.const 964))
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
      ) ;; close $__case_10 — LAB L300
    ;; line 7:965
    (global.set $__line (i32.const 965))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:967
    (global.set $__line (i32.const 967))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 11)) (br $__dispatch)
      ) ;; close $__case_11 — LAB L301
    ;; line 7:970
    (global.set $__line (i32.const 970))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
      ) ;; close $__case_12 — LAB L302
    ;; line 7:972
    (global.set $__line (i32.const 972))
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
    ;; line 7:974
    (global.set $__line (i32.const 974))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (local.set $t5 (i32.const 0))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 14)) (br $__dispatch)
    ))
    ;; line 7:976
    (global.set $__line (i32.const 976))
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
    ;; line 7:977
    (global.set $__line (i32.const 977))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (if (local.get $t4) (then
      (local.set $__lab (i32.const 13)) (br $__dispatch)
    ))
    ;; line 7:978
    (global.set $__line (i32.const 978))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1180))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:979
    (global.set $__line (i32.const 979))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1186))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 13)) (br $__dispatch)
      ) ;; close $__case_13 — LAB L304
    ;; line 7:980
    (global.set $__line (i32.const 980))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1194))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:982
    (global.set $__line (i32.const 982))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1201))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:983
    (global.set $__line (i32.const 983))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1208))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:984
    (global.set $__line (i32.const 984))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1213))) ;; LSTR
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
    ;; line 7:985
    (global.set $__line (i32.const 985))
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
    ;; line 7:986
    (global.set $__line (i32.const 986))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t4))
      (local.set $__lab (i32.const 14)) (br $__dispatch)
      ) ;; close $__case_14 — LAB L303
    ;; line 7:987
    (global.set $__line (i32.const 987))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 21)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 15)) (br $__dispatch)
      ) ;; close $__case_15 — LAB L305
    ;; line 7:989
    (global.set $__line (i32.const 989))
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
    ;; line 7:990
    (global.set $__line (i32.const 990))
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
    ;; line 7:991
    (global.set $__line (i32.const 991))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 7:994
    (global.set $__line (i32.const 994))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 0))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
      (local.set $__lab (i32.const 18)) (br $__dispatch) ;; JUMP L308
      ) ;; close $__case_16 — LAB L307
    ;; line 7:995
    (global.set $__line (i32.const 995))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.load (i32.shl (local.get $t11) (i32.const 2))))
    (local.set $t12 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.ne  (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 17)) (br $__dispatch)
    ))
    ;; line 7:996
    (global.set $__line (i32.const 996))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t8 (local.get $t11)) ;; SP promoted P!8
      (local.set $__lab (i32.const 19)) (br $__dispatch) ;; JUMP L310
      ) ;; close $__case_17 — LAB L309
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (i32.const 1))
    (local.set $t11 (i32.add (local.get $t11) (local.get $t12)))
    (local.set $t9 (local.get $t11)) ;; SP promoted P!9
      (local.set $__lab (i32.const 18)) (br $__dispatch)
      ) ;; close $__case_18 — LAB L308
    (local.set $t11 (local.get $t9)) ;; LP promoted P!9
    (local.set $t12 (local.get $t10)) ;; LP promoted P!10
    (if (i32.le_s (local.get $t11) (local.get $t12)) (then
      (local.set $__lab (i32.const 16)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 19)) (br $__dispatch)
      ) ;; close $__case_19 — LAB L310
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t10 (i32.const 512))
    (if (i32.ge_s (local.get $t9) (local.get $t10)) (then
      (local.set $__lab (i32.const 20)) (br $__dispatch)
    ))
    ;; line 7:997
    (global.set $__line (i32.const 997))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    ;; line 7:998
    (global.set $__line (i32.const 998))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032)) (local.get $t9))
    ;; line 7:999
    (global.set $__line (i32.const 999))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t8)) ;; LP promoted P!8
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t11 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2028))))
    (local.set $t10 (i32.add (local.get $t10) (local.get $t11)))
    (i32.store (i32.shl (local.get $t10) (i32.const 2)) (local.get $t9))
    ;; line 7:1000
    (global.set $__line (i32.const 1000))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.const 1))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032))))
    (local.set $t9 (i32.add (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2032)) (local.get $t9))
      (local.set $__lab (i32.const 20)) (br $__dispatch)
      ) ;; close $__case_20 — LAB L311
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t4 (local.get $t6)) ;; SP promoted P!4
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 15)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 21)) (br $__dispatch)
      ) ;; close $__case_21 — LAB L306
    ;; line 7:1001
    (global.set $__line (i32.const 1001))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2084))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1004
    (global.set $__line (i32.const 1004))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1824))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1005
    (global.set $__line (i32.const 1005))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; RTRN
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (i32.const 0))
    ;; line 7:1006
    (global.set $__line (i32.const 1006))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 22)) (br $__dispatch)
      ) ;; close $__case_22 — LAB L312
    ;; line 7:1009
    (global.set $__line (i32.const 1009))
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
    ;; line 7:1010
    (global.set $__line (i32.const 1010))
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
    ;; line 7:1011
    (global.set $__line (i32.const 1011))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1220))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1012
    (global.set $__line (i32.const 1012))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 24)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 23)) (br $__dispatch)
      ) ;; close $__case_23 — LAB L313
    ;; line 7:1013
    (global.set $__line (i32.const 1013))
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
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t4 (local.get $t6)) ;; SP promoted P!4
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 23)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 24)) (br $__dispatch)
      ) ;; close $__case_24 — LAB L314
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1014
    (global.set $__line (i32.const 1014))
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
    ;; line 7:1015
    (global.set $__line (i32.const 1015))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1016
    (global.set $__line (i32.const 1016))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 25)) (br $__dispatch)
      ) ;; close $__case_25 — LAB L315
    ;; line 7:1019
    (global.set $__line (i32.const 1019))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 26)) (br $__dispatch)
      ) ;; close $__case_26 — LAB L316
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1020
    (global.set $__line (i32.const 1020))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (if (i32.gt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 28)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 27)) (br $__dispatch)
      ) ;; close $__case_27 — LAB L317
    ;; line 7:1021
    (global.set $__line (i32.const 1021))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t4 (local.get $t6)) ;; SP promoted P!4
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 27)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 28)) (br $__dispatch)
      ) ;; close $__case_28 — LAB L318
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1022
    (global.set $__line (i32.const 1022))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 29)) (br $__dispatch)
      ) ;; close $__case_29 — LAB L319
    ;; line 7:1025
    (global.set $__line (i32.const 1025))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 30)) (br $__dispatch)
    ))
    ;; line 7:1028
    (global.set $__line (i32.const 1028))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:1029
    (global.set $__line (i32.const 1029))
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
    ;; line 7:1030
    (global.set $__line (i32.const 1030))
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
    ;; line 7:1031
    (global.set $__line (i32.const 1031))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $P) (i32.const 7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; flush t6 (pre-stack-up)
    ;; line 7:1032
    (global.set $__line (i32.const 1032))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (local.get $t5)) ;; LP promoted P!5
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
    ;; line 7:1033
    (global.set $__line (i32.const 1033))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2088))))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1034
    (global.set $__line (i32.const 1034))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (local.get $t3)) ;; LP promoted P!3
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (local.set $t29 (local.get $t4)) ;; LP promoted P!4
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2080))))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 24)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1035
    (global.set $__line (i32.const 1035))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
      (local.set $__lab (i32.const 30)) (br $__dispatch)
      ) ;; close $__case_30 — LAB L320
    ;; line 7:1036
    (global.set $__line (i32.const 1036))
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
    ;; line 7:1039
    (global.set $__line (i32.const 1039))
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
    ;; line 7:1040
    (global.set $__line (i32.const 1040))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.add (global.get $P) (i32.const 6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush t5 (pre-stack-up)
    ;; line 7:1041
    (global.set $__line (i32.const 1041))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (local.get $t4)) ;; LP promoted P!4
    (local.set $t27 (local.get $t5)) ;; LP promoted P!5
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1928))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t28)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t28)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1042
    (global.set $__line (i32.const 1042))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 7:1054
    (global.set $__line (i32.const 1054))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (i32.const 1))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
    ;; line 7:1055
    (global.set $__line (i32.const 1055))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const 3))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26)) ;; STORE slot 26
    ;; line 7:1056
    (global.set $__line (i32.const 1056))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t27 (i32.const 132))
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t27)) ;; STORE slot 27
    ;; line 7:1299
    (global.set $__line (i32.const 1299))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
      (local.set $__lab (i32.const 32)) (br $__dispatch) ;; JUMP L323
      ) ;; close $__case_31 — LAB L322
    ;; line 7:1058
    (global.set $__line (i32.const 1058))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const -1))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (i32.store (i32.shl (local.get $t31) (i32.const 2)) (local.get $t30))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (local.set $t28 (local.get $t30)) ;; SP promoted P!28
      (local.set $__lab (i32.const 32)) (br $__dispatch)
      ) ;; close $__case_32 — LAB L323
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 31)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 0))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
      (local.set $__lab (i32.const 34)) (br $__dispatch) ;; JUMP L325
      ) ;; close $__case_33 — LAB L324
    ;; line 7:1060
    (global.set $__line (i32.const 1060))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 0))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (i32.store (i32.shl (local.get $t31) (i32.const 2)) (local.get $t30))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (local.set $t28 (local.get $t30)) ;; SP promoted P!28
      (local.set $__lab (i32.const 34)) (br $__dispatch)
      ) ;; close $__case_34 — LAB L325
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (if (i32.le_s (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 33)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t28))
    ;; line 7:1061
    (global.set $__line (i32.const 1061))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956)) (local.get $t28))
    ;; line 7:1062
    (global.set $__line (i32.const 1062))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 3))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992)) (local.get $t28))
    ;; line 7:1063
    (global.set $__line (i32.const 1063))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004)) (local.get $t28))
    ;; line 7:1067
    (global.set $__line (i32.const 1067))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t28))
    ;; line 7:1068
    (global.set $__line (i32.const 1068))
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
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t28))
    ;; line 7:1069
    (global.set $__line (i32.const 1069))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 35)) (br $__dispatch)
      ) ;; close $__case_35 — LAB L326
    ;; line 0:66
    (global.set $__line (i32.const 66))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    ))
    (local.set $t28 (i32.const 132))
    (local.set $t29 (local.get $t27)) ;; LP promoted P!27
    (if (i32.eq  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 40)) (br $__dispatch)
    ))
    ;; line 7:1085
    (global.set $__line (i32.const 1085))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t27)) ;; LP promoted P!27
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    ;; line 7:1086
    (global.set $__line (i32.const 1086))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 148))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t29 (i32.sub (i32.const 0) (i32.eq (local.get $t29) (local.get $t30))))
    (local.set $t30 (i32.const 149))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t30 (i32.sub (i32.const 0) (i32.eq (local.get $t30) (local.get $t31))))
    (local.set $t29 (i32.or (local.get $t29) (local.get $t30)))
    (local.set $t30 (i32.const 19))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (local.set $t30 (i32.sub (i32.const 0) (i32.eq (local.get $t30) (local.get $t31))))
    (local.set $t31 (i32.const 20))
    (local.set $t32 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (i32.sub (i32.const 0) (i32.eq (local.get $t31) (local.get $t32))))
    (local.set $t30 (i32.or (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.const 21))
    (local.set $t32 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (i32.sub (i32.const 0) (i32.eq (local.get $t31) (local.get $t32))))
    (local.set $t30 (i32.or (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.const 22))
    (local.set $t32 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (i32.sub (i32.const 0) (i32.eq (local.get $t31) (local.get $t32))))
    (local.set $t30 (i32.or (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.const 23))
    (local.set $t32 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (i32.sub (i32.const 0) (i32.eq (local.get $t31) (local.get $t32))))
    (local.set $t30 (i32.or (local.get $t30) (local.get $t31)))
    (local.set $t31 (i32.const 24))
    (local.set $t32 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (i32.sub (i32.const 0) (i32.eq (local.get $t31) (local.get $t32))))
    (local.set $t30 (i32.or (local.get $t30) (local.get $t31)))
    (local.set $t29 (i32.and (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    ;; line 7:1087
    (global.set $__line (i32.const 1087))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (local.get $t29)) ;; LP promoted P!29
    (if (local.get $t30) (then
      (local.set $__lab (i32.const 39)) (br $__dispatch)
    ))
    ;; line 7:1091
    (global.set $__line (i32.const 1091))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 12))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    (local.set $t30 (i32.const 29))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    (local.set $t30 (i32.const 13))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    (local.set $t30 (i32.const 167))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    (local.set $t30 (i32.const 168))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    (local.set $t30 (i32.const 176))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    (local.set $t30 (i32.const 169))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 36)) (br $__dispatch)
    ))
    (local.set $t30 (i32.const 175))
    (local.set $t31 (local.get $t28)) ;; LP promoted P!28
    (if (i32.ne  (local.get $t30) (local.get $t31)) (then
      (local.set $__lab (i32.const 37)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 36)) (br $__dispatch)
      ) ;; close $__case_36 — LAB L331
    ;; line 7:1092
    (global.set $__line (i32.const 1092))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 38)) (br $__dispatch) ;; JUMP L332
      ) ;; close $__case_37 — LAB L329
    (local.set $t30 (local.get $t26)) ;; LP promoted P!26
    (local.set $t31 (i32.const 1))
    (local.set $t30 (i32.sub (local.get $t30) (local.get $t31)))
    (local.set $t26 (local.get $t30)) ;; SP promoted P!26
      (local.set $__lab (i32.const 38)) (br $__dispatch)
      ) ;; close $__case_38 — LAB L332
    ;; line 7:1096
    (global.set $__line (i32.const 1096))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t30 (i32.const 132))
    (local.set $t27 (local.get $t30)) ;; SP promoted P!27
      (local.set $__lab (i32.const 39)) (br $__dispatch)
      ) ;; close $__case_39 — LAB L328
      (local.set $__lab (i32.const 40)) (br $__dispatch)
      ) ;; close $__case_40 — LAB L327
    ;; line 7:1097
    (global.set $__line (i32.const 1097))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    ;; RES L333: save result, jump to RSTACK
    (local.set $__res (local.get $t28))
      (local.set $__lab (i32.const 165)) (br $__dispatch)
    ;; line 7:1100
    (global.set $__line (i32.const 1100))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_41 — LAB L335
    ;; line 7:1101
    (global.set $__line (i32.const 1101))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
      ) ;; close $__case_42 — LAB L336
    ;; line 7:1102
    (global.set $__line (i32.const 1102))
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
    ;; line 7:1103
    (global.set $__line (i32.const 1103))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 43)) (br $__dispatch)
    ))
    ;; line 7:1104
    (global.set $__line (i32.const 1104))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (local.get $t28)) ;; LP promoted P!28
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956)) (local.get $t29))
    ;; line 7:1105
    (global.set $__line (i32.const 1105))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (local.get $t28)) ;; LP promoted P!28
    (local.set $t26 (local.get $t29)) ;; SP promoted P!26
      (local.set $__lab (i32.const 43)) (br $__dispatch)
      ) ;; close $__case_43 — LAB L337
    ;; line 7:1106
    (global.set $__line (i32.const 1106))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1108
    (global.set $__line (i32.const 1108))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 44)) (br $__dispatch)
      ) ;; close $__case_44 — LAB L338
    ;; line 7:1110
    (global.set $__line (i32.const 1110))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    ;; line 7:1111
    (global.set $__line (i32.const 1111))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 46)) (br $__dispatch)
    ))
    ;; line 7:1112
    (global.set $__line (i32.const 1112))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948)) (local.get $t29))
    ;; line 7:1113
    (global.set $__line (i32.const 1113))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (local.get $t28)) ;; LP promoted P!28
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ge_s (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 45)) (br $__dispatch)
    ))
    ;; line 7:1114
    (global.set $__line (i32.const 1114))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.shl (local.get $t30) (i32.const 2)) (local.get $t29))
      (local.set $__lab (i32.const 45)) (br $__dispatch)
      ) ;; close $__case_45 — LAB L340
      (local.set $__lab (i32.const 46)) (br $__dispatch)
      ) ;; close $__case_46 — LAB L339
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1116
    (global.set $__line (i32.const 1116))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 47)) (br $__dispatch)
      ) ;; close $__case_47 — LAB L341
    ;; line 7:1118
    (global.set $__line (i32.const 1118))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    ;; line 7:1119
    (global.set $__line (i32.const 1119))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 29)))
    (local.set $t29 (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; flush FNAP result
    (local.set $t30 (i32.const 1))
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31)) ;; STORE slot 31
    (local.set $t32 (local.get $t30)) ;; LP promoted P!30
    (local.set $t33 (local.get $t31)) ;; LP promoted P!31
    (if (i32.gt_s (local.get $t32) (local.get $t33)) (then
      (local.set $__lab (i32.const 49)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 48)) (br $__dispatch)
      ) ;; close $__case_48 — LAB L342
    ;; line 7:1120
    (global.set $__line (i32.const 1120))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t35 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t35)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 32)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t35)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t32 (local.get $t30)) ;; LP promoted P!30
    (local.set $t33 (i32.const 1))
    (local.set $t32 (i32.add (local.get $t32) (local.get $t33)))
    (local.set $t30 (local.get $t32)) ;; SP promoted P!30
    (local.set $t32 (local.get $t30)) ;; LP promoted P!30
    (local.set $t33 (local.get $t31)) ;; LP promoted P!31
    (if (i32.le_s (local.get $t32) (local.get $t33)) (then
      (local.set $__lab (i32.const 48)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 49)) (br $__dispatch)
      ) ;; close $__case_49 — LAB L343
    (local.set $t30 (i32.const 1))
    (local.set $t31 (local.get $t25)) ;; LP promoted P!25
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (local.set $t25 (local.get $t30)) ;; SP promoted P!25
    ;; line 7:1121
    (global.set $__line (i32.const 1121))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1122
    (global.set $__line (i32.const 1122))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 50)) (br $__dispatch)
      ) ;; close $__case_50 — LAB L344
    ;; line 7:1124
    (global.set $__line (i32.const 1124))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t25)) ;; LP promoted P!25
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t25 (local.get $t28)) ;; SP promoted P!25
    ;; line 7:1125
    (global.set $__line (i32.const 1125))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t25)) ;; LP promoted P!25
    (local.set $t29 (i32.const 0))
    (if (i32.gt_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 51)) (br $__dispatch)
    ))
    ;; line 7:1126
    (global.set $__line (i32.const 1126))
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
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t28))
    (local.set $t28 (i32.const 169)) ;; LF L321 (disp)
      (local.set $__lab (local.get $t28))
      (br $__dispatch) ;; GOTO (computed)
      ) ;; close $__case_51 — LAB L345
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1127
    (global.set $__line (i32.const 1127))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_52 — LAB L346
    ;; line 7:1130
    (global.set $__line (i32.const 1130))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 53)) (br $__dispatch)
      ) ;; close $__case_53 — LAB L347
      (local.set $__lab (i32.const 54)) (br $__dispatch)
      ) ;; close $__case_54 — LAB L348
      (local.set $__lab (i32.const 55)) (br $__dispatch)
      ) ;; close $__case_55 — LAB L349
      (local.set $__lab (i32.const 56)) (br $__dispatch)
      ) ;; close $__case_56 — LAB L350
    ;; line 7:1131
    (global.set $__line (i32.const 1131))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1132
    (global.set $__line (i32.const 1132))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 57)) (br $__dispatch)
    ))
    ;; line 7:1133
    (global.set $__line (i32.const 1133))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t26)) ;; LP promoted P!26
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 57)) (br $__dispatch)
      ) ;; close $__case_57 — LAB L351
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1134
    (global.set $__line (i32.const 1134))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_58 — LAB L352
    ;; line 7:1135
    (global.set $__line (i32.const 1135))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 59)) (br $__dispatch)
      ) ;; close $__case_59 — LAB L353
      (local.set $__lab (i32.const 60)) (br $__dispatch)
      ) ;; close $__case_60 — LAB L354
      (local.set $__lab (i32.const 61)) (br $__dispatch)
      ) ;; close $__case_61 — LAB L355
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1136
    (global.set $__line (i32.const 1136))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 62)) (br $__dispatch)
    ))
    ;; line 7:1137
    (global.set $__line (i32.const 1137))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t26)) ;; LP promoted P!26
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 62)) (br $__dispatch)
      ) ;; close $__case_62 — LAB L356
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1138
    (global.set $__line (i32.const 1138))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_63 — LAB L357
    ;; line 7:1139
    (global.set $__line (i32.const 1139))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    ;; line 7:1140
    (global.set $__line (i32.const 1140))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 65)) (br $__dispatch)
    ))
    ;; line 7:1144
    (global.set $__line (i32.const 1144))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (local.get $t28)) ;; LP promoted P!28
    (local.set $t30 (i32.const 0))
    (if (i32.lt_s (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    ))
    (local.set $t29 (local.get $t28)) ;; LP promoted P!28
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1972))))
    (if (i32.ge_s (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 64)) (br $__dispatch)
    ))
    ;; line 7:1145
    (global.set $__line (i32.const 1145))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1968))))
    (local.set $t30 (i32.add (local.get $t30) (local.get $t31)))
    (i32.store (i32.shl (local.get $t30) (i32.const 2)) (local.get $t29))
      (local.set $__lab (i32.const 64)) (br $__dispatch)
      ) ;; close $__case_64 — LAB L359
    ;; line 7:1146
    (global.set $__line (i32.const 1146))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (local.set $t26 (local.get $t29)) ;; SP promoted P!26
      (local.set $__lab (i32.const 65)) (br $__dispatch)
      ) ;; close $__case_65 — LAB L358
    ;; line 7:1147
    (global.set $__line (i32.const 1147))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1149
    (global.set $__line (i32.const 1149))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 66)) (br $__dispatch)
      ) ;; close $__case_66 — LAB L360
    ;; line 7:1151
    (global.set $__line (i32.const 1151))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 67)) (br $__dispatch)
      ) ;; close $__case_67 — LAB L361
      (local.set $__lab (i32.const 68)) (br $__dispatch)
      ) ;; close $__case_68 — LAB L362
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 69)) (br $__dispatch)
    ))
    ;; line 7:1152
    (global.set $__line (i32.const 1152))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t26)) ;; LP promoted P!26
    (local.set $t28 (i32.add (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 69)) (br $__dispatch)
      ) ;; close $__case_69 — LAB L363
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1153
    (global.set $__line (i32.const 1153))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_70 — LAB L364
    ;; line 7:1154
    (global.set $__line (i32.const 1154))
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
    ;; line 7:1155
    (global.set $__line (i32.const 1155))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (local.set $t32 (local.get $t30)) ;; LP promoted P!30
    (if (i32.gt_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 72)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 71)) (br $__dispatch)
      ) ;; close $__case_71 — LAB L365
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (local.set $t32 (i32.const 1))
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (local.set $t29 (local.get $t31)) ;; SP promoted P!29
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (local.set $t32 (local.get $t30)) ;; LP promoted P!30
    (if (i32.le_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 71)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 72)) (br $__dispatch)
      ) ;; close $__case_72 — LAB L366
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 73)) (br $__dispatch)
    ))
    ;; line 7:1156
    (global.set $__line (i32.const 1156))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (local.set $t26 (local.get $t29)) ;; SP promoted P!26
      (local.set $__lab (i32.const 73)) (br $__dispatch)
      ) ;; close $__case_73 — LAB L367
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1157
    (global.set $__line (i32.const 1157))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 74)) (br $__dispatch)
      ) ;; close $__case_74 — LAB L368
    ;; line 7:1161
    (global.set $__line (i32.const 1161))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 75)) (br $__dispatch)
      ) ;; close $__case_75 — LAB L369
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1162
    (global.set $__line (i32.const 1162))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 76)) (br $__dispatch)
    ))
    ;; line 7:1163
    (global.set $__line (i32.const 1163))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 76)) (br $__dispatch)
      ) ;; close $__case_76 — LAB L370
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1164
    (global.set $__line (i32.const 1164))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_77 — LAB L371
    ;; line 7:1165
    (global.set $__line (i32.const 1165))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1166
    (global.set $__line (i32.const 1166))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 78)) (br $__dispatch)
    ))
    ;; line 7:1167
    (global.set $__line (i32.const 1167))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 78)) (br $__dispatch)
      ) ;; close $__case_78 — LAB L372
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1168
    (global.set $__line (i32.const 1168))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_79 — LAB L373
    ;; line 7:1169
    (global.set $__line (i32.const 1169))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 80)) (br $__dispatch)
    ))
    ;; line 7:1170
    (global.set $__line (i32.const 1170))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.const 2))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 80)) (br $__dispatch)
      ) ;; close $__case_80 — LAB L374
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1171
    (global.set $__line (i32.const 1171))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_81 — LAB L375
    ;; line 7:1174
    (global.set $__line (i32.const 1174))
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
    ;; line 7:1175
    (global.set $__line (i32.const 1175))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 82)) (br $__dispatch)
    ))
    ;; line 7:1176
    (global.set $__line (i32.const 1176))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (local.get $t28)) ;; LP promoted P!28
    (local.set $t26 (local.get $t29)) ;; SP promoted P!26
      (local.set $__lab (i32.const 82)) (br $__dispatch)
      ) ;; close $__case_82 — LAB L376
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1177
    (global.set $__line (i32.const 1177))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 83)) (br $__dispatch)
      ) ;; close $__case_83 — LAB L377
    ;; line 7:1179
    (global.set $__line (i32.const 1179))
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
    ;; line 7:1180
    (global.set $__line (i32.const 1180))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 84)) (br $__dispatch)
    ))
    ;; line 7:1181
    (global.set $__line (i32.const 1181))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (local.set $t26 (local.get $t29)) ;; SP promoted P!26
      (local.set $__lab (i32.const 84)) (br $__dispatch)
      ) ;; close $__case_84 — LAB L378
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1182
    (global.set $__line (i32.const 1182))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 85)) (br $__dispatch)
      ) ;; close $__case_85 — LAB L379
    ;; line 7:1184
    (global.set $__line (i32.const 1184))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
      ) ;; close $__case_86 — LAB L380
    ;; line 7:1193
    (global.set $__line (i32.const 1193))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 87)) (br $__dispatch)
      ) ;; close $__case_87 — LAB L381
      (local.set $__lab (i32.const 88)) (br $__dispatch)
      ) ;; close $__case_88 — LAB L382
      (local.set $__lab (i32.const 89)) (br $__dispatch)
      ) ;; close $__case_89 — LAB L383
    ;; line 7:1194
    (global.set $__line (i32.const 1194))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 90)) (br $__dispatch)
      ) ;; close $__case_90 — LAB L384
      (local.set $__lab (i32.const 91)) (br $__dispatch)
      ) ;; close $__case_91 — LAB L385
    ;; line 7:1195
    (global.set $__line (i32.const 1195))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 92)) (br $__dispatch)
      ) ;; close $__case_92 — LAB L386
      (local.set $__lab (i32.const 93)) (br $__dispatch)
      ) ;; close $__case_93 — LAB L387
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 94)) (br $__dispatch)
    ))
    ;; line 7:1196
    (global.set $__line (i32.const 1196))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t27 (local.get $t28)) ;; SP promoted P!27
      (local.set $__lab (i32.const 94)) (br $__dispatch)
      ) ;; close $__case_94 — LAB L388
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1197
    (global.set $__line (i32.const 1197))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_95 — LAB L389
    ;; line 7:1198
    (global.set $__line (i32.const 1198))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1199
    (global.set $__line (i32.const 1199))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_96 — LAB L390
    ;; line 7:1202
    (global.set $__line (i32.const 1202))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 97)) (br $__dispatch)
      ) ;; close $__case_97 — LAB L391
      (local.set $__lab (i32.const 98)) (br $__dispatch)
      ) ;; close $__case_98 — LAB L392
      (local.set $__lab (i32.const 99)) (br $__dispatch)
      ) ;; close $__case_99 — LAB L393
    ;; line 7:1203
    (global.set $__line (i32.const 1203))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 100)) (br $__dispatch)
      ) ;; close $__case_100 — LAB L394
      (local.set $__lab (i32.const 101)) (br $__dispatch)
      ) ;; close $__case_101 — LAB L395
    ;; line 7:1204
    (global.set $__line (i32.const 1204))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 102)) (br $__dispatch)
      ) ;; close $__case_102 — LAB L396
      (local.set $__lab (i32.const 103)) (br $__dispatch)
      ) ;; close $__case_103 — LAB L397
    ;; line 7:1205
    (global.set $__line (i32.const 1205))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 104)) (br $__dispatch)
      ) ;; close $__case_104 — LAB L398
      (local.set $__lab (i32.const 105)) (br $__dispatch)
      ) ;; close $__case_105 — LAB L399
      (local.set $__lab (i32.const 106)) (br $__dispatch)
      ) ;; close $__case_106 — LAB L400
      (local.set $__lab (i32.const 107)) (br $__dispatch)
      ) ;; close $__case_107 — LAB L401
    ;; line 7:1206
    (global.set $__line (i32.const 1206))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 108)) (br $__dispatch)
      ) ;; close $__case_108 — LAB L402
      (local.set $__lab (i32.const 109)) (br $__dispatch)
      ) ;; close $__case_109 — LAB L403
    ;; line 7:1207
    (global.set $__line (i32.const 1207))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 110)) (br $__dispatch)
      ) ;; close $__case_110 — LAB L404
      (local.set $__lab (i32.const 111)) (br $__dispatch)
      ) ;; close $__case_111 — LAB L405
      (local.set $__lab (i32.const 112)) (br $__dispatch)
      ) ;; close $__case_112 — LAB L406
      (local.set $__lab (i32.const 113)) (br $__dispatch)
      ) ;; close $__case_113 — LAB L407
    ;; line 7:1208
    (global.set $__line (i32.const 1208))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 114)) (br $__dispatch)
      ) ;; close $__case_114 — LAB L408
      (local.set $__lab (i32.const 115)) (br $__dispatch)
      ) ;; close $__case_115 — LAB L409
      (local.set $__lab (i32.const 116)) (br $__dispatch)
      ) ;; close $__case_116 — LAB L410
    ;; line 7:1209
    (global.set $__line (i32.const 1209))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 117)) (br $__dispatch)
      ) ;; close $__case_117 — LAB L411
      (local.set $__lab (i32.const 118)) (br $__dispatch)
      ) ;; close $__case_118 — LAB L412
    ;; line 7:1210
    (global.set $__line (i32.const 1210))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 119)) (br $__dispatch)
      ) ;; close $__case_119 — LAB L413
      (local.set $__lab (i32.const 120)) (br $__dispatch)
      ) ;; close $__case_120 — LAB L414
    ;; line 7:1211
    (global.set $__line (i32.const 1211))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 121)) (br $__dispatch)
      ) ;; close $__case_121 — LAB L415
      (local.set $__lab (i32.const 122)) (br $__dispatch)
      ) ;; close $__case_122 — LAB L416
      (local.set $__lab (i32.const 123)) (br $__dispatch)
      ) ;; close $__case_123 — LAB L417
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 124)) (br $__dispatch)
    ))
    ;; line 7:1212
    (global.set $__line (i32.const 1212))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t27 (local.get $t28)) ;; SP promoted P!27
      (local.set $__lab (i32.const 124)) (br $__dispatch)
      ) ;; close $__case_124 — LAB L418
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1213
    (global.set $__line (i32.const 1213))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_125 — LAB L419
    ;; line 7:1216
    (global.set $__line (i32.const 1216))
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
    ;; line 7:1217
    (global.set $__line (i32.const 1217))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 126)) (br $__dispatch)
    ))
    ;; line 7:1218
    (global.set $__line (i32.const 1218))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (local.set $t29 (i32.add (local.get $t29) (local.get $t30)))
    (local.set $t26 (local.get $t29)) ;; SP promoted P!26
      (local.set $__lab (i32.const 126)) (br $__dispatch)
      ) ;; close $__case_126 — LAB L420
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1219
    (global.set $__line (i32.const 1219))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 127)) (br $__dispatch)
      ) ;; close $__case_127 — LAB L421
    ;; line 7:1221
    (global.set $__line (i32.const 1221))
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
    ;; line 7:1222
    (global.set $__line (i32.const 1222))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 128)) (br $__dispatch)
    ))
    ;; line 7:1223
    (global.set $__line (i32.const 1223))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (local.get $t28)) ;; LP promoted P!28
    (local.set $t26 (local.get $t29)) ;; SP promoted P!26
      (local.set $__lab (i32.const 128)) (br $__dispatch)
      ) ;; close $__case_128 — LAB L422
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1224
    (global.set $__line (i32.const 1224))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 129)) (br $__dispatch)
      ) ;; close $__case_129 — LAB L423
    ;; line 7:1234
    (global.set $__line (i32.const 1234))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 130)) (br $__dispatch)
    ))
    ;; line 7:1235
    (global.set $__line (i32.const 1235))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 130)) (br $__dispatch)
      ) ;; close $__case_130 — LAB L424
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1236
    (global.set $__line (i32.const 1236))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_131 — LAB L425
    ;; line 7:1237
    (global.set $__line (i32.const 1237))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1238
    (global.set $__line (i32.const 1238))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_132 — LAB L426
    ;; line 7:1239
    (global.set $__line (i32.const 1239))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 133)) (br $__dispatch)
      ) ;; close $__case_133 — LAB L427
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1240
    (global.set $__line (i32.const 1240))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 136)) (br $__dispatch)
    ))
    ;; line 7:1241
    (global.set $__line (i32.const 1241))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t27)) ;; LP promoted P!27
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; STORE slot 28
    ;; line 7:1242
    (global.set $__line (i32.const 1242))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 19))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 134)) (br $__dispatch)
    ))
    (local.set $t29 (i32.const 20))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 134)) (br $__dispatch)
    ))
    (local.set $t29 (i32.const 21))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 134)) (br $__dispatch)
    ))
    (local.set $t29 (i32.const 22))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 134)) (br $__dispatch)
    ))
    (local.set $t29 (i32.const 23))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (if (i32.eq  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 134)) (br $__dispatch)
    ))
    (local.set $t29 (i32.const 24))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (if (i32.ne  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 135)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 134)) (br $__dispatch)
      ) ;; close $__case_134 — LAB L430
    ;; line 7:1243
    (global.set $__line (i32.const 1243))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (local.get $t26)) ;; LP promoted P!26
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (local.set $t26 (local.get $t29)) ;; SP promoted P!26
    ;; line 7:1245
    (global.set $__line (i32.const 1245))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 132))
    (local.set $t27 (local.get $t29)) ;; SP promoted P!27
      (local.set $__lab (i32.const 135)) (br $__dispatch)
      ) ;; close $__case_135 — LAB L429
    ;; line 7:1246
    (global.set $__line (i32.const 1246))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (local.get $t26)) ;; LP promoted P!26
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (local.set $t26 (local.get $t29)) ;; SP promoted P!26
      (local.set $__lab (i32.const 136)) (br $__dispatch)
      ) ;; close $__case_136 — LAB L428
    ;; line 7:1248
    (global.set $__line (i32.const 1248))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1250
    (global.set $__line (i32.const 1250))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_137 — LAB L431
    ;; line 7:1251
    (global.set $__line (i32.const 1251))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1252
    (global.set $__line (i32.const 1252))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 138)) (br $__dispatch)
    ))
    ;; line 7:1253
    (global.set $__line (i32.const 1253))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 138)) (br $__dispatch)
      ) ;; close $__case_138 — LAB L432
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1254
    (global.set $__line (i32.const 1254))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_139 — LAB L433
    ;; line 7:1255
    (global.set $__line (i32.const 1255))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1256
    (global.set $__line (i32.const 1256))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1257
    (global.set $__line (i32.const 1257))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_140 — LAB L434
    ;; line 7:1258
    (global.set $__line (i32.const 1258))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 141)) (br $__dispatch)
    ))
    ;; line 7:1259
    (global.set $__line (i32.const 1259))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 141)) (br $__dispatch)
      ) ;; close $__case_141 — LAB L435
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1260
    (global.set $__line (i32.const 1260))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_142 — LAB L436
    ;; line 7:1263
    (global.set $__line (i32.const 1263))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 143)) (br $__dispatch)
    ))
    ;; line 7:1264
    (global.set $__line (i32.const 1264))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.const 1))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 143)) (br $__dispatch)
      ) ;; close $__case_143 — LAB L437
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1265
    (global.set $__line (i32.const 1265))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_144 — LAB L438
    ;; line 7:1266
    (global.set $__line (i32.const 1266))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 145)) (br $__dispatch)
    ))
    ;; line 7:1267
    (global.set $__line (i32.const 1267))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.const 3))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 145)) (br $__dispatch)
      ) ;; close $__case_145 — LAB L439
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1268
    (global.set $__line (i32.const 1268))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_146 — LAB L440
    ;; line 7:1270
    (global.set $__line (i32.const 1270))
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
    ;; line 7:1271
    (global.set $__line (i32.const 1271))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 29)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (local.set $t32 (local.get $t30)) ;; LP promoted P!30
    (if (i32.gt_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 148)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 147)) (br $__dispatch)
      ) ;; close $__case_147 — LAB L441
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (local.set $t32 (i32.const 1))
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (local.set $t29 (local.get $t31)) ;; SP promoted P!29
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (local.set $t32 (local.get $t30)) ;; LP promoted P!30
    (if (i32.le_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 147)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 148)) (br $__dispatch)
      ) ;; close $__case_148 — LAB L442
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t29) (local.get $t30)) (then
      (local.set $__lab (i32.const 149)) (br $__dispatch)
    ))
    ;; line 7:1272
    (global.set $__line (i32.const 1272))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (local.get $t26)) ;; LP promoted P!26
    (local.set $t30 (i32.const 1))
    (local.set $t29 (i32.sub (local.get $t29) (local.get $t30)))
    (local.set $t26 (local.get $t29)) ;; SP promoted P!26
      (local.set $__lab (i32.const 149)) (br $__dispatch)
      ) ;; close $__case_149 — LAB L443
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1273
    (global.set $__line (i32.const 1273))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 150)) (br $__dispatch)
      ) ;; close $__case_150 — LAB L444
    ;; line 7:1276
    (global.set $__line (i32.const 1276))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
      ) ;; close $__case_151 — LAB L445
    ;; line 7:1277
    (global.set $__line (i32.const 1277))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1278
    (global.set $__line (i32.const 1278))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 152)) (br $__dispatch)
    ))
    ;; line 7:1279
    (global.set $__line (i32.const 1279))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.const 2))
    (local.set $t28 (i32.sub (local.get $t28) (local.get $t29)))
    (local.set $t26 (local.get $t28)) ;; SP promoted P!26
      (local.set $__lab (i32.const 152)) (br $__dispatch)
      ) ;; close $__case_152 — LAB L446
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
    ;; line 7:1280
    (global.set $__line (i32.const 1280))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_153 — LAB L447
    ;; line 7:1282
    (global.set $__line (i32.const 1282))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
      ) ;; close $__case_154 — LAB L448
    ;; line 7:1283
    (global.set $__line (i32.const 1283))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 155)) (br $__dispatch)
      ) ;; close $__case_155 — LAB L449
      (local.set $__lab (i32.const 156)) (br $__dispatch)
      ) ;; close $__case_156 — LAB L450
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (local.set $t28 (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28)) ;; flush FNAP result
    ;; line 7:1284
    (global.set $__line (i32.const 1284))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t29 (i32.const 1))
    (local.set $t30 (local.get $t28)) ;; LP promoted P!28
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29)) ;; STORE slot 29
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30)) ;; STORE slot 30
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (local.set $t32 (local.get $t30)) ;; LP promoted P!30
    (if (i32.gt_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 158)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 157)) (br $__dispatch)
      ) ;; close $__case_157 — LAB L451
    (local.set $t34 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t34)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 31)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t34)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (local.set $t32 (i32.const 1))
    (local.set $t31 (i32.add (local.get $t31) (local.get $t32)))
    (local.set $t29 (local.get $t31)) ;; SP promoted P!29
    (local.set $t31 (local.get $t29)) ;; LP promoted P!29
    (local.set $t32 (local.get $t30)) ;; LP promoted P!30
    (if (i32.le_s (local.get $t31) (local.get $t32)) (then
      (local.set $__lab (i32.const 157)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 158)) (br $__dispatch)
      ) ;; close $__case_158 — LAB L452
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
      (local.set $__lab (i32.const 159)) (br $__dispatch)
      ) ;; close $__case_159 — LAB L453
    ;; line 7:1285
    (global.set $__line (i32.const 1285))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 160)) (br $__dispatch)
      ) ;; close $__case_160 — LAB L454
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
      ) ;; close $__case_161 — LAB L455
    ;; line 7:1286
    (global.set $__line (i32.const 1286))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t31 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t31)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t31)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
      ) ;; close $__case_162 — LAB L456
    ;; line 7:1287
    (global.set $__line (i32.const 1287))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 166)) (br $__dispatch) ;; JUMP L334
      ) ;; close $__case_163 — LAB L457
    ;; line 7:1289
    (global.set $__line (i32.const 1289))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 169)) ;; LF L321 (disp)
      (local.set $__lab (local.get $t28))
      (br $__dispatch) ;; GOTO (computed)
      ) ;; close $__case_164 — LAB L458
    ;; line 7:1290
    (global.set $__line (i32.const 1290))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 169)) ;; LF L321 (disp)
      (local.set $__lab (local.get $t28))
      (br $__dispatch) ;; GOTO (computed)
      ) ;; close $__case_165 — LAB L333
    ;; RSTACK 28
    (local.set $t28 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 86 cases default L335
    (if (i32.eq (local.get $t28) (i32.const 70)) (then
      (local.set $__lab (i32.const 164)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 0)) (then
      (local.set $__lab (i32.const 163)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 150)) (then
      (local.set $__lab (i32.const 162)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 208)) (then
      (local.set $__lab (i32.const 161)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 162)) (then
      (local.set $__lab (i32.const 160)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 161)) (then
      (local.set $__lab (i32.const 159)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 40)) (then
      (local.set $__lab (i32.const 156)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 39)) (then
      (local.set $__lab (i32.const 155)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 209)) (then
      (local.set $__lab (i32.const 154)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 160)) (then
      (local.set $__lab (i32.const 153)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 203)) (then
      (local.set $__lab (i32.const 151)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 202)) (then
      (local.set $__lab (i32.const 150)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 63)) (then
      (local.set $__lab (i32.const 146)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 165)) (then
      (local.set $__lab (i32.const 144)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 164)) (then
      (local.set $__lab (i32.const 142)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 43)) (then
      (local.set $__lab (i32.const 140)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 147)) (then
      (local.set $__lab (i32.const 139)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 159)) (then
      (local.set $__lab (i32.const 137)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 149)) (then
      (local.set $__lab (i32.const 133)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 148)) (then
      (local.set $__lab (i32.const 132)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 158)) (then
      (local.set $__lab (i32.const 131)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 157)) (then
      (local.set $__lab (i32.const 129)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 42)) (then
      (local.set $__lab (i32.const 127)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 10)) (then
      (local.set $__lab (i32.const 125)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 182)) (then
      (local.set $__lab (i32.const 123)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 181)) (then
      (local.set $__lab (i32.const 122)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 180)) (then
      (local.set $__lab (i32.const 121)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 179)) (then
      (local.set $__lab (i32.const 120)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 178)) (then
      (local.set $__lab (i32.const 119)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 177)) (then
      (local.set $__lab (i32.const 118)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 174)) (then
      (local.set $__lab (i32.const 117)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 173)) (then
      (local.set $__lab (i32.const 116)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 172)) (then
      (local.set $__lab (i32.const 115)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 171)) (then
      (local.set $__lab (i32.const 114)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 170)) (then
      (local.set $__lab (i32.const 113)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 35)) (then
      (local.set $__lab (i32.const 112)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 34)) (then
      (local.set $__lab (i32.const 111)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 33)) (then
      (local.set $__lab (i32.const 110)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 32)) (then
      (local.set $__lab (i32.const 109)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 31)) (then
      (local.set $__lab (i32.const 108)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 30)) (then
      (local.set $__lab (i32.const 107)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 24)) (then
      (local.set $__lab (i32.const 106)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 23)) (then
      (local.set $__lab (i32.const 105)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 22)) (then
      (local.set $__lab (i32.const 104)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 21)) (then
      (local.set $__lab (i32.const 103)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 20)) (then
      (local.set $__lab (i32.const 102)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 19)) (then
      (local.set $__lab (i32.const 101)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 18)) (then
      (local.set $__lab (i32.const 100)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 17)) (then
      (local.set $__lab (i32.const 99)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 16)) (then
      (local.set $__lab (i32.const 98)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 15)) (then
      (local.set $__lab (i32.const 97)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 14)) (then
      (local.set $__lab (i32.const 96)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 8)) (then
      (local.set $__lab (i32.const 95)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 175)) (then
      (local.set $__lab (i32.const 93)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 169)) (then
      (local.set $__lab (i32.const 92)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 176)) (then
      (local.set $__lab (i32.const 91)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 168)) (then
      (local.set $__lab (i32.const 90)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 167)) (then
      (local.set $__lab (i32.const 89)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 13)) (then
      (local.set $__lab (i32.const 88)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 29)) (then
      (local.set $__lab (i32.const 87)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 12)) (then
      (local.set $__lab (i32.const 86)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 153)) (then
      (local.set $__lab (i32.const 85)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 154)) (then
      (local.set $__lab (i32.const 83)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 152)) (then
      (local.set $__lab (i32.const 81)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 146)) (then
      (local.set $__lab (i32.const 79)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 145)) (then
      (local.set $__lab (i32.const 77)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 144)) (then
      (local.set $__lab (i32.const 75)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 143)) (then
      (local.set $__lab (i32.const 74)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 138)) (then
      (local.set $__lab (i32.const 70)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 11)) (then
      (local.set $__lab (i32.const 68)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 5)) (then
      (local.set $__lab (i32.const 67)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 4)) (then
      (local.set $__lab (i32.const 66)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 140)) (then
      (local.set $__lab (i32.const 63)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 142)) (then
      (local.set $__lab (i32.const 61)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 141)) (then
      (local.set $__lab (i32.const 60)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 139)) (then
      (local.set $__lab (i32.const 59)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 133)) (then
      (local.set $__lab (i32.const 58)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 166)) (then
      (local.set $__lab (i32.const 56)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 137)) (then
      (local.set $__lab (i32.const 55)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 136)) (then
      (local.set $__lab (i32.const 54)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 135)) (then
      (local.set $__lab (i32.const 53)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 134)) (then
      (local.set $__lab (i32.const 52)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 163)) (then
      (local.set $__lab (i32.const 50)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 155)) (then
      (local.set $__lab (i32.const 47)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 151)) (then
      (local.set $__lab (i32.const 44)) (br $__dispatch)))
    (if (i32.eq (local.get $t28) (i32.const 156)) (then
      (local.set $__lab (i32.const 42)) (br $__dispatch)))
      (local.set $__lab (i32.const 41)) (br $__dispatch)
      ) ;; close $__case_166 — LAB L334
    ;; line 7:1100
    (global.set $__line (i32.const 1100))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.const 1))
    (local.set $t29 (local.get $t25)) ;; LP promoted P!25
    (if (i32.ne  (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 167)) (br $__dispatch)
    ))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (local.set $t29 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (if (i32.le_s (local.get $t28) (local.get $t29)) (then
      (local.set $__lab (i32.const 167)) (br $__dispatch)
    ))
    ;; line 7:1292
    (global.set $__line (i32.const 1292))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t26)) ;; LP promoted P!26
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992)) (local.get $t28))
      (local.set $__lab (i32.const 167)) (br $__dispatch)
      ) ;; close $__case_167 — LAB L459
    (local.set $t28 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (if (i32.eqz (local.get $t28)) (then
      (local.set $__lab (i32.const 168)) (br $__dispatch)
    ))
    ;; line 7:1294
    (global.set $__line (i32.const 1294))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t31 (i32.add (global.get $SB) (i32.const 1222))) ;; LSTR
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t33 (local.get $t25)) ;; LP promoted P!25
    (local.set $t34 (local.get $t26)) ;; LP promoted P!26
    (local.set $t35 (local.get $t27)) ;; LP promoted P!27
    (local.set $t36 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t37 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 128)) (local.get $t32))
    (i32.store (i32.add (local.get $Pb) (i32.const 132)) (local.get $t33))
    (i32.store (i32.add (local.get $Pb) (i32.const 136)) (local.get $t34))
    (i32.store (i32.add (local.get $Pb) (i32.const 140)) (local.get $t35))
    (i32.store (i32.add (local.get $Pb) (i32.const 144)) (local.get $t36))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t37)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 28)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t37)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 168)) (br $__dispatch)
      ) ;; close $__case_168 — LAB L460
    ;; line 7:1295
    (global.set $__line (i32.const 1295))
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
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976)) (local.get $t28))
      (local.set $__lab (i32.const 35)) (br $__dispatch) ;; JUMP L326
    ;; line 7:1297
    (global.set $__line (i32.const 1297))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_169 — LAB L321
    ;; line 7:1299
    (global.set $__line (i32.const 1299))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t23)) ;; LP promoted P!23
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 920)) (local.get $t28))
    ;; line 7:1300
    (global.set $__line (i32.const 1300))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    ;; line 7:1307
    (global.set $__line (i32.const 1307))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.const 0))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.sub (local.get $t25) (local.get $t26)))
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; STORE slot 25
      (local.set $__lab (i32.const 172)) (br $__dispatch) ;; JUMP L462
      ) ;; close $__case_170 — LAB L461
    ;; line 7:1308
    (global.set $__line (i32.const 1308))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t26 (i32.load (i32.shl (local.get $t26) (i32.const 2))))
    (local.set $t27 (local.get $t3)) ;; LP promoted P!3
    (if (i32.ne  (local.get $t26) (local.get $t27)) (then
      (local.set $__lab (i32.const 171)) (br $__dispatch)
    ))
    ;; line 7:1309
    (global.set $__line (i32.const 1309))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.const -1))
    (local.set $t23 (local.get $t26)) ;; SP promoted P!23
      (local.set $__lab (i32.const 173)) (br $__dispatch) ;; JUMP L464
      ) ;; close $__case_171 — LAB L463
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (local.set $t27 (i32.const 1))
    (local.set $t26 (i32.add (local.get $t26) (local.get $t27)))
    (local.set $t24 (local.get $t26)) ;; SP promoted P!24
      (local.set $__lab (i32.const 172)) (br $__dispatch)
      ) ;; close $__case_172 — LAB L462
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (local.set $t27 (local.get $t25)) ;; LP promoted P!25
    (if (i32.le_s (local.get $t26) (local.get $t27)) (then
      (local.set $__lab (i32.const 170)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 173)) (br $__dispatch)
      ) ;; close $__case_173 — LAB L464
    (local.set $t24 (local.get $t23)) ;; LP promoted P!23
    (if (local.get $t24) (then
      (local.set $__lab (i32.const 175)) (br $__dispatch)
    ))
    ;; line 7:1310
    (global.set $__line (i32.const 1310))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t25 (i32.const 512))
    (if (i32.ge_s (local.get $t24) (local.get $t25)) (then
      (local.set $__lab (i32.const 174)) (br $__dispatch)
    ))
    ;; line 7:1311
    (global.set $__line (i32.const 1311))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (local.get $t3)) ;; LP promoted P!3
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (i32.store (i32.shl (local.get $t25) (i32.const 2)) (local.get $t24))
    ;; line 7:1312
    (global.set $__line (i32.const 1312))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t24 (i32.const 1))
    (local.set $t25 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t24 (i32.add (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040)) (local.get $t24))
      (local.set $__lab (i32.const 174)) (br $__dispatch)
      ) ;; close $__case_174 — LAB L466
      (local.set $__lab (i32.const 175)) (br $__dispatch)
      ) ;; close $__case_175 — LAB L465
    ;; line 7:1313
    (global.set $__line (i32.const 1313))
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
    ;; line 7:1352
    (global.set $__line (i32.const 1352))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1238))) ;; LSTR
    (local.set $t27 (local.get $t5)) ;; LP promoted P!5
    (local.set $t28 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1354
    (global.set $__line (i32.const 1354))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1244))) ;; LSTR
    (local.set $t27 (local.get $t3)) ;; LP promoted P!3
    (local.set $t28 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1355
    (global.set $__line (i32.const 1355))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1257))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1356
    (global.set $__line (i32.const 1356))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1263))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1357
    (global.set $__line (i32.const 1357))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1269))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1358
    (global.set $__line (i32.const 1358))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t25 (i32.const 1))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
      (local.set $__lab (i32.const 177)) (br $__dispatch) ;; JUMP L468
      ) ;; close $__case_176 — LAB L467
    ;; line 7:1359
    (global.set $__line (i32.const 1359))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.add (global.get $SB) (i32.const 1275))) ;; LSTR
    (local.set $t29 (local.get $t23)) ;; LP promoted P!23
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t23 (local.get $t25)) ;; SP promoted P!23
      (local.set $__lab (i32.const 177)) (br $__dispatch)
      ) ;; close $__case_177 — LAB L468
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (if (i32.le_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 176)) (br $__dispatch)
    ))
    (local.set $t26 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856))))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t26)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t26)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1362
    (global.set $__line (i32.const 1362))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 3))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (local.set $t25 (i32.const 1))
    (local.set $t24 (i32.sub (local.get $t24) (local.get $t25)))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
      (local.set $__lab (i32.const 180)) (br $__dispatch) ;; JUMP L470
      ) ;; close $__case_178 — LAB L469
    ;; line 7:1370
    (global.set $__line (i32.const 1370))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (local.get $t23)) ;; LP promoted P!23
    (local.set $t29 (i32.add (global.get $TB) (i32.const 6))) ;; LF L16
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t29)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (local.set $t25 (call_indirect $ftable (type $bcpl_fn) (local.get $t29)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t25)) ;; flush FNAP result
    (if (i32.eqz (local.get $t25)) (then
      (local.set $__lab (i32.const 179)) (br $__dispatch)
    ))
    ;; line 7:1371
    (global.set $__line (i32.const 1371))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.add (global.get $SB) (i32.const 1281))) ;; LSTR
    (local.set $t29 (local.get $t23)) ;; LP promoted P!23
    (local.set $t30 (i32.const 4))
    (local.set $t31 (local.get $t23)) ;; LP promoted P!23
    (local.set $t30 (i32.mul (local.get $t30) (local.get $t31)))
    (local.set $t31 (local.get $t23)) ;; LP promoted P!23
    (local.set $t32 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 120)) (local.get $t30))
    (i32.store (i32.add (local.get $Pb) (i32.const 124)) (local.get $t31))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t32)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t32)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 179)) (br $__dispatch)
      ) ;; close $__case_179 — LAB L471
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t23 (local.get $t25)) ;; SP promoted P!23
      (local.set $__lab (i32.const 180)) (br $__dispatch)
      ) ;; close $__case_180 — LAB L470
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (if (i32.le_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 178)) (br $__dispatch)
    ))
    ;; line 7:1372
    (global.set $__line (i32.const 1372))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (if (i32.ne  (local.get $t23) (local.get $t24)) (then
      (local.set $__lab (i32.const 181)) (br $__dispatch)
    ))
    ;; line 7:1400
    (global.set $__line (i32.const 1400))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 186)) (br $__dispatch) ;; JUMP L474
      ) ;; close $__case_181 — LAB L472
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1305))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1403
    (global.set $__line (i32.const 1403))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1311))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1404
    (global.set $__line (i32.const 1404))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (local.set $t24 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (if (i32.lt_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 183)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 182)) (br $__dispatch)
      ) ;; close $__case_182 — LAB L475
    ;; line 7:1405
    (global.set $__line (i32.const 1405))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.add (global.get $SB) (i32.const 1318))) ;; LSTR
    (local.set $t29 (local.get $t23)) ;; LP promoted P!23
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (i32.const -1))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t23 (local.get $t25)) ;; SP promoted P!23
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (if (i32.ge_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 182)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 183)) (br $__dispatch)
      ) ;; close $__case_183 — LAB L476
    ;; line 7:1406
    (global.set $__line (i32.const 1406))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1325))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1407
    (global.set $__line (i32.const 1407))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (local.set $t24 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (local.get $t23)) ;; STORE slot 23
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (local.get $t24)) ;; STORE slot 24
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (if (i32.gt_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 185)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 184)) (br $__dispatch)
      ) ;; close $__case_184 — LAB L477
    ;; line 7:1408
    (global.set $__line (i32.const 1408))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t28 (i32.add (global.get $SB) (i32.const 1330))) ;; LSTR
    (local.set $t29 (local.get $t23)) ;; LP promoted P!23
    (local.set $t30 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 112)) (local.get $t28))
    (i32.store (i32.add (local.get $Pb) (i32.const 116)) (local.get $t29))
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 108)) (local.get $t30)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 25)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t30)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (i32.const 1))
    (local.set $t25 (i32.add (local.get $t25) (local.get $t26)))
    (local.set $t23 (local.get $t25)) ;; SP promoted P!23
    (local.set $t25 (local.get $t23)) ;; LP promoted P!23
    (local.set $t26 (local.get $t24)) ;; LP promoted P!24
    (if (i32.le_s (local.get $t25) (local.get $t26)) (then
      (local.set $__lab (i32.const 184)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 185)) (br $__dispatch)
      ) ;; close $__case_185 — LAB L478
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1333))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1409
    (global.set $__line (i32.const 1409))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t26 (i32.add (global.get $SB) (i32.const 1342))) ;; LSTR
    (local.set $t27 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 104)) (local.get $t26))
    (i32.store (i32.add (local.get $Pb) (i32.const 92)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 96)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 100)) (local.get $t27)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 23)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t27)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 186)) (br $__dispatch)
      ) ;; close $__case_186 — LAB L474
    ;; line 7:1410
    (global.set $__line (i32.const 1410))
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
    ;; line 7:1412
    (global.set $__line (i32.const 1412))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t23))
    ;; line 7:1414
    (global.set $__line (i32.const 1414))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1956))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t23))
    ;; line 7:1415
    (global.set $__line (i32.const 1415))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996)) (local.get $t23))
    ;; line 7:1416
    (global.set $__line (i32.const 1416))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000)) (local.get $t23))
    ;; line 7:1417
    (global.set $__line (i32.const 1417))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t23 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t23))
    ;; line 7:1418
    (global.set $__line (i32.const 1418))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1420
    (global.set $__line (i32.const 1420))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_187 — LAB L479
    ;; line 7:1423
    (global.set $__line (i32.const 1423))
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
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1424
    (global.set $__line (i32.const 1424))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1425
    (global.set $__line (i32.const 1425))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1426
    (global.set $__line (i32.const 1426))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_188 — LAB L480
    ;; line 7:1429
    (global.set $__line (i32.const 1429))
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
    ;; line 7:1430
    (global.set $__line (i32.const 1430))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (if (local.get $t3) (then
      (local.set $__lab (i32.const 189)) (br $__dispatch)
    ))
    ;; line 7:1431
    (global.set $__line (i32.const 1431))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1357))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1432
    (global.set $__line (i32.const 1432))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1186))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 189)) (br $__dispatch)
      ) ;; close $__case_189 — LAB L481
    ;; line 7:1433
    (global.set $__line (i32.const 1433))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1948))))
    (if (i32.eq  (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 190)) (br $__dispatch)
    ))
    ;; line 7:1437
    (global.set $__line (i32.const 1437))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1365))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
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
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1373))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1441
    (global.set $__line (i32.const 1441))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1201))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 190)) (br $__dispatch)
      ) ;; close $__case_190 — LAB L482
    ;; line 7:1442
    (global.set $__line (i32.const 1442))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 191)) (br $__dispatch)
    ))
    ;; line 7:1449
    (global.set $__line (i32.const 1449))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1379))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1450
    (global.set $__line (i32.const 1450))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1392))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
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
    ;; line 7:1452
    (global.set $__line (i32.const 1452))
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
    ;; line 7:1454
    (global.set $__line (i32.const 1454))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1405))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1992))))
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
    ;; line 7:1455
    (global.set $__line (i32.const 1455))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1420))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000))))
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
    ;; line 7:1457
    (global.set $__line (i32.const 1457))
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
      (local.set $__lab (i32.const 191)) (br $__dispatch)
      ) ;; close $__case_191 — LAB L483
    ;; line 7:1459
    (global.set $__line (i32.const 1459))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1428))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1461
    (global.set $__line (i32.const 1461))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1213))) ;; LSTR
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
    ;; line 7:1462
    (global.set $__line (i32.const 1462))
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
    ;; line 7:1463
    (global.set $__line (i32.const 1463))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952)) (local.get $t3))
    ;; line 7:1464
    (global.set $__line (i32.const 1464))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1465
    (global.set $__line (i32.const 1465))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1466
    (global.set $__line (i32.const 1466))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_192 — LAB L484
    ;; line 7:1469
    (global.set $__line (i32.const 1469))
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
    ;; line 7:1470
    (global.set $__line (i32.const 1470))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (local.set $t4 (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; flush FNAP result
    ;; line 7:1471
    (global.set $__line (i32.const 1471))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1472
    (global.set $__line (i32.const 1472))
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
    ;; line 7:1473
    (global.set $__line (i32.const 1473))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008))))
    (if (local.get $t5) (then
      (local.set $__lab (i32.const 193)) (br $__dispatch)
    ))
    ;; line 7:1477
    (global.set $__line (i32.const 1477))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 754))) ;; LSTR
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 193)) (br $__dispatch)
      ) ;; close $__case_193 — LAB L485
    ;; line 7:1478
    (global.set $__line (i32.const 1478))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1439))) ;; LSTR
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1482
    (global.set $__line (i32.const 1482))
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
    ;; line 7:1483
    (global.set $__line (i32.const 1483))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t5))
    ;; line 7:1484
    (global.set $__line (i32.const 1484))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1485
    (global.set $__line (i32.const 1485))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 194)) (br $__dispatch)
      ) ;; close $__case_194 — LAB L486
    ;; line 7:1488
    (global.set $__line (i32.const 1488))
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
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1864))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
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
    ;; line 7:1493
    (global.set $__line (i32.const 1493))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1494
    (global.set $__line (i32.const 1494))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1495
    (global.set $__line (i32.const 1495))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 195)) (br $__dispatch)
      ) ;; close $__case_195 — LAB L487
    ;; line 7:1498
    (global.set $__line (i32.const 1498))
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
    ;; line 7:1499
    (global.set $__line (i32.const 1499))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1500
    (global.set $__line (i32.const 1500))
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
    ;; line 7:1501
    (global.set $__line (i32.const 1501))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1868))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1502
    (global.set $__line (i32.const 1502))
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
    ;; line 7:1503
    (global.set $__line (i32.const 1503))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1504
    (global.set $__line (i32.const 1504))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1505
    (global.set $__line (i32.const 1505))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 196)) (br $__dispatch)
      ) ;; close $__case_196 — LAB L488
    ;; line 7:1508
    (global.set $__line (i32.const 1508))
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
    ;; line 7:1509
    (global.set $__line (i32.const 1509))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1510
    (global.set $__line (i32.const 1510))
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
    ;; line 7:1511
    (global.set $__line (i32.const 1511))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1514
    (global.set $__line (i32.const 1514))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1515
    (global.set $__line (i32.const 1515))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2040))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
      (local.set $__lab (i32.const 199)) (br $__dispatch) ;; JUMP L490
      ) ;; close $__case_197 — LAB L489
    ;; line 7:1516
    (global.set $__line (i32.const 1516))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2036))))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (local.set $t8 (i32.load (i32.shl (local.get $t8) (i32.const 2))))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 198)) (br $__dispatch)
    ))
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t4 (local.get $t8)) ;; SP promoted P!4
    ;; line 7:1517
    (global.set $__line (i32.const 1517))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const -1))
    (local.set $t5 (local.get $t8)) ;; SP promoted P!5
      (local.set $__lab (i32.const 200)) (br $__dispatch) ;; JUMP L492
      ) ;; close $__case_198 — LAB L491
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.const 1))
    (local.set $t8 (i32.add (local.get $t8) (local.get $t9)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8))
    (local.set $t6 (local.get $t8))
      (local.set $__lab (i32.const 199)) (br $__dispatch)
      ) ;; close $__case_199 — LAB L490
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.le_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 197)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 200)) (br $__dispatch)
      ) ;; close $__case_200 — LAB L492
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (if (local.get $t6) (then
      (local.set $__lab (i32.const 202)) (br $__dispatch)
    ))
    ;; line 7:1518
    (global.set $__line (i32.const 1518))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 201)) (br $__dispatch)
    ))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1964))))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 201)) (br $__dispatch)
    ))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 201)) (br $__dispatch)
    ))
    ;; line 7:1519
    (global.set $__line (i32.const 1519))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1960))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t6 (i32.load (i32.shl (local.get $t6) (i32.const 2))))
    (local.set $t4 (local.get $t6)) ;; SP promoted P!4
      (local.set $__lab (i32.const 201)) (br $__dispatch)
      ) ;; close $__case_201 — LAB L494
      (local.set $__lab (i32.const 202)) (br $__dispatch)
      ) ;; close $__case_202 — LAB L493
    ;; line 7:1520
    (global.set $__line (i32.const 1520))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (if (i32.eqz (local.get $t6)) (then
      (local.set $__lab (i32.const 203)) (br $__dispatch)
    ))
    ;; line 7:1521
    (global.set $__line (i32.const 1521))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1450))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t12 (local.get $t3)) ;; LP promoted P!3
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
      (local.set $__lab (i32.const 204)) (br $__dispatch) ;; JUMP L497
      ) ;; close $__case_203 — LAB L495
    ;; line 7:1522
    (global.set $__line (i32.const 1522))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1469))) ;; LSTR
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
    (local.set $t12 (local.get $t3)) ;; LP promoted P!3
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
      (local.set $__lab (i32.const 204)) (br $__dispatch)
      ) ;; close $__case_204 — LAB L497
    ;; line 7:1524
    (global.set $__line (i32.const 1524))
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
    ;; line 7:1527
    (global.set $__line (i32.const 1527))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1528
    (global.set $__line (i32.const 1528))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1529
    (global.set $__line (i32.const 1529))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1530
    (global.set $__line (i32.const 1530))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 205)) (br $__dispatch)
      ) ;; close $__case_205 — LAB L498
    ;; line 7:1533
    (global.set $__line (i32.const 1533))
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
    ;; line 7:1534
    (global.set $__line (i32.const 1534))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1535
    (global.set $__line (i32.const 1535))
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
    ;; line 7:1536
    (global.set $__line (i32.const 1536))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; line 7:1541
    (global.set $__line (i32.const 1541))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 206)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 206)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 206)) (br $__dispatch)
    ))
    ;; line 7:1542
    (global.set $__line (i32.const 1542))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L499: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 207)) (br $__dispatch)
      ) ;; close $__case_206 — LAB L500
    ;; line 7:1543
    (global.set $__line (i32.const 1543))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    ;; RES L499: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 207)) (br $__dispatch)
      ) ;; close $__case_207 — LAB L499
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1541
    (global.set $__line (i32.const 1541))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1483))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1546
    (global.set $__line (i32.const 1546))
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
    ;; line 7:1549
    (global.set $__line (i32.const 1549))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1550
    (global.set $__line (i32.const 1550))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1551
    (global.set $__line (i32.const 1551))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1552
    (global.set $__line (i32.const 1552))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 208)) (br $__dispatch)
      ) ;; close $__case_208 — LAB L501
    ;; line 7:1555
    (global.set $__line (i32.const 1555))
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
    ;; line 7:1556
    (global.set $__line (i32.const 1556))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1557
    (global.set $__line (i32.const 1557))
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
    ;; line 7:1558
    (global.set $__line (i32.const 1558))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1511))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1559
    (global.set $__line (i32.const 1559))
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
    ;; line 7:1561
    (global.set $__line (i32.const 1561))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1562
    (global.set $__line (i32.const 1562))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1563
    (global.set $__line (i32.const 1563))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1564
    (global.set $__line (i32.const 1564))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 209)) (br $__dispatch)
      ) ;; close $__case_209 — LAB L502
    ;; line 7:1567
    (global.set $__line (i32.const 1567))
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
    ;; line 7:1568
    (global.set $__line (i32.const 1568))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1569
    (global.set $__line (i32.const 1569))
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
    ;; line 7:1570
    (global.set $__line (i32.const 1570))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1527))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1571
    (global.set $__line (i32.const 1571))
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
    ;; line 7:1573
    (global.set $__line (i32.const 1573))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1574
    (global.set $__line (i32.const 1574))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1575
    (global.set $__line (i32.const 1575))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1576
    (global.set $__line (i32.const 1576))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 210)) (br $__dispatch)
      ) ;; close $__case_210 — LAB L503
    ;; line 7:1579
    (global.set $__line (i32.const 1579))
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
    ;; line 7:1580
    (global.set $__line (i32.const 1580))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1581
    (global.set $__line (i32.const 1581))
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
    ;; line 7:1582
    (global.set $__line (i32.const 1582))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; line 7:1583
    (global.set $__line (i32.const 1583))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 211)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 211)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 211)) (br $__dispatch)
    ))
    ;; line 7:1584
    (global.set $__line (i32.const 1584))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L504: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 212)) (br $__dispatch)
      ) ;; close $__case_211 — LAB L505
    ;; line 7:1585
    (global.set $__line (i32.const 1585))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    ;; RES L504: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 212)) (br $__dispatch)
      ) ;; close $__case_212 — LAB L504
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1583
    (global.set $__line (i32.const 1583))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1543))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1588
    (global.set $__line (i32.const 1588))
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
    ;; line 7:1591
    (global.set $__line (i32.const 1591))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1592
    (global.set $__line (i32.const 1592))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1593
    (global.set $__line (i32.const 1593))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1594
    (global.set $__line (i32.const 1594))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 213)) (br $__dispatch)
      ) ;; close $__case_213 — LAB L506
    ;; line 7:1597
    (global.set $__line (i32.const 1597))
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
    ;; line 7:1598
    (global.set $__line (i32.const 1598))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1599
    (global.set $__line (i32.const 1599))
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
    ;; line 7:1600
    (global.set $__line (i32.const 1600))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1601
    (global.set $__line (i32.const 1601))
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
    ;; line 7:1602
    (global.set $__line (i32.const 1602))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1603
    (global.set $__line (i32.const 1603))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1604
    (global.set $__line (i32.const 1604))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 214)) (br $__dispatch)
      ) ;; close $__case_214 — LAB L507
    ;; line 7:1607
    (global.set $__line (i32.const 1607))
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
    ;; line 7:1608
    (global.set $__line (i32.const 1608))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1609
    (global.set $__line (i32.const 1609))
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
    ;; line 7:1610
    (global.set $__line (i32.const 1610))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1611
    (global.set $__line (i32.const 1611))
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
    ;; line 7:1612
    (global.set $__line (i32.const 1612))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1613
    (global.set $__line (i32.const 1613))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1614
    (global.set $__line (i32.const 1614))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 215)) (br $__dispatch)
      ) ;; close $__case_215 — LAB L508
    ;; line 7:1617
    (global.set $__line (i32.const 1617))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1618
    (global.set $__line (i32.const 1618))
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
    ;; line 7:1619
    (global.set $__line (i32.const 1619))
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
    ;; line 7:1620
    (global.set $__line (i32.const 1620))
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
    ;; line 7:1621
    (global.set $__line (i32.const 1621))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1622
    (global.set $__line (i32.const 1622))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1623
    (global.set $__line (i32.const 1623))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_216 — LAB L509
    ;; line 7:1625
    (global.set $__line (i32.const 1625))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1626
    (global.set $__line (i32.const 1626))
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
    ;; line 7:1627
    (global.set $__line (i32.const 1627))
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
    ;; line 7:1628
    (global.set $__line (i32.const 1628))
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
    ;; line 7:1629
    (global.set $__line (i32.const 1629))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1630
    (global.set $__line (i32.const 1630))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1631
    (global.set $__line (i32.const 1631))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_217 — LAB L510
    ;; line 7:1633
    (global.set $__line (i32.const 1633))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1634
    (global.set $__line (i32.const 1634))
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
    ;; line 7:1635
    (global.set $__line (i32.const 1635))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1562))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1636
    (global.set $__line (i32.const 1636))
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
    ;; line 7:1637
    (global.set $__line (i32.const 1637))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 1))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t3 (i32.add (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1638
    (global.set $__line (i32.const 1638))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1639
    (global.set $__line (i32.const 1639))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1640
    (global.set $__line (i32.const 1640))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_218 — LAB L511
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
    ;; line 7:1644
    (global.set $__line (i32.const 1644))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1645
    (global.set $__line (i32.const 1645))
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
    ;; line 7:1646
    (global.set $__line (i32.const 1646))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1932))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1647
    (global.set $__line (i32.const 1647))
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
    ;; line 7:1648
    (global.set $__line (i32.const 1648))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1649
    (global.set $__line (i32.const 1649))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1650
    (global.set $__line (i32.const 1650))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 219)) (br $__dispatch)
      ) ;; close $__case_219 — LAB L512
    ;; line 7:1653
    (global.set $__line (i32.const 1653))
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
    ;; line 7:1654
    (global.set $__line (i32.const 1654))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1655
    (global.set $__line (i32.const 1655))
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
    ;; line 7:1656
    (global.set $__line (i32.const 1656))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1657
    (global.set $__line (i32.const 1657))
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
    ;; line 7:1658
    (global.set $__line (i32.const 1658))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1659
    (global.set $__line (i32.const 1659))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1660
    (global.set $__line (i32.const 1660))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 220)) (br $__dispatch)
      ) ;; close $__case_220 — LAB L513
    ;; line 7:1663
    (global.set $__line (i32.const 1663))
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
    ;; line 7:1664
    (global.set $__line (i32.const 1664))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1665
    (global.set $__line (i32.const 1665))
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
    ;; line 7:1666
    (global.set $__line (i32.const 1666))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    ;; line 7:1667
    (global.set $__line (i32.const 1667))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 221)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 221)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 221)) (br $__dispatch)
    ))
    ;; line 7:1668
    (global.set $__line (i32.const 1668))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (local.set $t4 (i32.load (i32.shl (local.get $t4) (i32.const 2))))
    ;; RES L514: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 222)) (br $__dispatch)
      ) ;; close $__case_221 — LAB L515
    ;; line 7:1669
    (global.set $__line (i32.const 1669))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    ;; RES L514: save result, jump to RSTACK
    (local.set $__res (local.get $t4))
      (local.set $__lab (i32.const 222)) (br $__dispatch)
      ) ;; close $__case_222 — LAB L514
    ;; RSTACK 4
    (local.set $t4 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1667
    (global.set $__line (i32.const 1667))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t5))
    ;; line 7:1672
    (global.set $__line (i32.const 1672))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 223)) (br $__dispatch)
    ))
    ;; line 7:1673
    (global.set $__line (i32.const 1673))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t5))
      (local.set $__lab (i32.const 223)) (br $__dispatch)
      ) ;; close $__case_223 — LAB L516
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1577))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1674
    (global.set $__line (i32.const 1674))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1581))) ;; LSTR
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1675
    (global.set $__line (i32.const 1675))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1600))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1677
    (global.set $__line (i32.const 1677))
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
    ;; line 7:1679
    (global.set $__line (i32.const 1679))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1680
    (global.set $__line (i32.const 1680))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1681
    (global.set $__line (i32.const 1681))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 224)) (br $__dispatch)
      ) ;; close $__case_224 — LAB L517
    ;; line 7:1684
    (global.set $__line (i32.const 1684))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1685
    (global.set $__line (i32.const 1685))
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
    ;; line 7:1686
    (global.set $__line (i32.const 1686))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1687
    (global.set $__line (i32.const 1687))
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
    ;; line 7:1688
    (global.set $__line (i32.const 1688))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1689
    (global.set $__line (i32.const 1689))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1690
    (global.set $__line (i32.const 1690))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_225 — LAB L518
    ;; line 7:1692
    (global.set $__line (i32.const 1692))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1693
    (global.set $__line (i32.const 1693))
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
    ;; line 7:1694
    (global.set $__line (i32.const 1694))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1695
    (global.set $__line (i32.const 1695))
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
    ;; line 7:1696
    (global.set $__line (i32.const 1696))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1697
    (global.set $__line (i32.const 1697))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1698
    (global.set $__line (i32.const 1698))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_226 — LAB L519
    ;; line 7:1701
    (global.set $__line (i32.const 1701))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 227)) (br $__dispatch)
      ) ;; close $__case_227 — LAB L520
      (local.set $__lab (i32.const 228)) (br $__dispatch)
      ) ;; close $__case_228 — LAB L521
      (local.set $__lab (i32.const 229)) (br $__dispatch)
      ) ;; close $__case_229 — LAB L522
      (local.set $__lab (i32.const 230)) (br $__dispatch)
      ) ;; close $__case_230 — LAB L523
    ;; line 7:1702
    (global.set $__line (i32.const 1702))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 231)) (br $__dispatch)
      ) ;; close $__case_231 — LAB L524
      (local.set $__lab (i32.const 232)) (br $__dispatch)
      ) ;; close $__case_232 — LAB L525
      (local.set $__lab (i32.const 233)) (br $__dispatch)
      ) ;; close $__case_233 — LAB L526
    ;; line 7:1703
    (global.set $__line (i32.const 1703))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 234)) (br $__dispatch)
      ) ;; close $__case_234 — LAB L527
      (local.set $__lab (i32.const 235)) (br $__dispatch)
      ) ;; close $__case_235 — LAB L528
      (local.set $__lab (i32.const 236)) (br $__dispatch)
      ) ;; close $__case_236 — LAB L529
    ;; line 7:1704
    (global.set $__line (i32.const 1704))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 237)) (br $__dispatch)
      ) ;; close $__case_237 — LAB L530
      (local.set $__lab (i32.const 238)) (br $__dispatch)
      ) ;; close $__case_238 — LAB L531
    ;; line 7:1705
    (global.set $__line (i32.const 1705))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 239)) (br $__dispatch)
      ) ;; close $__case_239 — LAB L532
      (local.set $__lab (i32.const 240)) (br $__dispatch)
      ) ;; close $__case_240 — LAB L533
      (local.set $__lab (i32.const 241)) (br $__dispatch)
      ) ;; close $__case_241 — LAB L534
      (local.set $__lab (i32.const 242)) (br $__dispatch)
      ) ;; close $__case_242 — LAB L535
      (local.set $__lab (i32.const 243)) (br $__dispatch)
      ) ;; close $__case_243 — LAB L536
      (local.set $__lab (i32.const 244)) (br $__dispatch)
      ) ;; close $__case_244 — LAB L537
    ;; line 7:1706
    (global.set $__line (i32.const 1706))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 245)) (br $__dispatch)
      ) ;; close $__case_245 — LAB L538
      (local.set $__lab (i32.const 246)) (br $__dispatch)
      ) ;; close $__case_246 — LAB L539
      (local.set $__lab (i32.const 247)) (br $__dispatch)
      ) ;; close $__case_247 — LAB L540
    ;; line 7:1707
    (global.set $__line (i32.const 1707))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 248)) (br $__dispatch)
      ) ;; close $__case_248 — LAB L541
      (local.set $__lab (i32.const 249)) (br $__dispatch)
      ) ;; close $__case_249 — LAB L542
    ;; line 7:1708
    (global.set $__line (i32.const 1708))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 250)) (br $__dispatch)
      ) ;; close $__case_250 — LAB L543
      (local.set $__lab (i32.const 251)) (br $__dispatch)
      ) ;; close $__case_251 — LAB L544
    ;; line 7:1709
    (global.set $__line (i32.const 1709))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 252)) (br $__dispatch)
      ) ;; close $__case_252 — LAB L545
      (local.set $__lab (i32.const 253)) (br $__dispatch)
      ) ;; close $__case_253 — LAB L546
      (local.set $__lab (i32.const 254)) (br $__dispatch)
      ) ;; close $__case_254 — LAB L547
      (local.set $__lab (i32.const 255)) (br $__dispatch)
      ) ;; close $__case_255 — LAB L548
    ;; line 7:1710
    (global.set $__line (i32.const 1710))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 256)) (br $__dispatch)
      ) ;; close $__case_256 — LAB L549
      (local.set $__lab (i32.const 257)) (br $__dispatch)
      ) ;; close $__case_257 — LAB L550
    ;; line 7:1711
    (global.set $__line (i32.const 1711))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 258)) (br $__dispatch)
      ) ;; close $__case_258 — LAB L551
      (local.set $__lab (i32.const 259)) (br $__dispatch)
      ) ;; close $__case_259 — LAB L552
      (local.set $__lab (i32.const 260)) (br $__dispatch)
      ) ;; close $__case_260 — LAB L553
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1712
    (global.set $__line (i32.const 1712))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980)) (local.get $t3))
    ;; line 7:1713
    (global.set $__line (i32.const 1713))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1714
    (global.set $__line (i32.const 1714))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_261 — LAB L554
    ;; line 7:1716
    (global.set $__line (i32.const 1716))
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
    ;; line 7:1717
    (global.set $__line (i32.const 1717))
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
    ;; line 7:1718
    (global.set $__line (i32.const 1718))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1719
    (global.set $__line (i32.const 1719))
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
    ;; line 7:1720
    (global.set $__line (i32.const 1720))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1721
    (global.set $__line (i32.const 1721))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1722
    (global.set $__line (i32.const 1722))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 262)) (br $__dispatch)
      ) ;; close $__case_262 — LAB L555
    ;; line 7:1725
    (global.set $__line (i32.const 1725))
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
    ;; line 7:1726
    (global.set $__line (i32.const 1726))
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
    ;; line 7:1727
    (global.set $__line (i32.const 1727))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1728
    (global.set $__line (i32.const 1728))
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
    ;; line 7:1729
    (global.set $__line (i32.const 1729))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1730
    (global.set $__line (i32.const 1730))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1731
    (global.set $__line (i32.const 1731))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 263)) (br $__dispatch)
      ) ;; close $__case_263 — LAB L556
    ;; line 7:1734
    (global.set $__line (i32.const 1734))
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
    ;; line 7:1735
    (global.set $__line (i32.const 1735))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1736
    (global.set $__line (i32.const 1736))
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
    ;; line 7:1737
    (global.set $__line (i32.const 1737))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1607))) ;; LSTR
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; flush t7 (pre-stack-up)
    (local.set $t11 (local.get $t3)) ;; LP promoted P!3
    (local.set $t12 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944))))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t12)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 8)))
    (local.set $t8 (call_indirect $ftable (type $bcpl_fn) (local.get $t12)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; flush FNAP result
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1738
    (global.set $__line (i32.const 1738))
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
    ;; line 7:1740
    (global.set $__line (i32.const 1740))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1741
    (global.set $__line (i32.const 1741))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1742
    (global.set $__line (i32.const 1742))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 264)) (br $__dispatch)
      ) ;; close $__case_264 — LAB L557
    ;; line 7:1745
    (global.set $__line (i32.const 1745))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1749
    (global.set $__line (i32.const 1749))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1750
    (global.set $__line (i32.const 1750))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 265)) (br $__dispatch)
    ))
    ;; line 7:1751
    (global.set $__line (i32.const 1751))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
      (local.set $__lab (i32.const 265)) (br $__dispatch)
      ) ;; close $__case_265 — LAB L558
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1088))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1752
    (global.set $__line (i32.const 1752))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1625))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1753
    (global.set $__line (i32.const 1753))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1636))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1754
    (global.set $__line (i32.const 1754))
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
    ;; line 7:1755
    (global.set $__line (i32.const 1755))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1756
    (global.set $__line (i32.const 1756))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1757
    (global.set $__line (i32.const 1757))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_266 — LAB L559
    ;; line 7:1760
    (global.set $__line (i32.const 1760))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1761
    (global.set $__line (i32.const 1761))
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
    ;; line 7:1762
    (global.set $__line (i32.const 1762))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1647))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1763
    (global.set $__line (i32.const 1763))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1651))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1764
    (global.set $__line (i32.const 1764))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1669))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1765
    (global.set $__line (i32.const 1765))
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
    ;; line 7:1766
    (global.set $__line (i32.const 1766))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1767
    (global.set $__line (i32.const 1767))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1768
    (global.set $__line (i32.const 1768))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_267 — LAB L560
    ;; line 7:1770
    (global.set $__line (i32.const 1770))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1771
    (global.set $__line (i32.const 1771))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:1772
    (global.set $__line (i32.const 1772))
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
    ;; line 7:1773
    (global.set $__line (i32.const 1773))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1676))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1774
    (global.set $__line (i32.const 1774))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1680))) ;; LSTR
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1779
    (global.set $__line (i32.const 1779))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1651))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1780
    (global.set $__line (i32.const 1780))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1691))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1781
    (global.set $__line (i32.const 1781))
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
    ;; line 7:1782
    (global.set $__line (i32.const 1782))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t3))
    ;; line 7:1784
    (global.set $__line (i32.const 1784))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 268)) (br $__dispatch)
    ))
    ;; line 7:1785
    (global.set $__line (i32.const 1785))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
      (local.set $__lab (i32.const 268)) (br $__dispatch)
      ) ;; close $__case_268 — LAB L561
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1786
    (global.set $__line (i32.const 1786))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1787
    (global.set $__line (i32.const 1787))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_269 — LAB L562
    ;; line 7:1790
    (global.set $__line (i32.const 1790))
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
    ;; line 7:1791
    (global.set $__line (i32.const 1791))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1792
    (global.set $__line (i32.const 1792))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1793
    (global.set $__line (i32.const 1793))
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
    ;; line 7:1794
    (global.set $__line (i32.const 1794))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1700))) ;; LSTR
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1795
    (global.set $__line (i32.const 1795))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1680))) ;; LSTR
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1796
    (global.set $__line (i32.const 1796))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t5))
    ;; line 7:1797
    (global.set $__line (i32.const 1797))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 270)) (br $__dispatch)
    ))
    ;; line 7:1798
    (global.set $__line (i32.const 1798))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t5))
      (local.set $__lab (i32.const 270)) (br $__dispatch)
      ) ;; close $__case_270 — LAB L563
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1799
    (global.set $__line (i32.const 1799))
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
    ;; line 7:1800
    (global.set $__line (i32.const 1800))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1802
    (global.set $__line (i32.const 1802))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 271)) (br $__dispatch)
      ) ;; close $__case_271 — LAB L564
    ;; line 7:1805
    (global.set $__line (i32.const 1805))
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
    ;; line 7:1806
    (global.set $__line (i32.const 1806))
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
    ;; line 7:1807
    (global.set $__line (i32.const 1807))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1712))) ;; LSTR
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1808
    (global.set $__line (i32.const 1808))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1717))) ;; LSTR
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1809
    (global.set $__line (i32.const 1809))
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
    ;; line 7:1810
    (global.set $__line (i32.const 1810))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1811
    (global.set $__line (i32.const 1811))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1812
    (global.set $__line (i32.const 1812))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1813
    (global.set $__line (i32.const 1813))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 272)) (br $__dispatch)
      ) ;; close $__case_272 — LAB L565
    ;; line 7:1816
    (global.set $__line (i32.const 1816))
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
    ;; line 7:1817
    (global.set $__line (i32.const 1817))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (if (i32.ne  (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 273)) (br $__dispatch)
    ))
    ;; line 7:1818
    (global.set $__line (i32.const 1818))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
      ) ;; close $__case_273 — LAB L566
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1819
    (global.set $__line (i32.const 1819))
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
    ;; line 7:1820
    (global.set $__line (i32.const 1820))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 274)) (br $__dispatch)
    ))
    ;; line 7:1821
    (global.set $__line (i32.const 1821))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
      (local.set $__lab (i32.const 274)) (br $__dispatch)
      ) ;; close $__case_274 — LAB L567
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (if (i32.le_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 277)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 275)) (br $__dispatch)
      ) ;; close $__case_275 — LAB L568
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
    ;; line 7:1825
    (global.set $__line (i32.const 1825))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 276)) (br $__dispatch)
    ))
    ;; line 7:1826
    (global.set $__line (i32.const 1826))
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
    ;; line 7:1827
    (global.set $__line (i32.const 1827))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1828
    (global.set $__line (i32.const 1828))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.add (global.get $SB) (i32.const 1733))) ;; LSTR
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
      (local.set $__lab (i32.const 276)) (br $__dispatch)
      ) ;; close $__case_276 — LAB L570
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (if (i32.gt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 275)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 277)) (br $__dispatch)
      ) ;; close $__case_277 — LAB L569
    ;; line 7:1824
    (global.set $__line (i32.const 1824))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 280)) (br $__dispatch)
    ))
    ;; line 7:1836
    (global.set $__line (i32.const 1836))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
      (local.set $__lab (i32.const 279)) (br $__dispatch) ;; JUMP L573
      ) ;; close $__case_278 — LAB L572
    ;; line 7:1837
    (global.set $__line (i32.const 1837))
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
    ;; line 7:1838
    (global.set $__line (i32.const 1838))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1839
    (global.set $__line (i32.const 1839))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1742))) ;; LSTR
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
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
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (local.set $t4 (local.get $t6)) ;; SP promoted P!4
      (local.set $__lab (i32.const 279)) (br $__dispatch)
      ) ;; close $__case_279 — LAB L573
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (local.get $t5)) ;; LP promoted P!5
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 278)) (br $__dispatch)
    ))
    ;; line 7:1840
    (global.set $__line (i32.const 1840))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t4))
      (local.set $__lab (i32.const 280)) (br $__dispatch)
      ) ;; close $__case_280 — LAB L571
    ;; line 7:1842
    (global.set $__line (i32.const 1842))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t4))
    ;; line 7:1844
    (global.set $__line (i32.const 1844))
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
    ;; line 7:1845
    (global.set $__line (i32.const 1845))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1846
    (global.set $__line (i32.const 1846))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1847
    (global.set $__line (i32.const 1847))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 281)) (br $__dispatch)
      ) ;; close $__case_281 — LAB L574
    ;; line 7:1850
    (global.set $__line (i32.const 1850))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (if (i32.eq  (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 351)) (br $__dispatch)
    ))
    ;; line 7:1851
    (global.set $__line (i32.const 1851))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1852
    (global.set $__line (i32.const 1852))
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
    ;; line 7:1853
    (global.set $__line (i32.const 1853))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 282)) (br $__dispatch)
    ))
    ;; line 7:1859
    (global.set $__line (i32.const 1859))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
      (local.set $__lab (i32.const 282)) (br $__dispatch)
      ) ;; close $__case_282 — LAB L575
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 1))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
      (local.set $__lab (i32.const 284)) (br $__dispatch) ;; JUMP L577
      ) ;; close $__case_283 — LAB L576
    ;; line 7:1860
    (global.set $__line (i32.const 1860))
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
    ;; line 7:1861
    (global.set $__line (i32.const 1861))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848))))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1862
    (global.set $__line (i32.const 1862))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1754))) ;; LSTR
    (local.set $t9 (local.get $t3)) ;; LP promoted P!3
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
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
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (local.set $t3 (local.get $t5)) ;; SP promoted P!3
      (local.set $__lab (i32.const 284)) (br $__dispatch)
      ) ;; close $__case_284 — LAB L577
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 283)) (br $__dispatch)
    ))
    ;; line 7:1863
    (global.set $__line (i32.const 1863))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t3))
    ;; line 7:1865
    (global.set $__line (i32.const 1865))
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
    ;; line 7:1866
    (global.set $__line (i32.const 1866))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1867
    (global.set $__line (i32.const 1867))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1868
    (global.set $__line (i32.const 1868))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_285 — LAB L578
    ;; line 7:1871
    (global.set $__line (i32.const 1871))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 286)) (br $__dispatch)
      ) ;; close $__case_286 — LAB L579
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 936))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (local.set $t3 (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; flush FNAP result
    ;; line 7:1872
    (global.set $__line (i32.const 1872))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1873
    (global.set $__line (i32.const 1873))
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
    ;; line 7:1874
    (global.set $__line (i32.const 1874))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1844))))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1875
    (global.set $__line (i32.const 1875))
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
    ;; line 7:1876
    (global.set $__line (i32.const 1876))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1877
    (global.set $__line (i32.const 1877))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1878
    (global.set $__line (i32.const 1878))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 287)) (br $__dispatch)
      ) ;; close $__case_287 — LAB L580
    ;; line 7:1881
    (global.set $__line (i32.const 1881))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1882
    (global.set $__line (i32.const 1882))
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
    ;; line 7:1883
    (global.set $__line (i32.const 1883))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 1764))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1884
    (global.set $__line (i32.const 1884))
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
    ;; line 7:1885
    (global.set $__line (i32.const 1885))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const -1))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1886
    (global.set $__line (i32.const 1886))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1887
    (global.set $__line (i32.const 1887))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_288 — LAB L581
    ;; line 7:1889
    (global.set $__line (i32.const 1889))
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
    ;; line 7:1893
    (global.set $__line (i32.const 1893))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1894
    (global.set $__line (i32.const 1894))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 1))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t4 (i32.add (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1895
    (global.set $__line (i32.const 1895))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.add (global.get $P) (i32.const 6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; flush t5 (pre-stack-up)
    ;; line 7:1896
    (global.set $__line (i32.const 1896))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t71 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 284)) (local.get $t71)) ;; STORE slot 71
    ;; line 7:1897
    (global.set $__line (i32.const 1897))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (local.get $t3)) ;; LP promoted P!3
    (local.set $t73 (local.get $t5)) ;; LP promoted P!5
    (local.set $t74 (i32.const 0))
    (i32.store8 (i32.add (i32.shl (local.get $t73) (i32.const 2)) (local.get $t74)) (local.get $t72))
    ;; line 7:1900
    (global.set $__line (i32.const 1900))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 1))
    (local.set $t73 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    (local.set $t74 (local.get $t72)) ;; LP promoted P!72
    (local.set $t75 (local.get $t73)) ;; LP promoted P!73
    (if (i32.gt_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 290)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 289)) (br $__dispatch)
      ) ;; close $__case_289 — LAB L582
    ;; line 7:1901
    (global.set $__line (i32.const 1901))
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
    (local.set $t75 (local.get $t5)) ;; LP promoted P!5
    (local.set $t76 (local.get $t72)) ;; LP promoted P!72
    (i32.store8 (i32.add (i32.shl (local.get $t75) (i32.const 2)) (local.get $t76)) (local.get $t74))
    (local.set $t74 (local.get $t72)) ;; LP promoted P!72
    (local.set $t75 (i32.const 1))
    (local.set $t74 (i32.add (local.get $t74) (local.get $t75)))
    (local.set $t72 (local.get $t74)) ;; SP promoted P!72
    (local.set $t74 (local.get $t72)) ;; LP promoted P!72
    (local.set $t75 (local.get $t73)) ;; LP promoted P!73
    (if (i32.le_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 289)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 290)) (br $__dispatch)
      ) ;; close $__case_290 — LAB L583
    (local.set $t72 (i32.const 0))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048))))
    (local.set $t74 (i32.const 1))
    (local.set $t73 (i32.sub (local.get $t73) (local.get $t74)))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
      (local.set $__lab (i32.const 298)) (br $__dispatch) ;; JUMP L585
      ) ;; close $__case_291 — LAB L584
    ;; line 7:1904
    (global.set $__line (i32.const 1904))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t74 (local.get $t72)) ;; LP promoted P!72
    (local.set $t75 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044))))
    (local.set $t74 (i32.add (local.get $t74) (local.get $t75)))
    (local.set $t74 (i32.load (i32.shl (local.get $t74) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74)) ;; STORE slot 74
    ;; line 7:1905
    (global.set $__line (i32.const 1905))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.const 1))
    (local.set $t76 (local.get $t72)) ;; LP promoted P!72
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044))))
    (local.set $t75 (i32.add (local.get $t75) (local.get $t76)))
    (local.set $t75 (i32.load (i32.shl (local.get $t75) (i32.const 2))))
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75)) ;; STORE slot 75
    ;; line 7:1906
    (global.set $__line (i32.const 1906))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (local.get $t4)) ;; LP promoted P!4
    (local.set $t77 (local.get $t75)) ;; LP promoted P!75
    (if (i32.ne  (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 297)) (br $__dispatch)
    ))
    ;; line 7:1907
    (global.set $__line (i32.const 1907))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.const -1))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t76)) ;; STORE slot 76
    ;; line 7:1908
    (global.set $__line (i32.const 1908))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (i32.const 0))
    (local.set $t78 (local.get $t4)) ;; LP promoted P!4
    (local.set $t79 (i32.const 1))
    (local.set $t78 (i32.sub (local.get $t78) (local.get $t79)))
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77)) ;; STORE slot 77
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78)) ;; STORE slot 78
      (local.set $__lab (i32.const 294)) (br $__dispatch) ;; JUMP L588
      ) ;; close $__case_292 — LAB L587
    ;; line 7:1909
    (global.set $__line (i32.const 1909))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t79 (local.get $t77)) ;; LP promoted P!77
    (local.set $t80 (i32.const 4))
    (local.set $t79 (i32.div_s (local.get $t79) (local.get $t80)))
    (local.set $t80 (local.get $t74)) ;; LP promoted P!74
    (local.set $t79 (i32.add (local.get $t79) (local.get $t80)))
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79)) ;; STORE slot 79
    ;; line 7:1910
    (global.set $__line (i32.const 1910))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t80 (local.get $t77)) ;; LP promoted P!77
    (local.set $t81 (i32.const 4))
    (local.set $t80 (i32.rem_s (local.get $t80) (local.get $t81)))
    (local.set $t81 (i32.const 8))
    (local.set $t80 (i32.mul (local.get $t80) (local.get $t81)))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80)) ;; STORE slot 80
    ;; line 7:1911
    (global.set $__line (i32.const 1911))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t81 (local.get $t79)) ;; LP promoted P!79
    (local.set $t82 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t81 (i32.add (local.get $t81) (local.get $t82)))
    (local.set $t81 (i32.load (i32.shl (local.get $t81) (i32.const 2))))
    (local.set $t82 (local.get $t80)) ;; LP promoted P!80
    (local.set $t81 (i32.shr_u (local.get $t81) (local.get $t82)))
    (local.set $t82 (i32.const 255))
    (local.set $t81 (i32.and (local.get $t81) (local.get $t82)))
    (i32.store (i32.add (local.get $Pb) (i32.const 324)) (local.get $t81)) ;; STORE slot 81
    ;; line 7:1912
    (global.set $__line (i32.const 1912))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t82 (local.get $t5)) ;; LP promoted P!5
    (local.set $t83 (local.get $t77)) ;; LP promoted P!77
    (local.set $t82 (i32.load8_u (i32.add (i32.shl (local.get $t82) (i32.const 2)) (local.get $t83))))
    (local.set $t83 (local.get $t81)) ;; LP promoted P!81
    (if (i32.eq  (local.get $t82) (local.get $t83)) (then
      (local.set $__lab (i32.const 293)) (br $__dispatch)
    ))
    ;; line 7:1913
    (global.set $__line (i32.const 1913))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t82 (i32.const 0))
    (local.set $t76 (local.get $t82)) ;; SP promoted P!76
      (local.set $__lab (i32.const 295)) (br $__dispatch) ;; JUMP L590
      ) ;; close $__case_293 — LAB L589
    (local.set $t79 (local.get $t77)) ;; LP promoted P!77
    (local.set $t80 (i32.const 1))
    (local.set $t79 (i32.add (local.get $t79) (local.get $t80)))
    (local.set $t77 (local.get $t79)) ;; SP promoted P!77
      (local.set $__lab (i32.const 294)) (br $__dispatch)
      ) ;; close $__case_294 — LAB L588
    (local.set $t79 (local.get $t77)) ;; LP promoted P!77
    (local.set $t80 (local.get $t78)) ;; LP promoted P!78
    (if (i32.le_s (local.get $t79) (local.get $t80)) (then
      (local.set $__lab (i32.const 292)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 295)) (br $__dispatch)
      ) ;; close $__case_295 — LAB L590
    (local.set $t77 (local.get $t76)) ;; LP promoted P!76
    (if (i32.eqz (local.get $t77)) (then
      (local.set $__lab (i32.const 296)) (br $__dispatch)
    ))
    ;; line 7:1915
    (global.set $__line (i32.const 1915))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (local.get $t74)) ;; LP promoted P!74
    (local.set $t71 (local.get $t77)) ;; SP promoted P!71
      (local.set $__lab (i32.const 299)) (br $__dispatch) ;; JUMP L592
      ) ;; close $__case_296 — LAB L591
      (local.set $__lab (i32.const 297)) (br $__dispatch)
      ) ;; close $__case_297 — LAB L586
    (local.set $t74 (local.get $t72)) ;; LP promoted P!72
    (local.set $t75 (i32.const 2))
    (local.set $t74 (i32.add (local.get $t74) (local.get $t75)))
    (local.set $t72 (local.get $t74)) ;; SP promoted P!72
      (local.set $__lab (i32.const 298)) (br $__dispatch)
      ) ;; close $__case_298 — LAB L585
    (local.set $t74 (local.get $t72)) ;; LP promoted P!72
    (local.set $t75 (local.get $t73)) ;; LP promoted P!73
    (if (i32.le_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 291)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 299)) (br $__dispatch)
      ) ;; close $__case_299 — LAB L592
    (local.set $t72 (local.get $t71)) ;; LP promoted P!71
    (local.set $t73 (i32.const 0))
    (if (i32.ge_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 305)) (br $__dispatch)
    ))
    ;; line 7:1920
    (global.set $__line (i32.const 1920))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t71 (local.get $t72)) ;; SP promoted P!71
    ;; line 7:1921
    (global.set $__line (i32.const 1921))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 288)) (local.get $t72)) ;; STORE slot 72
    ;; line 7:1922
    (global.set $__line (i32.const 1922))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t73 (i32.const 0))
    (i32.store (i32.add (local.get $Pb) (i32.const 292)) (local.get $t73)) ;; STORE slot 73
    ;; line 7:1923
    (global.set $__line (i32.const 1923))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t74 (i32.const 0))
    (local.set $t75 (local.get $t4)) ;; LP promoted P!4
    (local.set $t76 (i32.const 1))
    (local.set $t75 (i32.sub (local.get $t75) (local.get $t76)))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (local.get $t74)) ;; STORE slot 74
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (local.get $t75)) ;; STORE slot 75
      (local.set $__lab (i32.const 302)) (br $__dispatch) ;; JUMP L595
      ) ;; close $__case_300 — LAB L594
    ;; line 7:1924
    (global.set $__line (i32.const 1924))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (local.get $t5)) ;; LP promoted P!5
    (local.set $t77 (local.get $t74)) ;; LP promoted P!74
    (local.set $t76 (i32.load8_u (i32.add (i32.shl (local.get $t76) (i32.const 2)) (local.get $t77))))
    (local.set $t77 (i32.const 8))
    (local.set $t78 (local.get $t73)) ;; LP promoted P!73
    (local.set $t77 (i32.mul (local.get $t77) (local.get $t78)))
    (local.set $t76 (i32.shl (local.get $t76) (local.get $t77)))
    (local.set $t77 (local.get $t72)) ;; LP promoted P!72
    (local.set $t76 (i32.or (local.get $t76) (local.get $t77)))
    (local.set $t72 (local.get $t76)) ;; SP promoted P!72
    ;; line 7:1925
    (global.set $__line (i32.const 1925))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.const 1))
    (local.set $t77 (local.get $t73)) ;; LP promoted P!73
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (local.set $t73 (local.get $t76)) ;; SP promoted P!73
    ;; line 7:1926
    (global.set $__line (i32.const 1926))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t76 (i32.const 4))
    (local.set $t77 (local.get $t73)) ;; LP promoted P!73
    (if (i32.ne  (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 301)) (br $__dispatch)
    ))
    ;; line 7:1927
    (global.set $__line (i32.const 1927))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t79 (i32.const -1))
    (local.set $t80 (local.get $t72)) ;; LP promoted P!72
    (local.set $t81 (i32.add (global.get $TB) (i32.const 41))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 316)) (local.get $t79))
    (i32.store (i32.add (local.get $Pb) (i32.const 320)) (local.get $t80))
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t81)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 76)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t81)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    (local.set $t76 (i32.const 0))
    (local.set $t72 (local.get $t76)) ;; SP promoted P!72
    (local.set $t76 (i32.const 0))
    (local.set $t73 (local.get $t76)) ;; SP promoted P!73
      (local.set $__lab (i32.const 301)) (br $__dispatch)
      ) ;; close $__case_301 — LAB L596
    (local.set $t76 (local.get $t74)) ;; LP promoted P!74
    (local.set $t77 (i32.const 1))
    (local.set $t76 (i32.add (local.get $t76) (local.get $t77)))
    (local.set $t74 (local.get $t76)) ;; SP promoted P!74
      (local.set $__lab (i32.const 302)) (br $__dispatch)
      ) ;; close $__case_302 — LAB L595
    (local.set $t76 (local.get $t74)) ;; LP promoted P!74
    (local.set $t77 (local.get $t75)) ;; LP promoted P!75
    (if (i32.le_s (local.get $t76) (local.get $t77)) (then
      (local.set $__lab (i32.const 300)) (br $__dispatch)
    ))
    (local.set $t74 (local.get $t73)) ;; LP promoted P!73
    (local.set $t75 (i32.const 0))
    (if (i32.le_s (local.get $t74) (local.get $t75)) (then
      (local.set $__lab (i32.const 303)) (br $__dispatch)
    ))
    ;; line 7:1929
    (global.set $__line (i32.const 1929))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t77 (i32.const -1))
    (local.set $t78 (local.get $t72)) ;; LP promoted P!72
    (local.set $t79 (i32.add (global.get $TB) (i32.const 41))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 308)) (local.get $t77))
    (i32.store (i32.add (local.get $Pb) (i32.const 312)) (local.get $t78))
    (i32.store (i32.add (local.get $Pb) (i32.const 296)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 300)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 304)) (local.get $t79)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 74)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t79)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 303)) (br $__dispatch)
      ) ;; close $__case_303 — LAB L597
    (local.set $t72 (i32.const 2))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (local.set $t73 (i32.const 2))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2052))))
    (local.set $t73 (i32.mul (local.get $t73) (local.get $t74)))
    (if (i32.gt_s (local.get $t72) (local.get $t73)) (then
      (local.set $__lab (i32.const 304)) (br $__dispatch)
    ))
    ;; line 7:1931
    (global.set $__line (i32.const 1931))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (local.get $t71)) ;; LP promoted P!71
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048))))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.shl (local.get $t73) (i32.const 2)) (local.get $t72))
    ;; line 7:1932
    (global.set $__line (i32.const 1932))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (local.get $t4)) ;; LP promoted P!4
    (local.set $t73 (i32.const 1))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (local.set $t74 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2044))))
    (local.set $t73 (i32.add (local.get $t73) (local.get $t74)))
    (i32.store (i32.shl (local.get $t73) (i32.const 2)) (local.get $t72))
    ;; line 7:1933
    (global.set $__line (i32.const 1933))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 2))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2048)) (local.get $t72))
      (local.set $__lab (i32.const 304)) (br $__dispatch)
      ) ;; close $__case_304 — LAB L598
      (local.set $__lab (i32.const 305)) (br $__dispatch)
      ) ;; close $__case_305 — LAB L593
    ;; line 7:1934
    (global.set $__line (i32.const 1934))
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
    ;; line 7:1938
    (global.set $__line (i32.const 1938))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t75 (i32.add (global.get $SB) (i32.const 1774))) ;; LSTR
    (local.set $t76 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t77 (local.get $t71)) ;; LP promoted P!71
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
    ;; line 7:1939
    (global.set $__line (i32.const 1939))
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
    ;; line 7:1941
    (global.set $__line (i32.const 1941))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t72 (i32.const 1))
    (local.set $t73 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t72 (i32.add (local.get $t72) (local.get $t73)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t72))
    ;; line 7:1942
    (global.set $__line (i32.const 1942))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t4))
    ;; line 7:1944
    (global.set $__line (i32.const 1944))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1945
    (global.set $__line (i32.const 1945))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 306)) (br $__dispatch)
      ) ;; close $__case_306 — LAB L599
    ;; line 7:1948
    (global.set $__line (i32.const 1948))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1949
    (global.set $__line (i32.const 1949))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:1950
    (global.set $__line (i32.const 1950))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1951
    (global.set $__line (i32.const 1951))
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
    ;; line 7:1952
    (global.set $__line (i32.const 1952))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t6 (i32.const 2))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t5))
    ;; line 7:1953
    (global.set $__line (i32.const 1953))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1792))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (local.get $t3)) ;; LP promoted P!3
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
    ;; line 7:1954
    (global.set $__line (i32.const 1954))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 1))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t5))
    ;; line 7:1956
    (global.set $__line (i32.const 1956))
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
    ;; line 7:1957
    (global.set $__line (i32.const 1957))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1959
    (global.set $__line (i32.const 1959))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1960
    (global.set $__line (i32.const 1960))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_307 — LAB L600
    ;; line 7:1963
    (global.set $__line (i32.const 1963))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t6)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t6)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1970
    (global.set $__line (i32.const 1970))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.const 1))
    (local.set $t3 (i32.sub (local.get $t3) (local.get $t4)))
    (i32.store (i32.add (local.get $Pb) (i32.const 12)) (local.get $t3)) ;; STORE slot 3
    ;; line 7:1971
    (global.set $__line (i32.const 1971))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.const 2))
    (local.set $t4 (i32.sub (local.get $t4) (local.get $t5)))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (local.get $t4)) ;; STORE slot 4
    ;; line 7:1972
    (global.set $__line (i32.const 1972))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t6 (i32.const 3))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1973
    (global.set $__line (i32.const 1973))
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
    ;; line 7:1974
    (global.set $__line (i32.const 1974))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 3))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:1975
    (global.set $__line (i32.const 1975))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 308)) (br $__dispatch)
    ))
    ;; line 7:1976
    (global.set $__line (i32.const 1976))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t6))
      (local.set $__lab (i32.const 308)) (br $__dispatch)
      ) ;; close $__case_308 — LAB L601
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1818))) ;; LSTR
    (local.set $t10 (local.get $t4)) ;; LP promoted P!4
    (local.set $t11 (local.get $t3)) ;; LP promoted P!3
    (local.set $t12 (local.get $t5)) ;; LP promoted P!5
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
    ;; line 7:1977
    (global.set $__line (i32.const 1977))
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
    ;; line 7:1979
    (global.set $__line (i32.const 1979))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t3))
    ;; line 7:1981
    (global.set $__line (i32.const 1981))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:1982
    (global.set $__line (i32.const 1982))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_309 — LAB L602
    ;; line 7:1985
    (global.set $__line (i32.const 1985))
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
    ;; line 7:1986
    (global.set $__line (i32.const 1986))
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
    ;; line 7:1987
    (global.set $__line (i32.const 1987))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t8)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 5)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t8)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:1988
    (global.set $__line (i32.const 1988))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:1989
    (global.set $__line (i32.const 1989))
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
    ;; line 7:1990
    (global.set $__line (i32.const 1990))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 1))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:1991
    (global.set $__line (i32.const 1991))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 310)) (br $__dispatch)
    ))
    ;; line 7:1992
    (global.set $__line (i32.const 1992))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t6))
      (local.set $__lab (i32.const 310)) (br $__dispatch)
      ) ;; close $__case_310 — LAB L603
    (local.set $t9 (i32.add (global.get $SB) (i32.const 1844))) ;; LSTR
    (local.set $t10 (local.get $t3)) ;; LP promoted P!3
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
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
    ;; line 7:1993
    (global.set $__line (i32.const 1993))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    (local.set $t8 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t9 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (if (i32.gt_s (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 312)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 311)) (br $__dispatch)
      ) ;; close $__case_311 — LAB L604
    ;; line 7:1994
    (global.set $__line (i32.const 1994))
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
    ;; line 7:1995
    (global.set $__line (i32.const 1995))
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
    ;; line 7:1996
    (global.set $__line (i32.const 1996))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1854))) ;; LSTR
    (local.set $t14 (local.get $t5)) ;; LP promoted P!5
    (local.set $t15 (local.get $t8)) ;; LP promoted P!8
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
    ;; line 7:1997
    (global.set $__line (i32.const 1997))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1868))) ;; LSTR
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (local.get $t13)) ;; flush t13 (pre-stack-up)
    (local.set $t17 (local.get $t9)) ;; LP promoted P!9
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
      (local.set $__lab (i32.const 311)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 312)) (br $__dispatch)
      ) ;; close $__case_312 — LAB L605
    ;; line 7:1998
    (global.set $__line (i32.const 1998))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2000
    (global.set $__line (i32.const 2000))
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
    ;; line 7:2001
    (global.set $__line (i32.const 2001))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:2003
    (global.set $__line (i32.const 2003))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 313)) (br $__dispatch)
      ) ;; close $__case_313 — LAB L606
    ;; line 7:2006
    (global.set $__line (i32.const 2006))
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
    ;; line 7:2007
    (global.set $__line (i32.const 2007))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.const 0))
    (if (i32.lt_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 314)) (br $__dispatch)
    ))
    (local.set $t4 (local.get $t3)) ;; LP promoted P!3
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (if (i32.ge_s (local.get $t4) (local.get $t5)) (then
      (local.set $__lab (i32.const 314)) (br $__dispatch)
    ))
    ;; line 7:2012
    (global.set $__line (i32.const 2012))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.shl (local.get $t5) (i32.const 2)) (local.get $t4))
      (local.set $__lab (i32.const 314)) (br $__dispatch)
      ) ;; close $__case_314 — LAB L607
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:2013
    (global.set $__line (i32.const 2013))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 315)) (br $__dispatch)
      ) ;; close $__case_315 — LAB L608
    ;; line 7:2016
    (global.set $__line (i32.const 2016))
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
    ;; line 7:2017
    (global.set $__line (i32.const 2017))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const -1))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.add (global.get $TB) (i32.const 41))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2018
    (global.set $__line (i32.const 2018))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:2019
    (global.set $__line (i32.const 2019))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 316)) (br $__dispatch)
      ) ;; close $__case_316 — LAB L609
    ;; line 7:2022
    (global.set $__line (i32.const 2022))
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
    ;; line 7:2023
    (global.set $__line (i32.const 2023))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.const -1))
    (local.set $t8 (local.get $t3)) ;; LP promoted P!3
    (local.set $t9 (i32.add (global.get $TB) (i32.const 41))) ;; LF L51
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7))
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8))
    (i32.store (i32.add (local.get $Pb) (i32.const 16)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t9)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 4)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t9)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2024
    (global.set $__line (i32.const 2024))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:2025
    (global.set $__line (i32.const 2025))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 317)) (br $__dispatch)
      ) ;; close $__case_317 — LAB L610
    ;; line 7:2028
    (global.set $__line (i32.const 2028))
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
    ;; line 7:2029
    (global.set $__line (i32.const 2029))
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
    ;; line 7:2030
    (global.set $__line (i32.const 2030))
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
    ;; line 7:2031
    (global.set $__line (i32.const 2031))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t6 (i32.const 1))
    (local.set $t5 (i32.sub (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t5))
    ;; line 7:2033
    (global.set $__line (i32.const 2033))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 431))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
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
    ;; line 7:2034
    (global.set $__line (i32.const 2034))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t4)) ;; LP promoted P!4
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 318)) (br $__dispatch)
    ))
    ;; line 7:2036
    (global.set $__line (i32.const 2036))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 1883))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (local.get $t4)) ;; LP promoted P!4
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
      (local.set $__lab (i32.const 318)) (br $__dispatch)
      ) ;; close $__case_318 — LAB L611
    ;; line 7:2037
    (global.set $__line (i32.const 2037))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (local.get $t3)) ;; LP promoted P!3
    (local.set $t6 (i32.const 0))
    (if (i32.le_s (local.get $t5) (local.get $t6)) (then
      (local.set $__lab (i32.const 319)) (br $__dispatch)
    ))
    ;; line 7:2039
    (global.set $__line (i32.const 2039))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.add (global.get $SB) (i32.const 626))) ;; LSTR
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t11 (i32.const 1))
    (local.set $t12 (local.get $t3)) ;; LP promoted P!3
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
      (local.set $__lab (i32.const 319)) (br $__dispatch)
      ) ;; close $__case_319 — LAB L612
    ;; line 7:2040
    (global.set $__line (i32.const 2040))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 1))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t5 (i32.add (local.get $t5) (local.get $t6)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t5))
    ;; line 7:2042
    (global.set $__line (i32.const 2042))
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
    ;; line 7:2043
    (global.set $__line (i32.const 2043))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t5))
    ;; line 7:2044
    (global.set $__line (i32.const 2044))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
    ;; line 7:2045
    (global.set $__line (i32.const 2045))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 320)) (br $__dispatch)
      ) ;; close $__case_320 — LAB L613
    ;; line 7:2048
    (global.set $__line (i32.const 2048))
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
    ;; line 7:2049
    (global.set $__line (i32.const 2049))
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
    ;; line 7:2050
    (global.set $__line (i32.const 2050))
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
    ;; line 7:2051
    (global.set $__line (i32.const 2051))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (local.get $t6)) ;; STORE slot 6
    ;; line 7:2056
    (global.set $__line (i32.const 2056))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t8 (i32.const 1))
    (local.set $t7 (i32.sub (local.get $t7) (local.get $t8)))
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (local.get $t7)) ;; STORE slot 7
    ;; line 7:2057
    (global.set $__line (i32.const 2057))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t8 (i32.const 0))
    (local.set $t9 (local.get $t4)) ;; LP promoted P!4
    (if (i32.ne  (local.get $t8) (local.get $t9)) (then
      (local.set $__lab (i32.const 321)) (br $__dispatch)
    ))
    (local.set $t8 (i32.const 32))
    ;; RES L614: save result, jump to RSTACK
    (local.set $__res (local.get $t8))
      (local.set $__lab (i32.const 322)) (br $__dispatch)
      (local.set $__lab (i32.const 321)) (br $__dispatch)
      ) ;; close $__case_321 — LAB L615
    (local.set $t8 (local.get $t4)) ;; LP promoted P!4
    ;; RES L614: save result, jump to RSTACK
    (local.set $__res (local.get $t8))
      (local.set $__lab (i32.const 322)) (br $__dispatch)
      ) ;; close $__case_322 — LAB L614
    ;; RSTACK 8
    (local.set $t8 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t8)) ;; STORE slot 8
    ;; line 7:2058
    (global.set $__line (i32.const 2058))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t9 (local.get $t8)) ;; LP promoted P!8
    (local.set $t10 (i32.const 32))
    (local.set $t9 (i32.sub (i32.const 0) (i32.ge_s (local.get $t9) (local.get $t10))))
    (local.set $t10 (i32.const 0))
    (local.set $t11 (local.get $t5)) ;; LP promoted P!5
    (local.set $t10 (i32.sub (i32.const 0) (i32.eq (local.get $t10) (local.get $t11))))
    (local.set $t9 (i32.and (local.get $t9) (local.get $t10)))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9)) ;; STORE slot 9
    ;; line 7:2059
    (global.set $__line (i32.const 2059))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t10 (local.get $t8)) ;; LP promoted P!8
    (local.set $t11 (i32.const 32))
    (if (i32.lt_s (local.get $t10) (local.get $t11)) (then
      (local.set $__lab (i32.const 323)) (br $__dispatch)
    ))
    (local.set $t10 (i32.const -1))
    ;; RES L616: save result, jump to RSTACK
    (local.set $__res (local.get $t10))
      (local.set $__lab (i32.const 324)) (br $__dispatch)
      (local.set $__lab (i32.const 323)) (br $__dispatch)
      ) ;; close $__case_323 — LAB L617
    (local.set $t10 (i32.const 1))
    (local.set $t11 (local.get $t8)) ;; LP promoted P!8
    (local.set $t10 (i32.shl (local.get $t10) (local.get $t11)))
    (local.set $t11 (i32.const 1))
    (local.set $t10 (i32.sub (local.get $t10) (local.get $t11)))
    ;; RES L616: save result, jump to RSTACK
    (local.set $__res (local.get $t10))
      (local.set $__lab (i32.const 324)) (br $__dispatch)
      ) ;; close $__case_324 — LAB L616
    ;; RSTACK 10
    (local.set $t10 (local.get $__res)) ;; restore RES result
    (i32.store (i32.add (local.get $Pb) (i32.const 40)) (local.get $t10)) ;; STORE slot 10
    ;; line 7:2060
    (global.set $__line (i32.const 2060))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t11 (local.get $t10)) ;; LP promoted P!10
    (local.set $t12 (local.get $t5)) ;; LP promoted P!5
    (local.set $t11 (i32.shl (local.get $t11) (local.get $t12)))
    (local.set $t11 (i32.xor (local.get $t11) (i32.const -1)))
    (i32.store (i32.add (local.get $Pb) (i32.const 44)) (local.get $t11)) ;; STORE slot 11
    ;; line 7:2061
    (global.set $__line (i32.const 2061))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t12 (i32.const 0)) ;; QUERY (undefined)
    (i32.store (i32.add (local.get $Pb) (i32.const 48)) (local.get $t12)) ;; STORE slot 12
    ;; line 7:2064
    (global.set $__line (i32.const 2064))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t3)) ;; LP promoted P!3
    ;; RES L618: save result, jump to RSTACK
    (local.set $__res (local.get $t13))
      (local.set $__lab (i32.const 338)) (br $__dispatch)
    ;; line 7:2065
    (global.set $__line (i32.const 2065))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      ) ;; close $__case_325 — LAB L620
    ;; line 7:2066
    (global.set $__line (i32.const 2066))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_326 — LAB L621
    ;; line 7:2067
    (global.set $__line (i32.const 2067))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 973))) ;; LSTR
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_327 — LAB L622
    ;; line 7:2068
    (global.set $__line (i32.const 2068))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 975))) ;; LSTR
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_328 — LAB L623
    ;; line 7:2069
    (global.set $__line (i32.const 2069))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 977))) ;; LSTR
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_329 — LAB L624
    ;; line 7:2070
    (global.set $__line (i32.const 2070))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 979))) ;; LSTR
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_330 — LAB L625
    ;; line 7:2071
    (global.set $__line (i32.const 2071))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 982))) ;; LSTR
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_331 — LAB L626
    ;; line 7:2072
    (global.set $__line (i32.const 2072))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 985))) ;; LSTR
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_332 — LAB L627
    ;; line 7:2073
    (global.set $__line (i32.const 2073))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 1900))) ;; LSTR
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_333 — LAB L628
    ;; line 7:2074
    (global.set $__line (i32.const 2074))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 990))) ;; LSTR
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_334 — LAB L629
    ;; line 7:2075
    (global.set $__line (i32.const 2075))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 992))) ;; LSTR
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_335 — LAB L630
    ;; line 7:2076
    (global.set $__line (i32.const 2076))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.add (global.get $SB) (i32.const 994))) ;; LSTR
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_336 — LAB L631
    ;; line 7:2077
    (global.set $__line (i32.const 2077))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_337 — LAB L632
    ;; line 7:2078
    (global.set $__line (i32.const 2078))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 339)) (br $__dispatch) ;; JUMP L619
      ) ;; close $__case_338 — LAB L618
    ;; RSTACK 13
    (local.set $t13 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 12 cases default L632
    (if (i32.eq (local.get $t13) (i32.const 16)) (then
      (local.set $__lab (i32.const 336)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 17)) (then
      (local.set $__lab (i32.const 335)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 15)) (then
      (local.set $__lab (i32.const 334)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 14)) (then
      (local.set $__lab (i32.const 333)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 13)) (then
      (local.set $__lab (i32.const 332)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 12)) (then
      (local.set $__lab (i32.const 331)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 9)) (then
      (local.set $__lab (i32.const 330)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 8)) (then
      (local.set $__lab (i32.const 329)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 7)) (then
      (local.set $__lab (i32.const 328)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 11)) (then
      (local.set $__lab (i32.const 327)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 10)) (then
      (local.set $__lab (i32.const 326)) (br $__dispatch)))
    (if (i32.eq (local.get $t13) (i32.const 0)) (then
      (local.set $__lab (i32.const 325)) (br $__dispatch)))
      (local.set $__lab (i32.const 337)) (br $__dispatch)
      ) ;; close $__case_339 — LAB L619
    ;; line 7:2065
    (global.set $__line (i32.const 2065))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (local.get $t12)) ;; LP promoted P!12
    (if (i32.eq  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 340)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (local.get $t3)) ;; LP promoted P!3
    (if (i32.eq  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 340)) (br $__dispatch)
    ))
    ;; line 7:2080
    (global.set $__line (i32.const 2080))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t12)) ;; LP promoted P!12
    (local.set $t12 (local.get $t13)) ;; SP promoted P!12
      (local.set $__lab (i32.const 340)) (br $__dispatch)
      ) ;; close $__case_340 — LAB L633
    (local.set $t13 (i32.const 0))
    (local.set $t14 (local.get $t12)) ;; LP promoted P!12
    (if (i32.ne  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 341)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (local.get $t3)) ;; LP promoted P!3
    (if (i32.eq  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 341)) (br $__dispatch)
    ))
    ;; line 7:2081
    (global.set $__line (i32.const 2081))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1903))) ;; LSTR
    (local.set $t17 (local.get $t3)) ;; LP promoted P!3
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 341)) (br $__dispatch)
      ) ;; close $__case_341 — LAB L634
    ;; line 7:2082
    (global.set $__line (i32.const 2082))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1577))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2088
    (global.set $__line (i32.const 2088))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1916))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2089
    (global.set $__line (i32.const 2089))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (local.get $t9)) ;; LP promoted P!9
    (if (i32.eqz (local.get $t13)) (then
      (local.set $__lab (i32.const 344)) (br $__dispatch)
    ))
    ;; line 7:2090
    (global.set $__line (i32.const 2090))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (local.get $t12)) ;; LP promoted P!12
    (if (i32.eq  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 342)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (local.get $t3)) ;; LP promoted P!3
    (if (i32.ne  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 343)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 342)) (br $__dispatch)
      ) ;; close $__case_342 — LAB L639
    ;; line 7:2092
    (global.set $__line (i32.const 2092))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1600))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 348)) (br $__dispatch) ;; JUMP L637
      ) ;; close $__case_343 — LAB L638
    ;; line 7:2093
    (global.set $__line (i32.const 2093))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1928))) ;; LSTR
    (local.set $t17 (local.get $t12)) ;; LP promoted P!12
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2094
    (global.set $__line (i32.const 2094))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1931))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2095
    (global.set $__line (i32.const 2095))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1947))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 348)) (br $__dispatch) ;; JUMP L637
      ) ;; close $__case_344 — LAB L635
    ;; line 7:2096
    (global.set $__line (i32.const 2096))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1954))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2100
    (global.set $__line (i32.const 2100))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1958))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2101
    (global.set $__line (i32.const 2101))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1963))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2102
    (global.set $__line (i32.const 2102))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1979))) ;; LSTR
    (local.set $t17 (local.get $t11)) ;; LP promoted P!11
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2103
    (global.set $__line (i32.const 2103))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1986))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2104
    (global.set $__line (i32.const 2104))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1991))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2105
    (global.set $__line (i32.const 2105))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (local.get $t12)) ;; LP promoted P!12
    (if (i32.eq  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 345)) (br $__dispatch)
    ))
    (local.set $t13 (i32.const 0))
    (local.set $t14 (local.get $t3)) ;; LP promoted P!3
    (if (i32.ne  (local.get $t13) (local.get $t14)) (then
      (local.set $__lab (i32.const 346)) (br $__dispatch)
    ))
      (local.set $__lab (i32.const 345)) (br $__dispatch)
      ) ;; close $__case_345 — LAB L642
    ;; line 7:2106
    (global.set $__line (i32.const 2106))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 1996))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 347)) (br $__dispatch) ;; JUMP L643
      ) ;; close $__case_346 — LAB L640
    ;; line 7:2107
    (global.set $__line (i32.const 2107))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 2004))) ;; LSTR
    (local.set $t17 (local.get $t12)) ;; LP promoted P!12
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2108
    (global.set $__line (i32.const 2108))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 2009))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2109
    (global.set $__line (i32.const 2109))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 2015))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t17)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t17)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2110
    (global.set $__line (i32.const 2110))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 2022))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 28))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2111
    (global.set $__line (i32.const 2111))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 2040))) ;; LSTR
    (local.set $t17 (local.get $t5)) ;; LP promoted P!5
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2112
    (global.set $__line (i32.const 2112))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 2049))) ;; LSTR
    (local.set $t17 (local.get $t10)) ;; LP promoted P!10
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2113
    (global.set $__line (i32.const 2113))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 2058))) ;; LSTR
    (local.set $t17 (i32.load (i32.add (local.get $Pb) (i32.const 24))))
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 347)) (br $__dispatch)
      ) ;; close $__case_347 — LAB L643
    ;; line 7:2114
    (global.set $__line (i32.const 2114))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 2067))) ;; LSTR
    (local.set $t17 (local.get $t10)) ;; LP promoted P!10
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2116
    (global.set $__line (i32.const 2116))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t16 (i32.add (global.get $SB) (i32.const 2075))) ;; LSTR
    (local.set $t17 (local.get $t5)) ;; LP promoted P!5
    (local.set $t18 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (local.get $Pb) (i32.const 64)) (local.get $t16))
    (i32.store (i32.add (local.get $Pb) (i32.const 68)) (local.get $t17))
    (i32.store (i32.add (local.get $Pb) (i32.const 52)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 56)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 60)) (local.get $t18)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 13)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t18)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
      (local.set $__lab (i32.const 348)) (br $__dispatch)
      ) ;; close $__case_348 — LAB L637
    ;; line 7:2117
    (global.set $__line (i32.const 2117))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t7 (i32.const 2))
    (local.set $t6 (i32.sub (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984)) (local.get $t6))
    ;; line 7:2120
    (global.set $__line (i32.const 2120))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988))))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (if (i32.le_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 349)) (br $__dispatch)
    ))
    ;; line 7:2121
    (global.set $__line (i32.const 2121))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1988)) (local.get $t6))
      (local.set $__lab (i32.const 349)) (br $__dispatch)
      ) ;; close $__case_349 — LAB L644
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1080))))
    (local.set $t10 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 228))))
    (i32.store (i32.add (local.get $Pb) (i32.const 36)) (local.get $t9))
    (i32.store (i32.add (local.get $Pb) (i32.const 24)) (global.get $P)) ;; save P
    (i32.store (i32.add (local.get $Pb) (i32.const 28)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (local.get $Pb) (i32.const 32)) (local.get $t10)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 6)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t10)))
    (local.set $Pb (i32.shl (global.get $P) (i32.const 2)))
    ;; line 7:2122
    (global.set $__line (i32.const 2122))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 0))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2008)) (local.get $t6))
    ;; line 7:2123
    (global.set $__line (i32.const 2123))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
      (local.set $__lab (i32.const 351)) (br $__dispatch) ;; JUMP L293
      (local.set $__lab (i32.const 350)) (br $__dispatch)
      ) ;; close $__case_350 — LAB L292
    ;; RSTACK 3
    (local.set $t3 (local.get $__res)) ;; restore RES result
    ;; SWITCHON 85 cases default L294
    (if (i32.eq (local.get $t3) (i32.const 203)) (then
      (local.set $__lab (i32.const 320)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 202)) (then
      (local.set $__lab (i32.const 317)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 162)) (then
      (local.set $__lab (i32.const 316)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 161)) (then
      (local.set $__lab (i32.const 315)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 160)) (then
      (local.set $__lab (i32.const 313)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 63)) (then
      (local.set $__lab (i32.const 309)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 165)) (then
      (local.set $__lab (i32.const 307)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 164)) (then
      (local.set $__lab (i32.const 306)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 138)) (then
      (local.set $__lab (i32.const 288)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 61)) (then
      (local.set $__lab (i32.const 287)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 42)) (then
      (local.set $__lab (i32.const 286)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 10)) (then
      (local.set $__lab (i32.const 285)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 153)) (then
      (local.set $__lab (i32.const 281)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 152)) (then
      (local.set $__lab (i32.const 272)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 154)) (then
      (local.set $__lab (i32.const 271)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 159)) (then
      (local.set $__lab (i32.const 269)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 157)) (then
      (local.set $__lab (i32.const 267)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 158)) (then
      (local.set $__lab (i32.const 266)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 43)) (then
      (local.set $__lab (i32.const 264)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 147)) (then
      (local.set $__lab (i32.const 263)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 149)) (then
      (local.set $__lab (i32.const 262)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 148)) (then
      (local.set $__lab (i32.const 261)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 35)) (then
      (local.set $__lab (i32.const 260)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 34)) (then
      (local.set $__lab (i32.const 259)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 33)) (then
      (local.set $__lab (i32.const 258)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 32)) (then
      (local.set $__lab (i32.const 257)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 31)) (then
      (local.set $__lab (i32.const 256)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 30)) (then
      (local.set $__lab (i32.const 255)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 24)) (then
      (local.set $__lab (i32.const 254)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 23)) (then
      (local.set $__lab (i32.const 253)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 22)) (then
      (local.set $__lab (i32.const 252)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 21)) (then
      (local.set $__lab (i32.const 251)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 20)) (then
      (local.set $__lab (i32.const 250)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 19)) (then
      (local.set $__lab (i32.const 249)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 18)) (then
      (local.set $__lab (i32.const 248)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 17)) (then
      (local.set $__lab (i32.const 247)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 16)) (then
      (local.set $__lab (i32.const 246)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 15)) (then
      (local.set $__lab (i32.const 245)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 14)) (then
      (local.set $__lab (i32.const 244)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 182)) (then
      (local.set $__lab (i32.const 243)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 181)) (then
      (local.set $__lab (i32.const 242)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 180)) (then
      (local.set $__lab (i32.const 241)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 179)) (then
      (local.set $__lab (i32.const 240)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 178)) (then
      (local.set $__lab (i32.const 239)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 177)) (then
      (local.set $__lab (i32.const 238)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 174)) (then
      (local.set $__lab (i32.const 237)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 173)) (then
      (local.set $__lab (i32.const 236)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 172)) (then
      (local.set $__lab (i32.const 235)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 171)) (then
      (local.set $__lab (i32.const 234)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 170)) (then
      (local.set $__lab (i32.const 233)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 13)) (then
      (local.set $__lab (i32.const 232)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 12)) (then
      (local.set $__lab (i32.const 231)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 29)) (then
      (local.set $__lab (i32.const 230)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 169)) (then
      (local.set $__lab (i32.const 229)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 176)) (then
      (local.set $__lab (i32.const 228)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 168)) (then
      (local.set $__lab (i32.const 227)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 167)) (then
      (local.set $__lab (i32.const 226)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 8)) (then
      (local.set $__lab (i32.const 225)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 146)) (then
      (local.set $__lab (i32.const 224)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 145)) (then
      (local.set $__lab (i32.const 220)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 144)) (then
      (local.set $__lab (i32.const 219)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 143)) (then
      (local.set $__lab (i32.const 218)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 11)) (then
      (local.set $__lab (i32.const 217)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 5)) (then
      (local.set $__lab (i32.const 216)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 4)) (then
      (local.set $__lab (i32.const 215)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 137)) (then
      (local.set $__lab (i32.const 214)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 136)) (then
      (local.set $__lab (i32.const 213)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 142)) (then
      (local.set $__lab (i32.const 210)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 141)) (then
      (local.set $__lab (i32.const 209)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 140)) (then
      (local.set $__lab (i32.const 208)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 139)) (then
      (local.set $__lab (i32.const 205)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 133)) (then
      (local.set $__lab (i32.const 196)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 135)) (then
      (local.set $__lab (i32.const 195)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 134)) (then
      (local.set $__lab (i32.const 194)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 151)) (then
      (local.set $__lab (i32.const 192)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 163)) (then
      (local.set $__lab (i32.const 188)) (br $__dispatch)))
    (if (i32.eq (local.get $t3) (i32.const 156)) (then
      (local.set $__lab (i32.const 187)) (br $__dispatch)))
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
      ) ;; close $__case_351 — LAB L293
    ;; line 7:930
    (global.set $__line (i32.const 930))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996))))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 352)) (br $__dispatch)
    ))
    ;; line 7:2130
    (global.set $__line (i32.const 2130))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1996)) (local.get $t3))
    ;; line 7:2131
    (global.set $__line (i32.const 2131))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2000)) (local.get $t3))
      (local.set $__lab (i32.const 352)) (br $__dispatch)
      ) ;; close $__case_352 — LAB L645
    ;; line 7:2132
    (global.set $__line (i32.const 2132))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2004))))
    (if (i32.eqz (local.get $t3)) (then
      (local.set $__lab (i32.const 353)) (br $__dispatch)
    ))
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1952))))
    (local.set $t4 (i32.const 0))
    (if (i32.le_s (local.get $t3) (local.get $t4)) (then
      (local.set $__lab (i32.const 353)) (br $__dispatch)
    ))
    ;; line 7:2134
    (global.set $__line (i32.const 2134))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.add (global.get $SB) (i32.const 2083))) ;; LSTR
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1976))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1984))))
    (local.set $t9 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1980))))
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
      (local.set $__lab (i32.const 353)) (br $__dispatch)
      ) ;; close $__case_353 — LAB L646
    ;; line 7:2135
    (global.set $__line (i32.const 2135))
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
      (local.set $__lab (i32.const 3)) (br $__dispatch) ;; JUMP L290
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
  ) ;; end func $fn_L50

  ;; BCPL fn alloc_static (L51)
  (func $fn_L51 (export "fn_L51") (type $bcpl_fn)
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
    (local.set $t3 (i32.load (i32.add (local.get $Pb) (i32.const 12)))) ;; init promoted P!3
    (local.set $t4 (i32.load (i32.add (local.get $Pb) (i32.const 16)))) ;; init promoted P!4
    (loop $__dispatch
      (block $__default
      (block $__case_2
      (block $__case_1
      (block $__case_0
        (br_table $__case_0 $__case_1 $__case_2 $__default (local.get $__lab))
      ) ;; close $__case_0 — entry-block body follows
    ;; line 7:2142
    (global.set $__line (i32.const 2142))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (i32.store (i32.add (local.get $Pb) (i32.const 20)) (local.get $t5)) ;; STORE slot 5
    ;; line 7:2143
    (global.set $__line (i32.const 2143))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t7 (i32.const 32768))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 1)) (br $__dispatch)
    ))
    ;; line 7:2144
    (global.set $__line (i32.const 2144))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t4)) ;; LP promoted P!4
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2012))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
    ;; line 7:2145
    (global.set $__line (i32.const 2145))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (i32.const 1))
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016))))
    (local.set $t6 (i32.add (local.get $t6) (local.get $t7)))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2016)) (local.get $t6))
      (local.set $__lab (i32.const 1)) (br $__dispatch)
      ) ;; close $__case_1 — LAB L647
    ;; line 7:2146
    (global.set $__line (i32.const 2146))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.const 0))
    (if (i32.lt_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    (local.set $t6 (local.get $t3)) ;; LP promoted P!3
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2024))))
    (if (i32.ge_s (local.get $t6) (local.get $t7)) (then
      (local.set $__lab (i32.const 2)) (br $__dispatch)
    ))
    ;; line 7:2150
    (global.set $__line (i32.const 2150))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    (local.set $t7 (local.get $t3)) ;; LP promoted P!3
    (local.set $t8 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2020))))
    (local.set $t7 (i32.add (local.get $t7) (local.get $t8)))
    (i32.store (i32.shl (local.get $t7) (i32.const 2)) (local.get $t6))
      (local.set $__lab (i32.const 2)) (br $__dispatch)
      ) ;; close $__case_2 — LAB L648
    ;; line 7:2151
    (global.set $__line (i32.const 2151))
    (if (i32.ne (global.get $__bp_armed) (i32.const 0))
        (then (call $__break)))
    (local.set $t6 (local.get $t5)) ;; LP promoted P!5
    ;; FNRN
    (local.set $__res (local.get $t6))
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
  ) ;; end func $fn_L51

  ;; --- function table slice (passive) ---
  (elem $ftab funcref (ref.func $fn_L10) (ref.func $fn_L11) (ref.func $fn_L12) (ref.func $fn_L13) (ref.func $fn_L14) (ref.func $fn_L15) (ref.func $fn_L16) (ref.func $fn_L17) (ref.func $fn_L18) (ref.func $fn_L19) (ref.func $fn_L20) (ref.func $fn_L21) (ref.func $fn_L22) (ref.func $fn_L23) (ref.func $fn_L24) (ref.func $fn_L25) (ref.func $fn_L26) (ref.func $fn_L27) (ref.func $fn_L28) (ref.func $fn_L29) (ref.func $fn_L30) (ref.func $fn_L31) (ref.func $fn_L32) (ref.func $fn_L33) (ref.func $fn_L34) (ref.func $fn_L35) (ref.func $fn_L36) (ref.func $fn_L37) (ref.func $fn_L38) (ref.func $fn_L39) (ref.func $fn_L40) (ref.func $fn_L41) (ref.func $fn_L42) (ref.func $fn_L43) (ref.func $fn_L44) (ref.func $fn_L45) (ref.func $fn_L46) (ref.func $fn_L47) (ref.func $fn_L48) (ref.func $fn_L49) (ref.func $fn_L50) (ref.func $fn_L51))

  ;; static data — passive segment (2093 words)
  (data $stat "\1E\57\41\53\4D\20\43\47\3A\20\54\6F\6F\20\6C\69\74\74\6C\65\20\77\6F\72\6B\73\70\61\63\65\0A\00\32\57\41\53\4D\20\43\47\3A\20\74\61\72\67\65\74\20\77\6F\72\64\20\73\69\7A\65\20\25\6E\20\62\79\74\65\73\20\6E\6F\74\20\73\75\70\70\6F\72\74\65\64\2E\0A\00\31\20\20\20\20\20\20\20\20\20\52\65\2D\69\6E\76\6F\6B\65\20\62\63\70\6C\77\61\73\6D\20\77\69\74\68\20\74\68\65\20\54\33\32\20\6F\70\74\69\6F\6E\2E\0A\00\00\0E\20\20\3B\3B\20\53\45\43\54\49\4F\4E\3A\20\00\28\28\69\33\32\2E\61\64\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\50\62\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\00\00\00\3C\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\50\62\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\0A\00\00\00\40\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\47\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\00\00\00\15\57\41\53\4D\20\43\47\3A\20\70\65\6E\64\5F\76\20\66\75\6C\6C\0A\00\00\08\28\6D\6F\64\75\6C\65\0A\00\00\00\26\20\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\20\28\66\75\6E\63\20\28\72\65\73\75\6C\74\20\69\33\32\29\29\29\0A\00\19\20\20\28\74\79\70\65\20\24\76\6F\69\64\5F\66\6E\20\28\66\75\6E\63\29\29\0A\00\00\25\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\6D\65\6D\22\20\20\20\20\28\6D\65\6D\6F\72\79\20\34\29\29\0A\00\00\36\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\66\74\61\62\6C\65\22\20\28\74\61\62\6C\65\20\24\66\74\61\62\6C\65\20\32\35\36\20\66\75\6E\63\72\65\66\29\29\0A\00\2B\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\50\22\20\28\67\6C\6F\62\61\6C\20\24\50\20\28\6D\75\74\20\69\33\32\29\29\29\0A\25\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\47\22\20\28\67\6C\6F\62\61\6C\20\24\47\20\69\33\32\29\29\0A\00\00\30\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\73\74\61\74\69\63\5F\62\61\73\65\22\20\28\67\6C\6F\62\61\6C\20\24\53\42\20\69\33\32\29\29\0A\00\00\00\30\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\74\61\62\6C\65\5F\62\61\73\65\22\20\20\28\67\6C\6F\62\61\6C\20\24\54\42\20\69\33\32\29\29\0A\00\00\00\35\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\5F\5F\6C\69\6E\65\22\20\28\67\6C\6F\62\61\6C\20\24\5F\5F\6C\69\6E\65\20\28\6D\75\74\20\69\33\32\29\29\29\0A\00\00\3D\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\5F\5F\62\70\5F\61\72\6D\65\64\22\20\28\67\6C\6F\62\61\6C\20\24\5F\5F\62\70\5F\61\72\6D\65\64\20\28\6D\75\74\20\69\33\32\29\29\29\0A\00\00\3F\20\20\28\69\6D\70\6F\72\74\20\22\65\6E\76\22\20\22\62\63\70\6C\5F\62\72\65\61\6B\22\20\28\66\75\6E\63\20\24\5F\5F\62\72\65\61\6B\20\28\74\79\70\65\20\24\76\6F\69\64\5F\66\6E\29\29\29\0A\0A\2C\20\20\3B\3B\20\2D\2D\2D\20\66\75\6E\63\74\69\6F\6E\20\74\61\62\6C\65\20\73\6C\69\63\65\20\28\70\61\73\73\69\76\65\29\20\2D\2D\2D\0A\00\00\00\15\20\20\28\65\6C\65\6D\20\24\66\74\61\62\20\66\75\6E\63\72\65\66\00\00\13\20\28\72\65\66\2E\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\29\03\29\0A\0A\30\20\20\3B\3B\20\73\74\61\74\69\63\20\64\61\74\61\20\E2\80\94\20\70\61\73\73\69\76\65\20\73\65\67\6D\65\6E\74\20\28\25\6E\20\77\6F\72\64\73\29\0A\00\00\00\0F\20\20\28\64\61\74\61\20\24\73\74\61\74\20\22\10\5C\25\58\32\5C\25\58\32\5C\25\58\32\5C\25\58\32\00\00\00\04\22\29\0A\0A\00\00\00\26\20\20\28\66\75\6E\63\20\24\72\65\67\69\73\74\65\72\20\28\65\78\70\6F\72\74\20\22\72\65\67\69\73\74\65\72\22\29\0A\00\17\20\20\20\20\28\6D\65\6D\6F\72\79\2E\69\6E\69\74\20\24\73\74\61\74\0A\2F\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\14\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\0A\00\00\00\16\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\16\20\20\20\20\28\64\61\74\61\2E\64\72\6F\70\20\24\73\74\61\74\29\0A\00\1E\20\20\20\20\28\74\61\62\6C\65\2E\69\6E\69\74\20\24\66\74\61\62\6C\65\20\24\66\74\61\62\0A\00\17\20\20\20\20\20\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\0A\16\20\20\20\20\28\65\6C\65\6D\2E\64\72\6F\70\20\24\66\74\61\62\29\0A\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\34\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\47\21\25\6E\0A\00\00\00\04\20\20\29\0A\00\00\00\37\20\20\28\66\75\6E\63\20\24\73\74\61\74\5F\77\6F\72\64\73\20\28\65\78\70\6F\72\74\20\22\73\74\61\74\5F\77\6F\72\64\73\22\29\20\28\72\65\73\75\6C\74\20\69\33\32\29\0A\14\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\33\20\20\28\66\75\6E\63\20\24\66\6E\5F\63\6F\75\6E\74\20\28\65\78\70\6F\72\74\20\22\66\6E\5F\63\6F\75\6E\74\22\29\20\28\72\65\73\75\6C\74\20\69\33\32\29\0A\11\29\0A\20\3B\3B\20\65\6E\64\20\6D\6F\64\75\6C\65\0A\00\00\24\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\3A\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\4C\50\20\70\72\6F\6D\6F\74\65\64\20\50\21\25\6E\0A\00\1E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\00\03\29\29\0A\49\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\0A\00\00\3C\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\25\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\00\00\7E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\20\28\25\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\80\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\25\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\78\6F\72\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\2D\31\29\29\29\0A\14\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\0A\00\00\00\41\20\20\20\20\20\20\28\69\66\20\28\72\65\73\75\6C\74\20\69\33\32\29\20\28\69\33\32\2E\67\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\20\20\20\20\20\20\20\20\20\28\74\68\65\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\3A\20\20\20\20\20\20\20\20\28\65\6C\73\65\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\0A\00\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\78\6F\72\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\3F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\6E\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\50\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\20\28\66\33\32\2E\63\6F\6E\76\65\72\74\5F\69\33\32\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\00\00\4E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\74\72\75\6E\63\5F\66\33\32\5F\73\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\54\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\75\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\28\25\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\00\00\00\3A\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\53\50\20\70\72\6F\6D\6F\74\65\64\20\50\21\25\6E\0A\00\13\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\26\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\4A\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\39\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\0A\00\00\1F\20\20\20\20\28\69\66\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\74\68\65\6E\0A\29\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\7A\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\3A\20\20\20\20\28\69\66\20\28\69\33\32\2E\6E\65\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\00\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\6C\74\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\67\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\67\74\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\28\69\66\20\28\69\33\32\2E\6C\65\5F\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\74\68\65\6E\0A\07\20\20\20\20\29\29\0A\1C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\29\20\3B\3B\20\73\61\76\65\20\50\0A\00\00\00\2B\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\72\65\74\75\72\6E\20\61\64\64\72\20\70\6C\61\63\65\68\6F\6C\64\65\72\0A\23\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\65\6E\74\72\79\20\66\6E\5F\69\64\78\0A\3D\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\50\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\00\4E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\63\61\6C\6C\5F\69\6E\64\69\72\65\63\74\20\24\66\74\61\62\6C\65\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\28\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\46\4E\41\50\20\72\65\73\75\6C\74\0A\00\00\00\44\20\20\20\20\28\64\72\6F\70\20\28\63\61\6C\6C\5F\69\6E\64\69\72\65\63\74\20\24\66\74\61\62\6C\65\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\00\00\00\07\69\33\32\2E\61\64\64\07\69\33\32\2E\73\75\62\07\69\33\32\2E\6D\75\6C\09\69\33\32\2E\64\69\76\5F\73\00\00\09\69\33\32\2E\72\65\6D\5F\73\00\00\07\69\33\32\2E\73\68\6C\09\69\33\32\2E\73\68\72\5F\75\00\00\07\69\33\32\2E\61\6E\64\06\69\33\32\2E\6F\72\00\07\69\33\32\2E\78\6F\72\07\66\33\32\2E\61\64\64\07\66\33\32\2E\73\75\62\07\66\33\32\2E\6D\75\6C\07\66\33\32\2E\64\69\76\29\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\66\33\32\0A\00\00\0F\20\20\20\20\20\20\28\66\33\32\2E\73\75\62\0A\2F\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\11\20\20\20\20\20\20\20\20\28\66\33\32\2E\6D\75\6C\0A\00\00\15\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\74\72\75\6E\63\0A\00\00\15\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\64\69\76\0A\00\00\35\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\37\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\35\20\20\20\20\20\20\20\20\20\20\28\66\33\32\2E\72\65\69\6E\74\65\72\70\72\65\74\5F\69\33\32\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\29\29\0A\00\00\06\69\33\32\2E\65\71\00\06\69\33\32\2E\6E\65\00\08\69\33\32\2E\6C\74\5F\73\00\00\00\08\69\33\32\2E\67\74\5F\73\00\00\00\08\69\33\32\2E\6C\65\5F\73\00\00\00\08\69\33\32\2E\67\65\5F\73\00\00\00\06\66\33\32\2E\65\71\00\06\66\33\32\2E\6E\65\00\06\66\33\32\2E\6C\74\00\06\66\33\32\2E\67\74\00\06\66\33\32\2E\6C\65\00\06\66\33\32\2E\67\65\00\3B\0A\57\41\53\4D\20\43\47\3A\20\74\72\65\65\2D\6F\6E\6C\79\20\6F\70\20\25\6E\20\6C\65\61\6B\65\64\20\69\6E\74\6F\20\4F\43\4F\44\45\20\28\66\72\6F\6E\74\65\6E\64\20\62\75\67\29\0A\1A\0A\57\41\53\4D\20\43\47\3A\20\75\6E\68\61\6E\64\6C\65\64\20\6F\70\20\25\6E\0A\00\12\20\20\20\20\3B\3B\20\6C\69\6E\65\20\25\6E\3A\25\6E\0A\00\28\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\5F\5F\6C\69\6E\65\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\38\20\20\20\20\28\69\66\20\28\69\33\32\2E\6E\65\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\5F\5F\62\70\5F\61\72\6D\65\64\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\00\20\20\20\20\20\20\20\20\20\28\74\68\65\6E\20\28\63\61\6C\6C\20\24\5F\5F\62\72\65\61\6B\29\29\29\0A\00\00\00\16\20\20\20\20\20\20\3B\3B\20\69\6D\70\6C\69\63\69\74\20\65\6E\64\0A\00\1D\20\20\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\00\00\19\20\20\20\20\29\29\20\3B\3B\20\65\6E\64\20\6C\61\73\74\20\62\6C\6F\63\6B\0A\00\00\19\20\20\20\20\29\20\3B\3B\20\65\6E\64\20\24\5F\5F\64\69\73\70\61\74\63\68\0A\00\00\12\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\0A\00\19\20\20\29\20\3B\3B\20\65\6E\64\20\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\0A\0A\00\00\07\20\20\20\20\3B\3B\20\3D\20\20\20\20\5B\70\73\63\61\6E\20\6F\70\3D\25\6E\20\64\65\70\74\68\3D\25\6E\20\73\69\6D\5F\63\73\73\70\3D\25\6E\20\70\65\6E\64\69\6E\67\3D\25\6E\20\66\6E\5F\70\65\61\6B\3D\25\6E\5D\0A\00\00\16\20\20\3B\3B\20\42\43\50\4C\20\66\6E\20\25\73\20\28\4C\25\6E\29\0A\00\32\20\20\28\66\75\6E\63\20\24\66\6E\5F\4C\25\6E\20\28\65\78\70\6F\72\74\20\22\66\6E\5F\4C\25\6E\22\29\20\28\74\79\70\65\20\24\62\63\70\6C\5F\66\6E\29\0A\00\17\20\20\20\20\28\6C\6F\63\61\6C\20\24\5F\5F\6C\61\62\20\69\33\32\29\0A\17\20\20\20\20\28\6C\6F\63\61\6C\20\24\5F\5F\72\65\73\20\69\33\32\29\0A\14\20\20\20\20\28\6C\6F\63\61\6C\20\24\50\62\20\69\33\32\29\0A\00\00\00\15\20\20\20\20\28\6C\6F\63\61\6C\20\24\74\25\6E\20\69\33\32\29\0A\00\00\5F\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\61\64\64\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\50\62\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\29\20\3B\3B\20\69\6E\69\74\20\70\72\6F\6D\6F\74\65\64\20\50\21\25\6E\0A\16\20\20\20\20\28\6C\6F\6F\70\20\24\5F\5F\64\69\73\70\61\74\63\68\0A\00\18\20\20\20\20\20\20\28\62\6C\6F\63\6B\20\24\5F\5F\64\65\66\61\75\6C\74\0A\00\00\00\18\20\20\20\20\20\20\28\62\6C\6F\63\6B\20\24\5F\5F\63\61\73\65\5F\25\6E\0A\00\00\00\11\20\20\20\20\20\20\20\20\28\62\72\5F\74\61\62\6C\65\00\00\0B\20\24\5F\5F\63\61\73\65\5F\25\6E\20\20\24\5F\5F\64\65\66\61\75\6C\74\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\6C\61\62\29\29\0A\00\00\00\38\20\20\20\20\20\20\29\20\3B\3B\20\63\6C\6F\73\65\20\24\5F\5F\63\61\73\65\5F\30\20\E2\80\94\20\65\6E\74\72\79\2D\62\6C\6F\63\6B\20\62\6F\64\79\20\66\6F\6C\6C\6F\77\73\0A\00\00\00\1D\20\20\20\20\20\20\3B\3B\20\65\6E\64\70\72\6F\63\20\66\61\6C\6C\74\68\72\6F\75\67\68\0A\00\00\1C\20\20\20\20\20\20\29\20\3B\3B\20\63\6C\6F\73\65\20\24\5F\5F\64\65\66\61\75\6C\74\0A\00\00\00\14\20\20\20\20\20\20\28\75\6E\72\65\61\63\68\61\62\6C\65\29\0A\00\00\00\30\20\20\20\20\3B\3B\20\2A\50\52\45\53\43\41\4E\20\55\4E\44\45\52\43\4F\55\4E\54\2A\20\64\65\63\6C\61\72\65\64\20\24\74\30\2E\2E\24\74\25\6E\2C\0A\00\00\00\31\20\20\20\20\3B\3B\20\20\20\62\75\74\20\65\6D\69\74\20\72\65\61\63\68\65\64\20\63\73\73\70\3D\25\6E\20\6F\6E\20\4F\43\4F\44\45\20\6F\70\3D\25\6E\0A\00\00\39\57\41\52\4E\3A\20\70\72\65\73\63\61\6E\20\75\6E\64\65\72\63\6F\75\6E\74\20\69\6E\20\66\6E\20\4C\25\6E\3A\20\64\65\63\6C\61\72\65\64\20\66\6E\5F\70\65\61\6B\3D\25\6E\2C\20\00\00\1D\65\6D\69\74\20\72\65\61\63\68\65\64\20\25\6E\20\28\6C\61\73\74\20\6F\70\3D\25\6E\29\0A\00\00\28\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\20\3B\3B\20\75\6E\72\65\61\63\68\61\62\6C\65\20\72\65\74\75\72\6E\0A\00\00\00\28\20\20\20\20\20\20\29\20\3B\3B\20\63\6C\6F\73\65\20\24\5F\5F\63\61\73\65\5F\25\6E\20\E2\80\94\20\4C\41\42\20\4C\25\6E\0A\00\00\00\49\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\54\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\46\20\4C\25\6E\0A\00\00\35\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\3B\3B\20\4C\46\20\4C\25\6E\20\28\64\69\73\70\29\0A\00\00\6C\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\20\3B\3B\20\4C\4C\20\4C\25\6E\0A\00\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\47\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\4A\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\4C\4C\20\4C\25\6E\0A\00\38\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\51\55\45\52\59\20\28\75\6E\64\65\66\69\6E\65\64\29\0A\00\00\00\0F\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\0A\48\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\00\00\00\18\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\45\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\20\3B\3B\20\4A\55\4D\50\20\4C\25\6E\0A\00\00\2A\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\2A\20\20\20\20\20\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\20\3B\3B\20\47\4F\54\4F\20\28\63\6F\6D\70\75\74\65\64\29\0A\00\0C\20\20\20\20\3B\3B\20\52\54\52\4E\0A\00\00\00\47\20\20\20\20\28\67\6C\6F\62\61\6C\2E\73\65\74\20\24\50\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\50\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\29\0A\1B\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\0A\0C\20\20\20\20\3B\3B\20\46\4E\52\4E\0A\00\00\00\28\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\72\65\73\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\20\20\20\20\20\28\72\65\74\75\72\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\72\65\73\29\29\0A\00\00\00\2C\20\20\20\20\3B\3B\20\52\45\53\20\4C\25\6E\3A\20\73\61\76\65\20\72\65\73\75\6C\74\2C\20\6A\75\6D\70\20\74\6F\20\52\53\54\41\43\4B\0A\00\00\00\11\20\20\20\20\3B\3B\20\52\53\54\41\43\4B\20\25\6E\0A\00\00\3E\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\5F\5F\72\65\73\29\29\20\3B\3B\20\72\65\73\74\6F\72\65\20\52\45\53\20\72\65\73\75\6C\74\0A\00\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\74\25\6E\0A\00\00\00\2F\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\66\6C\75\73\68\20\74\25\6E\20\28\70\72\65\2D\73\74\61\63\6B\2D\75\70\29\0A\24\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\3B\3B\20\53\54\4F\52\45\20\73\6C\6F\74\20\25\6E\0A\00\00\00\25\20\20\20\20\28\72\65\74\75\72\6E\20\28\69\33\32\2E\63\6F\6E\73\74\20\30\29\29\20\3B\3B\20\46\49\4E\49\53\48\0A\00\00\47\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\61\64\64\20\28\67\6C\6F\62\61\6C\2E\67\65\74\20\24\53\42\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\20\3B\3B\20\4C\53\54\52\0A\67\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\6C\6F\61\64\38\5F\75\20\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\29\0A\66\20\20\20\20\28\69\33\32\2E\73\74\6F\72\65\38\20\28\69\33\32\2E\61\64\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\25\20\20\20\20\3B\3B\20\53\57\49\54\43\48\4F\4E\20\25\6E\20\63\61\73\65\73\20\64\65\66\61\75\6C\74\20\4C\25\6E\0A\00\00\37\20\20\20\20\28\69\66\20\28\69\33\32\2E\65\71\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\74\68\65\6E\0A\3B\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\5F\5F\6C\61\62\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\20\28\62\72\20\24\5F\5F\64\69\73\70\61\74\63\68\29\29\29\0A\41\20\20\20\20\28\6C\6F\63\61\6C\2E\73\65\74\20\24\74\25\6E\20\28\69\33\32\2E\73\68\72\5F\75\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\0A\00\00\09\69\33\32\2E\73\68\72\5F\73\00\00\32\20\20\20\20\3B\3B\20\53\45\4C\53\54\3A\20\73\66\6F\70\20\25\6E\20\75\6E\73\75\70\70\6F\72\74\65\64\2C\20\74\72\65\61\74\69\6E\67\20\61\73\20\3A\3D\0A\00\2F\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\0A\0A\20\20\20\20\20\20\28\25\73\0A\00\3C\20\20\20\20\20\20\20\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\0A\00\00\00\1B\20\20\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\29\0A\0E\20\20\20\20\20\20\28\69\33\32\2E\6F\72\0A\00\11\20\20\20\20\20\20\20\20\28\69\33\32\2E\61\6E\64\0A\00\00\3E\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\0A\00\1A\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\11\20\20\20\20\20\20\20\20\28\69\33\32\2E\73\68\6C\0A\00\00\13\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\61\6E\64\0A\1D\20\20\20\20\20\20\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\0A\00\00\10\20\20\20\20\20\20\20\20\20\20\20\20\28\25\73\0A\00\00\00\17\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\61\6E\64\0A\1B\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\73\68\72\5F\75\0A\46\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\6C\6F\61\64\20\28\69\33\32\2E\73\68\6C\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\20\28\69\33\32\2E\63\6F\6E\73\74\20\32\29\29\29\0A\00\22\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\28\6C\6F\63\61\6C\2E\67\65\74\20\24\74\25\6E\29\29\0A\00\00\00\1C\20\20\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\0A\00\00\00\1C\20\20\20\20\20\20\20\20\20\20\28\69\33\32\2E\63\6F\6E\73\74\20\25\6E\29\29\29\29\0A\00\00\00\27\20\20\20\20\5B\65\6D\69\74\20\20\6F\70\3D\25\6E\20\63\73\73\70\3D\25\6E\20\70\65\6E\64\69\6E\67\6F\70\3D\25\6E\5D\0A")

  (func $register (export "register")
    (memory.init $stat
      (i32.shl (global.get $SB) (i32.const 2))
      (i32.const 0)
      (i32.const 8372))
    (data.drop $stat)
    (table.init $ftable $ftab
      (global.get $TB)
      (i32.const 0)
      (i32.const 42))
    (elem.drop $ftab)
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1828)) (i32.add (global.get $TB) (i32.const 39))) ;; G!457
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1844)) (i32.add (global.get $TB) (i32.const 38))) ;; G!461
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1840)) (i32.add (global.get $TB) (i32.const 37))) ;; G!460
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1836)) (i32.add (global.get $TB) (i32.const 36))) ;; G!459
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1832)) (i32.add (global.get $TB) (i32.const 35))) ;; G!458
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1940)) (i32.add (global.get $TB) (i32.const 34))) ;; G!485
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1936)) (i32.add (global.get $TB) (i32.const 33))) ;; G!484
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1932)) (i32.add (global.get $TB) (i32.const 32))) ;; G!483
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1884)) (i32.add (global.get $TB) (i32.const 31))) ;; G!471
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1916)) (i32.add (global.get $TB) (i32.const 30))) ;; G!479
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1912)) (i32.add (global.get $TB) (i32.const 29))) ;; G!478
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1908)) (i32.add (global.get $TB) (i32.const 28))) ;; G!477
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1904)) (i32.add (global.get $TB) (i32.const 27))) ;; G!476
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1900)) (i32.add (global.get $TB) (i32.const 26))) ;; G!475
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1896)) (i32.add (global.get $TB) (i32.const 25))) ;; G!474
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1892)) (i32.add (global.get $TB) (i32.const 24))) ;; G!473
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1888)) (i32.add (global.get $TB) (i32.const 23))) ;; G!472
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1880)) (i32.add (global.get $TB) (i32.const 22))) ;; G!470
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1876)) (i32.add (global.get $TB) (i32.const 21))) ;; G!469
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1872)) (i32.add (global.get $TB) (i32.const 20))) ;; G!468
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1868)) (i32.add (global.get $TB) (i32.const 19))) ;; G!467
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1864)) (i32.add (global.get $TB) (i32.const 18))) ;; G!466
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1860)) (i32.add (global.get $TB) (i32.const 17))) ;; G!465
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1944)) (i32.add (global.get $TB) (i32.const 16))) ;; G!486
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1824)) (i32.add (global.get $TB) (i32.const 15))) ;; G!456
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1820)) (i32.add (global.get $TB) (i32.const 14))) ;; G!455
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2084)) (i32.add (global.get $TB) (i32.const 13))) ;; G!521
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2080)) (i32.add (global.get $TB) (i32.const 12))) ;; G!520
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2088)) (i32.add (global.get $TB) (i32.const 11))) ;; G!522
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1928)) (i32.add (global.get $TB) (i32.const 10))) ;; G!482
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1924)) (i32.add (global.get $TB) (i32.const 9))) ;; G!481
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1920)) (i32.add (global.get $TB) (i32.const 8))) ;; G!480
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1852)) (i32.add (global.get $TB) (i32.const 7))) ;; G!463
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1856)) (i32.add (global.get $TB) (i32.const 5))) ;; G!464
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1848)) (i32.add (global.get $TB) (i32.const 4))) ;; G!462
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1804)) (i32.add (global.get $TB) (i32.const 3))) ;; G!451
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 2092)) (i32.add (global.get $TB) (i32.const 2))) ;; G!523
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 1800)) (i32.add (global.get $TB) (i32.const 1))) ;; G!450
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 952)) (i32.add (global.get $TB) (i32.const 0))) ;; G!238
  )
  (func $stat_words (export "stat_words") (result i32)
    (i32.const 2093))
  (func $fn_count (export "fn_count") (result i32)
    (i32.const 42))
)
 ;; end module
