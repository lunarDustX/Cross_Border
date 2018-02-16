/// @description 

// Inherit the parent event
event_inherited();

// destroy path
path_delete(path);

// loot
var _loots = [];
if (normal) {
	_loots = normal_loots;
} else {
	_loots = evil_loots;
}

for (var i = 0; i < array_length_1d(_loots); i++) {
	with (instance_create_layer(x, y, "Instances", _loots[i])) {
		//alarm[0] = seconds_to_steps(1);	
	}
}