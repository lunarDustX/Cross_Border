///@description CreatePatchFromCard
///@arg xPatch
///@arg yPatch
///@arg card
var _xPatch = argument0;
var _yPatch = argument1;
var _card = argument2;

// important
//instance_activate_object(_card);
//global.card_selected = noone;


var _biome = _card.biome;

#region no anim version
/*
for (var j = 0; j < PATCH_SIZE; j++) {
	for (var i = 0; i < PATCH_SIZE; i++) {
		var _x = (_xPatch * (PATCH_SIZE+1) + i) *CELL_WIDTH;	
		var _y = (_yPatch * (PATCH_SIZE+1) + j) *CELL_HEIGHT;
		
		// empty tile 
		if (irandom(50) == 0) {
			mp_grid_add_cell(global.AIGrid, _x div CELL_WIDTH, _y div CELL_HEIGHT);	
			continue;
		}
		
		// create tile
		var _depth = CalculateTileDepth(_y);
		instance_create_depth(_x, _y, _depth, tiles_arr[_biome]);
	}
}
*/
#endregion

#region with anim version

global.tileList = ds_list_create();
global.tileIndex = 0;

for (var j = 0; j < PATCH_SIZE; j++) {
	for (var i = 0; i < PATCH_SIZE; i++) {
		var _x = (_xPatch * (PATCH_SIZE+1) + i) *CELL_WIDTH;	
		var _y = (_yPatch * (PATCH_SIZE+1) + j) *CELL_HEIGHT;
		var _depth = CalculateTileDepth(_y);		
		var _tile = instance_create_depth(_x, _y+TILE_UP_DIS+BIGNUM, _depth,  tiles_arr[_biome]);
		ds_list_add(global.tileList, _tile);
	}
}
TileAppear(global.tileIndex);

#endregion

// Check 4 directions to build bridge
for (var _dy = -1; _dy <= 1; _dy++) {
	for (var _dx = -1; _dx <= 1; _dx++) {
		if (_dx * _dy != 0) continue; // 1.diagonal
		if (_dx == 0 && _dy == 0) continue; // 2.self
		if (global.patch_grid[# _xPatch+_dx, _yPatch+_dy] > 0 && global.patch_grid[# _xPatch+_dx, _yPatch+_dy] < BIGNUM) { // BIOME.empty = 0
			BuildBridgeBetweenPatches(_xPatch, _yPatch, _xPatch+_dx, _yPatch+_dy);
		}
	}
}

SpawnMonsterFromCardAtPatch(_card, _xPatch, _yPatch);