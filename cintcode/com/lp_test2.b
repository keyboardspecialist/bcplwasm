SECTION "lptst2"

GET "libhdr"

GLOBAL { ztof: ug+75 }

LET start() = VALOF
{ ztof := "hello"
  IF ztof DO
  { LET arg1 = ztof
    LET len = arg1%0
    LET vv = VEC 64+1
    ztof := vv
    FOR i = 0 TO len DO ztof%i := arg1%i
    writef("len=%n ztof=[%s]*n", len, ztof)
  }
  RESULTIS 0
}
