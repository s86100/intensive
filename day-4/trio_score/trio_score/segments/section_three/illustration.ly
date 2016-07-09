% 2016-07-09 15:59

\version "2.19.44"
\language "english"

\include "../../stylesheets/stylesheet.ily"

\header {}

\layout {}

\paper {}

\score {
    \context Score = "Trio Score" <<
        \context StaffGroup = "Trio Staff Group" <<
            \context ViolinStaff = "Violin Staff" {
                \clef "treble"
                \set Staff.instrumentName = \markup { Violin }
                \set Staff.shortInstrumentName = \markup { Vn. }
                \context Voice = "Violin Voice" {
                    {
                        \time 2/4
                        \times 4/5 {
                            c'8 [
                            g8
                            ef'8
                            c'8
                            ef'8 ]
                        }
                    }
                    {
                        \times 4/6 {
                            c'8 [
                            ef'8
                            d'8
                            af8
                            g8
                            e'8 ]
                        }
                    }
                    {
                        \time 5/8
                        {
                            cs'8 [
                            c'8
                            g8
                            ef'8
                            c'8 ]
                        }
                    }
                    {
                        \time 6/8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            ef'8 [
                            c'8
                            ef'8
                            d'8
                            af8
                            g8
                            e'8 ]
                        }
                    }
                    {
                        \time 5/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 10/12 {
                            cs'8 [
                            c'8
                            g8
                            ef'8
                            c'8
                            ef'8
                            c'8
                            ef'8
                            d'8
                            af8
                            g8
                            e'8 ]
                        }
                    }
                    {
                        \time 2/4
                        {
                            cs'8 [
                            c'8
                            g8
                            ef'8 ]
                        }
                    }
                    {
                        \times 4/5 {
                            c'8 [
                            ef'8
                            c'8
                            ef'8
                            d'8 ]
                        }
                    }
                    {
                        \time 5/8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/7 {
                            af8 [
                            g8
                            e'8
                            cs'8
                            c'8
                            g8
                            ef'8 ]
                        }
                    }
                    {
                        \time 6/8
                        {
                            c'8 [
                            ef'8
                            c'8
                            ef'8
                            d'8
                            af8 ]
                        }
                    }
                    {
                        \time 5/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 10/11 {
                            g8 [
                            e'8
                            cs'8
                            c'8
                            g8
                            ef'8
                            c'8
                            ef'8
                            c'8
                            ef'8
                            d'8 ]
                        }
                    }
                }
            }
            \context ViolaStaff = "Viola Staff" {
                \clef "alto"
                \set Staff.instrumentName = \markup { Viola }
                \set Staff.shortInstrumentName = \markup { Va. }
                \context Voice = "Viola Voice" {
                    {
                        \time 2/4
                        c2
                    }
                    {
                        ef2
                    }
                    {
                        \time 5/8
                        c2 ~
                        c8
                    }
                    {
                        \time 6/8
                        ef2.
                    }
                    {
                        \time 5/4
                        c1 ~
                        c4
                    }
                    {
                        \time 2/4
                        ef2
                    }
                    {
                        c2
                    }
                    {
                        \time 5/8
                        ef2 ~
                        ef8
                    }
                    {
                        \time 6/8
                        c2.
                    }
                    {
                        \time 5/4
                        ef1 ~
                        ef4
                    }
                }
            }
            \context CelloStaff = "Cello Staff" {
                \clef "bass"
                \set Staff.instrumentName = \markup { Cello }
                \set Staff.shortInstrumentName = \markup { Vc. }
                \context Voice = "Cello Voice" {
                    {
                        \time 2/4
                        \times 8/9 {
                            b,16 [
                            af,8
                            f16
                            e16
                            bf,8
                            a,8 ~ ]
                        }
                    }
                    {
                        \times 4/5 {
                            a,16
                            r16
                            c4
                            a,16 [
                            c16
                            a,8 ]
                        }
                    }
                    {
                        \time 5/8
                        {
                            f16 [
                            c16
                            b,8
                            af,8. ]
                            r16
                            f8 ~
                        }
                    }
                    {
                        \time 6/8
                        {
                            f8 [
                            e16
                            bf,16
                            a,8
                            c16
                            a,16
                            c8
                            a,8 ~ ]
                        }
                    }
                    {
                        \time 5/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 20/21 {
                            a,16
                            r16
                            f4
                            c16 [
                            b,16
                            af,8
                            f16
                            e16
                            bf,8
                            a,8. ]
                            r16
                            c8. ~
                        }
                    }
                    {
                        \time 2/4
                        {
                            c16 [
                            a,16
                            c16
                            a,8
                            f16
                            c16
                            b,16 ~ ]
                        }
                    }
                    {
                        \times 8/9 {
                            b,16 [
                            af,8. ]
                            r16
                            f4 ~
                        }
                    }
                    {
                        \time 5/8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            f16 [
                            e16
                            bf,8
                            a,16
                            c16
                            a,8
                            c8. ]
                            r16
                        }
                    }
                    {
                        \time 6/8
                        {
                            a,4
                            f16 [
                            c16
                            b,8
                            af,16
                            f16
                            e8 ~ ]
                        }
                    }
                    {
                        \time 5/4
                        {
                            e8.
                            r16
                            bf,4
                            a,16 [
                            c16
                            a,8
                            c16
                            a,16
                            f8
                            c8. ]
                            r16
                        }
                    }
                }
            }
        >>
    >>
}