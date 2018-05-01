/// @description action
if (!instance_exists(o_player)) exit;

action = false;

#region ICE
if (frozen > 0) {
	frozen--;
	if (frozen == 0) {
		myIce.image_index = 1;
		//with (o_ice) {
		//	if (parent == other.id) {
		//		image_index = 1;
		//	}
		//}
	} 
	next_unit();
	change_state(CREATURE.wait);
	exit;
} else {
	frozen = -1;
	instance_destroy(myIce);
	myIce = noone;
	image_speed = 1;
	//with (o_ice) {
	//	if (parent == other.id) {
	//		instance_destroy();	
	//		parent.image_speed = 1;
	//	}
	//}
}
#endregion

#region WEB

if (webbed) {
	next_unit();
	change_state(CREATURE.wait);
	
	instance_destroy(myWeb);
	myWeb = noone;
	webbed = false;
	image_speed = 1;
	exit;
}

#endregion

action = true;