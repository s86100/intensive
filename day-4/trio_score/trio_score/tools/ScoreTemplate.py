# -*- coding: utf-8 -*-
from abjad import Clef
from abjad import Score
from abjad import Staff
from abjad import StaffGroup
from abjad import Voice
from abjad import attach
from abjad import instrumenttools
from abjad import schemetools
from abjad import set_
from abjad.tools.indicatortools import LilyPondCommand


class ScoreTemplate(object):

    def __call__(self):

        # Violin
        violin_staff = Staff(
            [Voice(name='Violin Voice')],
            name='Violin Staff',
            context_name='ViolinStaff',
            )
        violin_tag = LilyPondCommand(r"tag #'violin", format_slot='before')
        attach(violin_tag, violin_staff)
        attach(Clef('treble'), violin_staff)
        attach(instrumenttools.Violin(), violin_staff)
        set_(violin_staff).midi_instrument = schemetools.Scheme(
            'violin', force_quotes=True)

        # Viola
        viola_staff = Staff(
            [Voice(name='Viola Voice')],
            name='Viola Staff',
            context_name='ViolaStaff',
            )
        viola_tag = LilyPondCommand(r"tag #'viola", format_slot='before')
        attach(viola_tag, viola_staff)
        attach(Clef('alto'), viola_staff)
        attach(instrumenttools.Viola(), viola_staff)
        set_(viola_staff).midi_instrument = schemetools.Scheme(
            'viola', force_quotes=True)

        # Cello
        cello_staff = Staff(
            [Voice(name='Cello Voice')],
            name='Cello Staff',
            context_name='CelloStaff',
            )
        cello_tag = LilyPondCommand(r"tag #'cello", format_slot='before')
        attach(cello_tag, cello_staff)
        attach(Clef('bass'), cello_staff)
        attach(instrumenttools.Cello(), cello_staff)
        set_(cello_staff).midi_instrument = schemetools.Scheme(
            'cello', force_quotes=True)

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
