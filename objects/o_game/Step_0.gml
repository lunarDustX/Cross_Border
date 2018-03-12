/// @description 
#region GameOver Check
if (instance_exists(o_player)) {
	if (o_player.hp <= 0) {
		if (!instance_exists(o_gameover)) {
			instance_create_layer(0, -200, "Instances", o_gameover);	
		}
	}
}
#endregion

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

#region SpawnCard
if (!instance_exists(o_card_pickup)) {
	if (instance_number(o_monster) == 0 && instance_number(o_fall) == 0) { // time to spawn
		if (alarm[0] == -1) {
			if (room == r_tutorial) {
				if (global.discoveredPatch < 2) {
					alarm[0] = seconds_to_steps(0.5);	
				} else {
					room_goto(r_start);	
				}
			}
			if (room == r_game) {
				if (global.discoveredPatch < 9) {
					alarm[0] = seconds_to_steps(0.5);	
				}	
			} else {
				
			}
		}
	}
}
#endregion
