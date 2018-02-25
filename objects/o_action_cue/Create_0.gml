/// @description Find visual cue for actions
bad_tile_arr = o_player.bad_tile_arr;

for (var j=0; j<3; j++) {
	for (var i=0; i<3; i++) {
		if (j==1 && i==1) continue;
		var _x = (x-CELL_SIZE)+i*CELL_SIZE;
		var _y = (y-CELL_SIZE)+j*CELL_SIZE;
		active_cues[i, j] = grid_place_free(_x, _y) && point_distance(x, y, _x, _y) == o_player.spd *CELL_SIZE;
		var _monster = global.unit_grid[# _x/CELL_SIZE, _y/CELL_SIZE];
		if (_monster != noone && is_in_array(_monster.object_index, o_player.target_arr)) {
			active_cues[i, j] = 2;
		}
	}
}
