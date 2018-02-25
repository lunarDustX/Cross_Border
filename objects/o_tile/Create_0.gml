/// @description
/*
// 1. no anim version
global.tile_grid[# x div CELL_SIZE, y div CELL_SIZE] = id;
*/

// 2. anim version
var _xCell = x div CELL_SIZE;
var _yCell = (y-TILE_UP_DIS-BIGNUM) div CELL_SIZE;
global.tile_grid[# _xCell, _yCell] = id;
targetY = y;
