/// @arg a
/// @arg b
/// @arg t
var _a = argument0;
var _b = argument1;
var _t = argument2;

if ( abs(_b - _a)* _t < 1 ) {
	var _r = sign(_b - _a) *_t + _a;
	return _r;	
} else {
	var _r = sign(_b - _a) *_t + _a;	
	return round(_r);
}