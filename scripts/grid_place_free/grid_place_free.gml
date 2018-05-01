/// @description 
/// @arg x
/// @arg y
var _x = argument0;
var _y = argument1;

var _xCell = _x div CELL_WIDTH;
var _yCell = _y div CELL_HEIGHT;

//var _tile = global.tile_grid[# _xCell, _yCell] != noone or sprite_index == s_bat;
var _tile = global.tile_grid[# _xCell, _yCell];
var _tile_ok;
if (object_is_ancestor(object_index, o_moving_unit)) {
	_tile_ok = (_tile != noone && !is_in_array(_tile.object_index, self.bad_tiles_arr)) or sprite_index == s_bat;
} else {
	_tile_ok = (_tile != noone && !is_in_array(_tile.object_index, o_player.bad_tiles_arr));
}
var _object_free = global.unit_grid[# _xCell, _yCell] == noone;

return _tile_ok && _object_free;