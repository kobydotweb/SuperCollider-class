//Timed Routine

(
{
	"hey Forrest".postln;
	2.wait;
	"hey Koby".postln;
	1.wait;
	"Hey Eric".postln;
	2.wait;
	"dooooo".postln;

}.fork;
)


//Walking through a Routine

(
a = Routine.new ( { 1.yield; 2.yield; } );
a.dump
a.next.postln;
a.next.postln;
a.next.postln;
)

////////////////////////
