/// @description 
if (alarm[0] == -1) {
	time += 1.0/seconds_to_steps(1.0);
	alpha = 1.0 - sqr(time);
	if (alpha <= 0) {
		instance_destroy();
	}
}
