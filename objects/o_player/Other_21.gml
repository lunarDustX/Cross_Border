/// @description magic
if (sprite_index != s_player_magic) {
	image_index = 0;
	sprite_index = s_player_magic;
} else {
	if (image_index == 4) { 
		switch (magic) {
			case MAGIC.ice:
				IceMagic();
			break;
			case MAGIC.fire:
				FireMagic();
			break;
		}
		magic = noone;
	}
	
	if (image_index == image_number-1) { // Magic Ends
		image_index = 0;
		sprite_index = s_player_idle;
		change_state(PLAYER.wait);
	}
}