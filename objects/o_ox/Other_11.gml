/// @description action
if (!instance_exists(o_player)) exit;

#region ICE
if (frozen > 0) {
	show_debug_message(monsterName +" frozen");
	frozen--;
	next_unit();
	change_state(OX.wait);
	exit;
} else {
	with (o_ice) {
		if (parent == other.id) {
			instance_destroy();	
			parent.image_speed = 1;
		}
	}
}
#endregion

if (target != noone) {
	// Attack
	if (point_distance(x, y, target.x, target.y) < (CELL_WIDTH + 1)) {
		// xnext & ynext for moving
		var _dir = snap_value(point_direction(x, y, target.x, target.y), 90);
		xnext = x + lengthdir_x(CELL_WIDTH, _dir);
		ynext = y + lengthdir_y(CELL_HEIGHT, _dir);
		//
		change_state(OX.attack);
		exit;
	}
	
	// Move
	// remove self before finding a path
	mp_grid_clear_cell(global.AIGrid, x div CELL_WIDTH, y div CELL_HEIGHT);
	
	// 1. Basic Move Method
	var _dir = snap_value(point_direction(x, y, target.x, target.y), 90);
	if (grid_direction_free(x+8, y+8, _dir)) {
		xnext = x + lengthdir_x(CELL_WIDTH, _dir);
		ynext = y + lengthdir_y(CELL_HEIGHT, _dir);
		change_state(OX.move);
		image_xscale = (target.x - x != 0) ? sign(target.x - x) : image_xscale;
		exit;
	} 
	
	// 2. Advanced Move Method
	if (mp_grid_find_path(x, y, target.x, target.y)) { // update xnext & ynext
		change_state(OX.move);
		image_xscale = (target.x - x != 0) ? sign(target.x - x) : image_xscale;
		exit;
	}
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
if (_list_size > 0) {
	// Move
	_dir = new_locations[| irandom(_list_size-1)];
	xnext = x+lengthdir_x(CELL_WIDTH, _dir);
	ynext = y+lengthdir_y(CELL_HEIGHT, _dir);
	//audio_play_sound(a_jump, 5, false);
	change_state(OX.move);
	image_xscale = (target.x - x != 0) ? sign(target.x - x) : image_xscale;
	exit;
} else {
	if (target != noone) {
		// update AI Grid 
		mp_grid_add_cell(global.AIGrid, x div CELL_WIDTH, y div CELL_HEIGHT);
	}
	next_unit();
	change_state(OX.wait);
}

// Destroy the list
ds_list_destroy(new_locations);
#endregion
