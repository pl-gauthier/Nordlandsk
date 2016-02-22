%% Nordlandsk
%% fløyte

fløyte = \relative c'' {
  \repeat volta 2{
    r4 r8 e' \fz |%1
    r4 r8 e-. \fz |%2
    r e,-. \f \> r e-. |%3
    r c-. r b-. \p \bar"||" |%4
    \mark \default
    r8^\markup { \italic {sempre stacc.}} c r c |%5
    r d r c |%6
    r d \< r c |%7
    r b r e' \fz |%8
    r c, \p r c |%9
    r d r c |%10
    r b r c |%11
  }
  \alternative{
    { r8 d c r }
    { r d c e-- }
  }
  e16 \mf( a-.) a8-> a16( gis) gis( e) |%14
  \tuplet 3/2 { f16( g f } e8) \slashedGrace{ e8 } a,4 |%15
  \slashedGrace{ b8 } a16.( gis32 a16. b32) c8 c-> |%16
  c16.( d32) d16.( e32) e8 e-> |%17
  e16( a-.) a8-> a16( gis) gis( e) |%18

  \tuplet 3/2 { f16( g f } e8) \slashedGrace{ e8 } a,4 |%19
  \slashedGrace{ b8 } a16.( gis32 a16. b32) c8. b16 |%20
  \slashedGrace{ c8 } c8 a-. a r \bar"||" | %21
  \mark \default
  \ottava #1
  r8 \slashedGrace{dis'8-.} e8-. \pp r c64-.[ d-. c16.-.] |%22
  r8 \slashedGrace{dis8-.} e8-. r c64-.[ d-. c16.-.] |%23
  r8 \slashedGrace{dis8-.} e8-. r c64-.[ d-. c16.-.] |%24
  r8 \slashedGrace{gis'8-.} a8-. r gis64-.[ a-. gis16.-.] |%25
  r8 \slashedGrace{dis8-.} e8-. r c64-.[ d-. c16.-.] |%26
  \slashedGrace{d8} \tuplet 6/4 { dis16 \p d cis bis b ais } a4 \fz |%27
  \ottava #0

  \override TextSpanner #'(bound-details left text) = \markup { \bold {molto rit.} }

  \slashedGrace{ b8 } a16. \mf \< \startTextSpan gis32 a16. b32 c8. b16 |%28
  \slashedGrace{ c8 } b8 \stopTextSpan a-. a4 \f |%29

  \key a \major
  \tempo 4 = 60
  \bar "||"
  \mark \default
  
  \ottava #1
  <<
    { a2 }
    { s4 \sfz \> s8 \pp \<  s8 \ff }
  >> |%30
  c16.-> d32-> d16.-> e32-> e4 |%31
  e2~ \startTrillSpan |%32
  e4. \stopTrillSpan \grace{ gis,16 b } e8-.-> |%33
  \slashedGrace{ b8 } a16. \> gis32 a16. b32 cis8 cis-> |%34
  cis16. d32 d16. e32 e8 e-> |%35
  \override TextSpanner #'(bound-details left text) = \markup { \bold {rit.} }
  e16. \startTextSpan fis32 e16 d cis b a gis \stopTextSpan |%36
  a8-. \p r r \fermata e \bar "||" |%37
  \ottava #0

  \tempo 4 = 75
  \mark \default

  cis'16\mp( dis \slashedGrace{ d8 } cis16 d e fis b, cis |%38
  d8 cis) \grace{ cis16 e } gis8-.-> r |%39
  \slashedGrace{ b,8 } a16.( gis32 a16. b32 cis8) cis |%40
  cis16.( d32 d16. e32 e4) |%41
  cis16\mp( dis \slashedGrace{ d8 } cis16 d e fis b, cis |%42
  d8 cis) \grace{ cis16 e } gis8-.-> r |%43
  \slashedGrace{ b,8 } a16.( gis32 a16. b32 cis8.) cis16 |%44
  \slashedGrace {cis8} b8( a) a4 \bar "||" |%45

  \key a \minor
  \mark \default

  R2*8

  \mark \default
  r8 c,-.\mp r c-. |%54
  r^\markup { \italic {sempre stacc.}} d r c |%55
  r d\< r c |%56
  r b r e'-. \fz |%57
  r c,-. \mp r c |%58
  r d r c |%59
  r b r c |%60
  r d-. c-. e-- |%61
  e16 \mf ( a-.) a8-> a16( gis) gis( e) |%62
  \tuplet 3/2 { f16( g f } e8) \slashedGrace{ e8 } a,4 |%63
  \slashedGrace{ b8 } a16.( gis32 a16. b32) c8 c-> |%64
  c16.( d32) d16.( e32) e8 e-> |%65
  e16 ( a-.) a8-> a16( gis) gis( e) |%66
  \tuplet 3/2 { f16( g f } e8) \slashedGrace{ e8 } a,4 |%67
  \slashedGrace{ b8 } a16.( gis32 a16. b32) c8. b16 |%68
  \slashedGrace{ c8 } b a-. a r \bar "||" |%69

  \mark \default
  \ottava #1
  r8 \slashedGrace{dis'8-.} e8-. \pp r c64-.[ d-. c16.-.] |%70
  r8 \slashedGrace{dis8-.} e8-. r c64-.[ d-. c16.-.] |%71
  r8 \slashedGrace{dis8-.} e8-. r c64-.[ d-. c16.-.] |%72
  r8 \slashedGrace{gis'8-.} a8-. r gis64-.[ a-. gis16.-.] |%73
  r8 \slashedGrace{dis8-.} e8-. r c64-.[ d-. c16.-.] |%74
  \slashedGrace{d8} \tuplet 6/4 { dis16 \p d cis bis b ais } a4 \fz |%75
  \ottava #0
  \slashedGrace{ b8 } a16.( \mf gis32 a16. b32) c8. b16 |%76
  \slashedGrace{ b8 } a16.( \mf \< gis32 a16. b32) c8. b16-> |%77
  c8. b16-> c8. b16-> |%78
  b8-> \ff e, \fermata r gis-. \pp |%79
  a-. r r4 \bar "|."











}
