//BLIP

({
var sig;

	sig = Blip.ar(MouseX.kr(0,100).poll, numhar: MouseY.kr(0,2000).poll, mul:0.7);

	Out.ar(0, sig!2)

}.play;)


//DUST


({
var sig;

	sig = Dust.ar(MouseX.kr(0,100).poll, mul:0.7);
	sig = sig.ceil();

	Out.ar(0, sig!2)

}.play;)

//LFNOISE

({
	var freq, sig;

	freq = LFNoise0.ar(1).poll;

	freq = freq.range(200, 400);

	sig = SinOsc.ar(freq, mul: 0.7);


}.play;)