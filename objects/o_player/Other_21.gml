/// @description Magic
if (sprite_index != s_player_magic) {
	image_index = 0;
	sprite_index = s_player_magic;
} else {
	if (image_index == 6) {
		FrozenMagic();	
	}
	
	if (image_index == image_number-1) { // last frame
		image_index = 0;
		sprite_index = s_player_idle;
		change_state(PLAYER.wait);
	}
}