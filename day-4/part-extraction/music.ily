\new Score <<
    \new StaffGroup <<

        \tag #'violin
        \new Staff = "Violin Staff" \with {
            instrumentName = "Violin"
        } {
            \clef "treble"
            c'4 ( d'4 e'4 f'4 g'4 a'4 b'4 c''4 )
        }

        \tag #'viola
        \new Staff = "Viola Staff" \with {
            instrumentName = "Viola"
        } {
            \clef "alto"
            c4 ( d4 e4 f4 g4 a4 b4 c'4 )

        }

        \tag #'cello
        \new Staff = "Cello Staff" \with {
            instrumentName = "Cello"
        } {
            \clef "bass"
            c,4 ( d,4 e,4 f,4 g,4 a,4 b,4 c4 )
        }

    >>
>>
