/// @description 
/// @arg x
/// @arg y
var _x = argument0;
var _y = argument1;

var _xCell = floor(_x/CELL_SIZE);
var _yCell = floor(_y/CELL_SIZE);

//var _tile_id =  tilemap_get_at_pixel(global.tilemap_id, _x, _y);
//var _tile_ok = !is_in_array(_tile_id, bad_tile_arr);
//var _tile_id = instance_position(_x, _y, o_tile); 
var _tile = global.tile_grid[# _xCell, _yCell] != noone or sprite_index == s_bat;
var _object_free = global.unit_grid[# _xCell, _yCell] == noone;

return _tile && _object_free;