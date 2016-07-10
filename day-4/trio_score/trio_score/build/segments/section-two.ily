    \context Score = "Trio Score" <<
        \context StaffGroup = "Trio Staff Group" <<
            \tag #'violin
            \context ViolinStaff = "Violin Staff" {
                \clef "treble"
                \set Staff.instrumentName = \markup { Violin }
                \set Staff.shortInstrumentName = \markup { Vn. }
                \context Voice = "Violin Voice" {
                    {
                        \time 3/4
                        {
                            ef''16 [
                            c''16
                            ef''16
                            c''16
                            ef''16
                            d''16
                            af'16
                            g'16
                            e''16
                            cs''16
                            c''16
                            g'16 ]
                        }
                    }
                    {
                        \time 4/4
                        {
                            ef''16 [
                            c''16
                            ef''16
                            c''16
                            ef''16
                            d''16
                            af'16
                            g'16
                            e''16
                            cs''16
                            c''16
                            g'16
                            ef''16
                            c''16
                            ef''16
                            c''16 ]
                        }
                    }
                    {
                        \time 7/8
                        {
                            ef''16 [
                            d''16
                            af'16
                            g'16
                            e''16
                            cs''16
                            c''16
                            g'16
                            ef''16
                            c''16
                            ef''16
                            c''16
                            ef''16
                            d''16 ]
                        }
                    }
                    {
                        \time 4/4
                        {
                            af'16 [
                            g'16
                            e''16
                            cs''16
                            c''16
                            g'16
                            ef''16
                            c''16
                            ef''16
                            c''16
                            ef''16
                            d''16
                            af'16
                            g'16
                            e''16
                            cs''16 ]
                        }
                    }
                    {
                        \time 3/4
                        {
                            c''16 [
                            g'16
                            ef''16
                            c''16
                            ef''16
                            c''16
                            ef''16
                            d''16
                            af'16
                            g'16
                            e''16
                            cs''16 ]
                        }
                    }
                    {
                        \time 4/4
                        {
                            c''16 [
                            g'16
                            ef''16
                            c''16
                            ef''16
                            c''16
                            ef''16
                            d''16
                            af'16
                            g'16
                            e''16
                            cs''16
                            c''16
                            g'16
                            ef''16
                            c''16 ]
                        }
                    }
                    {
                        \time 7/8
                        {
                            ef''16 [
                            c''16
                            ef''16
                            d''16
                            af'16
                            g'16
                            e''16
                            cs''16
                            c''16
                            g'16
                            ef''16
                            c''16
                            ef''16
                            c''16 ]
                        }
                    }
                    {
                        \time 4/4
                        {
                            ef''16 [
                            d''16
                            af'16
                            g'16
                            e''16
                            cs''16
                            c''16
                            g'16
                            ef''16
                            c''16
                            ef''16
                            c''16
                            ef''16
                            d''16
                            af'16
                            g'16 ]
                            \bar "||"
                        }
                    }
                }
            }
            \tag #'viola
            \context ViolaStaff = "Viola Staff" {
                \clef "alto"
                \set Staff.instrumentName = \markup { Viola }
                \set Staff.shortInstrumentName = \markup { Va. }
                \context Voice = "Viola Voice" {
                    {
                        \time 3/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            bf8 [
                            d8
                            g8
                            af8
                            b8
                            d8
                            ef8 ~ ]
                        }
                    }
                    {
                        \time 4/4
                        {
                            ef2
                            a2 ~
                        }
                    }
                    {
                        \time 7/8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/8 {
                            a4
                            bf4
                            g4
                            bf4 ~
                        }
                    }
                    {
                        \time 4/4
                        {
                            bf8 [
                            g8
                            bf8
                            d8
                            g8
                            af8
                            b8
                            d8 ~ ]
                        }
                    }
                    {
                        \time 3/4
                        {
                            d2. ~
                        }
                    }
                    {
                        \time 4/4
                        {
                            d4
                            ef4
                            a4
                            bf4 ~
                        }
                    }
                    {
                        \time 7/8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/8 {
                            bf8 [
                            g8
                            bf8
                            g8
                            bf8
                            d8
                            g8
                            af8 ~ ]
                        }
                    }
                    {
                        \time 4/4
                        {
                            af2
                            b2
                            \bar "||"
                        }
                    }
                }
            }
            \tag #'cello
            \context CelloStaff = "Cello Staff" {
                \clef "bass"
                \set Staff.instrumentName = \markup { Cello }
                \set Staff.shortInstrumentName = \markup { Vc. }
                \context Voice = "Cello Voice" {
                    {
                        \time 3/4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            c'8 [
                            cs'16
                            e'16
                            g8
                            af8. ]
                            r16
                            d'4 ~
                        }
                    }
                    {
                        \time 4/4
                        {
                            d'16 [
                            ef'16
                            c'8
                            ef'16
                            c'16
                            ef'8
                            g8. ]
                            r16
                            c'4
                        }
                    }
                    {
                        \time 7/8
                        {
                            cs'16 [
                            e'16
                            g8
                            af16
                            d'16
                            ef'8
                            c'8. ]
                            r16
                            ef'8 ~
                        }
                    }
                    {
                        \time 4/4
                        \times 16/17 {
                            ef'8 [
                            c'16
                            ef'16
                            g8
                            c'16
                            cs'16
                            e'8
                            g8. ]
                            r16
                            af8. ~
                        }
                    }
                    {
                        \time 3/4
                        {
                            af16 [
                            d'16
                            ef'16
                            c'8
                            ef'16
                            c'16
                            ef'8
                            g8. ]
                        }
                    }
                    {
                        \time 4/4
                        \times 16/17 {
                            r16
                            c'4
                            cs'16 [
                            e'16
                            g8
                            af16
                            d'16
                            ef'8
                            c'8. ]
                            r16
                        }
                    }
                    {
                        \time 7/8
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/8 {
                            ef'4
                            c'16 [
                            ef'16
                            g8
                            c'16
                            cs'16
                            e'8
                            g8. ]
                            r16
                        }
                    }
                    {
                        \time 4/4
                        {
                            af4
                            d'16 [
                            ef'16
                            c'8
                            ef'16
                            c'16
                            ef'8
                            g8. ]
                            r16
                            \bar "||"
                        }
                    }
                }
            }
        >>
    >>
