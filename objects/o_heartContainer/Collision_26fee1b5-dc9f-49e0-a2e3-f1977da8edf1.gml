/// @description 
if (!canpick) exit;

if (other.state == PLAYER.wait) {
	if (!in_same_cell(self, other)) exit;
	
	// PICK UP
	instance_destroy(); // destroy the heartContainer
	other.maxhp++;
	with (o_ui_control) {
		var hp = instance_create_depth(1374 + (o_player.maxhp-1)*40, 1028, depth-1, o_hp);
		hp.index = o_player.maxhp;
		hp.image_speed = 0;
		hp.image_index = 0;
	}
	
	with (create_textbox_at_center("+1 生命上限")) {
		alarm[0] = seconds_to_steps(1.2);	
	}
	/*
	with (instance_create_layer(other.x+CELL_WIDTH/2, other.y-CELL_HEIGHT/2, "Instances", o_text)) {
		//image_blend = make_color_hsv(150, 160, 255);
		textColor = c_purple;
		text = "+1 生命上限";
	}
	*/
	// sound
	PlaySound(a_hp);
}




