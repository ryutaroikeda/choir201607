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
	\tempo 4 = 72
	d1 |
	d2 d2 |
	d4. (e8 f4) e8 d8 |
	c1 |
	c4. (d8 ees4) d8 c8 |
	b1 |
	b2 (a2) |
	a4. (b8) c2 |
	b1 \fermata |

	r8 g8 g8 e8 a8 (fis d8) fis8 |
	e2 r2 |
	r8 e8 g8 b8 a8 (fis8 g8 e8 |
	d8 e8) fis4 g2 |
	r8 e8 fis8 g8 a8 (g8 fis8 e8 |
	e8 dis8 e8) fis8 c2 |
	r8 b8 cis8 dis8 e8 (fis8 g8 a8) |
	fis2 g2 \breathe |

	d'1 |
	d1 |
	d1( |
	c1) |
	c4.( d8 e4) d8 c8 |
	b1 |
	b2 a2~ |
	a4 d4( g,2) |
	c2 c2 |
	c2 b2 \fermata \bar "||"
}

sopranoWords = \lyricmode {
	Ky -- ri -- e
	e -- le -- i -- son
	e -- le -- i -- son
	e -- le -- i -- son

	Chris -- te -- e -- le -- i -- son
	Chris -- te -- e -- le -- i -- son
	Chris -- te -- e -- le -- i -- son
	Chris -- te -- e -- le -- i -- son

	Ky -- ri -- e
	e -- le -- i -- son
	Ky -- ri -- e
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
	g1 \fermata |

	r8 g8 g8 e8 a8 (fis d8) fis8 |
	e2 r2 |
	r8 e8 g8 b8 a8 (fis8 g8 e8 |
	d8 e8) fis4 g2 |
	r8 e8 fis8 g8 a8 (g8 fis8 e8 |
	e8 dis8 e8) fis8 c2 |
	r8 b8 cis8 dis8 e8 (fis8 g8 a8) |
	fis2 g2 \breathe |

	b1 |
	b2 a2 |
	gis4. (a8 b4) a8 gis8 |
	a1 |
	a1 |
	g1~ |
	g2. fis4~ |
	fis2. e4 |
	e2 fis2 |
	g1 \fermata \bar "||"
}

altoWords = \lyricmode {
	Ky -- ri -- e
	e -- le -- i -- son

	Chris -- te -- e -- le -- i -- son
	Chris -- te -- e -- le -- i -- son
	Chris -- te -- e -- le -- i -- son
	Chris -- te -- e -- le -- i -- son

	Ky -- ri -- e
	e -- le -- i -- son
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
	g,1 \fermata |

	r8 g'8 g8 e8 a8 (fis d8) fis8 |
	e2 r2 |
	r8 e8 g8 b8 a8 (fis8 g8 e8 |
	d8 e8) fis4 g2 |
	r8 e8 fis8 g8 a8 (g8 fis8 e8 |
	e8 dis8 e8) fis8 c2 |
	r8 b8 cis8 dis8 e8 (fis8 g8 a8) |
	fis2 g2 \breathe |

	g1 |
	f1 |
	e1 |
	e4.( fis8 g4) fis8 e8 |
	d1 |
	d4.( e8 f4) e8 d8 |
	c1 |
	b1 |
	a2 d2 |
	g,1 \fermata \bar "||"
}

bassWords = \lyricmode {
	Ky -- ri -- e
	e -- le -- i -- son
	e -- le -- i -- son
	e -- le -- i -- son

	Chris -- te -- e -- le -- i -- son
	Chris -- te -- e -- le -- i -- son
	Chris -- te -- e -- le -- i -- son
	Chris -- te -- e -- le -- i -- son

	Ky -- ri -- e
	e -- le -- i -- son
	e -- le -- i -- son
	e -- le -- i -- son
}

\score {
	\layout{}
	\new ChoirStaff <<
		\new Staff {
			\set Staff.midiInstrument = #"choir aahs"
			\new Voice = "soprano" {
				\sopranoMusic
			}
		}
		\new Lyrics = "soprano"
		\new Staff {
			\set Staff.midiInstrument = #"choir aahs"
			\new Voice = "alto" {
				\altoMusic
			}
		}
		\new Lyrics = "alto"
		\new Staff {
			\set Staff.midiInstrument = #"choir aahs"
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

