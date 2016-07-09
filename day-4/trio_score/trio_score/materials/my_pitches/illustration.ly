% 2016-07-09 15:45

\version "2.19.44"
\language "english"

\header {
    tagline = ##f
}

\layout {}

\paper {}

\score {
    \new Score \with {
        \override BarLine.stencil = ##f
        \override BarNumber.transparent = ##t
        \override Rest.transparent = ##t
        \override SpanBar.stencil = ##f
        \override TimeSignature.stencil = ##f
    } <<
        \new PianoStaff <<
            \context Staff = "treble" {
                \clef "treble"
                r1 * 1/8
                c'1 * 1/8
                cs'1 * 1/8
                e'1 * 1/8
                r1 * 1/8
                r1 * 1/8
                d'1 * 1/8
                ef'1 * 1/8
                c'1 * 1/8
                ef'1 * 1/8
                c'1 * 1/8
                ef'1 * 1/8
            }
            \context Staff = "bass" {
                \clef "bass"
                g1 * 1/8
                r1 * 1/8
                r1 * 1/8
                r1 * 1/8
                g1 * 1/8
                af1 * 1/8
                r1 * 1/8
                r1 * 1/8
                r1 * 1/8
                r1 * 1/8
                r1 * 1/8
                r1 * 1/8
            }
        >>
    >>
}