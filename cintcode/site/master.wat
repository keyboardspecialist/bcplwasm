;; BCPL-wasm master scaffolding module.
;;
;; Holds shared linear memory, shared function table, and the two
;; BCPL interpreter globals ($P, $G). Imports every stdlib function
;; and installs them at fixed funcref-table slots 0..21. Program
;; modules compiled in "linker mode" import this module's memory,
;; table and globals; the loader instantiates each program with a
;; per-module static_base + table_base and invokes its `register`
;; function to stamp table entries and G slots.
;;
;; Table layout:
;;   0..21   stdlib (imported by master)
;;   22..    user program slices (assigned by loader, increasing)
;;
;; Memory layout (word addresses):
;;   0       reserved
;;   1..1000 global vector G
;;   1001+   static data for program modules (bump-assigned by loader)
;;   stack   grows upward from past the last static allocation

(module
  (type $bcpl_fn (func (result i32)))

  ;; --- stdlib imports ---
  (import "env" "bcpl_stop"         (func $imp_stop         (type $bcpl_fn)))
  (import "env" "bcpl_rdch"         (func $imp_rdch         (type $bcpl_fn)))
  (import "env" "bcpl_wrch"         (func $imp_wrch         (type $bcpl_fn)))
  (import "env" "bcpl_newline"      (func $imp_newline      (type $bcpl_fn)))
  (import "env" "bcpl_writen"       (func $imp_writen       (type $bcpl_fn)))
  (import "env" "bcpl_writes"       (func $imp_writes       (type $bcpl_fn)))
  (import "env" "bcpl_writef"       (func $imp_writef       (type $bcpl_fn)))
  (import "env" "bcpl_getvec"       (func $imp_getvec       (type $bcpl_fn)))
  (import "env" "bcpl_freevec"      (func $imp_freevec      (type $bcpl_fn)))
  (import "env" "bcpl_muldiv"       (func $imp_muldiv       (type $bcpl_fn)))
  (import "env" "bcpl_abort"        (func $imp_abort        (type $bcpl_fn)))
  (import "env" "bcpl_randno"       (func $imp_randno       (type $bcpl_fn)))
  (import "env" "bcpl_capitalch"    (func $imp_capitalch    (type $bcpl_fn)))
  (import "env" "bcpl_compch"       (func $imp_compch       (type $bcpl_fn)))
  (import "env" "bcpl_compstring"   (func $imp_compstring   (type $bcpl_fn)))
  (import "env" "bcpl_findoutput"   (func $imp_findoutput   (type $bcpl_fn)))
  (import "env" "bcpl_findinput"    (func $imp_findinput    (type $bcpl_fn)))
  (import "env" "bcpl_selectoutput" (func $imp_selectoutput (type $bcpl_fn)))
  (import "env" "bcpl_selectinput"  (func $imp_selectinput  (type $bcpl_fn)))
  (import "env" "bcpl_endstream"    (func $imp_endstream    (type $bcpl_fn)))
  (import "env" "bcpl_endread"      (func $imp_endread      (type $bcpl_fn)))
  (import "env" "bcpl_endwrite"     (func $imp_endwrite     (type $bcpl_fn)))

  (memory $mem    (export "mem")    4)
  (table  $ftable (export "ftable") 256 funcref)
  (global $G      (export "G") i32        (i32.const 1))
  (global $P      (export "P") (mut i32)  (i32.const 0))

  ;; Stdlib goes at table slots 0..21.
  (elem (table $ftable) (i32.const 0) func
    $imp_stop         $imp_rdch         $imp_wrch         $imp_newline
    $imp_writen       $imp_writes       $imp_writef
    $imp_getvec       $imp_freevec
    $imp_muldiv       $imp_abort        $imp_randno
    $imp_capitalch    $imp_compch       $imp_compstring
    $imp_findoutput   $imp_findinput
    $imp_selectoutput $imp_selectinput
    $imp_endstream    $imp_endread      $imp_endwrite)

  ;; init(stack_base_word):
  ;;   writes the stdlib G entries and sets $P. Called by the loader
  ;;   once after all program modules have been registered (so stack
  ;;   sits above all static regions).
  (func $init (export "init") (param $stack_base i32)
    (global.set $P (local.get $stack_base))
    ;; G!0 = size of global vector (convention: 1000 slots)
    (i32.store (i32.const 4) (i32.const 1000))
    ;; stdlib G entries. byte_addr(G!n) = (1 + n) * 4 = 4 + 4n.
    ;; G!1 is intentionally not written here — program's register()
    ;; owns it (holds the table index of start()).
    (i32.store (i32.const  12) (i32.const  0)) ;; G!2  stop
    (i32.store (i32.const 156) (i32.const  1)) ;; G!38 rdch   (4 + 38*4)
    (i32.store (i32.const 168) (i32.const  2)) ;; G!41 wrch
    (i32.store (i32.const 340) (i32.const  3)) ;; G!84 newline
    (i32.store (i32.const 348) (i32.const  4)) ;; G!86 writen
    (i32.store (i32.const 360) (i32.const  5)) ;; G!89 writes
    (i32.store (i32.const 380) (i32.const  6)) ;; G!94 writef
    (i32.store (i32.const 104) (i32.const  7)) ;; G!25 getvec
    (i32.store (i32.const 112) (i32.const  8)) ;; G!27 freevec
    (i32.store (i32.const  24) (i32.const  9)) ;; G!5  muldiv
    (i32.store (i32.const 116) (i32.const 10)) ;; G!28 abort
    (i32.store (i32.const 140) (i32.const 11)) ;; G!34 randno
    (i32.store (i32.const 388) (i32.const 12)) ;; G!96 capitalch
    (i32.store (i32.const 392) (i32.const 13)) ;; G!97 compch
    (i32.store (i32.const 396) (i32.const 14)) ;; G!98 compstring
    (i32.store (i32.const 200) (i32.const 15)) ;; G!49 findoutput
    (i32.store (i32.const 196) (i32.const 16)) ;; G!48 findinput
    (i32.store (i32.const 232) (i32.const 17)) ;; G!57 selectoutput
    (i32.store (i32.const 228) (i32.const 18)) ;; G!56 selectinput
    (i32.store (i32.const 252) (i32.const 19)) ;; G!62 endstream
    (i32.store (i32.const 244) (i32.const 20)) ;; G!60 endread
    (i32.store (i32.const 248) (i32.const 21)) ;; G!61 endwrite
  ))
