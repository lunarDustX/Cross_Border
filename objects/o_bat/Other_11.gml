/// @description action
if (!instance_exists(o_player)) exit;

if (frozen > 0) {
	/*
	if (global.tile_grid[# x div CELL_SIZE, y div CELL_SIZE] == noone) {
		show_message("Achievement: frozen bat");
		instance_destroy();
		exit;
	}
	*/
	show_debug_message(monsterName +" frozen");
	frozen--;
	next_unit();
	change_state(BAT.wait);
	exit;
}

if (target != noone) { // CHASE OR ATTACK
	// Attack
	if (point_distance(x, y, target.x, target.y) < (CELL_WIDTH + 1)) {
		// xnext & ynext for moving
		var _dir = snap_value(point_direction(x, y, target.x, target.y), 90);
		xnext = x + lengthdir_x(CELL_WIDTH, _dir);
		ynext = y + lengthdir_y(CELL_HEIGHT, _dir);
		//
		change_state(BAT.attack);
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
		change_state(BAT.move);
		image_xscale = (target.x - x != 0) ? sign(target.x - x)*(-1) : image_xscale;
		exit;
	} 
	
	// 2. Advanced Move Method
	// fly over no bridge tile
	if (sprite_index == s_bat) {
		for (var j = 0; j < 20; j++) {
			for (var i = 0; i < 20; i++) {
				if ((i+1) % (PATCH_SIZE+1) == 0 or (j+1) % (PATCH_SIZE+1) == 0) {
					if (mp_grid_get_cell(global.AIGrid, i, j) == -1) {
						mp_grid_clear_cell(global.AIGrid, i, j);
					}
				}
			}
		}
	}
	if (mp_grid_find_path(x, y, target.x, target.y)) { // update xnext & ynext
		change_state(BAT.move);
		image_xscale = (target.x - x != 0) ? sign(target.x - x)*(-1) : image_xscale;
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
	change_state(BAT.move);
	image_xscale = (target.x - x != 0) ? sign(target.x - x)*(-1) : image_xscale;
	exit;
} else {
	if (target != noone) {
		// update AI Grid 
		mp_grid_add_cell(global.AIGrid, x div CELL_WIDTH, y div CELL_HEIGHT);
	}
	next_unit();
	change_state(BAT.wait);
}

// Destroy the list
ds_list_destroy(new_locations);
#endregion
