/// @description 
var _xCell = x div CELL_WIDTH;
var _yCell = y div CELL_HEIGHT;

// 1.Remove from unit grid
ds_grid_set(global.unit_grid, x div CELL_WIDTH, y div CELL_HEIGHT, noone);

// 2.Remove from AI grid
if (global.tile_grid[# _xCell, _yCell] != noone) {
	mp_grid_clear_cell(global.AIGrid, _xCell, _xCell);
} 