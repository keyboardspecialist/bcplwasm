SECTION "shifts"

GET "libhdr"

LET start() = VALOF
{ LET x = -16
  LET y = 2
  writef("-16 >> 2     = %n (want 1073741820 logical)*n", x >> y)
  x := #x80000000
  y := 4
  writef("#x80000000 >> 4 = %X8 (want 08000000)*n", x >> y)
  x := 4; y := 2
  writef("4 << 2       = %n*n", x << y)
  RESULTIS 0
}
