/// @description move
if (!moving(xnext, ynext, SPEED)) { // after moving
	// update unit grid
	global.unit_grid[# xpre div CELL_SIZE, ypre div CELL_SIZE] = noone;
	global.unit_grid[# x div CELL_SIZE, y div CELL_SIZE] = id;
	// reset position vars
	yoffset = 0;
	xpre = x;
	ypre = y;
	
	// update AI Grid 
	mp_grid_add_cell(global.AIGrid, x div CELL_SIZE, y div CELL_SIZE);
	
	// convert or not
	UpdateMonsterState();
	
	// change state
	if (moves > 0) {
		moves--;
		change_state(BAT.action);
	} else {
		next_unit();
		change_state(BAT.wait);
	}
	
	
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
} else { // moving to target position
	var _total_distance = point_distance(xpre, ypre, xnext, ynext);
	var _distance = point_distance(xpre, ypre, x, y,);
	yoffset = abs(sin(pi/(_total_distance/_distance)))*JUMP_HEIGHT;
	image_xscale = (x == xnext)? image_xscale : sign(xnext-x)*(-1);
}

