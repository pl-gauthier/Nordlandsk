%% Nordlandsk 
%% bratsj

bratsj = \relative c' {
  \time 2/4
  \clef C
  \slashedGrace {b8} a16.[\f gis32] a16. b32 c8-. e\fz | %1
  a,16.\f gis32 a16. b32 c8-. e\fz | %2
  r8 c-.\f\> r gis-. | %3
  r c-. r gis-.\p \bar "||" | %4

  \repeat volta 2 { 
    r8 a-. r a-. | %5
    r gis-. r a-. | %6
    r gis-.\< r a-. | %7
    r gis-. r e-.\fz | %8
    r a-.\p r a-. | %9
    r gis-. r a-. | %10
    r b-. r a-. | }%11
  \alternative {
    {r gis-. c-. r | } %12
    {r gis-. c-. r \bar "||" | }%13
  }
  r8 a-. r a-. |%14
  r b-. r a-. |%15
  r g-. r c-. |%16
  g4--\mordent\fz g8-.\p gis--\fz |%17
  r8 a-.\p r a-. |%18
  r b-. r a-. |%19
  r b-.\mf r d~ |%20
  d-- c-. c r |%21
  r c-.\p r c-. |%22
  r b-. r a-. |%23
  r a-. r a-. |%24
  r c-. r b-. |%25
  r a-. r b-. |%26
  e,-. e-- c'4\fz |%27
  r8 a-.\p\< r gis~ |%28
  gis e-. \slashedGrace {gis8} a4\f |%29
  

}
