// 38-raycaster-skyfloor: textured sky panorama, textured ceiling, and
// textured floor on top of 37's textured walls.
//
// Setup (Assets tab):
//   1. brick.png (or stone.png, checker.png) — wall texture
//   2. sky.png                                — horizon panorama
//   3. wood.png                               — ceiling
//   4. stone.png                              — floor
//
// What's new vs 37:
//   - Sys_setbgtex caches sky/floor/ceiling textures once at startup.
//   - Per column we now call Sys_drawskycol (panorama sampled by ray
//     angle) and Sys_drawfloorcol (per-pixel floor + ceiling cast
//     using player pos and per-column ray dir).
//   - The flat sky_c / floor_c fillRects are gone.
//
// Cost: 3 sys boundary crossings per column (sky, floor+ceil, wall) +
// the per-pixel work inside the runtime. At W=960, H=600 that's ~2880
// sys calls/frame; the inner loops are JS and dominate. ~10-20ms/frame
// on a modern laptop.
//
// Controls: W/A/S/D or arrows, Esc quits.

SECTION "raysk"

GET "libhdr"
GET "sdl"

MANIFEST {
  W        = 960
  H        = 600
  MAP      = 8
  STRIDE   = 1
  ANG      = 8192
  FOV      = 1365
  PROJ     = 900000
  MAXSTEP  = 64

  KEYCAP   = 512
  K_LEFT   = 37
  K_UP     = 38
  K_RIGHT  = 39
  K_DOWN   = 40
  K_A      = 65
  K_D      = 68
  K_S      = 83
  K_W      = 87
  K_ESC    = 27

  BG_SKY   = 0
  BG_FLOOR = 1
  BG_CEIL  = 2
}

STATIC {
  wmap    = 0
  sin_t   = 0
  cos_t   = 0
  keys    = 0
  surf    = 0
  running = 1
  tex_base = 0
  tex_w    = 0
  tex_h    = 0
  sky_w    = 0
}

LET fsin(x) = VALOF
{ LET pi, twopi, x2, t, s = 0, 0, 0, 0, 0
  pi    #:= 3.14159265358979
  twopi #:= 2.0 #* pi
  WHILE x #>  pi DO x #:= x #- twopi
  WHILE x #<  (0.0 #- pi) DO x #:= x #+ twopi
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

LET buildtrig() BE
{ LET a, step, sv, cv = 0, 0, 0, 0
  LET fANG = 0
  fANG #:= FLOAT ANG
  a    #:= 0.0
  step #:= (2.0 #* 3.14159265358979) #/ fANG
  FOR i = 0 TO ANG-1 DO
  { sv #:= fsin(a) #* 1024.0
    cv #:= fcos(a) #* 1024.0
    sin_t!i := FIX sv
    cos_t!i := FIX cv
    a #:= a #+ step
  }
}

LET cast(px, py, angle, res) BE
{ LET dx     = cos_t!(angle & (ANG-1))
  LET dy     = sin_t!(angle & (ANG-1))
  LET adx    = ABS dx
  LET ady    = ABS dy
  LET deltaX = 0
  LET deltaY = 0
  LET mapX   = px / 1024
  LET mapY   = py / 1024
  LET stepX  = dx < 0 -> -1, 1
  LET stepY  = dy < 0 -> -1, 1
  LET sideX  = 0
  LET sideY  = 0
  LET side   = 0
  IF adx = 0 DO adx := 1
  IF ady = 0 DO ady := 1
  deltaX := (1024 * 1024) / adx
  deltaY := (1024 * 1024) / ady
  TEST dx < 0
  THEN sideX := ((px - mapX * 1024) * deltaX) / 1024
  ELSE sideX := ((mapX * 1024 + 1024 - px) * deltaX) / 1024
  TEST dy < 0
  THEN sideY := ((py - mapY * 1024) * deltaY) / 1024
  ELSE sideY := ((mapY * 1024 + 1024 - py) * deltaY) / 1024
  FOR step = 1 TO MAXSTEP DO
  { TEST sideX < sideY
    THEN { sideX := sideX + deltaX; mapX := mapX + stepX; side := 0 }
    ELSE { sideY := sideY + deltaY; mapY := mapY + stepY; side := 1 }
    IF mapX < 0 | mapX >= MAP | mapY < 0 | mapY >= MAP DO
    { res!0 := 1024 * MAP; res!1 := side; res!2 := 0; RETURN }
    IF wmap!(mapY * MAP + mapX) DO
    { LET perp = side = 0 -> sideX - deltaX, sideY - deltaY
      LET wallX = 0
      TEST side = 0
      THEN { LET rayY = py + (perp * dy) / 1024
             wallX := rayY - (rayY / 1024) * 1024
           }
      ELSE { LET rayX = px + (perp * dx) / 1024
             wallX := rayX - (rayX / 1024) * 1024
           }
      IF wallX < 0 DO wallX := wallX + 1024
      res!0 := perp
      res!1 := side
      res!2 := wallX
      res!3 := dx
      res!4 := dy
      RETURN
    }
  }
  res!0 := 1024 * MAP; res!1 := 0; res!2 := 0
}

LET drawframe(px, py, pa) BE
{ LET res = VEC 5
  LET horizon = H / 2

  FOR col = 0 TO W - 1 BY STRIDE DO
  { LET dA, rayA, perp, side, wX = 0, 0, 0, 0, 0
    LET dperp, h, top = 0, 0, 0
    LET texX, rdx, rdy = 0, 0, 0
    LET sky_u = 0
    dA   := (col - W/2) * FOV / W
    rayA := pa + dA
    cast(px, py, rayA, res)
    perp := res!0
    side := res!1
    wX   := res!2
    rdx  := res!3
    rdy  := res!4

    // Sky U wraps the panorama once per full turn (ANG units).
    sky_u := ((rayA & (ANG-1)) * sky_w) / ANG

    // Floor + ceiling cast for the full column. Walls overpaint the
    // middle band on top, so we always write the full sky strip first
    // then the floor/ceiling strip, then the wall.
    sys(Sys_drawskycol, col, horizon, sky_u)
    sys(Sys_drawfloorcol, col, horizon, px, py, rdx, rdy)

    dperp := (perp * cos_t!(dA & (ANG-1))) / 1024
    IF dperp < 1 DO dperp := 1
    h   := PROJ / dperp
    top := (H - h) / 2
    texX := (wX * tex_w) / 1024
    TEST side = 0
    THEN IF rdx > 0 DO texX := tex_w - 1 - texX
    ELSE IF rdy < 0 DO texX := tex_w - 1 - texX
    sys(Sys_drawtexcol, col, top, h, texX, tex_base, tex_w, tex_h, side)
  }
  sys(Sys_sdl, sdl_flip, surf)
}

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

LET try_move(px_lv, py_lv, mx, my) BE
{ LET nx = !px_lv + mx
  LET cx = nx / 1024
  LET cy = !py_lv / 1024
  UNLESS cx < 0 | cx >= MAP | cy < 0 | cy >= MAP | wmap!(cy*MAP+cx) DO
    !px_lv := nx
  { LET ny = !py_lv + my
    LET cx2 = !px_lv / 1024
    LET cy2 = ny / 1024
    UNLESS cx2 < 0 | cx2 >= MAP | cy2 < 0 | cy2 >= MAP | wmap!(cy2*MAP+cx2) DO
      !py_lv := ny
  }
}

// Load asset by name into info vec; on hit, register as the given
// background slot. Return TRUE on success.
LET load_bg(name, slot, info) = VALOF
{ UNLESS sys(Sys_assetload, name, info) RESULTIS FALSE
  sys(Sys_setbgtex, slot, info!2, info!0, info!1)
  RESULTIS TRUE
}

LET start() = VALOF
{ LET px = 1 * 1024 + 512
  LET py = 1 * 1024 + 512
  LET pa = 0
  LET info = VEC 3
  LET sky_info = VEC 3

  wmap := TABLE
    1, 1, 1, 1, 1, 1, 1, 1,
    1, 0, 0, 0, 1, 0, 0, 1,
    1, 0, 1, 0, 0, 0, 0, 1,
    1, 0, 1, 1, 1, 1, 0, 1,
    1, 0, 0, 0, 0, 1, 0, 1,
    1, 0, 1, 1, 0, 1, 0, 1,
    1, 0, 1, 0, 0, 0, 0, 1,
    1, 1, 1, 1, 1, 1, 1, 1

  // Walls.
  UNLESS sys(Sys_assetload, "brick.png", info) DO
    UNLESS sys(Sys_assetload, "stone.png", info) DO
      UNLESS sys(Sys_assetload, "checker.png", info) DO
      { writef("No wall texture. Upload brick.png in Assets.*n")
        info!0 := 1; info!1 := 1; info!2 := 0
      }
  tex_w    := info!0
  tex_h    := info!1
  tex_base := info!2

  // Sky panorama. Required for sky rendering.
  UNLESS load_bg("sky.png", BG_SKY, sky_info) DO
    writef("No sky.png asset. Sky column will be blank.*n")
  sky_w := sky_info!0

  // Floor and ceiling. Either may be missing — that side just stays
  // black for the relevant column rows.
  UNLESS load_bg("stone.png", BG_FLOOR, info) DO
    UNLESS load_bg("checker.png", BG_FLOOR, info) DO
      writef("No floor texture.*n")
  UNLESS load_bg("wood.png",  BG_CEIL, info) DO
    UNLESS load_bg("brick.png", BG_CEIL, info) DO
      writef("No ceiling texture.*n")

  sys(Sys_sdl, sdl_init)
  surf := sys(Sys_sdl, sdl_setvideomode, W, H, 0, 0)

  sin_t := getvec(ANG)
  cos_t := getvec(ANG)
  keys  := getvec(KEYCAP)
  FOR i = 0 TO KEYCAP DO keys!i := 0
  buildtrig()

  writef("wall %nx%n  sky_w=%n*n", tex_w, tex_h, sky_w)

  WHILE running DO
  { LET fwd = 0
    LET turn = 0

    poll_events()

    IF key_down(K_W) | key_down(K_UP)    DO fwd  := fwd  + 1
    IF key_down(K_S) | key_down(K_DOWN)  DO fwd  := fwd  - 1
    IF key_down(K_A) | key_down(K_LEFT)  DO turn := turn - 64
    IF key_down(K_D) | key_down(K_RIGHT) DO turn := turn + 64

    IF fwd ~= 0 DO
    { LET dx = (cos_t!(pa & (ANG-1)) * fwd) / 16
      LET dy = (sin_t!(pa & (ANG-1)) * fwd) / 16
      try_move(@px, @py, dx, dy)
    }
    IF turn ~= 0 DO pa := (pa + turn) & (ANG-1)

    drawframe(px, py, pa)
    delay(16)
  }

  freevec(sin_t)
  freevec(cos_t)
  freevec(keys)
  writef("raysk exited*n")
  RESULTIS 0
}
