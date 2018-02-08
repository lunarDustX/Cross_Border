/// @description 
for (var i = 0; i < array_length_1d(loots); i++) {
	with (instance_create_layer(x, y, "Instances", loots[i])) {
		alarm[0] = seconds_to_steps(1);	
	}
}