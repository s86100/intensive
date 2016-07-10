% 2016-07-09 16:54

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
                        \time 4/4
                        {
                            g16 [
                            c'16
                            cs'16
                            e'8 ]
                            r8.
                            g16 [
                            af16
                            d'8 ]
                            r8
                            ef'16
                            r16
                        }
                    }
                    {
                        \time 3/4
                        {
                            r8
                            c'16 [
                            ef'16
                            c'16
                            ef'8 ]
                            r8.
                            g16 [
                            c'16 ]
                        }
                    }
                    {
                        \time 5/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 20/21 {
                            cs'8
                            r8
                            e'16
                            r8.
                            g16 [
                            af16
                            d'16
                            ef'8 ]
                            r8.
                            c'16 [
                            ef'16
                            c'8 ]
                            r16
                        }
                    }
                    {
                        \time 4/4
                        {
                            r16
                            ef'16
                            r8.
                            g16 [
                            c'16
                            cs'16
                            e'8 ]
                            r8.
                            g16 [
                            af16
                            d'16 ~ ]
                        }
                    }
                    {
                        \time 3/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13 {
                            d'16
                            r8
                            ef'16
                            r8.
                            c'16 [
                            ef'16
                            c'16
                            ef'8 ]
                            r16
                        }
                    }
                    {
                        \time 5/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 10/11 {
                            r8
                            g16 [
                            c'16
                            cs'8 ]
                            r8
                            e'16
                            r8.
                            g16 [
                            af16
                            d'16
                            ef'8 ]
                            r8.
                            c'16 [
                            ef'16 ]
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
                        \time 4/4
                        \times 8/9 {
                            c'8 [
                            cs'16
                            e'16
                            g8
                            af8. ]
                            r16
                            d'4
                            ef'16 [
                            c'16
                            ef'8 ~ ]
                        }
                    }
                    {
                        \time 3/4
                        {
                            ef'16 [
                            c'16
                            ef'8
                            g8. ]
                            r16
                            c'4
                        }
                    }
                    {
                        \time 5/4
                        {
                            cs'16 [
                            e'16
                            g8
                            af16
                            d'16
                            ef'8
                            c'8. ]
                            r16
                            ef'4
                            c'16 [
                            ef'16
                            g8 ~ ]
                        }
                    }
                    {
                        \time 4/4
                        \times 16/17 {
                            g16 [
                            c'16
                            cs'8
                            e'8. ]
                            r16
                            g4
                            af16 [
                            d'16
                            ef'8
                            c'16 ]
                        }
                    }
                    {
                        \time 3/4
                        {
                            ef'16 [
                            c'8
                            ef'8. ]
                            r16
                            g4
                            c'16 ~
                        }
                    }
                    {
                        \time 5/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 20/21 {
                            c'16 [
                            cs'8
                            e'16
                            g16
                            af8
                            d'8. ]
                            r16
                            ef'4
                            c'16 [
                            ef'16
                            c'8
                            ef'16
                            g16 ]
                        }
                    }
                }
            }
            \context CelloStaff = "Cello Staff" {
                \clef "bass"
                \set Staff.instrumentName = \markup { Cello }
                \set Staff.shortInstrumentName = \markup { Vc. }
                \context Voice = "Cello Voice" {
                    {
                        \time 4/4
                        {
                            g,4
                            c4
                            cs4
                            e4 ~
                        }
                    }
                    {
                        \time 3/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            e8 [
                            g,8
                            af,8
                            d8
                            ef8
                            c8
                            ef8 ~ ]
                        }
                    }
                    {
                        \time 5/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            ef2
                            c2 ~
                        }
                    }
                    {
                        \time 4/4
                        \times 4/5 {
                            c4
                            ef4
                            g,4
                            c4
                            cs4 ~
                        }
                    }
                    {
                        \time 3/4
                        {
                            cs8 [
                            e8
                            g,8
                            af,8
                            d8
                            ef8 ~ ]
                        }
                    }
                    {
                        \time 5/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            ef2
                            c2
                            ef2
                        }
                    }
                }
            }
        >>
    >>
}