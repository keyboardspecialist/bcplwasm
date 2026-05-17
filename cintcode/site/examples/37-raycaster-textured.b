// 37-raycaster-textured: real texture lookup via the asset registry.
//
// Setup:
//   1. Open the Assets tab (left pane).
//   2. + asset, pick site/textures/brick.png (or stone.png, checker.png).
//   3. Compile & Run this file.
//
// What changed vs 36-raycaster-tex:
//   - sys(Sys_assetload, "brick.png", info) maps the decoded PNG into
//     wasm memory once. info!2 is a word address pointing at packed
//     0xRRGGBBAA texel words — one word per pixel.
//   - tex_sample is now a single indexed load: tbase!(texY*tw + texX).
//     The procedural brick pattern is gone; the texture file is the
//     pattern.
//   - N_BANDS = 64 so each band corresponds to one texture row.
//   - NS-side faces are dimmed via per-channel halving of the texel.
//
// Controls: W/A/S/D or arrows, Esc quits.

SECTION "raytx2"

GET "libhdr"
GET "sdl"

MANIFEST {
  W        = 960
  H        = 600
  MAP      = 8
  STRIDE   = 1
  ANG      = 8192
  FOV      = 1365         // ~60deg in 8192-tick units
  PROJ     = 22000
  MARCH_DV = 64
  MAXSTEP  = 4096
  N_BANDS  = 64

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
}

STATIC {
  wmap    = 0
  sin_t   = 0
  cos_t   = 0
  keys    = 0
  surf    = 0
  sky_c   = 0
  floor_c = 0
  running = 1
  tex_base = 0
  tex_w    = 0
  tex_h    = 0
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
{ LET dx   = cos_t!(angle & (ANG-1))
  LET dy   = sin_t!(angle & (ANG-1))
  LET ix   = dx / MARCH_DV
  LET iy   = dy / MARCH_DV
  LET x    = px
  LET y    = py
  LET cx   = x / 1024
  LET cy   = y / 1024
  LET pcx  = cx
  LET pcy  = cy
  LET side = 0
  LET wX   = 0
  FOR step = 1 TO MAXSTEP DO
  { pcx := cx
    pcy := cy
    x := x + ix
    y := y + iy
    cx := x / 1024
    cy := y / 1024
    UNLESS cx = pcx & cy = pcy DO
    { TEST cx ~= pcx
      THEN side := 0
      ELSE side := 1
      IF cx < 0 | cx >= MAP | cy < 0 | cy >= MAP DO
      { res!0 := step; res!1 := side; res!2 := 0; RETURN }
      IF wmap!(cy*MAP+cx) DO
      { TEST side = 0
        THEN wX := y - cy * 1024
        ELSE wX := x - cx * 1024
        IF wX < 0 DO wX := wX + 1024
        res!0 := step; res!1 := side; res!2 := wX
        RETURN
      }
    }
  }
  res!0 := MAXSTEP; res!1 := 0; res!2 := 0
}

LET drawframe(px, py, pa) BE
{ LET res = VEC 3
  sys(Sys_sdl, sdl_drawfillrect, surf, 0,   0,   W, H/2, sky_c)
  sys(Sys_sdl, sdl_drawfillrect, surf, 0, H/2,   W,   H, floor_c)

  // Per column: cast a ray, ask the runtime to draw one textured
  // vertical slice. The runtime does per-pixel texY = (y-top)*tex_h/h
  // sampling — texture detail scales with tex_h, no banding.
  FOR col = 0 TO W - 1 BY STRIDE DO
  { LET dA, rayA, d, side, wX = 0, 0, 0, 0, 0
    LET dperp, h, top = 0, 0, 0
    LET texX = 0
    dA   := (col - W/2) * FOV / W
    rayA := pa + dA
    cast(px, py, rayA, res)
    d     := res!0
    side  := res!1
    wX    := res!2
    dperp := (d * cos_t!(dA & (ANG-1))) / 1024
    IF dperp < 1 DO dperp := 1
    h := PROJ / dperp
    IF h > H DO h := H
    top  := (H - h) / 2
    texX := (wX * tex_w) / 1024
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

LET start() = VALOF
{ LET px = 1 * 1024 + 512
  LET py = 1 * 1024 + 512
  LET pa = 0
  LET info = VEC 3

  wmap := TABLE
    1, 1, 1, 1, 1, 1, 1, 1,
    1, 0, 0, 0, 1, 0, 0, 1,
    1, 0, 1, 0, 0, 0, 0, 1,
    1, 0, 1, 1, 1, 1, 0, 1,
    1, 0, 0, 0, 0, 1, 0, 1,
    1, 0, 1, 1, 0, 1, 0, 1,
    1, 0, 1, 0, 0, 0, 0, 1,
    1, 1, 1, 1, 1, 1, 1, 1

  // Try each known sample texture; first hit wins. Upload via the
  // Assets tab before running. With no asset present, fall back to
  // a flat orange so the user sees rendering still works.
  UNLESS sys(Sys_assetload, "brick.png", info) DO
    UNLESS sys(Sys_assetload, "stone.png", info) DO
      UNLESS sys(Sys_assetload, "checker.png", info) DO
      { writef("No texture asset uploaded. Add one via the Assets tab.*n")
        info!0 := 1; info!1 := 1; info!2 := 0
      }

  tex_w    := info!0
  tex_h    := info!1
  tex_base := info!2

  sys(Sys_sdl, sdl_init)
  surf := sys(Sys_sdl, sdl_setvideomode, W, H, 0, 0)

  sky_c   := sys(Sys_sdl, sdl_maprgb, 0,  60, 120, 200)
  floor_c := sys(Sys_sdl, sdl_maprgb, 0,  50,  50,  50)

  sin_t := getvec(ANG)
  cos_t := getvec(ANG)
  keys  := getvec(KEYCAP)
  FOR i = 0 TO KEYCAP DO keys!i := 0
  buildtrig()

  writef("texture %nx%n at base %n*n", tex_w, tex_h, tex_base)

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
  writef("raytex2 exited*n")
  RESULTIS 0
}
