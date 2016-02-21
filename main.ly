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
    \type "Engraver_group"
    \consists "Time_signature_engraver"
    \consists "Axis_group_engraver"
    \name "TimeSig"
    \alias "Staff"
    \override TimeSignature.font-size = #3
    \override TimeSignature.break-align-symbol = ##f
    \override TimeSignature.X-offset =
      #ly:self-alignment-interface::x-aligned-on-self
    \override TimeSignature.self-alignment-X = #CENTER
    \override TimeSignature.after-line-breaking =
      #shift-right-at-line-begin
  }
  \context {
    \Score
    \accepts TimeSig
  }
  \context {
    \Staff
    \remove "Time_signature_engraver"
  }
}

timeSignatures = { \numericTimeSignature \time 2/4 }


global = {
  \tempo 4 = 75
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-barnumbers

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

\score{
  <<
    \new TimeSig \timeSignatures
    \new StaffGroup<<
      \new Staff \with {
        instrumentName = #"Flute"
        shortInstrumentName = #"Fl. "
      }
      {
        \global \fløyte
      }
      \new Staff \with {

        instrumentName = #"Oboe"
        shortInstrumentName = #"Ob. "
      }
      {
        \global \obo
      }
      \new Staff \with {
        instrumentName = #"Clarinett in Bb"
        shortInstrumentName = #"Cl. "
      }
      {
        \transpose bes c { \global \klarinett }
      }
      \new Staff \with {
        instrumentName = "Bassoon"
        shortInstrumentName = #"Bn. "
      }
      {
        \global \fagott
      }
    >>
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = "Horn in F"
        shortInstrumentName = #"Hn. "
      }
      {
        \transpose f c { \global \horn }
      }
      \new Staff \with {
        instrumentName = "Trumpet in Bb"
        shortInstrumentName = #"Tpt. "
      }
      {
        \transpose bes c { \global \trompet }
      }
      \new Staff \with {
        instrumentName = "Trombone"
        shortInstrumentName = #"Tbn. "
      }
      {
        \global \trombone
      }
    >>
    \new StaffGroup<<
      \new RhythmicStaff  \with {
        instrumentName = "Snare"
        shortInstrumentName = #"Sn-d. "
      }
      {
        \global \skarptromme
      }
      \new RhythmicStaff  \with {
        instrumentName = "Cymbal "
        shortInstrumentName = #"Cym. "

      }
      {
        \global \cymbal
      }
      \new RhythmicStaff  \with {
        instrumentName = "Triangle"
        shortInstrumentName = #"Tri. "
      }
      {
        \global \triangel
      }

      \new Staff  \with {
        instrumentName = \markup {\center-column { "Timpani in" \line { D. A. E. }}}
        shortInstrumentName = #"Tmp. "
      }
      {
        \global \pauke
      }
    >>
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = "Violin I"
        shortInstrumentName = #"Vln I. "
      }
      {
        \global \fiolinEn
      }
      \new Staff \with {
        instrumentName = "Violin II"
        shortInstrumentName = #"Vln II. "
      }
      {
        \global \fiolinTo
      }
      \new Staff \with {
        instrumentName = "Viola"
        shortInstrumentName = #"Vla. "
      }
      {
        \global \bratsj
      }
      \new Staff \with {
        instrumentName = "Cello"
        shortInstrumentName = #"Clo. "
      }
      {
        \global \celli
      }
      \new Staff \with {
        instrumentName = \kontrabassNavn
        shortInstrumentName = #"B. "
      }
      {
        \global \kontrabass
      }
    >>
  >>
}
