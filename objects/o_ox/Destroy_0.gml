/// @description loot
event_inherited();

var _loot = noone;
if (normal) { // ox loot
	var _p = random(1);
	if (_p < 0.30) {
		_loot = o_heart;
	} 
} else { // 
	var _p = random(1);
	if (_p < 0.5) {
		show_message("暴击斧头?");
		//_loot = noone;
	} 
}
if (_loot != noone) {
	instance_create_layer(x, y, "Instances", _loot);
}

