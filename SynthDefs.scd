(
SynthDef(\whatever, {
	arg freq = 200, mul = 0.7;
	var sig;

	sig = SinOsc.ar(freq, mul:mul);

	Out.ar (0, sig!2);
}).add;
)

Synth(\whatever)


a = Synth(\whatever)
a.set(\freq, 450)
a.set(\mul,0.1)

Synth(\whatever, args: [\freq, 800, \mul, 0.5]);

a.getMsg(\freq, {arg value; ("freq is now:" + value + "Hz").postln;});
a.free

