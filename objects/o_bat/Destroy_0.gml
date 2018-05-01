/// @description 
event_inherited();

var _loot = noone;
if (normal) {
		
} else { // vampire loot
	var _p = random(1);
	if (_p <= 0.6) {
		_loot = o_heart;
	} else if (_p >= 0.8){
		_loot = o_heartContainer;	
	}
	
	if (_loot != noone) {
		instance_create_layer(x, y, "Instances", _loot);
	}
}


/*
#region loot
if (random(1) <= lootChance) {
	var _loots = [];
	if (normal) {
		_loots = normal_loots;
	} else {
		_loots = evil_loots;
	}
	
	for (var i = 0; i < array_length_1d(_loots); i++) {
		instance_create_layer(x, y, "Instances", _loots[i]);
	}
}
#endregion
*/