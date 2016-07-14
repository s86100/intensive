# -*- encoding: utf-8 -*-
from abjad import Duration
from abjad import show
from SegmentMaker import SegmentMaker


durations = [Duration(4, 4)] * 4
segment_maker = SegmentMaker(durations)


if __name__ == '__main__':
    show(segment_maker)
