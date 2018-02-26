/// @description 
if (!canpick) exit;
if (other.sprite_index != s_vampire) exit;


if (other.state == BAT.wait or other.state == BAT.action) {
	if (other.x div CELL_WIDTH != x div CELL_WIDTH) exit;
	if (other.y div CELL_HEIGHT != y div CELL_HEIGHT) exit;
	
	// PICK UP
	instance_destroy(); // destroy the heart
	other.hp++;
	with (instance_create_layer(other.x+CELL_WIDTH/2, other.y-CELL_HEIGHT/2, "Instances", o_text)) {
		//image_blend = make_color_hsv(150, 160, 255);
		textColor = c_lime;
		text = "+1";
	}
	// sound
	audio_play_sound(a_hp, 5, false);	
}




