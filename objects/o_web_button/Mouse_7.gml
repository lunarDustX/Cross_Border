/// @description 
with (o_player) {	
	change_state(PLAYER.wait);
	instance_destroy(myWeb);
	myWeb = noone;
	webbed = false;
	image_speed = 1;
}
instance_destroy();
