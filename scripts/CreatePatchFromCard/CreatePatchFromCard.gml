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
		
		// EMPTY TILES [avoid monster position]
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

		// Generate Tiles!
		var _depth = CalculateTileDepth(_y);	
		var _p;
		switch (_card.biome_depth) {
			case 1: 
				_p = 0.5;
			break;
			case 2: 
				_p = 0.75;
			break;
			case 3: 
				_p = 0.9;
			break;
		}
		var _tileType = noone;
		if (random(1) < _p) {
			if (_biome == BIOME.forest && random(1) < 0.12) {
				_tileType = o_waterTile;
			} else {
				_tileType = tiles_arr[_biome];	
			}
		} else {
			_tileType = o_stoneTile;	
		}
		
		var _tile = instance_create_depth(_x, _y+TILE_UP_DIS+BIGNUM, _depth,  _tileType);
		ds_list_add(global.tileList, _tile);
		
		// Gernerate TREES? 
		switch (_card.biome_depth) {
			case 1: 
				_p = 0.01;
			break;
			case 2: 
				_p = 0.05;
			break;
			case 3: 
				_p = 0.08;
			break;
		}
		if (random(1) <= _p) {
			var _monsterHere = false;
			for (var k = 0; k < _card.monsterNumber; k++) {
				var pos = _card.monster_grid[# k, 1];
				if (pos[0] == i && pos[1] == j) {
					_monsterHere = true;
					break;
				}
			}
			if (_monsterHere) continue; // avoid monster
			
			var _dec = noone;
			switch (_biome) {
				case BIOME.grass:
					_dec = o_web;
				break;
				case BIOME.grave:
					_dec = o_spike;
				break;
				case BIOME.forest:
					_dec = o_flower;
				break;
				default: _dec = o_tree;
			}
			if (_dec != noone) {
				with (instance_create_depth(_x, _y, _depth-1, _dec)) {
					parentTile = _tile;	
				}
			}
		}
	}
}

var _index = irandom(ds_list_size(global.tileList)-1);
TileAppear(_index);

#endregion

#region bridge connection
for (var _dy = -1; _dy <= 1; _dy++) {
	for (var _dx = -1; _dx <= 1; _dx++) {
		if (_dx * _dy != 0) continue; // 1.diagonal
		if (_dx == 0 && _dy == 0) continue; // 2.self
		if (global.patch_grid[# _xPatch+_dx, _yPatch+_dy] != noone) {
			BuildBridgeBetweenPatches(_xPatch, _yPatch, _xPatch+_dx, _yPatch+_dy);
		}
	}
}
#endregion

SpawnMonsterFromCardAtPatch(_card, _xPatch, _yPatch);