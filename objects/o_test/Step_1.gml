/// @description Check Input
if (!instance_exists(o_player)) exit;

if (keyboard_check_pressed(ord("C"))) { // CLEAR monsters
	with (o_monster) {
		instance_destroy();	
	}
}

if (keyboard_check_pressed(ord("H"))) {
	o_player.hp = 5;
}

