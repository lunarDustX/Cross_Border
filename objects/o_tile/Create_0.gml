/// @description
/*
// 1. no anim version
global.tile_grid[# x div CELL_WIDTH, y div CELL_HEIGHT] = id;
*/

// 2. anim version
var _xCell = x div CELL_WIDTH;
var _yCell = (y-TILE_UP_DIS-BIGNUM) div CELL_HEIGHT; 

if (object_index == o_bridge_tile) {
	_xCell = x div CELL_WIDTH;
	_yCell = y div CELL_HEIGHT; 	
}
global.tile_grid[# _xCell, _yCell] = id;
targetY = y;
