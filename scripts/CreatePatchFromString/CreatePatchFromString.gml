///@description CreatePatchFromString
///@arg xPatch
///@arg yPatch
///@arg patchStringData
var _x_patch = argument0;
var _y_patch = argument1;
var _patch_string_data = argument2;

for (var i = 1; i <= string_length(_patch_string_data); i++) {
	// calculate tiledata
	var _tile_data = ord(string_char_at(_patch_string_data, i));
	if (_tile_data >= 48 && _tile_data <= 57) {
		_tile_data -= 48;
	} else if (_tile_data >= 97 && _tile_data <=122) {
		_tile_data -= 87;
	}
	// set cell
	var _xcell = _x_patch *PATCH_SIZE + (i-1) mod PATCH_SIZE;
	var _ycell = _y_patch *PATCH_SIZE + (i-1) div PATCH_SIZE;
	tilemap_set(global.tilemap_id, _tile_data, _xcell, _ycell);
}