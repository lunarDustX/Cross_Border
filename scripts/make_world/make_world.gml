///@description make_world
global.remap = false;

var _x = global.newPatch mod MAP_SIZE;
var _y = global.newPatch div MAP_SIZE;

//global.patch_grid[# m, n] = _patch_type;

CreatePatchFromCard(_x, _y, global.card_selected);
global.discoveredPatch++;

/*
for (var n = 0; n < MAP_SIZE; n++) {
	for (var m = 0; m < MAP_SIZE; m++) {
		if (global.patch_grid[# m, n] < BIGNUM) continue;
		// place new card
		var _patch_type = global.patch_grid[# m, n] - BIGNUM;
		global.patch_grid[# m, n] = _patch_type;
		
		CreatePatchFromCard(m, n, global.card_selected);
		global.discoveredPatch++;
	}
}