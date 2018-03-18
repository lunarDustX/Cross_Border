/// @description 
var _xCell = x div CELL_WIDTH;
var _yCell = y div CELL_HEIGHT;
if (global.tile_grid[# _xCell, _yCell] == noone) {
	// special case bat?
} else {
	mp_grid_clear_cell(global.AIGrid, _xCell, _xCell);
}