/// @description 
if (object_index == o_bat && global.tile_grid[# x div CELL_WIDTH, y div CELL_HEIGHT] == noone) {
	// special case
} else {
	mp_grid_clear_cell(global.AIGrid, x div CELL_WIDTH, y div CELL_HEIGHT);
}