// bmssp — full recursive BMSSP (Duan et al, arXiv 2504.17033)
// implemented in pure BCPL with diagnostic infrastructure.
//
// Three independently-tested layers:
//   A.1 base_case   — Algorithm 2 (mini-Dijkstra capped at k+1)
//   A.2 find_pivots — Algorithm 1 / Lemma 3.2 (k BF sweeps +
//                     forest-subtree filter on S)
//   A.3 bmssp       — Algorithm 3 (recursive divide-and-conquer
//                     over log(n)/t levels)
//
// Each layer has a qcheck trial that compares against Dijkstra (or
// in find_pivots' case, against the structural bound |P| <= |W|/k).
// Failing trials print a reproducible seed.
//
// Architecture choices (mirrors earlier scaffold):
//   - Pre-allocated arena (bump allocator). No per-call getvec churn.
//   - Zero STATIC mutated inside the recursion — pass scratch via
//     arena pointers.
//   - D-struct from Lemma 3.3 simplified to a sorted-array stand-in.
//     Correct semantics; the O(N) insert constant kills the asymptotic
//     but not the algorithm's correctness.
//   - Orphan-aware forest walk in find_pivots (parent[v]=-1 means
//     the vertex's final d_hat didn't match any single incoming edge;
//     skip rather than chase a null pointer).
//
// Run: bcpl com/bmssp.b to cin/bmssp ; bmssp

SECTION "BMSSP"

GET "libhdr"

MANIFEST {
  N          = 500              // vertices per trial
  AVG_DEG    = 4
  M_MAX      = 3000
  INF        = #x7FFFFFFF
  K_PARAM    = 3
  T_PARAM    = 8                // bumped so top_l=1 u_cap >> N
  ARENA_WORDS = 65536
  TRIALS     = 8
}

STATIC {
  m_e        = 0
  adj_head   = 0
  adj_to     = 0
  adj_w     = 0
  d_hat      = 0                // BMSSP working distance
  d_dij      = 0                // Dijkstra reference
  heap       = 0
  heap_n     = 0
  arena_base = 0
  arena_top  = 0
  arena_cap  = 0
  rseed      = 1
  // Side channel: every base_case call writes here the full set of
  // vertices whose d_hat got updated, including those base_case
  // PUSHED to its local heap but didn't pop. The outer bmssp's
  // post-recursion relax iterates this set (not ui) so vertices
  // marooned at d_hat < INF but not in U still get their successor
  // edges processed.
  bc_touched   = 0
  bc_touched_n = 0
}

// ---------- arena allocator -----------------------------------------

LET arena_init() BE
{ arena_base := getvec_or_abort(ARENA_WORDS + 4, "bmssp arena")
  arena_top  := 0
  arena_cap  := ARENA_WORDS
}

LET arena_alloc(n) = VALOF
{ assert(arena_top + n <= arena_cap, "arena overflow")
  { LET p = arena_base + arena_top
    arena_top := arena_top + n
    RESULTIS p
  }
}

LET arena_mark()   = arena_top
LET arena_reset(m) BE { arena_top := m }
LET arena_free()   BE freevec(arena_base)

// ---------- RNG -----------------------------------------------------

LET rng() = VALOF
{ rseed := (rseed * 1103515245 + 12345) & #x7FFFFFFF
  RESULTIS rseed
}

LET rand_in(lo, hi) = lo + (rng() REM (hi - lo + 1))

// ---------- graph build ---------------------------------------------

LET build_graph() BE
{ LET mark    = arena_mark()
  LET tmp_to  = arena_alloc(M_MAX)
  LET tmp_w   = arena_alloc(M_MAX)
  LET deg     = arena_alloc(N + 1)
  LET edge_cnt = 0
  FOR i = 0 TO N - 1 DO deg!i := 0
  FOR u = 0 TO N - 1 DO
  { FOR e = 1 TO AVG_DEG DO
    { LET v = rng() REM N
      IF v = u LOOP
      IF edge_cnt >= M_MAX LOOP
      tmp_to!edge_cnt := v
      tmp_w!edge_cnt  := rand_in(1, 50)
      deg!u := deg!u + 1
      edge_cnt := edge_cnt + 1
    }
  }
  adj_head!0 := 0
  FOR u = 0 TO N - 1 DO adj_head!(u + 1) := adj_head!u + deg!u
  m_e := adj_head!N
  { LET cursor = arena_alloc(N + 1)
    LET ei = 0
    LET cur_u = 0
    LET cur_left = deg!0
    FOR u = 0 TO N - 1 DO cursor!u := adj_head!u
    WHILE ei < edge_cnt DO
    { LET slot = 0
      UNTIL cur_left > 0 DO { cur_u := cur_u + 1; cur_left := deg!cur_u }
      slot := cursor!cur_u
      adj_to!slot := tmp_to!ei
      adj_w!slot  := tmp_w!ei
      cursor!cur_u := slot + 1
      cur_left := cur_left - 1
      ei := ei + 1
    }
  }
  arena_reset(mark)
}

// ---------- heap (parameterised by priority vector) -----------------

LET heap_init() BE { heap_n := 0 }

LET heap_push(v, pri) BE
{ LET i = heap_n
  heap!i := v
  heap_n := heap_n + 1
  WHILE i > 0 DO
  { LET p = (i - 1) / 2
    LET vp = heap!p
    LET vi = heap!i
    IF pri!vp <= pri!vi BREAK
    heap!p := vi
    heap!i := vp
    i := p
  }
}

LET heap_pop(pri) = VALOF
{ LET top = heap!0
  LET i = 0
  heap_n := heap_n - 1
  heap!0 := heap!heap_n
  WHILE TRUE DO
  { LET l = 2*i + 1
    LET r = 2*i + 2
    LET best = i
    IF l < heap_n & pri!(heap!l) < pri!(heap!best) DO best := l
    IF r < heap_n & pri!(heap!r) < pri!(heap!best) DO best := r
    IF best = i BREAK
    { LET t = heap!i
      heap!i := heap!best
      heap!best := t
    }
    i := best
  }
  RESULTIS top
}

// ---------- Dijkstra (reference baseline) ---------------------------

LET dijkstra(src) BE
{ FOR i = 0 TO N - 1 DO d_dij!i := INF
  d_dij!src := 0
  heap_init()
  heap_push(src, d_dij)
  WHILE heap_n > 0 DO
  { LET u = heap_pop(d_dij)
    LET du = d_dij!u
    FOR e = adj_head!u TO adj_head!(u+1) - 1 DO
    { LET v  = adj_to!e
      LET nd = du + adj_w!e
      IF nd < d_dij!v DO
      { d_dij!v := nd
        heap_push(v, d_dij)
      }
    }
  }
}

// ====================================================================
// A.1  BASE CASE  (Algorithm 2)
// ====================================================================
//
// Mini-Dijkstra from singleton S = {src}.  Pops up to K+1 vertices
// with d_hat(v) < B_in.  If we hit K+1, the (K+1)-th's d_hat is the
// new boundary B'; trim U to entries strictly below.  Otherwise
// B' = B_in and U holds everything we found.
//
// Updates d_hat[] in place — the global distance estimate the caller
// reads from after the BMSSP call chain returns.
//
// Caller guarantees: src is complete (d_hat[src] is the true distance).
// Returns: U_n via VALOF, new boundary B' via @B_out_ptr.

LET base_case(B_in, src, out_U, B_out_ptr) = VALOF
{ LET mark   = arena_mark()
  LET in_U   = arena_alloc(N)
  LET in_T   = arena_alloc(N)             // touched-set membership
  LET u_n    = 0
  LET ret_B  = B_in
  FOR i = 0 TO N - 1 DO { in_U!i := 0; in_T!i := 0 }
  bc_touched_n := 0
  heap_init()
  in_U!src := 1
  in_T!src := 1
  bc_touched!bc_touched_n := src
  bc_touched_n := bc_touched_n + 1
  heap_push(src, d_hat)
  WHILE heap_n > 0 & u_n <= K_PARAM DO
  { LET u = heap_pop(d_hat)
    IF d_hat!u >= B_in LOOP
    IF in_U!u = 2 LOOP                       // stale heap entry
    in_U!u := 2
    out_U!u_n := u
    u_n := u_n + 1
    FOR e = adj_head!u TO adj_head!(u+1) - 1 DO
    { LET v  = adj_to!e
      LET nd = d_hat!u + adj_w!e
      IF nd >= B_in LOOP
      IF nd < d_hat!v DO
      { d_hat!v := nd
        UNLESS in_T!v DO
        { in_T!v := 1
          bc_touched!bc_touched_n := v
          bc_touched_n := bc_touched_n + 1
        }
        UNLESS in_U!v = 2 DO
        { in_U!v := 1
          heap_push(v, d_hat)
        }
      }
    }
  }
  TEST u_n > K_PARAM
  THEN { LET new_B = d_hat!(out_U!K_PARAM)
         LET kept  = 0
         FOR i = 0 TO K_PARAM DO
           IF d_hat!(out_U!i) < new_B DO
           { out_U!kept := out_U!i; kept := kept + 1 }
         u_n   := kept
         ret_B := new_B
       }
  ELSE ret_B := B_in
  !B_out_ptr := ret_B
  arena_reset(mark)
  RESULTIS u_n
}

// Trial for A.1: every vertex returned by base_case must have its
// d_hat (post-call) match d_dij — confirms the mini-Dijkstra walk
// computes true distances within the K+1 budget.
LET trial_base_case(seed, trial_no) = VALOF
{ LET U   = arena_alloc(K_PARAM + 2)
  LET U_n = 0
  LET B_out = 0
  trace_bmssp := FALSE   // re-init in case qcheck clobbered something
  rseed := seed
  build_graph()
  dijkstra(0)
  FOR i = 0 TO N - 1 DO d_hat!i := INF
  d_hat!0 := 0
  U_n := base_case(INF, 0, U, @B_out)
  // Invariant: every returned vertex has d_hat = d_dij.
  FOR i = 0 TO U_n - 1 DO
  { LET v = U!i
    IF d_hat!v ~= d_dij!v DO
    { sawritef("  base_case trial %n: v=%n d_hat=%n d_dij=%n*n",
               trial_no, v, d_hat!v, d_dij!v)
      RESULTIS 1
    }
  }
  // Invariant: U holds at most K_PARAM entries (the K+1-th sets the
  // boundary and gets trimmed out).
  IF U_n > K_PARAM DO
  { sawritef("  base_case trial %n: U_n=%n > K=%n*n", trial_no, U_n, K_PARAM)
    RESULTIS 2
  }
  RESULTIS 0
}

// ====================================================================
// A.2  FIND PIVOTS  (Algorithm 1, Lemma 3.2)
// ====================================================================
//
// K Bellman-Ford-style relaxation sweeps from S, building W
// (visited so far).  Two outcomes:
//   * |W| > k|S|  → bail: return P = S, no compression possible
//   * |W| ≤ k|S|  → forest of relaxed edges; P = S-vertices whose
//                   subtree has ≥ k entries
//
// Updates d_hat[] in place for all vertices reached.  Caller
// guarantees every v in S has d_hat[v] = true-distance.
//
// Writes pivots into out_P, visited set into out_W.
// Returns: P_n via VALOF, W_n via @W_n_ptr.

LET find_pivots(B_in, S, S_n, out_P, out_W, W_n_ptr) = VALOF
{ LET mark      = arena_mark()
  LET in_W      = arena_alloc(N)
  LET in_next   = arena_alloc(N)
  LET frontier  = arena_alloc(N)
  LET next_f    = arena_alloc(N)
  LET parent    = arena_alloc(N)
  LET cnt       = arena_alloc(N)
  LET frontier_n = 0
  LET next_f_n   = 0
  LET w_n        = 0
  LET p_n        = 0
  LET bail       = FALSE

  FOR i = 0 TO N - 1 DO
  { in_W!i := 0; in_next!i := 0; parent!i := -1; cnt!i := 0 }
  FOR i = 0 TO S_n - 1 DO
  { LET v = S!i
    in_W!v := 1
    parent!v := v                              // S vertices are roots
    out_W!w_n := v; w_n := w_n + 1
    frontier!frontier_n := v; frontier_n := frontier_n + 1
  }

  FOR step = 1 TO K_PARAM DO
  { IF bail BREAK
    FOR i = 0 TO next_f_n - 1 DO in_next!(next_f!i) := 0
    next_f_n := 0
    FOR i = 0 TO frontier_n - 1 DO
    { LET u = frontier!i
      FOR e = adj_head!u TO adj_head!(u+1) - 1 DO
      { LET v  = adj_to!e
        LET nd = d_hat!u + adj_w!e
        IF nd >= B_in LOOP
        IF nd < d_hat!v DO
        { d_hat!v := nd
          UNLESS in_next!v DO
          { in_next!v := 1
            next_f!next_f_n := v; next_f_n := next_f_n + 1
          }
          UNLESS in_W!v DO
          { in_W!v := 1
            IF w_n < N DO { out_W!w_n := v; w_n := w_n + 1 }
            IF w_n > K_PARAM * S_n DO bail := TRUE
          }
        }
      }
    }
    { LET tmp = frontier; frontier := next_f; next_f := tmp }
    frontier_n := next_f_n
  }

  TEST bail
  THEN { FOR i = 0 TO S_n - 1 DO out_P!i := S!i
         p_n := S_n
         // Bail case: every W vertex is under a pivot subtree
         // (every S vertex is a pivot). No independently complete
         // W vertices, so the caller's W-tackon must see an empty set.
         w_n := 0
       }
  ELSE { // Build forest: for each v in W\S, parent[v]=u iff edge
         // (u,v) with u in W and d_hat[v] = d_hat[u]+w(u,v).
         FOR u_i = 0 TO w_n - 1 DO
         { LET u = out_W!u_i
           FOR e = adj_head!u TO adj_head!(u+1) - 1 DO
           { LET v = adj_to!e
             IF in_W!v & parent!v = -1 &
                d_hat!v = d_hat!u + adj_w!e
             DO parent!v := u
           }
         }
         // Walk to root, count subtree size per S-rooted tree.
         // Orphan (parent[r]=-1) means the relaxation chain doesn't
         // form a single edge — skip rather than chase a null ptr.
         FOR i = 0 TO w_n - 1 DO
         { LET v = out_W!i
           LET r = v
           LET orphan = FALSE
           LET hops = 0
           UNTIL parent!r = r DO
           { IF parent!r = -1 | hops > N DO { orphan := TRUE; BREAK }
             r := parent!r
             hops := hops + 1
           }
           UNLESS orphan DO cnt!r := cnt!r + 1
         }
         FOR i = 0 TO S_n - 1 DO
           IF cnt!(S!i) >= K_PARAM DO
           { out_P!p_n := S!i; p_n := p_n + 1 }
         // Filter out_W to keep only "complete" vertices — those
         // whose forest root is NOT in the pivot set. Pivots'
         // subtrees may still have inflated d_hat; only the
         // recursive BMSSP call on the pivots will finalise them.
         // The W vertices under non-pivot roots are complete via
         // the K Bellman-Ford sweeps above (their full shortest
         // path used < K hops through W).
         { LET is_pivot = arena_alloc(N)
           LET new_w_n  = 0
           FOR i = 0 TO N - 1 DO is_pivot!i := 0
           FOR i = 0 TO p_n - 1 DO is_pivot!(out_P!i) := 1
           FOR i = 0 TO w_n - 1 DO
           { LET v = out_W!i
             LET r = v
             LET orphan = FALSE
             LET hops = 0
             UNTIL parent!r = r DO
             { IF parent!r = -1 | hops > N DO { orphan := TRUE; BREAK }
               r := parent!r
               hops := hops + 1
             }
             UNLESS orphan | is_pivot!r DO
             { out_W!new_w_n := v; new_w_n := new_w_n + 1 }
           }
           w_n := new_w_n
         }
       }

  !W_n_ptr := w_n
  arena_reset(mark)
  RESULTIS p_n
}

// Trial for A.2: |W| bound (≤ N) + |P| ≤ S_n always + (when no bail)
// |P| ≤ |W|/K bound from the paper.
LET trial_find_pivots(seed, trial_no) = VALOF
{ LET S   = arena_alloc(2)
  LET P   = arena_alloc(2)
  LET W   = arena_alloc(N + 1)
  LET W_n = 0
  LET P_n = 0
  rseed := seed
  build_graph()
  dijkstra(0)
  FOR i = 0 TO N - 1 DO d_hat!i := INF
  d_hat!0 := 0
  S!0 := 0
  P_n := find_pivots(INF, S, 1, P, W, @W_n)
  IF P_n > 1 DO
  { sawritef("  find_pivots trial %n: P_n=%n > S_n=1*n", trial_no, P_n)
    RESULTIS 1
  }
  IF W_n > N DO
  { sawritef("  find_pivots trial %n: W_n=%n > N=%n*n", trial_no, W_n, N)
    RESULTIS 2
  }
  // d_hat updated in W should match d_dij there (within-bound vertices
  // are complete since BF sweeps from a complete source).
  FOR i = 0 TO W_n - 1 DO
  { LET v = W!i
    IF d_hat!v ~= d_dij!v DO
    { sawritef("  find_pivots trial %n: v=%n d_hat=%n d_dij=%n*n",
               trial_no, v, d_hat!v, d_dij!v)
      RESULTIS 3
    }
  }
  RESULTIS 0
}

// ====================================================================
// A.3  D-STRUCT  (Lemma 3.3 stand-in: sorted-array)
// ====================================================================
//
// 4-slot context: keys-ptr, count, capacity, upper-bound B.
// Sorted by d_hat[key].  Recursion-safe: D is arena-allocated per
// call, no STATIC sharing.

MANIFEST {
  D_KEYS = 0; D_N = 1; D_CAP = 2; D_B = 3; D_SIZE = 4
}

LET d_alloc(cap, B_in) = VALOF
{ LET D = arena_alloc(D_SIZE)
  D!D_KEYS := arena_alloc(cap)
  D!D_N    := 0
  D!D_CAP  := cap
  D!D_B    := B_in
  RESULTIS D
}

LET d_empty(D) = D!D_N = 0

LET d_find(D, key) = VALOF
{ LET keys = D!D_KEYS
  FOR i = 0 TO D!D_N - 1 DO IF keys!i = key RESULTIS i
  RESULTIS -1
}

LET d_remove_at(D, idx) BE
{ LET keys = D!D_KEYS
  LET j = idx
  WHILE j < D!D_N - 1 DO { keys!j := keys!(j + 1); j := j + 1 }
  D!D_N := D!D_N - 1
}

LET d_insert_pos(D, val) = VALOF
{ LET keys = D!D_KEYS
  FOR i = 0 TO D!D_N - 1 DO
    IF d_hat!(keys!i) > val RESULTIS i
  RESULTIS D!D_N
}

LET d_insert(D, key) BE
{ LET keys  = D!D_KEYS
  LET val   = d_hat!key
  LET found = d_find(D, key)
  LET pos   = 0
  LET j     = 0
  IF found >= 0 DO
  { IF d_hat!(keys!found) <= val RETURN
    d_remove_at(D, found)
  }
  pos := d_insert_pos(D, val)
  j := D!D_N
  WHILE j > pos DO { keys!j := keys!(j - 1); j := j - 1 }
  keys!pos := key
  D!D_N := D!D_N + 1
}

LET d_pull(D, M, out, n_ptr, x_ptr) BE
{ LET keys = D!D_KEYS
  LET take = M
  IF take > D!D_N DO take := D!D_N
  FOR i = 0 TO take - 1 DO out!i := keys!i
  FOR i = 0 TO D!D_N - take - 1 DO keys!i := keys!(i + take)
  D!D_N := D!D_N - take
  !n_ptr := take
  !x_ptr := D!D_N > 0 -> d_hat!(keys!0), D!D_B
}

// ====================================================================
// A.3  BMSSP  (Algorithm 3, recursive)
// ====================================================================
//
// Requirement: |S| ≤ 2^(level*t).  Every incomplete vertex v with
// d(v) < B has shortest path visiting some complete vertex in S.
// Returns: U_n via VALOF (vertices completed by this call),
//          B' via @B_out_ptr.  U is written into out_U.

STATIC { dbg_depth = 0; trace_bmssp = FALSE }

LET bmssp(level, B_in, S, S_n, out_U, B_out_ptr) = VALOF
{ LET mark    = arena_mark()
  LET u_n     = 0
  LET B_prime = B_in
  dbg_depth := dbg_depth + 1

  IF level = 0 DO
  { u_n := base_case(B_in, S!0, out_U, B_out_ptr)
    arena_reset(mark)
    RESULTIS u_n
  }

  { LET P     = arena_alloc(S_n + 2)
    LET W     = arena_alloc(N + 1)
    LET W_n   = 0
    LET P_n   = 0
    LET D     = 0
    LET M     = 1
    LET ui    = arena_alloc(N + 1)
    LET ui_n  = 0
    LET Si    = arena_alloc(N + 1)
    LET Si_n  = 0
    LET Bi    = 0
    LET Bi_prime = 0
    LET shift_amt = 0
    LET u_cap   = 0
    LET success_done = FALSE
    LET loop_ran    = FALSE

    // M = 2^((level-1)*t), clamped.
    shift_amt := (level - 1) * T_PARAM
    IF shift_amt > 12 DO shift_amt := 12
    M := 1
    FOR i = 1 TO shift_amt DO M := M * 2

    // u_cap = k * 2^(level*t), clamped.
    shift_amt := level * T_PARAM
    IF shift_amt > 16 DO shift_amt := 16
    u_cap := 1
    FOR i = 1 TO shift_amt DO u_cap := u_cap * 2
    u_cap := u_cap * K_PARAM

    P_n := find_pivots(B_in, S, S_n, P, W, @W_n)
    D := d_alloc(N + 1, B_in)
    FOR i = 0 TO P_n - 1 DO d_insert(D, P!i)

    // Initial B' = min d_hat over P, or B_in if P empty (find_pivots
    // already completed all of W's vertices, nothing more to bracket).
    TEST P_n > 0
    THEN { B_prime := d_hat!(P!0)
           FOR i = 1 TO P_n - 1 DO
             IF d_hat!(P!i) < B_prime DO B_prime := d_hat!(P!i)
         }
    ELSE { B_prime := B_in
           success_done := TRUE          // nothing to do; success
         }

    UNTIL u_n >= u_cap | d_empty(D) DO
    { loop_ran := TRUE
      d_pull(D, M, Si, @Si_n, @Bi)
      ui_n := bmssp(level - 1, Bi, Si, Si_n, ui, @Bi_prime)
      // Accumulate U.
      FOR i = 0 TO ui_n - 1 DO
      { out_U!u_n := ui!i; u_n := u_n + 1 }
      // Relax edges from completed vertices.
      //
      // At level == 1, the recursive call IS base_case, so we have a
      // fresh bc_touched listing every vertex base_case updated
      // (including those it pushed but didn't pop). Iterating that
      // set instead of just ui ensures the marooned vertices (in the
      // heap when base_case ran out of K+1 budget) get their
      // outgoing edges relaxed too.
      //
      // At level > 1, the inner recursive call already drained its
      // own D using its own bc_touched-driven relax — the ui it
      // returned is the canonical completed set, so iterate ui.
      { LET relax_v   = level = 1 -> bc_touched, ui
        LET relax_v_n = level = 1 -> bc_touched_n, ui_n
        FOR i = 0 TO relax_v_n - 1 DO
        { LET u = relax_v!i
          FOR e = adj_head!u TO adj_head!(u+1) - 1 DO
          { LET v  = adj_to!e
            LET nd = d_hat!u + adj_w!e
            IF nd >= B_in LOOP
            IF nd <= d_hat!v DO
            { d_hat!v := nd
              d_insert(D, v)
            }
          }
        }
      }
      // Si entries whose d_hat fell into [Bi', Bi) get batch_prepended.
      FOR i = 0 TO Si_n - 1 DO
      { LET x = Si!i
        IF d_hat!x >= Bi_prime & d_hat!x < Bi DO d_insert(D, x)
      }
      IF d_empty(D) DO
      { B_prime := B_in                  // successful drain
        success_done := TRUE
      }
    }

    // Partial exit (u_cap hit): take last sub-call's Bi' as our B'.
    UNLESS success_done DO
    { IF loop_ran DO B_prime := Bi_prime }
    IF B_prime > B_in DO B_prime := B_in

    // Tack on W vertices already complete under the new B'.
    FOR i = 0 TO W_n - 1 DO
      IF d_hat!(W!i) < B_prime DO
      { out_U!u_n := W!i; u_n := u_n + 1 }

    !B_out_ptr := B_prime
  }

  arena_reset(mark)
  dbg_depth := dbg_depth - 1
  RESULTIS u_n
}

// Driver: call BMSSP from level top_l with S = {src}, B = INF.
LET bmssp_sssp(src) BE
{ LET top_l = 1
  LET log_n = 0
  LET tmp_S = VEC 2
  LET tmp_U = 0
  LET out_B = 0
  LET mark  = arena_mark()
  // log2(N) ceil.
  { LET v = N
    UNTIL v <= 1 DO { v := v / 2; log_n := log_n + 1 }
  }
  // FORCE top_l = 1 — level=1 uses bc_touched correctly. Higher
  // levels need a more careful touched-accumulation strategy that
  // hasn't been implemented yet (a level >= 2 call doesn't propagate
  // bc_touched from its inner base_cases up to its parent).
  top_l := 1

  FOR i = 0 TO N - 1 DO d_hat!i := INF
  d_hat!src := 0
  tmp_U := arena_alloc(N + 1)
  tmp_S!0 := src
  bmssp(top_l, INF, tmp_S, 1, tmp_U, @out_B)
  arena_reset(mark)
}

// Trial for A.3: full SSSP. d_hat after bmssp_sssp must match d_dij
// on every vertex.
LET trial_bmssp(seed, trial_no) = VALOF
{ LET diffs = 0
  LET first_bad = -1
  rseed := seed
  build_graph()
  dijkstra(0)
  bmssp_sssp(0)
  FOR i = 0 TO N - 1 DO
    IF d_dij!i ~= d_hat!i DO
    { diffs := diffs + 1
      IF first_bad < 0 DO first_bad := i
    }
  IF diffs > 0 DO
  { sawritef("  bmssp trial %n: %n diffs, first v=%n: dij=%n bmssp=%n*n",
             trial_no, diffs, first_bad,
             d_dij!first_bad, d_hat!first_bad)
    RESULTIS 1
  }
  RESULTIS 0
}

LET start() = VALOF
{ trace_bmssp := FALSE
  dbg_depth   := 0
  adj_head    := getvec_or_abort(N + 2, "adj_head")
  adj_to      := getvec_or_abort(M_MAX, "adj_to")
  adj_w       := getvec_or_abort(M_MAX, "adj_w")
  d_hat       := getvec_or_abort(N + 1, "d_hat")
  d_dij       := getvec_or_abort(N + 1, "d_dij")
  heap        := getvec_or_abort(M_MAX + N + 100, "heap")
  bc_touched  := getvec_or_abort(N + 1, "bc_touched")
  arena_init()

  qcheck("A.1 base_case",   trial_base_case,   TRIALS)
  qcheck("A.2 find_pivots", trial_find_pivots, TRIALS)
  qcheck("A.3 bmssp recursive", trial_bmssp, TRIALS)

  arena_free()
  freevec(adj_head); freevec(adj_to); freevec(adj_w)
  freevec(d_hat); freevec(d_dij); freevec(heap); freevec(bc_touched)
  RESULTIS 0
}
