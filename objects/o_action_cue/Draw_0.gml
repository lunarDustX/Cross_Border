/// @description 
for (var j=0; j<3; j++) {
	for (var i=0; i<3; i++) {
		var _x = (x-CELL_WIDTH)+i*CELL_WIDTH;
		var _y = (y-CELL_HEIGHT)+j*CELL_HEIGHT;
		if (active_cues[i, j] == 1) {
			//draw_sprite_ext(s_move_action_cue, 0, _x, _y, 1, 1, 0, c_white, .5);
			draw_set_alpha(0.3);
			draw_set_color(c_lime);
			draw_rectangle(_x, _y, _x+CELL_WIDTH, _y+CELL_HEIGHT, false);
			draw_set_alpha(1);
			draw_set_color(c_white);
		} else if (active_cues[i, j] == 2) {
			//draw_sprite_ext(s_move_action_cue, 0, _x, _y, 1, 1, 0, c_red, .5);
			draw_set_alpha(0.3);
			draw_set_color(c_red);
			draw_rectangle(_x, _y, _x+CELL_WIDTH, _y+CELL_HEIGHT, false);
			draw_set_alpha(1);
			draw_set_color(c_white);
		}
	}
}

