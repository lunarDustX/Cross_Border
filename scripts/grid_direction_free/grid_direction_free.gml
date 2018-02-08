///@arg x
///@arg y
///@arg direction
var _x = argument0;
var _y = argument1;
var _dir = argument2;

var _xnext = _x + lengthdir_x(CELL_SIZE, _dir);
var _ynext = _y + lengthdir_y(CELL_SIZE, _dir);
return grid_place_free(_xnext, _ynext);
