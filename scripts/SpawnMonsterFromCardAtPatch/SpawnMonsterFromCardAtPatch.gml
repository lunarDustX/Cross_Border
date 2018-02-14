///@arg card
///@arg xPatch
///@arg yPatch
var _card = argument0;
var _xPatch = argument1;
var _yPatch = argument2;

with (_card) {
	alarm[0] = irandom_range(8, 15);
	px = _xPatch;
	py = _yPatch;
}