GET "libhdr"

//STATIC { Stat = #x12345678AABBCCDD; One = 1.1 }

LET start() = VALOF
{ LET x = #x0000_0001_1234_0000
  writef("x=%16x x>>1=%16x maxint=%16x*n", x, x>>1, maxint)
  RESULTIS 10
}
