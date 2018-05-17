/// @description atk_back

if (!moving(xpre, ypre, SPEED)) {
	if (xyz) { // Vampire Blood Drinking
		xyz = false;
		hp++;
		PlaySound(a_blood);
		with (instance_create_layer(x+CELL_WIDTH/2, y-CELL_HEIGHT/2, "Instances", o_text)) {
			textColor = c_lime;
			text = "+1";
		}
	}
	
	// change state
	moves--;
	if (moves > 0 && sprite_index == s_bat) {
		change_state(BAT.action);
	} else {
		next_unit();
		change_state(BAT.wait);
	}
}
