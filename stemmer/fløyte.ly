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
 r b r c |%11}
 \alternative{
   { r8 d c r }
   { r d c e-- \bar "||"}
 }
 \mark \default
 e16( a-.) a8-> a16( gis) gis( e) |%15

}
