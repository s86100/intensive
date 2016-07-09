# -*- coding: utf-8 -*-
from abjad import attach
from abjad import Clef
from abjad import Score
from abjad import Staff
from abjad import StaffGroup
from abjad import Voice
from abjad import instrumenttools


class ScoreTemplate(object):

    def __call__(self):
        # Violin
        violin_staff = Staff(
            [Voice(name='Violin Voice')],
            name='Violin Staff',
            context_name='ViolinStaff',
            )
        attach(Clef('treble'), violin_staff)
        attach(instrumenttools.Violin(), violin_staff)
        # Viola
        viola_staff = Staff(
            [Voice(name='Viola Voice')],
            name='Viola Staff',
            context_name='ViolaStaff',
            )
        attach(Clef('alto'), viola_staff)
        attach(instrumenttools.Viola(), viola_staff)
        # Cello
        cello_staff = Staff(
            [Voice(name='Cello Voice')],
            name='Cello Staff',
            context_name='CelloStaff',
            )
        attach(Clef('bass'), cello_staff)
        attach(instrumenttools.Cello(), cello_staff)
        # Everything else
        staff_group = StaffGroup(
            [violin_staff, viola_staff, cello_staff],
            name='Trio Staff Group',
            )
        score = Score(
            [staff_group],
            name='Trio Score',
            )
        return score
