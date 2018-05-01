/// @description 
event_inherited();

var _loot = noone;
if (normal) {
	// zombie loot
	var _p = random(1);
	if (_p < 0.5) {
		_loot = o_bandage;	
	}
} else { 
	var _p = random(1);
	if (sprite_index == s_skeleton_sword) {
		if (_p < 0.5) {
			_loot = o_sword;
		}
	}
}
if (_loot != noone) {
	instance_create_layer(x, y, "Instances", _loot);
}