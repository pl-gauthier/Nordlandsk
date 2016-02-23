%% Nordlandsk
%% obo

obo = \relative c'' {
  r4 r8 gis\fz |%1
  r4 r8 gis\fz |
  R2*2


  % 5
  \slashedGrace b8 a16.\mf gis32( a16. b32) c8 c |
  c16.( d 32) d16.( e32) e8 e->-. |
  e16(\< f e d c b a c) |
  e16. f32 e16 d e8 gis,-.\fz |
  \slashedGrace b8 a16.\mf gis32( a16. b32) c8 c |
  c16.( d 32) d16.( e32) e8 e->-. |
  e16.( f32 e16 d c b a gis) |
  % Alternative 1
  <<
    {a8( c16 b \slashedGrace b8 a4) |}
    {s4...\> s32\! |}
  >>
  % Alternative 2
  <<
    {a8( c16 b \slashedGrace b8 a4) |}
    {s4...\> s32\! |}
  >>

  % 14
  R2*8

  % 22
  r8 c'64-. d-. c16.-. r8 \slashedGrace cis-. d-. |
  r8 b64-. c-. b16.-. r8 \slashedGrace gis-. a-. |
  r8 a64-. b-. a16.-. r8 \slashedGrace b-. c-. |
  r8 e64-. f-. e16.-. r8 \slashedGrace ais,-. b-. |
  r8 c64-. d-. c16.-. r8 \slashedGrace cis-. d-. |
  \slashedGrace ais8-. \tuplet 6/4 4 {
    b16-.\p ais a-. gis-. g-. fis-.
  } dis4\fz |
  \slashedGrace b8 a16.\mf\< gis32 a16. b32 c8. b16 |
  \slashedGrace c8 b a-. a4\f |

  %30
  R2*51
}