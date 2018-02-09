/// @description action
if (!instance_exists(o_action_cue)) {
	instance_create_layer(x, y, "Instances", o_action_cue);
}

// Get the action
if (mouse_check_button_pressed(mb_left)) {
	xnext = snap_value(mouse_x, CELL_SIZE);
	ynext = snap_value(mouse_y, CELL_SIZE);

	// Take Action
	var _dis = point_distance(x, y, xnext, ynext);
	if (grid_place_free(xnext+8, ynext+8) && _dis == CELL_SIZE * spd) {
		// Try to Move
		state = PLAYER.move;
		if (instance_exists(o_action_cue)) {
			instance_destroy(o_action_cue);
		}
	} else {
		// Try to attack
		var unit =	global.unit_grid[# xnext/CELL_SIZE, ynext/CELL_SIZE];
		if (unit && _dis < CELL_SIZE*2) { 
			if (object_is_ancestor(unit.object_index, o_moving_unit)) {
				if (is_in_array(unit.object_index, target_arr)) {
					// Attack
					state = PLAYER.attack;
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
