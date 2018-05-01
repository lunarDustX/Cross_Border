// fall effect
vspd += grav;
height = max(0, height - vspd);

/*
if (height == 0 && !onGround) {
	if (alarm[11] == -1) {
		alarm[11] = seconds_to_steps(0.4);	
	}
}