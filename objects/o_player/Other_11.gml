/// @description action
if (instance_exists(o_gameover)) exit;
if (o_camera.cameraLock) exit;

#region action cue

if (!instance_exists(o_action_cue)) {
	instance_create_layer(x, y, "Instances", o_action_cue);
}

#endregion

// ACTION
#region Frozen Magic
if (keyboard_check_released(ord("F"))) {
	if (mana >= MAGIC_COST) {
		mana -= MAGIC_COST;
		//FrozenMagic();	
		change_state(PLAYER.magic);
		if (instance_exists(o_action_cue)) {
			instance_destroy(o_action_cue);
		}
		exit;
	}
}
#endregion
#region Teleport Magic
if (mouse_check_button_pressed(mb_right)) {
	var _x = snap_value(mouse_x, CELL_WIDTH);
	var _y = snap_value(mouse_y, CELL_HEIGHT);
	if (grid_place_free(_x, _y)) {
		if (mana >= MAGIC_COST) { // Teleport
			mana -= MAGIC_COST;
			x = _x;
			y = _y;
			UpdatePlayerStateAfterMoving();
			change_state(PLAYER.wait);
			if (instance_exists(o_action_cue)) {
				instance_destroy(o_action_cue);
			}
			exit;
		}
	}
}
#endregion
#region Move OR Attack
if (mouse_check_button_pressed(mb_left)) {
	xnext = snap_value(mouse_x, CELL_WIDTH);
	ynext = snap_value(mouse_y, CELL_HEIGHT);

	var _dis = point_distance(x, y, xnext, ynext);
	if (grid_place_free(xnext, ynext) && _dis < (CELL_WIDTH + 1)) {
		// Move
		change_state(PLAYER.move);
		if (instance_exists(o_action_cue)) {
			instance_destroy(o_action_cue);
		}
	} else {
		// Attack
		var unit = global.unit_grid[# xnext div CELL_WIDTH, ynext div CELL_HEIGHT];
		if (unit && _dis < CELL_WIDTH*2) { 
			if (object_is_ancestor(unit.object_index, o_moving_unit)) {
				if (is_in_array(unit.object_index, target_arr)) {
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
#endregion
