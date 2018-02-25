///@description make_world
global.remap = false;
//var _layer_id = layer_get_id("Tiles");
//var _map_id = layer_tilemap_get_id(_layer_id);

//var _xcell, _ycell, _tile_data;

for (var n = 0; n < MAP_SIZE; n++) {
	for (var m = 0; m < MAP_SIZE; m++) {
		if (global.patch_grid[# m, n] < BIGNUM) continue;
		// place new card
		var _patch_type = global.patch_grid[# m, n] - BIGNUM;
		global.patch_grid[# m, n] = _patch_type;
		
		CreatePatchFromCard(m, n, global.card_selected);
		/* //Template Method
		var _patch_string_data = LoadRandomPatch(_patch_type);
		CreatePatchFromString(m, n, _patch_string_data);
		*/
	}
}