if (abc > 0) { // restore mana
	
	mana = min(maxmana, mana +abc);
	with (instance_create_layer(x +CELL_WIDTH/2, y -CELL_HEIGHT/2, "Instances", o_text)) {
		textColor = c_blue;
		text = "+"+string(o_player.abc);
	}
	
	abc = 0;
	
	// mana effect
	repeat(10) {
		instance_create_layer(x+random(CELL_WIDTH), y+random(CELL_HEIGHT), "Instances", o_mana_effect);
	}
	
	// Sound
	PlaySound(a_mana);
	
}