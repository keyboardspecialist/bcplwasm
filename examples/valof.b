SECTION "valof"

GET "libhdr"

LET start() = VALOF
{ LET a = VALOF { RESULTIS 10 }
  LET b = VALOF
  { LET inner = VALOF { RESULTIS 3 }
    RESULTIS inner + 7
  }
  writef("a=%n b=%n a+b=%n*n", a, b, a+b)
  RESULTIS 0
}
