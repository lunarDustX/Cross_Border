/// @description 
if (keyboard_check_pressed(ord("R"))) game_restart();
if (keyboard_check_pressed(ord("M"))) { 
	if (room == r_world) {
		room_goto(r_minimap);
	} else {
		room_goto(r_world);	
	}
}

if (global.remap && room == r_world) {
	make_world();	
}