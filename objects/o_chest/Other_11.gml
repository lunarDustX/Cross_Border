/// @description action
active_turns++;
if (active_turns >= 5) {
	
	if (ds_list_size(global.unit_list) < 4) {
		#region Spawn Guardian
		var new_locations = ds_list_create();
		var _dir;
		for (_dir=0; _dir<360; _dir+=90) {
			if (grid_direction_free(x, y, _dir)) {
				ds_list_add(new_locations, _dir);
			}
		}

		var _list_size = ds_list_size(new_locations);
		if (_list_size > 0) {
			active_turns = 0;

			_dir = new_locations[| irandom(_list_size-1)];
			var _x = x+lengthdir_x(CELL_WIDTH, _dir);
			var _y = y+lengthdir_y(CELL_HEIGHT, _dir);
			var _guardian = noone; 
		
			//switch (myTile.object_index) {
			switch (myBiome) {
				case BIOME.grass:
					_guardian = choose(o_spider, o_ox);
				break;
			
				case BIOME.snow:
					_guardian = choose(o_snowman, o_bat, o_bat, o_ox);
				break;
			
				case BIOME.forest:
					_guardian = choose(o_bat, o_bat, o_ox, o_spider, o_zombie);
				break;
			
				case BIOME.grave:
					_guardian = choose(o_zombie, o_ghost, o_ghost, o_bat);
				break;
			}
		
			with (instance_create_layer(_x, _y, "Instances", o_fall)) {
				objType = _guardian;	
			}
		} else {
			// Wait...
		}
		#endregion
	}
}
next_unit();
change_state(CHEST.wait);