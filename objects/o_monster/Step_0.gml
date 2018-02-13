/// @description 
event_inherited();

var _normal = is_normal(x,y);
if (normal != _normal) {
	normal = _normal;
	if (normal) {
		convert_normal();	
	} else {
		convert_evil();	
	}
}

