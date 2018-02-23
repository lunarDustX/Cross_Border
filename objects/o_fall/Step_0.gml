/// @description 
vspd += grav;
height = max(0, height - vspd);

if (height == 0 && alarm[0] == -1) {
	alarm[0] = seconds_to_steps(0.1);	
}
