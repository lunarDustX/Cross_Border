/// @description atk_back

if (!moving(xpre, ypre, SPEED)) {
	if (xyz) { // drink blood
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
}
