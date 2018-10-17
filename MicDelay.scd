


~mic = Bus.audio()


//basic input synth

(
SynthDef(\in, {
	arg micIn = 0, outBus = 0;
	var sig;

	sig = SoundIn.ar(micIn);

	sig = DelayC.ar(sig, 1, -1);

	Out.ar(outBus, sig);

}).add;
)



//effects synth

(
SynthDef(\poppingAudio, {
	arg inBus = 0, outBus = 0, popRate = 1;
	var sig;

	sig = In.ar(inBus);

	sig = sig * Linen.kr(line.kr(1,0,0.1), doneAction:2);

	sig = Limiter.ar(sig, 1.0);

	Out.ar(outBus, sig);
}).add;
)

Synth(\poppingAudio, [\inBus, ~mic]);