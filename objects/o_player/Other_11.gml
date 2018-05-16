/// @description action
if (instance_exists(o_gameover)) exit;
if (o_camera.cameraLock) exit;

RestoreMana();

#region action cue

if (!instance_exists(o_action_cue)) {
	instance_create_layer(x, y, "Instances", o_action_cue);
}

#endregion

#region webbed
if (webbed) {
	if (mouse_check_button_pressed(mb_left)) { 
		// Get Rid of WEB
		if (x == snap_value(mouse_x, CELL_WIDTH) && y == snap_value(mouse_y, CELL_HEIGHT)) {
			
			change_state(PLAYER.wait);
			
			instance_destroy(myWeb);
			myWeb = noone;
			webbed = false;
			image_speed = 1;
			
			with (instance_create_layer(x+CELL_WIDTH/2, y-CELL_HEIGHT/2, "Instances", o_text)) {
				textColor = c_lime;
				text = "挣脱";
			}
			
			if (instance_exists(o_action_cue)) {
				instance_destroy(o_action_cue);
			}
		}
	}
	exit;
}
#endregion

#region frozen
	if (myIce != noone) {
		if (mouse_check_button_pressed(mb_left)) { 
			// Get Rid of ICE
			if (x == snap_value(mouse_x, CELL_WIDTH) && y == snap_value(mouse_y, CELL_HEIGHT)) {
			
				change_state(PLAYER.wait);
			
				instance_destroy(myIce);
				myIce = noone;
				image_speed = 1;
			
				with (instance_create_layer(x+CELL_WIDTH/2, y-CELL_HEIGHT/2, "Instances", o_text)) {
					textColor = c_lime;
					text = "挣脱";
				}
			
				if (instance_exists(o_action_cue)) {
					instance_destroy(o_action_cue);
				}
			}
		}
		exit;
	}
#endregion

// ACTION
#region WAIT, Move, Attack

CheckNumpadInputs();

CheckMouseInputs();

#endregion

#region Frozen Magic [Keyboard Control]
if (keyboard_check_pressed(vk_numpad0)) {
	if (mana >= 2) {
		mana -= 2;
		magic = MAGIC.ice;
		change_state(PLAYER.magic);
		if (instance_exists(o_action_cue)) {
			instance_destroy(o_action_cue);
		}
	} else {
		// PlaySound
		with (create_textbox_at_center("法力不足")) {
			alarm[0] = seconds_to_steps(1.0);	
		}
	}
}
#endregion

#region Fire Magic [Keyboard Control]
if (keyboard_check_pressed(vk_enter)) {
	if (mana >= 3) {
		mana -= 3;
		magic = MAGIC.fire;
		change_state(PLAYER.magic);
		if (instance_exists(o_action_cue)) {
			instance_destroy(o_action_cue);
		}
	} else {
		// PlaySound
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
		if (mana >= 0) { // Teleport
			mana -= 0;
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

