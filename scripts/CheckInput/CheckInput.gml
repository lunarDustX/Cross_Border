if (keyboard_check_pressed(ord("R"))) room_restart();



/*
if (keyboard_check_pressed(vk_escape)) {
	if (instance_exists(o_player)) {
		room_goto(r_start);	
	}
}
*/

/*
if (keyboard_check_pressed(ord("M"))) { 
	if (global.monsterLog) {
		global.monsterLog = false;	
	} else {
		global.monsterLog = true;	
	}
}