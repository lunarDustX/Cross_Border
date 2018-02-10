///@description BuildBridge
///@arg xPatch1
///@arg yPatch1
///@arg xPatch2
///@arg yPatch2
var _xPatch1 = argument0;
var _yPatch1 = argument1;
var _xPatch2 = argument2;
var _yPatch2 = argument3;

if (_xPatch1 != _xPatch2) {
	for (var k = 0; k < MAX_BRIDGE; k++) {
		var _y = (irandom(PATCH_SIZE-1) + _yPatch1 *(PATCH_SIZE+1)) * CELL_SIZE;
		var _x = (max(_xPatch1, _xPatch2) *(PATCH_SIZE+1) -1) * CELL_SIZE;
		if (!place_meeting(_x+8, _y+8, o_bridge_tile)) {
			var _depth = CalculateTileDepth(_y);
			with(instance_create_depth(_x, _y, _depth, o_bridge_tile)) {
				image_index = 1;	
			}
		}
	}
}

if (_yPatch1 != _yPatch2) {
	for (var k = 0; k < MAX_BRIDGE; k++) {
		var _x = (irandom(PATCH_SIZE-1) + _xPatch1 *(PATCH_SIZE+1)) * CELL_SIZE;
		var _y = (max(_yPatch1, _yPatch2) *(PATCH_SIZE+1) -1) * CELL_SIZE;
		if (!place_meeting(_x+8, _y+8, o_bridge_tile)) {
			var _depth = CalculateTileDepth(_y);
			instance_create_depth(_x, _y, _depth, o_bridge_tile);	
		}
	}
}

