/// @description atk_back

if (!moving(xpre, ypre, SPEED)) {
	if (xyz) {
		xyz = false;
		hp++;
		with (instance_create_layer(x+CELL_WIDTH/2, y-CELL_HEIGHT/2, "Instances", o_text)) {
			textColor = c_lime;
			text = "+1";
		}
	}
	
	next_unit();
	//state = SHEEP.wait;
	change_state(BAT.wait);
	//if (_is_player) {
		// Wait
		/*
		if (energy < max_energy) {
			energy = min(++energy, max_energy);
			var _text = instance_create_layer(x+CELL_SIZE/2, y-CELL_SIZE/2, "Instances", o_text);
			_text.image_blend = make_color_hsv(40, 150, 255);
			_text.text = "+"+string(1);
		}
		*/
	//}
	//event_user(END_TURN);
}
