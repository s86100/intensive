#(set-default-paper-size "letter" 'portrait)
#(set-global-staff-size 12)

\header {
    composer = "A Great Composer"
    tagline = ##f
    title = \markup {
        \column {
            \center-align {
                \fontsize #8 {
                    "A Grand Trio"
                }
            }
        }
    }
}

\paper {
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 0)
        (padding . 8)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 12)
        (minimum-distance . 18)
        (padding . 12)
        (stretchability . 20)
    )
}

\layout {
    \context {
        \Staff 
        \name ViolinStaff
        \type Engraver_group
        \alias Staff
    }
    \context {
        \Staff 
        \name ViolaStaff
        \type Engraver_group
        \alias Staff
    }
    \context {
        \Staff 
        \name CelloStaff
        \type Engraver_group
        \alias Staff
    }
    \context {
        \StaffGroup
        \accepts ViolinStaff
        \accepts ViolaStaff
        \accepts CelloStaff
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1 16)
        \override SpacingSpanner.uniform-stretching = ##t
        \override StaffGrouper.staff-staff-spacing = #'(
            (basic-distance . 10)
            (minimum-distance . 15)
            (padding . 5)
            (stretchability . 100)
            )
        \override TimeSignature.style = #'numbered
        autoBeaming = ##f
        proportionalNotationDuration = #(ly:make-moment 1 16)
        tupletFullLength = ##t
    }
}
