///@arg x
///@arg y
var _x = argument0;
var _y = argument1;

var _xCell = _x div CELL_SIZE;
var _yCell = _y div CELL_SIZE;

// on bridge
if ((_xCell+1) % (PATCH_SIZE+1) == 0 or (_yCell+1) % (PATCH_SIZE+1) == 0) {
	return patch_number;
}

var _x_patch = _xCell div (PATCH_SIZE+1);
var _y_patch = _yCell div (PATCH_SIZE+1);
//var _x_patch = _x div ((PATCH_SIZE+1) * CELL_SIZE); 
//var _y_patch = _y div ((PATCH_SIZE+1) * CELL_SIZE);

var _patch_num = _x_patch + _y_patch * MAP_SIZE;
return _patch_num;