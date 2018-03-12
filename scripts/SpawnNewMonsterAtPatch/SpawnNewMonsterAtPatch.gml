///@description SpawnNewMonsterAtPatch
///@arg patchNumber
var _patchNumner = argument0;
if (global.RebornArr[_patchNumner] > 0) { // Only Spawn Once
	global.RebornArr[_patchNumner]--;
	var _xPatch = _patchNumner mod MAP_SIZE;
	var _yPatch = _patchNumner div MAP_SIZE;
	if (room == r_game) {
		var _xCell = _xPatch *(global.PATCH_SIZE+1) + irandom_range(2, 3);
		var _yCell = _yPatch *(global.PATCH_SIZE+1) + irandom_range(2, 3);
	}
	if (room == r_tutorial) {
		var _xCell = _xPatch *(global.PATCH_SIZE+1) + 0;
		var _yCell = _yPatch *(global.PATCH_SIZE+1) + 2;
	}
	var _x = _xCell * CELL_WIDTH;
	var _y = _yCell * CELL_HEIGHT;
	
	var _monster;
	switch (global.patch_grid[# _xPatch, _yPatch]) {
		case BIOME.grass: 
			_monster = o_ox;
		break;
		
		case BIOME.forest:
			_monster = o_bat;
		break;
		
		case BIOME.grave:
			_monster = o_zombie;
		break;
		
		case BIOME.snow:
			_monster = o_snowman;
		break;
		
	}	
	
	with (instance_create_layer(_x, _y, "Instances", o_fall)) {
		objType = _monster;
		//frozen = 1; // do not move this turn
	}
}