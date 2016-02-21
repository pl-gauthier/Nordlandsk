%% Nordlandsk Partitur
\version "2.19.36"

\include "stemmer/bratsj.ly"
\include "stemmer/celli.ly"
\include "stemmer/cymbal.ly"
\include "stemmer/fagott.ly"
\include "stemmer/fiolin 1.ly"
\include "stemmer/fiolin 2.ly"
\include "stemmer/fløyte.ly"
\include "stemmer/horn.ly"
\include "stemmer/klarinett.ly"
\include "stemmer/kontrabass.ly"
\include "stemmer/obo.ly"
\include "stemmer/pauke.ly"
\include "stemmer/skarptromme.ly"
\include "stemmer/triangel.ly"
\include "stemmer/trombone.ly"
\include "stemmer/trompet.ly"

global = {
  \tempo 4 = 75
  \key a \minor
  \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(2 2)
}

kontrabassNavn =  \markup {
  \raise #5.5
  \score {
    \new Staff \with {
      \remove "Time_signature_engraver"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
    } {
      \set Staff.instrumentName = \markup \large "Double Bass"
      \clef bass \cadenzaOn
      \override Stem.transparent = ##t
      < c, a, d g >4 s8 \bar ""
    }
    \layout {
      ragged-right = ##t
      indent = 1\cm
    }
  }
  \hspace #.5
}

\header {
  title = "Nordlandsk"
  composer = "Fridthjov Anderssen"
  arranger = "Orchestrated by: C.Buschmann"
  tagline = ##f
}

\paper{
  #(set-paper-size "a3")
  top-margin = 15\mm
  left-margin = 25\mm
  right-margin = 25\mm
  bottom-margin = 15\mm
  indent = 3\cm


}

\layout{
  \context {
    \Score
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
  }
  \context {
    \Staff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
  }
}

\score{
  <<
    \new StaffGroup<<
      \new Staff \with {
        instrumentName = "Flute"
      }
      {
        \global \fløyte
      }
      \new Staff \with {

        instrumentName = "Oboe"
      }
      {
        \global \obo
      }
      \new Staff \with {
        instrumentName = "Clarinett in Bb"
      }
      {
        \transpose bes c { \global \klarinett }
      }
      \new Staff \with {
        instrumentName = "Bassoon"
      }
      {
        \global \fagott
      }
    >>
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = "Horn in F"
      }
      {
        \transpose f c { \global \horn }
      }
      \new Staff \with {
        instrumentName = "Trumpet in Bb"
      }
      {
        \transpose bes c { \global \trompet }
      }
      \new Staff \with {
        instrumentName = "Trombone"
      }
      {
        \global \trombone
      }
    >>
    \new StaffGroup<<
      \new RhythmicStaff  \with {
        instrumentName = "Snare"
      }
      {
        \global \skarptromme
      }
      \new RhythmicStaff  \with {
        instrumentName = "Cymbal"
      }
      {
        \global \cymbal
      }
      \new RhythmicStaff  \with {
        instrumentName = "Triangle"
      }
      {
        \global \triangel
      }

      \new Staff  \with {
        instrumentName = "Timpani i D. A. E."
      }
      {
        \global \pauke
      }
    >>
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = "Violin I"
      }
      {
        \global \fiolinEn
      }
      \new Staff \with {
        instrumentName = "Violin II"
      }
      {
        \global \fiolinTo
      }
      \new Staff \with {
        instrumentName = "Viola"
      }
      {
        \global \bratsj
      }
      \new Staff \with {
        instrumentName = "Cello"
      }
      {
        \global \celli
      }
      \new Staff \with {
        instrumentName = \kontrabassNavn
      }
      {
        \global \kontrabass
      }
    >>
  >>



}
