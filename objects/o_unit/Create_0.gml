/// @description 
var _xCell = x div CELL_WIDTH;
var _yCell = y div CELL_HEIGHT;
global.unit_grid[# _xCell, _yCell] = id;

loots = [];

patch_number = BIGNUM;
patch_number = calculate_patch_number(x, y);
patch_pos = calculate_patch_pos(x, y);

if (object_index != o_player) {
	mp_grid_add_cell(global.AIGrid, _xCell, _yCell);
}