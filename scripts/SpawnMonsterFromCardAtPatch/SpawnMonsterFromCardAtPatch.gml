///@arg card
///@arg xPatch
///@arg yPatch
var _card = argument0;
var _xPatch = argument1;
var _yPatch = argument2;

with (_card) {
	//alarm[0] = seconds_to_steps(0.1);
	alarm[0] = seconds_to_steps(2.2);
	px = _xPatch;
	py = _yPatch;
}