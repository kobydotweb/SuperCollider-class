// Additive Synthesis

({ arg baseFreq = 200;
	var sig1, sig2, sig3, sig4, outSig;

	sig1 = SinOsc.ar ( baseFreq, mul: 0.5);
	sig2 = SinOsc.ar (baseFreq * 2, mul: 0.5);
	sig3 = SinOsc.ar (baseFreq * 3, mul: 0.5);
	sig4 = SinOsc.ar (baseFreq * 4, mul: 0.5);

	outSig = Mix([sig1, sig2, sig3, sig4]);
	Out.ar( 0, outSig);

}.play)

// Subtractive Synthesis

({
	var sig;

	sig = BrownNoise.ar(0.707);

	sig = RLPF.ar (sig, freq: MouseX.kr(100,18000));

}.play;)

({
	var sig;
	sig = PinkNoise.ar (0.5);

	sig = LPF.ar (sig, freq: MouseY.kr(0,1800));


}.play;)
