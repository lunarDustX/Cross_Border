/// @description 

// Inherit the parent event
event_inherited();

// destroy path
path_delete(path);

// loot
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

// Unlock monsterLog
if (monsterID >= 0) {
	if (o_ui_control.monsterLogFound_arr[monsterID] == false) {
		show_debug_message("monsterLog Unlocked: " + monsterName);
		o_ui_control.monsterLogFound_arr[monsterID] = true;
	}
}

// increase mana
if (object_index == o_snowman) {
	with (o_player) {
		mana = min(maxmana, mana+2);	
		with (instance_create_layer(x +CELL_SIZE/2, y -CELL_SIZE/2, "Instances", o_text)) {
			vspeed = -2;
			textColor = c_blue;
			text = "+2";
		}
	}
} else {
	with (o_player) {
		mana = min(maxmana, mana+1);
		with (instance_create_layer(x +CELL_SIZE/2, y -CELL_SIZE/2, "Instances", o_text)) {
			vspeed = -2;
			textColor = c_blue;
			text = "+1";
		}
	}
}

