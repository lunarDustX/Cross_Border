///@arg x
///@arg y
var _x = argument0;
var _y = argument1;

var _x_patch = _x div ((global.PATCH_SIZE+1) * CELL_WIDTH); 
var _y_patch = _y div ((global.PATCH_SIZE+1) * CELL_HEIGHT);

return [_x_patch, _y_patch];