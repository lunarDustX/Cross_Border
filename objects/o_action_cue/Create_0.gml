/// @description Find visual cue for actions

//bad_tiles_arr = o_player.bad_tiles_arr;

// 0.no action 1.move 2.attack 3.wait
for (var j=0; j<3; j++) {
	for (var i=0; i<3; i++) {
		if (j==1 && i==1) {
			active_cues[i, j] = 3;
			continue;
		}
		var _x = (x-CELL_WIDTH)+i*CELL_WIDTH;
		var _y = (y-CELL_HEIGHT)+j*CELL_HEIGHT;
		active_cues[i, j] = grid_place_free(_x, _y) && point_distance(x, y, _x, _y) < (CELL_WIDTH + 1);
		var _monster = global.unit_grid[# _x div CELL_WIDTH, _y div CELL_HEIGHT];
		if (_monster != noone && is_in_array(_monster.object_index, o_player.targets_arr)) {
			active_cues[i, j] = 2;
		}
	}
}
