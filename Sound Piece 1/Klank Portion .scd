//SynthDef Klank
(
SynthDef(\klank, {
	arg freq1 = 900, freq2 = 950;
	var env, sig;

	env = Line.kr(1, 0, 0.7, doneAction: 2);
	sig = Klank.ar(`[[freq1, freq2, 1000, 1000], nil, [1, 1, 1, 1]], Impulse.ar(2, 0, 0.3)) * env;

	Out.ar(0, sig!2);

}).add;
)

// TASK RUN
(
z = Task({ inf.do({
	Synth(\klank, [\freq1, 800, \freq2, 100]);
	0.5.wait;
});
}).play;
)

//Change TempoClock
t = TempoClock.default
t.tempo = 150/60;

s.record