/// @description 
if (room != r_world) exit;
if (instance_number(o_unit) <=0) {
	// add next land
	//show_message("add map");
}

if (state == TURN.computer) {
	if (ds_list_size(global.unit_list) > 0) {
		var unit = ds_list_find_value(global.unit_list, global.list_index);
		with (unit) {
			if (state == CREATURE.wait) {
				state = CREATURE.action;	
			}
		}
	} else { // Level Completed
		state = TURN.player;
		o_player.state = PLAYER.action;
	}
}
