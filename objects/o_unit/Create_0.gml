/// @description 
global.unit_grid[# x div CELL_SIZE, y div CELL_SIZE] = id;
loots = [];

patch_number = BIGNUM;
patch_number = calculate_patch_number(x, y);
patch_pos = calculate_patch_pos(x, y);

if (object_index != o_player) {
	mp_grid_add_cell(global.AIGrid, x div CELL_SIZE, y div CELL_SIZE);
}