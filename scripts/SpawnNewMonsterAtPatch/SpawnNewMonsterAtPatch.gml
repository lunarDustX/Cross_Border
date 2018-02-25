///@description SpawnNewMonsterAtPatch
///@arg patchNumber
var _patchNumner = argument0;
if (global.RebornArr[_patchNumner] > 0) {
	global.RebornArr[_patchNumner]--;
	var _xPatch = _patchNumner mod MAP_SIZE;
	var _yPatch = _patchNumner div MAP_SIZE;
	var _xCell = _xPatch *(PATCH_SIZE+1) + irandom_range(2, 3);
	var _yCell = _yPatch *(PATCH_SIZE+1) + irandom_range(2, 3);
	var _x = _xCell * CELL_SIZE;
	var _y = _yCell * CELL_SIZE;
	with (instance_create_layer(_x, _y, "Instances", o_fall)) {
		objType = o_ox;	
	}
}