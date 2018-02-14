/// @description 
CheckInput();
/*
if (keyboard_check_pressed(ord("M"))) { 
	if (room == r_world) {
		room_goto(r_minimap);
	} else {
		room_goto(r_world);	
	}
}
*/
if (global.remap && !global.pause) {
	make_world();	
}