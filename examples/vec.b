SECTION "vec"

GET "libhdr"

LET start() = VALOF
{ LET v = getvec(9)
  FOR i = 0 TO 9 DO v!i := i * i
  FOR i = 0 TO 9 DO writef("%i2^2 = %i3*n", i, v!i)
  freevec(v)
  RESULTIS 0
}
