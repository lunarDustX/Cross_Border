
event_user(state);

//patch = calculate_patch_number(x, y);

// Update the position & depth
patch_number = calculate_patch_number(x, y);
depth = -y;


#region Update the unit_list
// Are we active?
var _index = ds_list_find_index(global.unit_list, id);
if (instance_exists(o_player)) {
	if (_index == -1 && in_same_patch()) {
		ds_list_add(global.unit_list, id);
	}
}

// Remove from the list
//if (!in_view() && _index != -1) {
//	ds_list_delete(global.unit_list, _index);
//}
#endregion

#region Update the target[not suitable for player]
_index = ds_list_find_index(global.unit_list, id);
if (_index != -1) { // active
	if (target == noone) { // no target
		with (o_unit) { // moving or static
			if (is_in_array(object_index, other.target_arr)) { 
				//if (point_distance(x, y, other.x, other.y) <= other.fov*CELL_SIZE) { // in view
					other.target = id;
				//}
			}
		}
	} else {
		//if (point_distance(x, y, target.x, target.y) > fov*CELL_SIZE) {
		//	target = noone;	
		//}
	}
}
#endregion


// Check death
if (hp <= 0) {
	instance_destroy();	
}



