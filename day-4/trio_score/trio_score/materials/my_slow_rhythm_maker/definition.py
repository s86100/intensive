# -*- encoding: utf-8 -*-
import os
import abjad


my_slow_rhythm_maker = abjad.rhythmmakertools.EvenDivisionRhythmMaker(
    denominators=[4, 8, 2],
    extra_counts_per_division=[0, 1],
    tie_specifier=abjad.rhythmmakertools.TieSpecifier(
        tie_across_divisions=True,
        ),
    )


if __name__ == '__main__':
    illustration_path = os.path.join(
        os.path.dirname(__file__),
        'illustration.pdf',
        )
    abjad.persist(my_slow_rhythm_maker).as_pdf(illustration_path)
    abjad.systemtools.IOManager.open_file(illustration_path)
