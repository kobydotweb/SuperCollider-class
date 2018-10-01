// Poll MouseX to post window
{MouseX.kr.poll}.play;

// MouseX to modulate aplitude of Sine
{SinOsc.ar (200) * SinOsc.kr (0.5) * MouseX.kr}.play;

// Use MouseX UGen to drive frequency of Sine Wave
{SinOsc.ar(freq: MouseX.kr(80,1500))}.play;

// Use amplitude modulation to create complex wave forms
{SinOsc.ar (200) * SinOsc.kr (20).poll}.play;

{SinOsc.ar(freq: MouseX.kr(20,1500) ) * SinOsc.kr(MouseY.kr(0,100) ) }.play;