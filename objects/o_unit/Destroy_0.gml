/// @description 
for (var i = 0; i < array_length_1d(loots); i++) {
	with (instance_create_layer(x, y, "Instances", loots[i])) {
		alarm[0] = seconds_to_steps(1);	
	}
}

mp_grid_clear_cell(global.AIGrid, x div CELL_SIZE, y div CELL_SIZE);