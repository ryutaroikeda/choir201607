%{ A piece for the Brainlabs choir %}
\version "2.18.2"
\header {
	title = "Kyrie"
	composer = "Ryutaro Ikeda"
	subtitle = "July 2016"
}

sopranoMusic = \relative c'' {
	\clef "treble"
	\key g \major
	\time 4/4
	\tempo 4 = 80
	d1 |
	d2 d2 |
	d4. (e8 f4) e8 d8 |
	c1 |
	c4. (d8 ees4) d8 c8 |
	b1 |
	b2 (a2) |
	a4. (b8) c2 |
	b2 r2 |
}

sopranoWords = \lyricmode {
	Ky -- ri -- e
	e -- le -- i -- son
	e -- le -- i -- son
	e -- le -- i -- son
}

altoMusic = \relative c'' {
	\clef "treble" 
	\key g \major
	\time 4/4
	b1 |
	b1 |
	b1 |
	b2 (a2)~ |
	a1 |
	g1~ |
	g1~ |
	g2 fis2 |
	g2 r2 |
}

altoWords = \lyricmode {
	Ky -- ri -- e
	e -- le -- i -- son
}

bassMusic = \relative c' {
	\clef "bass" 
	\key g \major
	\time 4/4
	g1 |
	fis1 |
	f1 |
	e4. (fis8 g4) fis8 e8 |
	ees1 |
	d4. (e8 f4) e8 d8 |
	cis2 cis2 |
	d2 d2 |
	g,2 r2 |
}

bassWords = \lyricmode {
	Ky -- ri -- e
	e -- le -- i -- son
	e -- le -- i -- son
	e -- le -- i -- son
}

\score {
	\layout{}
	\new ChoirStaff <<
		\new Staff {
			\set Staff.midiInstrument = #"oboe"
			\new Voice = "soprano" {
				\sopranoMusic
			}
		}
		\new Lyrics = "soprano"
		\new Staff {
			\set Staff.midiInstrument = #"oboe"
			\new Voice = "alto" {
				\altoMusic
			}
		}
		\new Lyrics = "alto"
		\new Staff {
			\set Staff.midiInstrument = #"oboe"
			\new Voice = "bass" {
				\bassMusic
			}
		}
		\new Lyrics = "bass"
		\context Lyrics = "soprano" {
			\lyricsto "soprano" {
				\sopranoWords
			}
		}
		\context Lyrics = "alto" {
			\lyricsto "alto" {
				\altoWords
			}
		}
		\context Lyrics = "bass" {
			\lyricsto "bass" {
				\bassWords
			}
		}
	>>
	\midi{
	}
}

