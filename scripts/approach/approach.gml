///@Description approach
///@arg current
///@arg target
///@arg amount


var _current = argument0; // Current value
var _target = argument1; // Target value
var _amount = argument2; // Amount to approach each step

// approach the value but don't go over
if (_current < _target) {
    return min(_current+_amount, _target); 
} else {
    return max(_current-_amount, _target);
}
