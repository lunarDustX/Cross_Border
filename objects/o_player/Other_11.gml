/// @description action
if (instance_exists(o_gameover)) exit;
if (o_camera.cameraLock) exit;

RestoreMana();

// webbed
if (webbed) {
	if (!instance_exists(o_web_button)) {
		instance_create_depth(global.view_width/2, 400, depth-1, o_web_button);
	} 
	exit;
}

#region action cue

if (!instance_exists(o_action_cue)) {
	instance_create_layer(x, y, "Instances", o_action_cue);
}

#endregion

// ACTION
#region Frozen Magic
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("F"))) {
	if (mana >= MAGIC_COST) {
		mana -= MAGIC_COST;
		//PlaySound();
		change_state(PLAYER.magic);
		if (instance_exists(o_action_cue)) {
			instance_destroy(o_action_cue);
		}
		exit;
	} else {
		//PlaySound();
		with (create_textbox_at_center("法力不足")) {
			alarm[0] = seconds_to_steps(1.0);	
		}
	}
}
#endregion

#region Teleport Magic
if (mouse_check_button_pressed(mb_right)) {
	var _x = snap_value(mouse_x, CELL_WIDTH);
	var _y = snap_value(mouse_y, CELL_HEIGHT);
	if (grid_place_free(_x, _y)) {
		if (mana >= 1) { // Teleport
			mana -= 1;
			x = _x;
			y = _y;
			UpdatePlayerStateAfterMoving();
			change_state(PLAYER.wait);
			if (instance_exists(o_action_cue)) {
				instance_destroy(o_action_cue);
			}
			exit;
		} else {
			with (create_textbox_at_center("法力不足")) {
				alarm[0] = seconds_to_steps(1.0);	
			}
			//PlaySound();
		}
	}
}
#endregion

#region Move OR Attack

CheckNumpadInputs();

CheckMouseInputs();

#endregion
