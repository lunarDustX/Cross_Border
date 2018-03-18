/// @description 

// Inherit the parent event
event_inherited();

// destroy path
path_delete(path);

// destroy effect 
with (o_effect) {
	if (parent == other.id) instance_destroy();	
}

#region loot
if (random(1) <= lootChance) {
	var _loots = [];
	if (normal) {
		_loots = normal_loots;
	} else {
		_loots = evil_loots;
	}
	
	for (var i = 0; i < array_length_1d(_loots); i++) {
		instance_create_layer(x, y, "Instances", _loots[i]);
	}
}
#endregion

#region Unlock monsterLog
if (monsterID >= 0) {
	if (o_ui_control.monsterLogFound_arr[monsterID] == false) {
		show_debug_message("monsterLog Unlocked: " + monsterName);
		o_ui_control.monsterLogFound_arr[monsterID] = true;
	}
}
#endregion

#region increase mana
if (object_index == o_snowman) {
	with (o_player) {
		mana = min(maxmana, mana+2);	
		with (instance_create_layer(x +CELL_WIDTH/2, y -CELL_HEIGHT/2, "Instances", o_text)) {
			vspeed = -8;
			textColor = c_blue;
			text = "+2";
		}
	}
} else {
	with (o_player) {
		mana = min(maxmana, mana+1);
		with (instance_create_layer(x +CELL_WIDTH/2, y -CELL_HEIGHT/2, "Instances", o_text)) {
			vspeed = -8;
			textColor = c_blue;
			text = "+1";
		}
	}
}
#endregion

