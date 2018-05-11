/// @description 
y = approach(y, 0, 5);
if (y == 0) {
	if (!instance_exists(o_replay_button)) {
		instance_create_depth(600, 500, depth-1, o_replay_button);	
	}
}
