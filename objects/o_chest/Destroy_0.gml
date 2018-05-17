/// @description 
event_inherited();

// treasure Loot!
var _tile = global.tile_grid[# x div CELL_WIDTH, y div CELL_HEIGHT];
var _treasure = noone;
switch (_tile.object_index) {
	case o_snowTile:
		with (create_textbox_at_center("获得宝藏")) {
			alarm[0] = seconds_to_steps(1.2);	
		}
	break;
	
	case o_forestTile:
		with (create_textbox_at_center("获得宝藏")) {
			alarm[0] = seconds_to_steps(1.2);	
		}
	break;
	
	case o_grassTile:
		with (create_textbox_at_center("获得宝藏")) {
			alarm[0] = seconds_to_steps(1.2);	
		}
	break;
	
	case o_graveTile:
		with (create_textbox_at_center("获得宝藏")) {
			alarm[0] = seconds_to_steps(1.2);	
		}
	break;
	
	default: 
		with (create_textbox_at_center("获得宝藏")) {
			alarm[0] = seconds_to_steps(1.2);	
		}
}

if (_treasure != noone) {
	instance_create_layer(x, y, "Instances", _treasure);
}

