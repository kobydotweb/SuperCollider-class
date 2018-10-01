({
	var sig1, sig2, env1, env2;

	env1 = XLine.kr(1, 2 , 4, 0, 1, doneAction: 5);

	sig1 = (SinOsc.ar(Vibrato.ar(DC.ar(400),5,0.02, 1) ) * env1);

	sig2 = (VarSaw.ar(LFPulse.kr(3, 0, 0.3, 200, 200), 0, 0.2, 0.1) * env1);

	Out.ar(0, [sig1, sig2] );

}.play;)

