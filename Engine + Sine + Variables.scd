// Hello World SC-Style

// Boot the server!
Server.default.boot;

// Empty SynthDef
{}.play;


// 440Hz Sine
{SinOsc.ar}.play;


// With Variable Frequency

{SinOsc.ar(600)}.play;

// With Explicit Parameter Name

{SinOsc.ar( freq: 200 )}.play;

// Include amp control
{ SinOsc.ar( 200, 0, 1.0 ) }.play;
{ SinOsc.ar( freq:200, mul:1) }.play;


//SynthDef Exploring Control Rate
{ MouseX.kr().poll }.play;


// Use a control rage UGen to modulate amplitude of SinOsc
{SinOsc.ar( 200, mul: MouseX.kr ) }.play;


// Applied to the output of the SinOsc
{SinOsc.ar(200) * MouseX.kr }.play;


// Applied to the frequency of the SinOsc
{SinOsc.ar( freq: 80 + (400 * MouseX.kr), mul: 0.707) }.play;
