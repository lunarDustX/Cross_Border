/// @description 
event_inherited();

// treasure Loot!
var _tile = global.tile_grid[# x div CELL_WIDTH, y div CELL_HEIGHT];
var _treasure = noone;
switch (_tile.object_index) {
	case o_snowTile:
		show_message("snow珍宝");
	break;
	
	case o_forestTile:
		show_message("forest珍宝");
	break;
	
	case o_grassTile:
		show_message("grass珍宝");
	break;
	
	case o_graveTile:
		show_message("grave珍宝");
	break;
	
	default: show_message("BUG哦");
}

if (_treasure != noone) {
	instance_create_layer(x, y, "Instances", _treasure);
}

