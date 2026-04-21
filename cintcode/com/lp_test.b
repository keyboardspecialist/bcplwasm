SECTION "lptst"

GET "libhdr"

LET getg() = 999

LET start() = VALOF
{ LET y = getg()
  LET x = "hi"
  LET n = x%0
  writef("y=%n x=[%s] n=%n*n", y, x, n)
  RESULTIS 0
}
