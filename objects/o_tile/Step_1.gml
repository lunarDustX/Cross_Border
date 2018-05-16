/// @description 

if (y != targetY) {
	y = lerp(y, targetY, 0.06);
	if (abs(y-targetY) < 0.05) {
		y = targetY;	
	}
} else {
	if (uh) {
		uh = false;
		instance_change(o_flowerTile, true);	
	}
}

