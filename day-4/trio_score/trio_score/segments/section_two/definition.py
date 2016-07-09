# -*- encoding: utf-8 -*-
import abjad
import os
from trio_score import materials
from trio_score.tools import SegmentMaker


segment_maker = SegmentMaker(
    time_signatures=[(3, 4), (4, 4), (7, 8), (4, 4)] * 2,
    cello_pitches=materials.my_pitches,
    cello_rhythm_maker=materials.my_fast_rhythm_maker,
    cello_seed=1,
    viola_pitches=materials.my_pitches.rotate(2, transpose=True),
    viola_rhythm_maker=materials.my_slow_rhythm_maker,
    viola_seed=1,
    violin_pitches=materials.my_pitches.retrograde().transpose(12),
    violin_rhythm_maker=materials.my_slow_rhythm_maker,
    )


if __name__ == '__main__':
    lilypond_file, _ = segment_maker()
    illustration_path = os.path.join(
        os.path.dirname(__file__),
        'illustration.pdf',
        )
    abjad.persist(lilypond_file).as_pdf(illustration_path)
    abjad.systemtools.IOManager.open_file(illustration_path)
