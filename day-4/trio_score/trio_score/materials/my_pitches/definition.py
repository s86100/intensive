# -*- encoding: utf-8 -*-
import os
import abjad


my_pitches = abjad.pitchtools.PitchSegment(
    [
        -5, 0, 1, 4, -5, -4, 2, 3, 0, 3, 0, 3,
        ],
    )


if __name__ == '__main__':
    illustration_path = os.path.join(
        os.path.dirname(__file__),
        'illustration.pdf',
        )
    abjad.persist(my_pitches).as_pdf(illustration_path)
    abjad.systemtools.IOManager.open_file(illustration_path)
