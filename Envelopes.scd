({
	var sig, env;

	env = Line.ar(1, 200, 8) -1;

	sig = SinOsc.ar(env);

	Out.ar( 0, sig ! 2);

}.play;)


({
	var sig, env;


	env = Env.new(
		levels: [0,1,3,1,0],
		times: [0,1,0.5,1,0],
		curve: 'exp'
	);

		env = EnvGen.kr(env, gate: MouseButton.kr(0,1,0), levelScale: 0.707, doneAction: 2);

	sig = SinOsc.ar(400) * env;

	Out.ar (0, sig ! 2)

}.play;)