///@description BuildBridge
///@arg xPatch1
///@arg yPatch1
///@arg xPatch2
///@arg yPatch2
var _xPatch1 = argument0;
var _yPatch1 = argument1;
var _xPatch2 = argument2;
var _yPatch2 = argument3;

// out of border
if (_xPatch1 < 0 || _xPatch1 > MAP_SIZE-1) exit;
if (_xPatch2 < 0 || _xPatch2 > MAP_SIZE-1) exit;
if (_yPatch1 < 0 || _yPatch1 > MAP_SIZE-1) exit;
if (_yPatch2 < 0 || _yPatch2 > MAP_SIZE-1) exit;

if (room == r_tutorial) {
	if (_xPatch1 != _xPatch2) {
		var _y = (1 + _yPatch1 *(global.PATCH_SIZE+1)) * CELL_HEIGHT;
		var _x = (max(_xPatch1, _xPatch2) *(global.PATCH_SIZE+1) -1) * CELL_WIDTH;
		if (!place_meeting(_x+8, _y+8, o_bridgeTile)) {
			mp_grid_clear_cell(global.AIGrid, _x div CELL_WIDTH, _y div CELL_HEIGHT);
			var _depth = CalculateTileDepth(_y);
			with(instance_create_depth(_x, _y, _depth, o_bridgeTile)) { // bridge direction
				image_index = 1;	
			}
		}
	}
	exit;
}

if (_xPatch1 != _xPatch2) {
	for (var k = 0; k < MAX_BRIDGE; k++) {
		var _y = (irandom(global.PATCH_SIZE-1) + _yPatch1 *(global.PATCH_SIZE+1)) * CELL_HEIGHT;
		var _x = (max(_xPatch1, _xPatch2) *(global.PATCH_SIZE+1) -1) * CELL_WIDTH;
		if (!place_meeting(_x+8, _y+8, o_bridgeTile)) {
			mp_grid_clear_cell(global.AIGrid, _x div CELL_WIDTH, _y div CELL_HEIGHT);
			var _depth = CalculateTileDepth(_y);
			with(instance_create_depth(_x, _y, _depth, o_bridgeTile)) { // bridge direction
				image_index = 1;	
			}
		}
	}
}

if (_yPatch1 != _yPatch2) {
	for (var k = 0; k < MAX_BRIDGE; k++) {
		var _x = (irandom(global.PATCH_SIZE-1) + _xPatch1 *(global.PATCH_SIZE+1)) * CELL_WIDTH;
		var _y = (max(_yPatch1, _yPatch2) *(global.PATCH_SIZE+1) -1) * CELL_HEIGHT;
		if (!place_meeting(_x+8, _y+8, o_bridgeTile)) {
			mp_grid_clear_cell(global.AIGrid, _x div CELL_WIDTH, _y div CELL_HEIGHT);
			var _depth = CalculateTileDepth(_y);
			instance_create_depth(_x, _y, _depth, o_bridgeTile);	
		}
	}
}

