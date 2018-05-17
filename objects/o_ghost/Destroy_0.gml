/// @description 
event_inherited();

/*
var _loot = noone;
if (normal) { // ox loot
	var _p = random(1);
	if (_p <= 0.4) {
		_loot = o_heart;
	} 
} else { // 
	var _p = random(1);
	//if (_p <= 0.4) {
	//	_loot = o_heart;
	//} 
}
if (_loot != noone) {
	instance_create_layer(x, y, "Instances", _loot);
}

