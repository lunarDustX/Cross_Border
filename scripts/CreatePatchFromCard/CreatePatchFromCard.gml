///@description CreatePatchFromCard
///@arg xPatch
///@arg yPatch
///@arg card
var _xPatch = argument0;
var _yPatch = argument1;
var _card = argument2;

var _biome = _card.biome;

#region no anim version
/*
for (var j = 0; j < global.PATCH_SIZE; j++) {
	for (var i = 0; i < global.PATCH_SIZE; i++) {
		var _x = (_xPatch * (global.PATCH_SIZE+1) + i) *CELL_WIDTH;	
		var _y = (_yPatch * (global.PATCH_SIZE+1) + j) *CELL_HEIGHT;
		
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

#region anim version!

global.tileList = ds_list_create();
//global.tileIndex = 0;

for (var j = 0; j < global.PATCH_SIZE; j++) {
	for (var i = 0; i < global.PATCH_SIZE; i++) {
		var _x = (_xPatch * (global.PATCH_SIZE+1) + i) *CELL_WIDTH;	
		var _y = (_yPatch * (global.PATCH_SIZE+1) + j) *CELL_HEIGHT;
		
		// generate empty tiles randomly
		if (random(1) <= 0.04 && room != r_tutorial) {
			var _monsterHere = false;
			for (var k = 0; k < _card.monsterNumber; k++) {
				var pos = _card.monster_grid[# k, 1];
				if (pos[0] == i && pos[1] == j) {
					_monsterHere = true;
					break;
				end;
			}
			if (_monsterHere == false) { // make it empty
				mp_grid_add_cell(global.AIGrid, _x div CELL_WIDTH, _y div CELL_HEIGHT);	
				continue;
			}
		}

		// make biome stiles
		var _depth = CalculateTileDepth(_y);		
		var _tile = instance_create_depth(_x, _y+TILE_UP_DIS+BIGNUM, _depth,  tiles_arr[_biome]);
		ds_list_add(global.tileList, _tile);
		
		// gernerate trees randomly
		if (random(1) <= 0.04) {
			var _monsterHere = false;
			for (var k = 0; k < _card.monsterNumber; k++) {
				var pos = _card.monster_grid[# k, 1];
				if (pos[0] == i && pos[1] == j) {
					_monsterHere = true;
					break;
				}
			}
			if (_monsterHere) continue;
			with (instance_create_depth(_x, _y, _depth-1, o_web)) {
				parentTile = _tile;	
			}
		}
	}
}

var _index = irandom(ds_list_size(global.tileList)-1);
TileAppear(_index);

#endregion

// Check 4 directions to build bridge
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

SpawnMonsterFromCardAtPatch(_card, _xPatch, _yPatch);