({
	var sig1, sig2, env;

	env = XLine.kr (1, 2, 1, 0.5, -1);

	env = Env.new ([1.0, 0.5, 1.0, 0],
		times: [ 1, 0, 0.5, 1, ]);

	sig1 = (SinOsc.ar(Vibrato.ar(DC.ar(400),5,0.02, 1) ));

	sig2 = ({ VarSaw.ar(LFPulse.kr(3, 0, 0.3, 200, 200), 0, 0.2, 0.1) });


	Out.ar(0, [sig1, sig2] );

}.play;)

