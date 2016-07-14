# -*- encoding: utf-8 -*-
from abjad import *


class ScoreTemplate(object):

    def __call__(self):
        # Violin
        violin_voice = Voice()
        violin_staff = Staff([violin_voice], name='Violin Staff')
        attach(Clef('treble'), violin_staff)
        attach(instrumenttools.Violin(), violin_staff)
        # Viola
        viola_voice = Voice()
        viola_staff = Staff([viola_voice], name='Viola Staff')
        attach(Clef('alto'), viola_staff)
        attach(instrumenttools.Viola(), viola_staff)
        # Cello
        cello_voice = Voice()
        cello_staff = Staff([cello_voice], name='Cello Staff')
        attach(Clef('bass'), cello_staff)
        attach(instrumenttools.Cello(), cello_staff)
        # Everything else
        staff_group = StaffGroup([violin_staff, viola_staff, cello_staff])
        score = Score([staff_group])
        # Return the score
        return score
