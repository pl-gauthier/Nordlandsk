%% Nordlandsk
%% fløyte

fløyte = \relative c'' {
  \repeat volta 2{
 r4 r8 e'\fz |%1
 r4 r8 e-.\fz |%2
 r e,-.\f\> r e-. |%3
 r c-. r b-.\p \bar"||" |%4
 \mark \default
 r8^\markup { \italic {sempre stacc.}} c r c |%5
 r d r c |%6
 r d\< r c |%7
 r b r e'\fz |%8
 r c,\p r c |%9
 r d r c |%10
 r b r c |%11
  }
 \alternative{
   { r8 d c r }
   { r d c e-- }
 }
 e16\mf( a-.) a8-> a16( gis) gis( e) |%14
 \tuplet 3/2 { f16( g f } e8) \slashedGrace{e8} a,4 |%15
 \slashedGrace{b8} a16.( gis32 a16. b32) c8 c-> |%16
 c16.( d32) d16.( e32) e8 e-> |%17
 e16( a-.) a8-> a16( gis) gis( e) |%18

  \tuplet 3/2 { f16( g f } e8) \slashedGrace{e8} a,4 |%19
 \slashedGrace{b8} a16.( gis32 a16. b32) c8. b16 |%20
 \slashedGrace{c8} c8 a-. a r \bar"||" | %21
 \mark \default
 \ottava #1
 r8 \slashedGrace{dis'8-.} e8-.\pp r c64-.[ d-. c16.-.] |%22
 r8 \slashedGrace{dis8-.} e8-. r c64-.[ d-. c16.-.] |%23
 r8 \slashedGrace{dis8-.} e8-. r c64-.[ d-. c16.-.] |%24
 r8 \slashedGrace{gis'8-.} a8-. r gis64-.[ a-. gis16.-.] |%25
 r8 \slashedGrace{dis8-.} e8-. r c64-.[ d-. c16.-.] |%26
 \ottava #0
 \slashedGrace{d8} \tuplet 6/2 { dis16\p d cis bis b ais } a4\fz |%27




  }
