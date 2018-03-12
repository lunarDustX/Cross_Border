/// @description 
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	if (index < 2) index++;
	//audio_sound_pitch()
	//audio_play_sound();
}

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	if (index >0) index--;
}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
	switch (index) {
		case 0:
			room_goto(r_game);
		break;
		
		case 1:
			room_goto(r_tutorial);
		break;
		
		case 2:
			game_end();
		break;
	}
}
