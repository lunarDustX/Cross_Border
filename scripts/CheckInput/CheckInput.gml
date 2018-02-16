if (keyboard_check_pressed(ord("R"))) game_restart();


if (keyboard_check_pressed(ord("M"))) { 
	if (global.monsterLog) {
		global.monsterLog = false;	
	} else {
		global.monsterLog = true;	
	}
	//global.mosterLog = !global.monsterLog;	
	//show_message(string(global.monsterLog))
}