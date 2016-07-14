# -*- encoding: utf-8 -*-
from abjad import *


class SegmentMaker(object):

    def __init__(self, durations):
        self.durations = durations
        self.rhythm_maker = rhythmmakertools.TaleaRhythmMaker(
            talea=rhythmmakertools.Talea([1, 2, 3, -1], 8),
            )

    def __call__(self):
        from ScoreTemplate import ScoreTemplate
        score_template = ScoreTemplate()
        score = score_template()
        score = self.add_rhythms(score, self.rhythm_maker, self.durations)
        score = self.add_pitches(score)
        score = self.add_attachments(score)
        score = self.add_midi_instruments(score)
        lilypond_file = self.prettify_score(score)
        return lilypond_file

    def __illustrate__(self):
        return self()

    def add_rhythms(self, score, rhythm_maker, durations):
        selection = select(score).by_class(Voice)
        for index, voice in enumerate(selection):
            rhythm = rhythm_maker(durations, rotation=-index)
            voice.extend(rhythm)
        return score

    def add_pitches(self, score):
        pitches = pitchtools.PitchSegment("g b d' f'")
        logical_ties = select(score).by_logical_tie(pitched=True)
        for i, logical_tie in enumerate(logical_ties):
            index = i % len(pitches)
            pitch = pitches[index]
            for note in logical_tie:
                note.written_pitch = pitch
        return score

    def add_attachments(self, score):
        selection = select(score).by_class(Voice)
        for voice in selection:
            phrase_selection = select(voice).by_leaf().by_run(Note)
            for phrase in phrase_selection:
                if len(phrase) > 1:
                    slur = Slur()
                    attach(slur, phrase)
                accent = Articulation('accent')
                attach(accent, phrase[0])
        return score

    def add_midi_instruments(self, score):
        violin_staff = score['Violin Staff']
        set_(violin_staff).midi_instrument = schemetools.Scheme(
            'violin', force_quotes=True)
        viola_staff = score['Viola Staff']
        set_(viola_staff).midi_instrument = schemetools.Scheme(
            'viola', force_quotes=True)
        cello_staff = score['Cello Staff']
        set_(cello_staff).midi_instrument = schemetools.Scheme(
            'cello', force_quotes=True)
        return score

    def prettify_score(self, score):
        override(score).spacing_spanner.strict_grace_spacing = True
        override(score).spacing_spanner.strict_note_spacing = True
        override(score).spacing_spanner.uniform_stretching = True
        override(score).stem.length = 8.25
        override(score).text_script.outside_staff_padding = 1
        override(score).tuplet_bracket.bracket_visibility = True
        override(score).tuplet_bracket.minimum_length = 3
        override(score).tuplet_bracket.outside_staff_padding = 1.5
        override(score).tuplet_bracket.padding = 1.5
        override(score).tuplet_bracket.springs_and_rods = \
            schemetools.Scheme('ly:spanner::set-spacing-rods', verbatim=True)
        override(score).tuplet_bracket.staff_padding = 2.25
        override(score).tuplet_number.text = \
            schemetools.Scheme('tuplet-number::calc-fraction-text', verbatim=True)
        set_(score).proportional_notation_duration = \
            schemetools.SchemeMoment(1, 24)
        set_(score).tuplet_full_length = True
        lilypond_file = lilypondfiletools.make_basic_lilypond_file(score)
        lilypond_file.layout_block.indent = lilypondfiletools.LilyPondDimension(20, 'mm')
        lilypond_file.layout_block.short_indent = lilypondfiletools.LilyPondDimension(15, 'mm')
        return lilypond_file
