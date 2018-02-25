/// @description action
if (!instance_exists(o_action_cue)) {
	instance_create_layer(x, y, "Instances", o_action_cue);
}

// Get the action
if (keyboard_check_released(ord("F"))) {
	if (mana >= 2) {
		mana -= 2;
		FrozenMagic();	
		change_state(PLAYER.wait);
		if (instance_exists(o_action_cue)) {
			instance_destroy(o_action_cue);
		}
		exit;
	}
}


if (mouse_check_button_pressed(mb_left)) {
	xnext = snap_value(mouse_x, CELL_WIDTH);
	ynext = snap_value(mouse_y, CELL_HEIGHT);

	// Take Action
	var _dis = point_distance(x, y, xnext, ynext);
	if (grid_place_free(xnext+8, ynext+8) && _dis < (CELL_WIDTH + 1)) {
		// Try to Move
		state = PLAYER.move;
		if (instance_exists(o_action_cue)) {
			instance_destroy(o_action_cue);
		}
	} else {
		// Try to attack
		var unit =	global.unit_grid[# xnext div CELL_WIDTH, ynext div CELL_HEIGHT];
		if (unit && _dis < CELL_WIDTH*2) { 
			if (object_is_ancestor(unit.object_index, o_moving_unit)) {
				if (is_in_array(unit.object_index, target_arr)) {
					// Attack
					change_state(PLAYER.attack);
					if (instance_exists(o_action_cue)) {
						instance_destroy(o_action_cue);
					}
				} else if (unit == id){
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
