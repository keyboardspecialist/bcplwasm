// 70-heli: classic side-scrolling helicopter game.
//
// Hold SPACE to climb, release to fall. Dodge the cave ceiling/floor
// and the occasional column. Distance is your score; press SPACE
// after crashing to retry. Esc quits.
//
// This is the simplest playable shape: a single-screen scroller with
// per-column terrain in a ring buffer, fixed-step physics (gravity +
// thrust + clamp), AABB collisions, and a hand-drawn 5-segment digit
// renderer for the on-canvas score. No textures, no audio — just
// rectangles + drawline for the rotor wash and crashed flames.
//
// Source of the genre: "Helicopter Game" (2004, Fun-Motion / Flash).
// Same one-button hover-and-dodge loop.

SECTION "heli"

GET "libhdr"
GET "sdl"

MANIFEST {
  W = 640
  H = 360
  HELI_X = 90
  HELI_W = 36
  HELI_H = 14
  // Physics in tenths of a pixel — heli_y / heli_vy are scaled x10
  // so we can use sub-pixel accel without floats. /10 for display.
  GRAVITY = 4     // tenths/frame added to vy while falling
  THRUST  = -7    // tenths/frame subtracted from vy while space held
  VY_CAP  = 55    // tenths/frame
  CAVE_LEN = 640                // ring-buffer width = visible width
  GAP_INIT = 220
  GAP_MIN  = 100                // narrows over time
  GAP_SHRINK_EVERY = 1200       // frames per shrink tick
  KEYCAP = 256
  K_SPACE = 32
  K_ESC   = 27
  K_R     = 82
}

STATIC {
  surf = 0
  keys = 0
  running = 1

  // Cave: parallel ring buffers, ceiling y / floor y per column.
  ceil_v = 0
  floor_v = 0
  scroll_off = 0                // global column index of the LEFT edge of screen

  // Drift target — we lerp the cave openings toward (top_t, bot_t)
  // and pick a fresh target every drift_t frames. Gives a smooth
  // organic cave instead of jagged column-by-column noise.
  top_t = 60
  bot_t = 300
  drift_t = 0
  gap_size = GAP_INIT

  // Player.
  heli_y  = 0
  heli_vy = 0
  alive   = 1
  blade_phase = 0

  // Scoring + RNG.
  score = 0
  hi_score = 0
  rseed = 1

  // Colours (set in init_colours after sdl_setvideomode).
  bg_col = 0
  cave_col = 0
  cave_edge_col = 0
  heli_col = 0
  blade_col = 0
  text_col = 0
  flame_col = 0
}

LET rand() = VALOF
{ rseed := (rseed * 1103515245 + 12345) & #x7FFFFFFF
  RESULTIS rseed
}

// uniform int in [lo..hi] inclusive
LET rand_in(lo, hi) = lo + (rand() REM (hi - lo + 1))

LET poll_events() BE
{ LET ev = VEC 7
  WHILE sys(Sys_sdl, sdl_pollevent, ev) DO
  { LET et = ev!0
    LET ch = ev!2
    TEST et = sdle_keydown
    THEN { IF ch >= 0 & ch < KEYCAP DO keys!ch := 1
           IF ch = K_ESC DO running := 0
         }
    ELSE IF et = sdle_keyup DO
         IF ch >= 0 & ch < KEYCAP DO keys!ch := 0
    IF et = sdle_quit DO running := 0
  }
}

LET key_down(k) = k >= 0 & k < KEYCAP -> keys!k, 0

// Pick fresh drift target every drift_t frames; lerp current top/bot
// toward it one pixel per frame. Returns (top, bot) via the ring at
// global column `gx`.
// Track running ceiling/floor in tenths of a pixel so we can step
// by fractional amounts — gives genuinely curvy terrain instead of
// the visible /2 staircase the old integer lerp produced.
STATIC { cur_c10 = 0; cur_f10 = 0 }

// Pick a fresh target every drift_t frames and emit the next column.
// Two layers: a slow piecewise-linear baseline (cur_c10 lerping
// toward top_t) and a high-frequency hash jitter added per-column.
// Jitter has no temporal correlation — that's what kills the
// "rolling hill" linear look.
LET write_column(gx) BE
{ LET idx   = gx REM CAVE_LEN
  LET slope = 0
  IF drift_t <= 0 DO
  { drift_t := rand_in(10, 35)              // short cycles = busy terrain
    // Free target pick — span almost full screen.
    top_t := rand_in(10, H - gap_size - 20)
    bot_t := top_t + gap_size + rand_in(-30, 80)
    IF bot_t > H - 10     DO bot_t := H - 10
    IF bot_t < top_t + 70 DO bot_t := top_t + 70
  }
  drift_t := drift_t - 1

  // Variable slope per cycle, scaled by remaining distance — so big
  // jumps catch up fast, small ones slowly.  Tenths/frame.
  slope := (top_t * 10 - cur_c10) / 8
  cur_c10 := cur_c10 + slope
  slope := (bot_t * 10 - cur_f10) / 8
  cur_f10 := cur_f10 + slope

  // Per-column hash jitter: deterministic, varies wildly between
  // adjacent columns -> jagged silhouette. Tune the &mask + scaling
  // to taste; current values give ±18 px ceiling, ±14 px floor.
  { LET h1 = (gx * 2654435761) >> 16
    LET h2 = (gx * 1597334677) >> 16
    LET ceil_px = (cur_c10 / 10) + ((h1 & 63) - 31) / 2
    LET fl_px   = (cur_f10 / 10) + ((h2 & 63) - 31) / 2
    IF ceil_px < 4       DO ceil_px := 4
    IF fl_px   > H - 4   DO fl_px   := H - 4
    IF fl_px - ceil_px < 60 DO fl_px := ceil_px + 60
    ceil_v!idx  := ceil_px
    floor_v!idx := fl_px
  }
}

// Seed the first screen worth of columns by stepping the generator.
LET seed_cave() BE
{ FOR i = 0 TO CAVE_LEN - 1 DO
  { ceil_v!i  := top_t
    floor_v!i := bot_t
  }
  FOR i = 0 TO CAVE_LEN - 1 DO write_column(i)
}

LET reset_game() BE
{ heli_y       := (H / 2) * 10    // x10 fixed-point
  heli_vy      := 0
  alive        := 1
  scroll_off   := 0
  top_t        := 60
  bot_t        := H - 60
  cur_c10      := top_t * 10
  cur_f10      := bot_t * 10
  drift_t      := 0
  gap_size     := GAP_INIT
  score        := 0
  seed_cave()
}

// ---------- digit rendering (5x7 cells, 4-px-wide bars) -------------
// Pattern table: one bit per cell, row-major (5 cols x 7 rows = 35).
// We render at scale S, so a digit occupies (5*S) by (7*S) pixels.

STATIC { digit_pat = 0 }

LET digit_table_init() BE
{ digit_pat := getvec(10 * 7)
  // Each entry = 5-bit row mask, MSB is leftmost column.
  // 0
  digit_pat!(0*7+0) := 2_01110
  digit_pat!(0*7+1) := 2_10001
  digit_pat!(0*7+2) := 2_10011
  digit_pat!(0*7+3) := 2_10101
  digit_pat!(0*7+4) := 2_11001
  digit_pat!(0*7+5) := 2_10001
  digit_pat!(0*7+6) := 2_01110
  // 1
  digit_pat!(1*7+0) := 2_00100
  digit_pat!(1*7+1) := 2_01100
  digit_pat!(1*7+2) := 2_00100
  digit_pat!(1*7+3) := 2_00100
  digit_pat!(1*7+4) := 2_00100
  digit_pat!(1*7+5) := 2_00100
  digit_pat!(1*7+6) := 2_01110
  // 2
  digit_pat!(2*7+0) := 2_01110
  digit_pat!(2*7+1) := 2_10001
  digit_pat!(2*7+2) := 2_00001
  digit_pat!(2*7+3) := 2_00010
  digit_pat!(2*7+4) := 2_00100
  digit_pat!(2*7+5) := 2_01000
  digit_pat!(2*7+6) := 2_11111
  // 3
  digit_pat!(3*7+0) := 2_11110
  digit_pat!(3*7+1) := 2_00001
  digit_pat!(3*7+2) := 2_00001
  digit_pat!(3*7+3) := 2_01110
  digit_pat!(3*7+4) := 2_00001
  digit_pat!(3*7+5) := 2_00001
  digit_pat!(3*7+6) := 2_11110
  // 4
  digit_pat!(4*7+0) := 2_00010
  digit_pat!(4*7+1) := 2_00110
  digit_pat!(4*7+2) := 2_01010
  digit_pat!(4*7+3) := 2_10010
  digit_pat!(4*7+4) := 2_11111
  digit_pat!(4*7+5) := 2_00010
  digit_pat!(4*7+6) := 2_00010
  // 5
  digit_pat!(5*7+0) := 2_11111
  digit_pat!(5*7+1) := 2_10000
  digit_pat!(5*7+2) := 2_11110
  digit_pat!(5*7+3) := 2_00001
  digit_pat!(5*7+4) := 2_00001
  digit_pat!(5*7+5) := 2_10001
  digit_pat!(5*7+6) := 2_01110
  // 6
  digit_pat!(6*7+0) := 2_00110
  digit_pat!(6*7+1) := 2_01000
  digit_pat!(6*7+2) := 2_10000
  digit_pat!(6*7+3) := 2_11110
  digit_pat!(6*7+4) := 2_10001
  digit_pat!(6*7+5) := 2_10001
  digit_pat!(6*7+6) := 2_01110
  // 7
  digit_pat!(7*7+0) := 2_11111
  digit_pat!(7*7+1) := 2_00001
  digit_pat!(7*7+2) := 2_00010
  digit_pat!(7*7+3) := 2_00100
  digit_pat!(7*7+4) := 2_01000
  digit_pat!(7*7+5) := 2_01000
  digit_pat!(7*7+6) := 2_01000
  // 8
  digit_pat!(8*7+0) := 2_01110
  digit_pat!(8*7+1) := 2_10001
  digit_pat!(8*7+2) := 2_10001
  digit_pat!(8*7+3) := 2_01110
  digit_pat!(8*7+4) := 2_10001
  digit_pat!(8*7+5) := 2_10001
  digit_pat!(8*7+6) := 2_01110
  // 9
  digit_pat!(9*7+0) := 2_01110
  digit_pat!(9*7+1) := 2_10001
  digit_pat!(9*7+2) := 2_10001
  digit_pat!(9*7+3) := 2_01111
  digit_pat!(9*7+4) := 2_00001
  digit_pat!(9*7+5) := 2_00010
  digit_pat!(9*7+6) := 2_01100
}

LET draw_digit(d, x, y, s, col) BE
{ IF d < 0 | d > 9 RETURN
  FOR row = 0 TO 6 DO
  { LET mask = digit_pat!(d*7 + row)
    FOR cx = 0 TO 4 DO
      // BCPL `&` in IF is short-circuit logical AND, NOT bitwise —
      // bare `mask & flag ~= 0` parses as `mask AND (flag~=0)`.
      // Parenthesise the bitwise test so we actually probe one bit.
      IF (mask & (1 << (4 - cx))) ~= 0 DO
        sys(Sys_sdl, sdl_drawfillrect, surf,
            x + cx*s, y + row*s, x + (cx+1)*s, y + (row+1)*s, col)
  }
}

LET draw_number(n, x, y, s, col) BE
{ LET buf = VEC 12
  LET len = 0
  LET v = n
  IF v < 0 DO v := 0
  IF v = 0 DO { buf!0 := 0; len := 1 }
  WHILE v > 0 DO
  { buf!len := v REM 10
    v := v / 10
    len := len + 1
  }
  // buf has digits in reverse — draw from rightmost slot back.
  FOR i = 0 TO len - 1 DO
    draw_digit(buf!(len - 1 - i), x + i*(5*s + s), y, s, col)
}

// ---------- main loop ------------------------------------------------

LET init_colours() BE
{ bg_col        := sys(Sys_sdl, sdl_maprgb, 0,  20,  24,  40)
  cave_col      := sys(Sys_sdl, sdl_maprgb, 0,  80, 120,  90)
  cave_edge_col := sys(Sys_sdl, sdl_maprgb, 0, 140, 200, 150)
  heli_col      := sys(Sys_sdl, sdl_maprgb, 0, 220, 220,  70)
  blade_col     := sys(Sys_sdl, sdl_maprgb, 0, 200, 200, 200)
  text_col      := sys(Sys_sdl, sdl_maprgb, 0, 240, 240, 240)
  flame_col     := sys(Sys_sdl, sdl_maprgb, 0, 240, 140,  40)
}

LET draw_world() BE
{ LET hy = heli_y / 10        // convert tenths → pixels for draw
  sys(Sys_sdl, sdl_fillsurf, surf, bg_col)
  // Cave columns — top + bottom rectangles per screen x.
  FOR x = 0 TO W - 1 DO
  { LET idx = (scroll_off + x) REM CAVE_LEN
    LET cy  = ceil_v!idx
    LET fy  = floor_v!idx
    sys(Sys_sdl, sdl_drawfillrect, surf, x, 0,  x+1, cy, cave_col)
    sys(Sys_sdl, sdl_drawfillrect, surf, x, fy, x+1, H,  cave_col)
    // 2-px highlight band on each surface edge so the jagged
    // silhouette reads clearly against the bg.
    sys(Sys_sdl, sdl_drawfillrect, surf, x, cy - 2, x+1, cy, cave_edge_col)
    sys(Sys_sdl, sdl_drawfillrect, surf, x, fy, x+1, fy + 2, cave_edge_col)
  }

  // Helicopter body.
  sys(Sys_sdl, sdl_drawfillrect, surf,
      HELI_X, hy, HELI_X + HELI_W, hy + HELI_H, heli_col)
  // Tail boom.
  sys(Sys_sdl, sdl_drawfillrect, surf,
      HELI_X - 12, hy + HELI_H/2 - 2,
      HELI_X, hy + HELI_H/2 + 2, heli_col)
  // Tail rotor.
  sys(Sys_sdl, sdl_drawfillrect, surf,
      HELI_X - 14, hy + HELI_H/2 - 5,
      HELI_X - 11, hy + HELI_H/2 + 5, blade_col)
  // Main rotor (animated thick line above body).
  { LET rx0 = HELI_X - 6
    LET rx1 = HELI_X + HELI_W + 6
    LET ry  = hy - 5
    TEST blade_phase < 2
    THEN sys(Sys_sdl, sdl_drawfillrect, surf, rx0, ry-1, rx1, ry+1, blade_col)
    ELSE sys(Sys_sdl, sdl_drawfillrect, surf,
             (rx0+rx1)/2 - 2, ry - 4, (rx0+rx1)/2 + 2, ry + 4, blade_col)
  }

  // Flames if dead.
  UNLESS alive DO
    FOR k = 0 TO 3 DO
      sys(Sys_sdl, sdl_drawfillrect, surf,
          HELI_X + (rand() REM HELI_W),
          hy - 8 - (rand() REM 12),
          HELI_X + (rand() REM HELI_W) + 6,
          hy - 2,
          flame_col)

  // Score (top-left). Scale-2 digits ~ 10×14 each.
  draw_number(score, 12, 12, 2, text_col)

  // High-score (top-right).
  draw_number(hi_score, W - 100, 12, 2, blade_col)

  sys(Sys_sdl, sdl_flip, surf)
}

LET start() = VALOF
{ ceil_v  := getvec(CAVE_LEN)
  floor_v := getvec(CAVE_LEN)
  keys    := getvec(KEYCAP)
  FOR i = 0 TO KEYCAP - 1 DO keys!i := 0
  digit_table_init()

  sys(Sys_sdl, sdl_init)
  surf := sys(Sys_sdl, sdl_setvideomode, W, H, 0, 0)
  init_colours()

  reset_game()

  WHILE running DO
  { LET space = 0
    poll_events()
    space := key_down(K_SPACE)

    TEST alive
    THEN { // Physics.
           TEST space
           THEN heli_vy := heli_vy + THRUST
           ELSE heli_vy := heli_vy + GRAVITY
           IF heli_vy >  VY_CAP DO heli_vy :=  VY_CAP
           IF heli_vy < -VY_CAP DO heli_vy := -VY_CAP
           heli_y := heli_y + heli_vy

           // Scroll cave one column to the left and refresh the
           // newly-revealed rightmost column.
           scroll_off := scroll_off + 1
           write_column(scroll_off + W - 1)

           // Difficulty: shrink the cave gap every N frames.
           IF (score REM GAP_SHRINK_EVERY) = 0 & gap_size > GAP_MIN DO
             gap_size := gap_size - 4

           // Collision: walk a few columns under the helicopter and
           // test against ceiling / floor. Cheap because HELI_W is tiny.
           { LET hy0 = heli_y / 10
             LET hy1 = (heli_y / 10) + HELI_H
             FOR sx = 0 TO HELI_W DO
             { LET idx = (scroll_off + HELI_X + sx) REM CAVE_LEN
               IF hy0 < ceil_v!idx | hy1 > floor_v!idx DO alive := 0
             }
           }

           score := score + 1
           blade_phase := (blade_phase + 1) & 3
         }
    ELSE { // Dead — wait for SPACE to restart.
           IF space DO
           { IF score > hi_score DO hi_score := score
             reset_game()
           }
         }

    draw_world()
    delay(16)
  }

  freevec(ceil_v); freevec(floor_v); freevec(keys); freevec(digit_pat)
  RESULTIS 0
}
