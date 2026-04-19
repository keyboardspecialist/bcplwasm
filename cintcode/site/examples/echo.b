SECTION "echo"

GET "libhdr"

LET start() = VALOF
{ LET ch = rdch()
  UNTIL ch = endstreamch DO
  { wrch(ch)
    ch := rdch()
  }
  RESULTIS 0
}
