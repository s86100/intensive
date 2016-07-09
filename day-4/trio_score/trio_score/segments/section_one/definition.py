# -*- encoding: utf-8 -*-
import os
import abjad
from trio_score import materials
from trio_score.tools import SegmentMaker


segment_maker = SegmentMaker(
    time_signatures=[(4, 4), (3, 4), (5, 4)] * 2,
    cello_pitches=materials.my_pitches.transpose(-12),
    cello_rhythm_maker=materials.my_slow_rhythm_maker,
    cello_seed=0,
    viola_pitches=materials.my_pitches,
    viola_rhythm_maker=materials.my_fast_rhythm_maker,
    viola_seed=1,
    violin_pitches=materials.my_pitches,
    violin_rhythm_maker=abjad.new(
        materials.my_fast_rhythm_maker,
        talea__counts=[1, 1, 1, 2, -3, 1, 1, 2, -2, 1, -3],
        ),
    violin_seed=0,
    )


if __name__ == '__main__':
    lilypond_file, _ = segment_maker()
    illustration_path = os.path.join(
        os.path.dirname(__file__),
        'illustration.pdf',
        )
    abjad.persist(lilypond_file).as_pdf(illustration_path)
    abjad.systemtools.IOManager.open_file(illustration_path)
