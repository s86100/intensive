#(set-default-paper-size "letter" 'portrait)
#(set-global-staff-size 12)

\header {
}

\paper {
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
        \override TimeSignature.style = #'numbered
        autoBeaming = ##f
        proportionalNotationDuration = #(ly:make-moment 1 16)
        tupletFullLength = ##t
    }
}
