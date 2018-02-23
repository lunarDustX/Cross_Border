/// @description Check Input
if (global.monsterLog) {
	if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
		//monsterLogIndex = (monsterLogIndex + 1) % monsterAmount;	
		monsterLogIndex = monsterLogIndex + 1 < monsterAmount ? monsterLogIndex+1 : monsterLogIndex;
	}
	if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
		monsterLogIndex = monsterLogIndex - 1 >= 0 ? monsterLogIndex-1 : monsterLogIndex;
		//monsterLogIndex = (monsterLogIndex - 1 + monsterLogIndex) % monsterAmount;	
	}
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
		if (monsterLogIndex + 3 < monsterAmount) {
			monsterLogIndex += 3;	
		}
	}
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
		if (monsterLogIndex - 3 >= 0) {
			monsterLogIndex -= 3;	
		}	
	}
}

// close map
if (global.map) {
	if (keyboard_check_pressed(vk_escape)) {
		if (global.remap) {
			ExitMap();
		} else {
			show_message("Place the card to extend map");	
		}
	}
}
