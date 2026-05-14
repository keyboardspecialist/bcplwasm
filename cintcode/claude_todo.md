 Correctness gaps
  - [DONE] s_selst — field store via load/mask/shift/or/store. sf_none only (matches frontend).
  - [DONE] s_goto (computed goto) via $__lab indirect through dispatch loop.
  - [DONE] s_fmod via reinterpret + f32.sub/mul/trunc/div.
  - [DONE] LSTR alignment — pack is little-endian, matches Wasm mandate.
  - [DONE] 64-bit target rejected with clear error (T32 required). True memory64 path deferred.
  - [DONE] s_stack load-up — no longer reads uninit mem for fresh slots.

  Semantic polish
  - [DONE] s_res/s_rstack pair: now uses dedicated $__res local (was $t0 — collided with FNRN).
  - [DONE] Dead trailing FNRN: already gated by `terminated` flag at s_endproc/s_global exits.
  - [DONE] s_comment format: bcplsyn.b:3851 confirms OCODE-level length-prefixed. fecg.h "up to newline" refers to source syntax,
    not OCODE. Backend prescan + emit treat it correctly.
  - [DONE] LF of stdlib: not an issue. Stdlib references compile as LG (load global), never LF.

  Missing ops / features
  - s_section/s_needs emits skip. Could emit ;; section comment for readability.
  - s_line (source position marker) ignored. Could emit as ;; line N for debug mapping.
  - Pattern-match / MCPL extensions: s_match, s_every, s_patfndef, etc. — unlikely needed, but DEFAULT traps.
  - s_endfor legacy — currently hits DEFAULT. Add as no-op.

  Runtime / stdlib
  - 22 imports wired (stop, rdch, wrch, newline, writen, writes, writef, getvec, freevec, muldiv, abort, randno,
    capitalch, compch, compstring, findoutput, findinput, selectoutput, selectinput, endstream, endread, endwrite).
    Still missing: rdbin/wrbin.
  - imp_writef format parser: supports %n, %i, %c, %s, %x. Missing %o (octal), %b (binary), %*n/%*c (runtime width), FLT %f/%g.

  Codegen quality
  - If-chain dispatch loop: O(N) per branch. Fine for <50 labels, poor for large functions. Switch to br_table once label count
  stabilizes.
  - Forward-reference LF — handled by register_entries pre-pass. Scales to large modules but walks OCODE twice.
  - Every function re-emits full module prelude info (imports, table)? No — one prelude, one elem. OK.
  - Static data: all strings packed. No string deduplication.
  - No source-map / DWARF. Stack traces unusable.

  Build / tooling
  - site/build.sh requires bin/cintsys + BCPLROOT env. Not portable. Could ship pre-built wasm, or CI-build on push.
  - No automated test harness — test-node.mjs is ad-hoc. Turn into npm test with expected outputs.
  - No .gitignore for .wat/.wasm in site/examples/ vs committed. Decide: commit built artifacts for GitHub Pages, or CI-build.

  Docs
  - [DONE] CLAUDE.md wasm backend section.
  - [DONE] CLAUDE.md target-word-size T32 requirement on cintsys64.
  - No README for the wasm backend explaining calling convention, memory layout, import contract.
  - site/README.md present.

  Future (cintwasm direction)
  - True 64-bit Wasm path: memory64 + i64 ops + shl 3. Requires Wasm runtime memory64 support.
  - Emscripten build of cintsys → in-browser BCPL CLI.
  - wabt-js integration → live compile-and-run.
  - Replace Cintcode interpreter with direct Wasm codegen (current path) → drop fasterp.o dependency long-term.
  - Multiple memories (BCPL stack separate from linear memory) for safety.
  - Exception-based stop() cleaner than JS throw.
