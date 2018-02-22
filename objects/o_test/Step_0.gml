/// @description 

/* pickup spawn anim ajustment
if (mouse_check_button_released(mb_right)) {
	instance_create_layer(mouse_x, mouse_y, "Instances", o_heart);	
}
*/

/*
// teleport
if (mouse_check_button_released(mb_right)) {
	with (o_player) {
		x = snap_value(mouse_x, CELL_SIZE);
		y = snap_value(mouse_y, CELL_SIZE);
	}
}
*/

if (mouse_check_button_released(mb_right)) {
	var _x = snap_value(mouse_x, CELL_SIZE);
	var _y = snap_value(mouse_y, CELL_SIZE);
	instance_create_layer(_x, _y, "Instances", o_sheep);	
}

