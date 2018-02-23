/// @description 
if (!canpick) exit;

if (other.state == PLAYER.wait) {
	instance_destroy(); // destroy the heart
	other.hp = min(other.hp++ , other.maxhp);
	with (instance_create_layer(other.x+CELL_SIZE/2, other.y-CELL_SIZE/2, "Instances", o_text)) {
		//image_blend = make_color_hsv(150, 160, 255);
		textColor = c_lime;
		text = "+1";
	}
	// sound
	audio_play_sound(a_hp, 5, false);	
}




