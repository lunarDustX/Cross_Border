///@description in_same_cell
///@arg unit_a
///@arg unit_b

var _a = argument0;
var _b = argument1;

if (_a.x div CELL_WIDTH != _b.x div CELL_WIDTH) return false;
if (_a.y div CELL_HEIGHT != _b.y div CELL_HEIGHT) return false;
return true;
