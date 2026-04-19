SECTION "every"

GET "libhdr"

// EVERY returns the SUM of the result expressions from every match
// item whose pattern matches (unlike MATCH, which stops at the first).
LET tally(n) = EVERY (n)
  :   >0       => 1
  :   >10      => 10
  :   >100     => 100
  :   1|2|3    => 1000

LET start() = VALOF
{ FOR i = 0 TO 5 DO
  { LET v = i * 50
    writef("tally(%i3) = %i4*n", v, tally(v))
  }
  writef("tally(  2) = %i4  (expect 1+1000 = 1001)*n", tally(2))
  RESULTIS 0
}
