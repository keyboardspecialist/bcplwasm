// 27-every-sum: EVERY evaluates every matching arm and sums results.
//
// Concepts:
//   - EVERY (args) : pat,..,pat => expr
//   - Unlike MATCH, all matching arms contribute — the results are
//     added (or OR'd, depending on arm types).
//   - Handy for flag accumulation or scoring.

SECTION "every"

GET "libhdr"

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
