///@description is_normal
///@arg x
///@arg y
var _x = argument0;
var _y = argument1;

var _xcell = _x div CELL_SIZE;
var _ycell = _y div CELL_SIZE;

if (global.tile_grid[# _xcell, _ycell] == noone) {
	instance_destroy();
	show_message("fall death.");
	return true;
}

switch (global.tile_grid[# _xcell, _ycell].object_index) {
	case o_grassTile:
		return normal_arr[BIOME.grass];
	break;
	
	case o_snowTile:
		return normal_arr[BIOME.snow];
	break;
	
	case o_desertTile:
		return normal_arr[BIOME.desert];
	break;
	
	case o_forestTile:
		return normal_arr[BIOME.forest];
	break;
	
	case o_graveTile:
		return normal_arr[BIOME.grave];
	break;
	
	default:
		return normal;
	break;
}



/* based on patch
var _x_patch = _x div ((PATCH_SIZE+1) * CELL_SIZE); 
var _y_patch = _y div ((PATCH_SIZE+1) * CELL_SIZE);

var _normal = normal_arr[global.patch_grid[# _x_patch, _y_patch]];
return _normal;