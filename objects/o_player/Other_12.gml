///@description move
// Update the yoffset
if (!moving(xnext, ynext, SPEED)) {
	//ds_grid_set(global.unit_grid, xpre div CELL_SIZE, ypre div CELL_SIZE, noone);
	//ds_grid_set(global.unit_grid, x div CELL_SIZE, y div CELL_SIZE, id);
	global.unit_grid[# xpre div CELL_SIZE, ypre div CELL_SIZE] = noone;
	global.unit_grid[# x div CELL_SIZE, y div CELL_SIZE] = id;
	// reset
	yoffset = 0;
	xpre = x;
	ypre = y;
	
	// change state
	state = PLAYER.wait;
	o_game.state = TURN.computer;
	/*
	if (object_index == o_bat) {
		if (moves > 0) {
			moves--;
			change_states(action_state, [false]);
		} else {
			moves = 1;
			event_user(END_TURN);
		}
	} else {
		event_user(END_TURN);
	}
	*/
	
	//audio_play_sound(a_land, 5, false);
} else {
	var _total_distance = point_distance(xpre, ypre, xnext, ynext);
	var _distance = point_distance(xpre, ypre, x, y,);
	yoffset = abs(sin(pi/(_total_distance/_distance)))*JUMP_HEIGHT;
	image_xscale = (x == xpre) ? image_xscale : sign(xnext-x);
}
