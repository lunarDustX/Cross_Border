/// @description action
if (!instance_exists(o_player)) exit;

if (target != noone) {
	// Attack
	if (point_distance(x, y, target.x, target.y) == CELL_SIZE) {
		// xnext & ynext for attack-moving anim
		var _dir = snap_value(point_direction(x, y, target.x, target.y), 90);
		xnext = x + lengthdir_x(CELL_SIZE, _dir);
		ynext = y + lengthdir_y(CELL_SIZE, _dir);
		//
		change_state(SHEEP.attack);
		exit;
	}
	
#region move
	// remove self from AIGrid before Move
	mp_grid_clear_cell(global.AIGrid, x div CELL_SIZE, y div CELL_SIZE);

	// 1. Use basic move method
	var _dir = snap_value(point_direction(x, y, target.x, target.y), 90);
	if (grid_direction_free(x+8, y+8, _dir)) {
		xnext = x + lengthdir_x(CELL_SIZE, _dir);
		ynext = y + lengthdir_y(CELL_SIZE, _dir);
		change_state(SHEEP.move);
		image_xscale = (target.x - x != 0) ? sign(target.x - x)*(-1) : image_xscale;
		exit;
	} 
	
	// 2. Use advanced move method
	if (mp_grid_find_path(x, y, target.x, target.y)) { // update xnext & ynext
		change_state(SHEEP.move);
		image_xscale = (target.x - x != 0) ? sign(target.x - x)*(-1) : image_xscale;
		exit;
	}
#endregion
}

#region // Try to move randomly
var new_locations = ds_list_create();
for (_dir=0; _dir<360; _dir+=90) {
	if (grid_direction_free(x+8, y+8, _dir)) {
		ds_list_add(new_locations, _dir);
	}
}

// Select from possible directions
var _list_size = ds_list_size(new_locations);
if (_list_size > 0) { // Move
	_dir = new_locations[| irandom(_list_size-1)];
	xnext = x+lengthdir_x(CELL_SIZE, _dir);
	ynext = y+lengthdir_y(CELL_SIZE, _dir);
	//audio_play_sound(a_jump, 5, false);
	change_state(SHEEP.move);
	image_xscale = (target.x - x != 0) ? sign(target.x - x)*(-1) : image_xscale;
	exit;
} else { // not Move
	// update AI Grid 
	if (target != noone) {
		mp_grid_add_cell(global.AIGrid, x div CELL_SIZE, y div CELL_SIZE);
	}
	next_unit();
	change_state(SHEEP.wait);
}

// Destroy the list
ds_list_destroy(new_locations);
#endregion
