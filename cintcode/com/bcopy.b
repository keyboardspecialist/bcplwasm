SECTION "bcopy"

GET "libhdr"

LET start() = VALOF
{ LET src = "hello world"
  LET dst = VEC 64+1
  FOR i = 0 TO src%0 DO dst%i := src%i
  writef("src=[%s] dst=[%s] dstlen=%n*n", src, dst, dst%0)
  RESULTIS 0
}
