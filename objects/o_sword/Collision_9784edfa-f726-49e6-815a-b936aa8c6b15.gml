/// @description 
if (!canpick) exit;

if (other.state == PLAYER.wait) {
	if (other.x div CELL_WIDTH != x div CELL_WIDTH) exit;
	if (other.y div CELL_HEIGHT != y div CELL_HEIGHT) exit;
	
	// PICK UP
	instance_destroy(); // destroy the sword
	other.critical_rate = max(0.4, other.critical_rate+0.05);
	
	with (create_textbox_at_center("+5% 暴击")) {
		alarm[0] = seconds_to_steps(1.2);		
	}
	/*
	with (instance_create_layer(other.x+CELL_WIDTH/2, other.y-CELL_HEIGHT/2, "Instances", o_text)) {
		//image_blend = make_color_hsv(150, 160, 255);
		textColor = c_lime;
		text = "+10% 暴击";
	}
	*/
	// sound
	PlaySound(a_hp);
}




