/// @description 
y = approach(y, 0, 10);
if (y == 0) {
	if (!instance_exists(o_replay_button)) {
		instance_create_depth(600, 500, depth-1, o_replay_button);	
	}
	//if (alarm[0] == -1) {
	//	alarm[0] = seconds_to_steps(1.0);	
	//}
}
