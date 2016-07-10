# -*- encoding: utf-8 -*-
import abjad
import os
from trio_score import materials
from trio_score.tools import SegmentMaker


segment_maker = SegmentMaker(
    time_signatures=[(2, 4), (2, 4), (5, 8), (6, 8), (5, 4)] * 2,
    cello_pitches=materials.my_pitches.transpose(-12).invert(-12),
    cello_rhythm_maker=materials.my_fast_rhythm_maker,
    cello_seed=2,
    viola_pitches=abjad.pitchtools.PitchSegment('c ef'),
    viola_rhythm_maker=abjad.rhythmmakertools.NoteRhythmMaker(),
    violin_pitches=materials.my_pitches.retrograde(),
    violin_rhythm_maker=abjad.rhythmmakertools.EvenDivisionRhythmMaker(
        denominators=[8],
        extra_counts_per_division=[0, 1, 2],
        ),
    violin_seed=-2,
    is_last_segment=True,
    )


if __name__ == '__main__':
    lilypond_file, _ = segment_maker()
    illustration_path = os.path.join(
        os.path.dirname(__file__),
        'illustration.pdf',
        )
    abjad.persist(lilypond_file).as_pdf(illustration_path)
    abjad.systemtools.IOManager.open_file(illustration_path)
