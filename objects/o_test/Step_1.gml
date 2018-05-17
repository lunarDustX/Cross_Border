/// @description Check Input
if (!instance_exists(o_player)) exit;

if (keyboard_check_pressed(ord("C"))) { // CLEAR monsters
	with (o_monster) {
		instance_destroy();	
	}
}

if (keyboard_check_pressed(ord("J"))) {
	o_player.hp = 5;
}

if (keyboard_check_pressed(ord("K"))) {
	o_player.mana= 4;
}

