/// @description 
/// @arg x
/// @arg y
var _x = argument0;
var _y = argument1;

var _grid_x = floor(_x/CELL_SIZE);
var _grid_y = floor(_y/CELL_SIZE);

var _layer_id = layer_get_id("Tiles");
var _map_id = layer_tilemap_get_id(_layer_id);
var _tile_id =  tilemap_get_at_pixel(_map_id, _x, _y);

//var _tile_ok = !is_in_array(_tile_id, [VOID, EMPTY]);
var _tile_ok = !is_in_array(_tile_id, bad_tile_arr);
var _object_free = global.unit_grid[# _grid_x, _grid_y] == noone;

return _tile_ok && _object_free;
