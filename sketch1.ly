%{ A piece for the Brainlabs choir %}
\version "2.18.2"
\header {
	title = "Kyrie"
	composer = "Ryutaro Ikeda"
	subtitle = "July 2016"
}

sopranoMusic = \relative c'' {
	\clef "treble"
	\key d \major
	\time 4/4
	\tempo 4 = 80
	a1 |
	a1 |
	a4. b8 c4 b8 a8 |
	g1 |
	g4. a8 b4 a8 g8 |
	fis1 |
	f4. g8 a4 g8 f8 |
	e1 |
	
}

sopranoWords = \lyricmode {
	Ky -- ri -- e
}

altoMusic = \relative c' {
	\clef "treble" 
	\key d \major
	\time 4/4
	fis1 |
	fis1 |
	fis1~ |
	fis2 e2~ |
	e1 |
	c4. d8 e4 d8 c8 |
	b1 |
	cis1 |
}

altoWords = \lyricmode {
	Ky -- ri -- e
}

bassMusic = \relative c {
	\clef "bass" 
	\key d \major
	\time 4/4
	d1 |
	cis1 |
	c1 |
	b4. cis8 d4 cis8 b8 |
	a1 |
	d1 |
	g,1 |
	a4. b8 cis4 b8 a8 |
}

bassWords = \lyricmode {
	Ky -- ri -- e
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

