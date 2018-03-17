/// @description 
if (index == 2 && o_player.hp == 3) index++;
if (index == 3) {
	if (o_player.state != PLAYER.move) {
		with (o_player) {
			if (calculate_patch_number(x, y) == 4) {
				other.index++;	
			}
		}
	}
}

if (index == 4) {
	if (o_player.x div CELL_WIDTH == 5) {
		index++;	
	}
}

if (index == 5) {
	if (keyboard_check_pressed(ord("F"))) {
		index++;	
	}
}


