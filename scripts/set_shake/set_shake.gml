///@description set_shake
///@param object
///@param amount
///@param duration
var _object = argument0;
var _amount = argument1;
var _duration = argument2;

if (!instance_exists(_object)) exit;
with (_object) {
	alarm[7] = _duration;
	shake = _amount;
}
