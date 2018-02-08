///@description moving
///@arg x
///@arg y
///@arg speed
var _x = argument0;
var _y = argument1;
var _speed = argument2;

x = approach(x, _x, _speed);
y = approach(y, _y, _speed);

return !(x == _x && y == _y);
