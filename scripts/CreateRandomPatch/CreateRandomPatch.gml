///@description CreateRandomPatch
///@arg xPatch
///@arg yPatch
///@arg patchType
var _xPatch = argument0;
var _yPatch = argument1;
var _patch_type = argument2;

for (var j = 0; j < PATCH_SIZE; j++) {
	for (var i = 0; i < PATCH_SIZE; i++) {
		var _x = (_xPatch * (PATCH_SIZE+1) + i) *CELL_SIZE;	
		var _y = (_yPatch * (PATCH_SIZE+1) + j) *CELL_SIZE;
		var _index = irandom(array_length_2d(tiles_arr, _patch_type) -1);
		var _depth = CalculateTileDepth(_y);
		instance_create_depth(_x, _y, _depth, tiles_arr[_patch_type, _index]);
	}
}

#region with anim version
/*
global.tileList = ds_list_create();
global.tileIndex = 0;

for (var j = 0; j < PATCH_SIZE; j++) {
	for (var i = 0; i < PATCH_SIZE; i++) {
		var _x = (_xPatch * (PATCH_SIZE+1) + i) *CELL_SIZE;	
		var _y = (_yPatch * (PATCH_SIZE+1) + j) *CELL_SIZE;
		var _index = irandom(array_length_2d(tiles_arr, _patch_type) -1);
		var _depth = CalculateTileDepth(_y);
		//instance_create_depth(_x, _y, _depth, tiles_arr[_patch_type, _index]);
		
		var _tile = instance_create_depth(_x, _y+TILE_UP_DIS+BIGNUM, _depth, tiles_arr[_patch_type, _index]);
		ds_list_add(global.tileList, _tile);
	}
}
TileAppear(global.tileIndex);
*/
#endregion

// Check four directions to build bridge
for (var _dy = -1; _dy <= 1; _dy++) {
	for (var _dx = -1; _dx <= 1; _dx++) {
		if (_dx * _dy != 0) continue; // 1.diagonal
		if (_dx == 0 && _dy == 0) continue; // 2.self
		if (global.patch_grid[# _xPatch+_dx, _yPatch+_dy] > 0 && global.patch_grid[# _xPatch+_dx, _yPatch+_dy] < BIGNUM) { // PATCH_TYPE.empty = 0
			BuildBridgeBetweenPatches(_xPatch, _yPatch, _xPatch+_dx, _yPatch+_dy);
		}
	}
}
//show_message(string())