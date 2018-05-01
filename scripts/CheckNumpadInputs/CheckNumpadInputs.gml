xnext = BIGNUM;
ynext = BIGNUM;

if (keyboard_check_pressed(vk_numpad5)) {
	change_state(PLAYER.wait);
	if (instance_exists(o_action_cue)) {
		instance_destroy(o_action_cue);
	}	
}

if (keyboard_check_pressed(vk_numpad8)) {
	xnext = x;
	ynext = y - CELL_HEIGHT; //snap_value(y-CELL_HEIGHT, CELL_HEIGHT);
}

if (keyboard_check_pressed(vk_numpad2)) {
	xnext = x;
	ynext = y + CELL_HEIGHT; //snap_value(y-CELL_HEIGHT, CELL_HEIGHT);
}

if (keyboard_check_pressed(vk_numpad4)) {
	xnext = x-CELL_WIDTH;
	ynext = y;
}

if (keyboard_check_pressed(vk_numpad6)) {
	xnext = x+CELL_WIDTH;
	ynext = y;
}

if (keyboard_check_pressed(vk_numpad7)) {
	xnext = x-CELL_WIDTH;
	ynext = y-CELL_HEIGHT;
}

if (keyboard_check_pressed(vk_numpad3)) {
	xnext = x+CELL_WIDTH;
	ynext = y+CELL_HEIGHT;
	
}

if (keyboard_check_pressed(vk_numpad9)) {
	xnext = x+CELL_WIDTH;
	ynext = y-CELL_HEIGHT;
}

if (keyboard_check_pressed(vk_numpad1)) {
	xnext = x-CELL_WIDTH;
	ynext = y+CELL_HEIGHT;
}


if (xnext != BIGNUM && ynext != BIGNUM) {
	
	var _dis = point_distance(x, y, xnext, ynext);
	if (grid_place_free(xnext, ynext) && _dis < (CELL_WIDTH + 1)) {
		// MOVE
		change_state(PLAYER.move);
		if (instance_exists(o_action_cue)) {
			instance_destroy(o_action_cue);
		}
	} else {
		// ATTACK
		var unit = global.unit_grid[# xnext div CELL_WIDTH, ynext div CELL_HEIGHT];
		if (unit && _dis < CELL_HEIGHT*2) { 
			if (object_is_ancestor(unit.object_index, o_moving_unit)) {
				if (is_in_array(unit.object_index, targets_arr)) {
					// Attack
					change_state(PLAYER.attack);
					if (instance_exists(o_action_cue)) {
						instance_destroy(o_action_cue);
					}
				} 
			} else {
				
			}
		}
	}
}


/*
if (mouse_check_button_pressed(mb_left)) {
	xnext = snap_value(mouse_x, CELL_WIDTH);
	ynext = snap_value(mouse_y, CELL_HEIGHT);

	var _dis = point_distance(x, y, xnext, ynext);
	if (grid_place_free(xnext, ynext) && _dis < (CELL_WIDTH + 1)) {
		// MOVE
		change_state(PLAYER.move);
		if (instance_exists(o_action_cue)) {
			instance_destroy(o_action_cue);
		}
	} else {
		// ATTACK
		var unit = global.unit_grid[# xnext div CELL_WIDTH, ynext div CELL_HEIGHT];
		if (unit && _dis < CELL_HEIGHT*2) { 
			if (object_is_ancestor(unit.object_index, o_moving_unit)) {
				if (is_in_array(unit.object_index, targets_arr)) {
					// Attack
					change_state(PLAYER.attack);
					if (instance_exists(o_action_cue)) {
						instance_destroy(o_action_cue);
					}
				} else if (unit == id){ // Click Self
					// Wait
					change_state(PLAYER.wait);
					if (instance_exists(o_action_cue)) {
						instance_destroy(o_action_cue);
					}
				}
			} else {
				
			}
		}
	}
}