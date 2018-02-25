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
		x = snap_value(mouse_x, CELL_WIDTH);
		y = snap_value(mouse_y, CELL_HEIGHT);
	}
}
*/

/*
if (mouse_check_button_released(mb_right)) {
	var _x = snap_value(mouse_x, CELL_WIDTH);
	var _y = snap_value(mouse_y, CELL_HEIGHT);
	instance_create_layer(_x, _y, "Instances", o_sheep);	
}
*/

// SpawnCard
if (instance_number(o_monster) <= 0 && instance_number(o_card_pickup) == 0) { // time to spawn
	if (alarm[0] == -1) {
		alarm[0] = seconds_to_steps(0.5);
	}
}

// DestroyCard
if (instance_number(o_monster) > 0) {
	if (instance_exists(o_card_pickup))	{
		with (o_card_pickup) {
			instance_destroy();	
		}
	}
}



