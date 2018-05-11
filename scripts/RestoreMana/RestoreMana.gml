if (abc > 0) { // restore mana
	
	mana = min(maxmana, mana +abc);
	with (instance_create_layer(x +CELL_WIDTH/2, y -CELL_HEIGHT/2, "Instances", o_text)) {
		vspeed = -8;
		textColor = c_blue;
		text = "+"+string(o_player.abc);
	}
	
	// mana effect
	repeat(8) {
		instance_create_layer(x+random_range(-CELL_WIDTH/3, CELL_WIDTH/3), y+random_range(-CELL_HEIGHT/2, CELL_HEIGHT/3), "Instances", o_mana_effect);
	}
	
	abc = 0;
}