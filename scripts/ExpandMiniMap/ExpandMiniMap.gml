var _margin = 8;
var _x0 = 136;
var _y0 = 56;

for (var _dy = -1; _dy <= 1; _dy++) {
	for (var _dx = -1; _dx <= 1; _dx++) {
		if (_dx * _dy != 0) continue; // 1.diagonal
		if (_dx == 0 && _dy == 0) continue; // 2.self
		if (global.patch_grid[# mx+_dx, my+_dy] == noone) { 
			// click multiple check
			if (place_meeting((mx+_dx) *(sprite_width+_margin) +_x0, (my+_dy) *(sprite_height+_margin) +_y0, o_patch)) continue;
			// create new o_patch
			with (instance_create_layer((mx+_dx) *(sprite_width +_margin) +_x0, (my+_dy) *(sprite_height +_margin) +_y0, "Instances", o_patch)) {
				mx = other.mx + _dx;
				my = other.my + _dy;
			}
		}
	}
}