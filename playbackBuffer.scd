// read a soundfile
s.boot;
p = Platform.resourceDir +/+ "sounds/a11wlk01.wav";
p = "/Users/kobysilverman/Desktop/404 samples/vocal/ooooh.wav"
p = "/Users/kobysilverman/Desktop/404 samples/melodic/rh_fx_synthhorn_F.wav"
//load soundfile into memory
b = Buffer.read(s, p);

// now play it
(
x = SynthDef(\playBuffer, {
	arg out = 0, bufnum, length;
    var sig;

	sig = PlayBuf.ar(
		numChannels: 1,
		bufnum: bufnum,
		rate: BufRateScale.kr(bufnum) * MouseX.kr(-100, 300),
		loop: 1);

	sig = FreeVerb.ar(sig, 0.3, 0.9, 0.1);

	Out.ar( out, sig ! 2);

}).play(s,[\bufnum, b]);
)

s.record;


p.free; b.free;














// with an action function
// note that the vars are not immediately up-to-date
(
b = Buffer.read(s, p,
	action: {
		arg buffer;
    ("After update:" + buffer.numFrames).postln;
    x = { PlayBuf.ar(1, buffer, BufRateScale.kr(buffer)) }.play;
});
("Before update:" + b.numFrames).postln;
)
x.free; b.free;



















