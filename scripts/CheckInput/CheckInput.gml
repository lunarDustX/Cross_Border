if (keyboard_check_pressed(ord("R"))) game_restart();
if (keyboard_check_pressed(vk_escape)) {
	if (global.pause) { // map open
		ExitMap();
	}
}