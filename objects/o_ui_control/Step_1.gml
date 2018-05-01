/// @description Check Input

#region MonsterLog
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
#endregion

#region ESC
if (keyboard_check_pressed(vk_escape)) {
	/*
	if (global.map) {
		// close map
		if (global.remap) {
			ExitMapAfterPlacing();
		} else {
		
		}
	}
	*/
	
	if (global.setting) {
		CloseSetting();
	}
}
#endregion

#region TAB
if (keyboard_check_pressed(vk_tab)) {
	if (instance_exists(o_player)) {
		global.stats = !global.stats;	
	}
}
#endregion