SECTION "fmod"

GET "libhdr"

// Use FLT mode: '#' prefix on assignments and ops means float.
// Store float bit patterns directly via %f formatter.

LET start() = VALOF
{ LET a = 0
  LET b = 0
  LET r = 0
  a #:= 10.5
  b #:= 3.0
  r #:= a #MOD b
  writef("10.5 fmod 3.0 = %9.4f*n", r)
  RESULTIS 0
}
