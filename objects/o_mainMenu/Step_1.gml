/// @description 
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	if (index < 2) {
		index++;
		PlaySound(a_select);
	}
}

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	if (index >0) {
		index--;
		PlaySound(a_select);
	}
}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
	PlaySound(a_accept);
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
