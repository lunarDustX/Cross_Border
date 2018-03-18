/// @description 
if (alarm[0] == -1) {
	time += 1.0/room_speed;
	alpha = 0.8 - sqr(time);
	if (alpha <= 0) instance_destroy();
}
