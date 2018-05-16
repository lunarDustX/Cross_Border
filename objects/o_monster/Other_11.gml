/// @description action
if (!instance_exists(o_player)) exit;

action = false;

#region ICE
if (frozen > 0) {
	frozen--;
	if (frozen == 0) {
		myIce.image_index = 1;
	} 
	next_unit();
	change_state(CREATURE.wait);
	exit;
} else {
	frozen = -1;
	instance_destroy(myIce);
	myIce = noone;
	image_speed = 1;
}
#endregion

#region WEB

if (webbed) {
	next_unit();
	change_state(CREATURE.wait);
	
	// Get rid of WEB
	instance_destroy(myWeb);
	myWeb = noone;
	webbed = false;
	image_speed = 1;

	with (instance_create_layer(x+CELL_WIDTH/2, y-CELL_HEIGHT/2, "Instances", o_text)) {
		textColor = c_lime;
		text = "挣脱";
	}
	
	exit;
}

#endregion

action = true;