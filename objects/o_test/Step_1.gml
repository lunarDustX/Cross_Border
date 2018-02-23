/// @description Check Input
if (keyboard_check_pressed(ord("C"))) { // CLEAR monsters
	with (o_monster) {
		instance_destroy();	
	}
}



/*
if (keyboard_check_pressed(ord("Z"))) {
	camera_set_view_pos(view_camera[0], 0, 0);
	camera_set_view_size(view_camera[0], 320, 240);
}