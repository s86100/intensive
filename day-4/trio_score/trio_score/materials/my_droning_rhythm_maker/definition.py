# -*- encoding: utf-8 -*-
import os
import abjad


my_droning_rhythm_maker = abjad.rhythmmakertools.NoteRhythmMaker(
    tie_specifier=abjad.rhythmmakertools.TieSpecifier(
        tie_across_divisions=[True, False],
        ),
    )


if __name__ == '__main__':
    illustration_path = os.path.join(
        os.path.dirname(__file__),
        'illustration.pdf',
        )
    abjad.persist(my_droning_rhythm_maker).as_pdf(illustration_path)
    abjad.systemtools.IOManager.open_file(illustration_path)
