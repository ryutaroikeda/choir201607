SOUNDFONT=/usr/share/soundfonts/FluidR3_GM2-2.sf2

midi: choir201607.midi

wav: choir201607.wav

choir201607.midi: choir201607.ly
	lilypond $<

choir201607.wav: midi choir201607.ly
	fluidsynth -F $@ ${SOUNDFONT} choir201607.midi

play:
	fluidsynth -a alsa -m alsa_seq -l -i ${SOUNDFONT} choir201607.midi

.PHONY: midi play wav
