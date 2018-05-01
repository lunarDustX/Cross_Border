/// @description heal
if (sprite_index != s_player_heal) {
	image_index = 0;
	sprite_index = s_player_heal;
} else {	
	if (image_index >= image_number-1) { // last frame
		image_index = 0;
		change_state(PLAYER.wait);
		sprite_index = s_player_idle;
	}
}