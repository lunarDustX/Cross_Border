/// @description 
if (!canpick) exit;

if (other.state == PLAYER.wait) {
	if (other.x div CELL_WIDTH != x div CELL_WIDTH) exit;
	if (other.y div CELL_HEIGHT != y div CELL_HEIGHT) exit;
	
	// PICK UP
	instance_destroy(); // destroy the heart
	other.hp = min(other.hp+1 , other.maxhp);
	with (instance_create_layer(other.x+CELL_WIDTH/2, other.y-CELL_HEIGHT/2, "Instances", o_text)) {
		//image_blend = make_color_hsv(150, 160, 255);
		textColor = c_lime;
		text = "+1";
	}
	// sound
	PlaySound(a_hp);
	
	// effect
	with (o_player) {
		repeat(10) {
			instance_create_layer(x+random(CELL_WIDTH), y+random(CELL_HEIGHT), "Instances", o_heal_effect);
		}
	}
	
	//with (other) {
	//	change_state(PLAYER.heal);	
	//}
}




