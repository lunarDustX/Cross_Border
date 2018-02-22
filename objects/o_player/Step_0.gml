/// @description 
if (o_game.state == TURN.computer) exit;

event_user(state);

// Update the position & depth
patch_number = calculate_patch_number(x, y);
depth = -y;


if (hp <= 0) { // dead
	var _killer = instance_nearest(x, y, o_monster);
	if (_killer) {
		show_message("You are killed by a " + _killer.monsterName);	
	}
	hp = 5;
}
