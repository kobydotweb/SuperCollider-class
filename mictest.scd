(
SynthDef(\mictest, {
	var inSig, sig;

	inSig = SoundIn.ar (0, 1, 0);

	sig = DelayC.ar(inSig, 4, 4);

	sig = Limiter.ar(sig, 0.9);

	Out.ar(0,sig);

}).add
)

Synth(\mictest)