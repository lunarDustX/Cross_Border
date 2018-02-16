/// @description 
height += zspd;
zspd += grav;

if (height >= 0) {
	canpick = true;
	zspd = -0.25 * zspd;
	if (zspd > -1) {
		zspd = 0;
		height = 0;
	}
}
