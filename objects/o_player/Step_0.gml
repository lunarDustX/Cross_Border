/// @description 
if (o_game.state == TURN.computer) exit;

event_user(state);

depth = -y;


if (hp <= 0 && !instance_exists(o_gameover)) { // dead
	var _killer = instance_nearest(x, y, o_monster);
	if (_killer) {
		show_debug_message("You are killed by a " + _killer.monsterName);	
		//game_restart();
	}
	//hp = 5;
}
