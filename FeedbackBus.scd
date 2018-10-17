~fbBus = Bus.audio;

// use bus to create internal feedback loop
// note: requires InFeedback to read from previous cycle on bus

(
SynthDef(\feedbackDelay, {
	arg micIn = 0;
	var sig, inSig, fbSig;

	inSig = SoundIn.ar(micIn);

	fbSig = InFeedback.ar(~fbBus);

	sig = Mix([inSig, fbSig]);

	sig = DelayC.ar(sig, 2, 2);

	Out.ar(~fbBus, sig);

	Out.ar(0, sig);

}).add;
)

Synth(\feedbackDelay)

