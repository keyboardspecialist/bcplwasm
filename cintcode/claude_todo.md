 Correctness gaps                                                                                                                  
  - s_selst stub — emits TODO comment, wrong result. Implement proper field store via load/mask/shift/or/store.
  - s_goto (computed goto) stubbed with unreachable. Need label-indirect branch — could use indirect through $__lab table or trap.  
  - s_fmod no direct Wasm op. Needs software impl or import from host.                                                            
  - LSTR alignment — strings packed 4-per-word little-endian; untested for endian/padding edge cases.                               
  - 64-bit target support unverified. emit_p_addr hardcodes shl 2 (word=4 bytes). Needs T64 branch → shl 3 + i64 everywhere.        
  - s_stack load-up assumes memory contains valid words. Undefined if STORE never ran for those slots. Currently works by accident  
  (zero-init memory).                                                                                                               
                                                                                                                                    
  Semantic polish                                                                                                                   
  - s_res/s_rstack pair: uses $t0 as scratch — collides with FNRN also using $t0. Pick dedicated scratch local.                     
  - Implicit trailing FNRN after explicit FNRN emits dead code. Detect terminated and skip.                                         
  - s_comment format: bcplfecg.h says "up to newline" but prescan treats length-prefixed. Verify against actual frontend emission,
  fix if mismatched.                                                                                                                
  - LF of stdlib function (e.g., user does LET p = writef): currently resolves to user ftab, missing stdlib. Add stdlib label       
  lookup.                                                                                                                           
                                                                                                                                    
  Missing ops / features                                    
  - s_section/s_needs emits skip. Could emit ;; section comment for readability.                                                    
  - s_line (source position marker) ignored. Could emit as ;; line N for debug mapping.                                             
  - Pattern-match / MCPL extensions: s_match, s_every, s_patfndef, etc. — unlikely needed, but DEFAULT traps.                       
  - s_endfor legacy — currently hits DEFAULT. Add as no-op.                                                                         
                                                                                                                                    
  Runtime / stdlib                                                                                                                  
  - Only 7 imports wired (stop, rdch, wrch, newline, writen, writes, writef). Add: getvec/freevec, muldiv, stop with code,          
  findoutput/findinput, selectoutput, rdbin/wrbin, random.                                                                          
  - No stdin in JS runtime. imp_rdch returns −1. Wire to textarea or prompt.
  - No heap. BCPL programs using getvec would need linear-memory allocator.                                                         
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
  - CLAUDE.md doesn't mention wasm backend. Add build/run steps.                                                                    
  - No README for the wasm backend explaining calling convention, memory layout, import contract.                                   
  - site/README.md missing — needed for GitHub Pages landing.                                    
                                                                                                                                    
  Future (cintwasm direction)                                                                                                       
  - Emscripten build of cintsys → in-browser BCPL CLI.                                                                              
  - wabt-js integration → live compile-and-run.                                                                                     
  - Replace Cintcode interpreter with direct Wasm codegen (current path) → drop fasterp.o dependency long-term.                     
  - Multiple memories (BCPL stack separate from linear memory) for safety.                                                          
  - Exception-based stop() cleaner than JS throw.          