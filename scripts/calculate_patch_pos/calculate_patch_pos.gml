///@arg x
///@arg y
var _x = argument0;
var _y = argument1;

var _x_patch = _x div ((PATCH_SIZE+1) * CELL_SIZE); 
var _y_patch = _y div ((PATCH_SIZE+1) * CELL_SIZE);

return [_x_patch, _y_patch];