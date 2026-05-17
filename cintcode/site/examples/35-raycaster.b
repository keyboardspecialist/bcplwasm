// 35-raycaster: Wolfenstein-style flat-shaded raycaster.
//
// Concepts:
//   - 8x8 wall grid stored as a TABLE of 0/1.
//   - Player position in 1024-per-cell fixed-point.
//   - Per-column ray cast by marching in 1/32-cell steps until a wall
//     cell is entered.
//   - Wall slice height = projection_constant / hit_distance.
//   - Flat shading by distance (no texture mapping yet).
//   - sin/cos baked at startup into 1024-entry fixed-point tables via
//     a BCPL Taylor implementation.
//   - delay() yields to the browser between frames so the canvas
//     repaints.

SECTION "raycast"

GET "libhdr"
GET "sdl"

MANIFEST {
  W        = 320
  H        = 240
  MAP      = 8        // map is MAP x MAP cells
  STRIDE   = 2        // pixel width of one ray column (W/STRIDE rays/frame)
  ANG      = 1024     // angle ticks per full circle
  FOV      = 171      // ~60 degrees in 1024-tick units
  FRAMES   = 600
  PROJ     = 7000     // distance->height projection scale (tuned for H=240)
  STEP_DIV = 32       // ray march granularity: STEP_DIV steps per cell
}

STATIC {
  wmap   = 0       // pointer to a TABLE built in start()
  sin_t  = 0
  cos_t  = 0
  surf   = 0
  sky_c  = 0
  floor_c = 0
}

// Taylor sin good for |x| <= pi after range reduction.
LET fsin(x) = VALOF
{ LET pi, twopi, x2, t, s = 0, 0, 0, 0, 0
  pi    #:= 3.14159265358979
  twopi #:= 2.0 #* pi
  WHILE x #>  pi DO x #:= x #- twopi
  WHILE x #<  0.0 #- pi DO x #:= x #+ twopi
  x2 #:= x #* x
  t  #:= x
  s  #:= t
  t #:= 0.0 #- (t #* x2) #/ 6.0;   s #:= s #+ t
  t #:= 0.0 #- (t #* x2) #/ 20.0;  s #:= s #+ t
  t #:= 0.0 #- (t #* x2) #/ 42.0;  s #:= s #+ t
  t #:= 0.0 #- (t #* x2) #/ 72.0;  s #:= s #+ t
  RESULTIS s
}

LET fcos(x) = VALOF
{ LET pi2 = 0
  pi2 #:= 1.5707963267948966
  RESULTIS fsin(x #+ pi2)
}

// Populate sin_t and cos_t with values * 1024 (fixed-point).
LET buildtrig() BE
{ LET a, step, sv, cv = 0, 0, 0, 0
  a    #:= 0.0
  step #:= (2.0 #* 3.14159265358979) #/ 1024.0
  FOR i = 0 TO 1023 DO
  { sv #:= fsin(a) #* 1024.0
    cv #:= fcos(a) #* 1024.0
    sin_t!i := FIX sv
    cos_t!i := FIX cv
    a #:= a #+ step
  }
}

// March ray from (px, py) at integer-tick angle until a wall cell is
// entered. Returns step count (1..MAX) — proportional to distance.
// px, py are in 1024-per-cell fixed-point.
LET cast(px, py, angle) = VALOF
{ LET dx = cos_t!(angle & (ANG-1))    // (-1024..+1024)
  LET dy = sin_t!(angle & (ANG-1))
  LET ix = dx / STEP_DIV               // increment per step (1/STEP_DIV cell)
  LET iy = dy / STEP_DIV
  LET x = px
  LET y = py
  FOR step = 1 TO 1024 DO
  { x := x + ix
    y := y + iy
    { LET cx = x / 1024
      LET cy = y / 1024
      IF cx < 0 | cx >= MAP | cy < 0 | cy >= MAP RESULTIS step
      IF wmap!(cy * MAP + cx) RESULTIS step
    }
  }
  RESULTIS 1024
}

// Distance -> packed RGB. Closer = brighter brick.
LET shade(d) = VALOF
{ LET v = 230 - d
  IF v < 32 DO v := 32
  RESULTIS sys(Sys_sdl, sdl_maprgb, 0, v, v / 2, v / 4)
}

// One frame: clear sky/floor, raycast every STRIDE-wide column.
LET drawframe(px, py, pa) BE
{ // Sky (top half) + floor (bottom half).
  sys(Sys_sdl, sdl_drawfillrect, surf, 0, 0,     W, H/2, sky_c)
  sys(Sys_sdl, sdl_drawfillrect, surf, 0, H/2,   W, H/2, floor_c)

  FOR col = 0 TO W - 1 BY STRIDE DO
  { // Ray angle for this column. Linear sweep across FOV.
    LET rayA = pa + (col - W/2) * FOV / W
    LET d = cast(px, py, rayA)
    LET h = PROJ / d
    IF h > H DO h := H
    { LET top = (H - h) / 2
      sys(Sys_sdl, sdl_drawfillrect,
          surf, col, top, STRIDE, h, shade(d))
    }
  }
  sys(Sys_sdl, sdl_flip, surf)
}

LET start() = VALOF
{ // BCPL: all LET declarations must come before any commands.
  LET px = 3 * 1024 + 512          // start cell (3, 5), centred
  LET py = 5 * 1024 + 512
  LET pa = 0                       // facing +x

  wmap := TABLE
    1, 1, 1, 1, 1, 1, 1, 1,
    1, 0, 0, 0, 1, 0, 0, 1,
    1, 0, 1, 0, 0, 0, 0, 1,
    1, 0, 1, 1, 1, 1, 0, 1,
    1, 0, 0, 0, 0, 1, 0, 1,
    1, 0, 1, 1, 0, 1, 0, 1,
    1, 0, 1, 0, 0, 0, 0, 1,
    1, 1, 1, 1, 1, 1, 1, 1

  sys(Sys_sdl, sdl_init)
  surf := sys(Sys_sdl, sdl_setvideomode, W, H, 0, 0)

  sky_c   := sys(Sys_sdl, sdl_maprgb, 0,  60, 120, 200)
  floor_c := sys(Sys_sdl, sdl_maprgb, 0,  50,  50,  50)

  sin_t := getvec(ANG)
  cos_t := getvec(ANG)
  buildtrig()

  FOR frame = 1 TO FRAMES DO
  { drawframe(px, py, pa)

    // Walk forward by ~1/4 cell. If next cell is a wall, swing 90°.
    { LET dx = cos_t!(pa & (ANG-1)) / 4
      LET dy = sin_t!(pa & (ANG-1)) / 4
      LET nx = px + dx
      LET ny = py + dy
      LET cx = nx / 1024
      LET cy = ny / 1024
      TEST cx < 0 | cx >= MAP | cy < 0 | cy >= MAP | wmap!(cy*MAP+cx)
      THEN pa := (pa + 256) & (ANG-1)
      ELSE { px := nx; py := ny }
    }

    // Small ambient rotation so the camera keeps drifting.
    pa := (pa + 3) & (ANG-1)

    delay(16)
  }

  freevec(sin_t)
  freevec(cos_t)
  writef("done %n frames*n", FRAMES)
  RESULTIS 0
}
