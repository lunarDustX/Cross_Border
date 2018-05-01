/// @description 
event_inherited();

// remove from active enimy list
var _index = ds_list_find_index(global.unit_list, id);
ds_list_delete(global.unit_list, _index);

// destroy path
path_delete(path);

// destroy effect 
with (o_effect) {
	if (parent == other.id) instance_destroy();	
}

// death effect
instance_create_layer(x, y, "Instances", o_death_effect);

#region Unlock monsterLog
if (monsterID >= 0) {
	if (o_ui_control.monsterLogFound_arr[monsterID] == false) {
		show_debug_message("monsterLog Unlocked: " + monsterName);
		o_ui_control.monsterLogFound_arr[monsterID] = true;
	}
}
#endregion

#region increase mana
with (o_player) {
	abc = true;	
}
#endregion

global.kills++;
