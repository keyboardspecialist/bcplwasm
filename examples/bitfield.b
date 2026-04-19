SECTION "bitfield"

GET "libhdr"

MANIFEST {
  // SLCT len:shift:offset
  lo_byte = SLCT  8: 0:0
  hi_byte = SLCT  8: 8:0
  hi16    = SLCT 16:16:0
}

LET start() = VALOF
{ LET v = VEC 1
  v!0 := 0
  lo_byte OF v := #xAB
  hi_byte OF v := #xCD
  hi16    OF v := #x1234
  writef("v!0  = %X8*n", v!0)
  writef("lo   = %X2*n",  lo_byte OF v)
  writef("hi   = %X2*n",  hi_byte OF v)
  writef("hi16 = %X4*n",  hi16    OF v)
  RESULTIS 0
}
