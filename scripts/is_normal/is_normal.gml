///@description is_normal
///@arg x
///@arg y
var _x = argument0;
var _y = argument1;

var _xcell = _x div CELL_SIZE;
var _ycell = _y div CELL_SIZE;

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
}



/* based on patch
var _x_patch = _x div ((PATCH_SIZE+1) * CELL_SIZE); 
var _y_patch = _y div ((PATCH_SIZE+1) * CELL_SIZE);

var _normal = normal_arr[global.patch_grid[# _x_patch, _y_patch]];
return _normal;