Abjad bootcamp: schedule
========================

* Monday: notes, rests & chords
    * 9 am - 9:30 am: logistical introduction
    * 9:30 am - 10 am: introduction (who we are play some music) [JJT]
    * 10 am - 10:30 am: LilyPond installation workshop [Josiah+J+T]
        * introducing bash
        * getting to know your text editor
        * hello world: writing and compliling test.ly
    * 10:30 - noon: LilyPond overview [Trevor]
    * noon - 1 pm: lunch
    * 1 - 2:30 pm: Abjad installation workshop [Josiah+J+T]
        * introducing Python
        * introducing pip
        * introducing git clone
        * introducing virtualenv (?)
        * hello world: show(note)
    * 2:30 - 3 pm: snack I
    * 3 - 4:30 pm: making notes, rests, chords (lots of them) in Abjad [Jeff]
        * hello world: show(note)
    * 4:30  - 5 pm: snack II
    * 5 - 6 pm: going further:
        * bulleted list of Abjad use cases [???]
        * chart of chords [???]
        * experiment with patterns in nature [???]
        * vary compositional motifs [???]
        * engrave parametric scores [???]

* Tuesday: structuring scores
    * 10:00 - 10:30 am: demo #2: Content TBD [Trevor]
    * 10:30 am - noon: Engraving a Bach chorale in LilyPond [Jeff]
    * noon - 1 pm: lunch
    * 1 - 2:30 pm: rhythms and rhythm-makers [Jeff]
        * complex rhythms bottom-up in Abjad
        * complex rhythms with rhythm-makers in Abjad
    * 2:30 - 3 pm: snack I
    * 3 - 4:30 pm: going further with Abjad containers [Jeff]
        * voices, staves, staff groups, score
        * indexing and slicing
        * rewriting meter
        * score structure: solos, duos, quartets, orchestra
        * introducing selection, inspection, mutation
    * 4:30  - 5 pm: snack II
    * 5 - 6 pm: going further:
        * teasers for Wednesday [Trevor]

* Wednesday: reproducing a (beautiful & complex) realworld score
    * 10:00 - noon: Rhythmmakers demo [Josiah]
      * rhythmmaker demo
      * make additive rhythmmaker output that demands to be rewritten, which motivates slicing, selection, and mutation as rewriting Meter 
      * select runs of notes and chords
      * programmatically add accents
    * noon-1: lunch
    * 2-5 pm: engraving complex cello music in LilyPond [Trevor]
        * grobs, contexts, context settings
        * three waves of work for attendees:
            * first (2-4): .ly file with all overrides made in-line to note entry
            * second (4-4:30): \header and \layout externalized in .ly file
            * third: (4:30-4:45) \header and \layout externalized to stylesheet.ily
    
    * 8 - 8:30 pm: evening performance
        * Traiettorie inargentate [Séverine]

* Thursday: Abjad score package structure
    * 10:30 am - noon: building complex cello music in Abjad [Trevor] 
    * noon-1: lunch
    * 1-6 - introducing Abjad score package structure [Josiah]
        * 1 intro
        * 1:10 LilyPond context concatenation
        * 1:30 cascading LilyPond settings
        * 1:50 LilyPond part extraction
        * 2:10 External style sheets
        * 2:30-2:50 break
        * 2:50 dissecting a real-world score
            * 2:50 score repository directory
            * 3 score package directory
            * 3:10 materials
            * 3:20 tools (score template; segment maker)
            * 3:50 segments
            * 4 stylesheets
            * 4:10 the build directory
            * 4:20 anatomy of a build target
            * 4:30 putting it all together

* Friday: document structure (publication and more on project layout)
    * 10:00 - 10:30 am: demo #5: MIDI, SuperCollider & friends [Josiah]
    * 10:30 am - noon: [???]
    * noon - 1 pm: lunch
    * 1 - 2:30 pm: [???]
    * 2:30 - 3 pm: snack I
    * 3 - 4:30 pm: [???]
    * 4:30  - 5 pm: snack II
    * 5 - 6 pm: going futher:
        * getting the most out of version control [Josiah]
        * introducting continous integration testing [Josiah]
        * nCoda teaser [Jeff]
        * introduction to working in a technology company [Trevor+Josiah]

* Note: Author list of course objectives: "At the end of this course,
  participatns will be able to ..." etc.

* Note: talk to Sév about guest appearance

* Note: talk amongst ourselves about parametric score layout tutorials

* Note: workshop repository on GitHub with goal to expose users to GitHub 
    without forcing use
