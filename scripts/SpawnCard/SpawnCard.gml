if (room == r_tutorial) {
	var _x = o_player.x+ CELL_WIDTH;
	var _y = o_player.y+ CELL_HEIGHT;
	var _card = o_card_tutorial;
	instance_create_layer(_x, _y, "Instances", _card);	
} 

if (room == r_game) {
	var new_locations = ds_list_create();
	var _dir;
	for (_dir=0; _dir<360; _dir+=90) {
		if (grid_direction_free(o_player.x, o_player.y, _dir)) {
			ds_list_add(new_locations, _dir);
		}
	}

	var _list_size = ds_list_size(new_locations);
	if (_list_size > 0) { // select a direction
		_dir = new_locations[| irandom(_list_size-1)];
		var _x = o_player.x+lengthdir_x(CELL_WIDTH, _dir);
		var _y = o_player.y+lengthdir_y(CELL_HEIGHT, _dir);	

		var _size = ds_list_size(global.card_list);
		if (_size < 1) show_message("BUG: not enough card");

		var _index = irandom(_size - 1);
		var _card = global.card_list[|_index];
		instance_create_layer(_x, _y, "Instances", _card);	
		ds_list_delete(global.card_list, _index);
	} else {
		show_message("BUG: nowhere to spawn card.");	
	}
}