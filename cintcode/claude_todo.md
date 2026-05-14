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
  - [DONE] s_section/s_needs: cgsects() top level already emits ;; SECTION header at boundaries; in-scan occurrences silently
    consumed. No-op sufficient.
  - [DONE] s_line: handled — emits `;; line F:L` debug comment inside function bodies. Also added to all 3 prescan tables.
  - [DONE] s_endfor: legacy no-op added in main dispatch and all prescan tables.
  - [DONE] MCPL ops (s_match..s_frange): are tree-node tags only, bcpltrn lowers them to OCODE before codegen.
    DEFAULT now reports them as "tree-only op leaked into OCODE (frontend bug)" with errcount++.

  Runtime / stdlib
  - [DONE] Import wiring: 75 stdlib slots in master.wat (source of truth: site/stdlib-manifest.mjs, validated by
    test-globals.mjs). binrdch/binwrch aliased to rdch/wrch. Stale stdlib_count=22 constant removed from cgwasm.b.
  - [DONE] imp_writef format codes: %n, %d, %i, %u, %c, %s, %x, %o, %b, %z, %t, %f, %e, %g, %n.mD scaled, %#, %$, %+, %-.
  - %M (message DB lookup) and %P (pluralisation) deliberately omitted — no message DB in browser playground.
  - CLAUDE.md import table refreshed to point at master.wat as ground truth.

  Codegen quality
  - [DONE] Static data: LSTR now deduplicates. Linear scan against str_dedup_v registry; identical byte sequences reuse offset.
    Empirical: 23-parsing.wasm -61 bytes (17 LSTRs → 14 unique), 22-format-output -20, stdlib -9. Cap = 1024 strings.
  - [DEFER] If-chain dispatch loop → br_table. Substantial refactor: would require buffering all label bodies and emitting in
    reverse nesting order so they sit inside nested (block) ladders. Engines compile current emit to a test+branch+set already;
    marginal gain except on huge functions.
  - [DEFER] Two-pass OCODE walk via register_entries. Not a bug — scales fine to current sizes. Could stream label collection.
  - [OK] Module prelude: one (module ...) per codegenerate() call; imports + elem emitted once.
  - [DEFER] Source-map / DWARF. Substantial work; s_line debug comment already in place as a starting point.

  Build / tooling
  - [DONE] npm test entry point in site/package.json. Runs test-globals + test-headers + test-examples (new).
  - [DONE] test-examples.mjs: instantiates all 34 example .wasm against master.wasm; runs 29 of them; output-checks any with a
    sibling .expected golden file. Browser-only examples (stdin/argv/asyncify/SDL) skip run.
  - [DONE] .gitignore decision: site/examples/*.{wat,wasm} are committed (pages branch consumes them directly, no build step).
  - [DEFER] site/build.sh portability: still needs bin/cintsys + BCPLROOT env. Bootstrap documented in CLAUDE.md. Could add a
    GitHub Action that builds cintsys + bcplwasm + examples on push for fresh clones to pick up.

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
