///@description CreateRandomPatch
///@arg xPatch
///@arg yPatch
///@arg patchType
var _xPatch = argument0;
var _yPatch = argument1;
var _biome = argument2;

#region no-anim version
/*
for (var j = 0; j < global.PATCH_SIZE; j++) {
	for (var i = 0; i < global.PATCH_SIZE; i++) {
		var _x = (_xPatch * (global.PATCH_SIZE+1) + i) *CELL_WIDTH;	
		var _y = (_yPatch * (global.PATCH_SIZE+1) + j) *CELL_HEIGHT;
		//var _index = irandom(array_length_2d(tiles_arr, _BIOME) -1);
		var _depth = CalculateTileDepth(_y);
		//instance_create_depth(_x, _y, _depth, tiles_arr[_BIOME, _index]);
		instance_create_depth(_x, _y, _depth, tiles_arr[_BIOME]);
	}
}
*/
#endregion

#region anim version

global.tileList = ds_list_create();

for (var j = 0; j < global.PATCH_SIZE; j++) {
	for (var i = 0; i < global.PATCH_SIZE; i++) {
		var _x = (_xPatch * (global.PATCH_SIZE+1) + i) *CELL_WIDTH;	
		var _y = (_yPatch * (global.PATCH_SIZE+1) + j) *CELL_HEIGHT;
		var _depth = CalculateTileDepth(_y);	
		//if (random(1) <= 0.3) {
		//	var _tile = instance_create_depth(_x, _y+TILE_UP_DIS+BIGNUM, _depth,  o_waterTile);
		//} else {
			var _tile = instance_create_depth(_x, _y+TILE_UP_DIS+BIGNUM, _depth,  tiles_arr[_biome]);
		//}
		
		ds_list_add(global.tileList, _tile);
	}
}
var _index = irandom(ds_list_size(global.tileList)-1);
TileAppear(_index);

#endregion

// Check four directions to build bridge
for (var _dy = -1; _dy <= 1; _dy++) {
	for (var _dx = -1; _dx <= 1; _dx++) {
		if (_dx * _dy != 0) continue; // 1.diagonal
		if (_dx == 0 && _dy == 0) continue; // 2.self
		//if (global.patch_grid[# _xPatch+_dx, _yPatch+_dy] > 0 && global.patch_grid[# _xPatch+_dx, _yPatch+_dy] < BIGNUM) { // BIOME.empty = 0
		if (global.patch_grid[# _xPatch+_dx, _yPatch+_dy] != noone) {
			BuildBridgeBetweenPatches(_xPatch, _yPatch, _xPatch+_dx, _yPatch+_dy);
		}
	}
}