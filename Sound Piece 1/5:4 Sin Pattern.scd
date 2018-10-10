
(
SynthDef(\whatever, {
	var freq, sig, env;

	sig = SinOsc.ar(freq = 432);

	Out.ar (0, sig!2);

}).add;
)

Synth(\whatever)

a = Synth(\whatever)

Pbind(\instrument, \whatever, \freq, Prand([0, 5, 1, 5, 3, 4], inf), \dur, 0.2).play;



