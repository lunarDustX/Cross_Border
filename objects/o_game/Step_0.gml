/// @description 
if (o_player.hp <= 0) {
	if (!instance_exists(o_gameover)) {
		instance_create_layer(0, -200, "Instances", o_gameover);	
	}
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

