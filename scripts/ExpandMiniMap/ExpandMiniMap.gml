var _margin = 24;
for (var _dy = -1; _dy <= 1; _dy++) {
	for (var _dx = -1; _dx <= 1; _dx++) {
		if (_dx * _dy != 0) continue; // 1.diagonal
		if (_dx == 0 && _dy == 0) continue; // 2.self
		if (global.patch_grid[# mx+_dx, my+_dy] == noone) { 
			// click multiple check
			if (instance_position(_dx *(sprite_width +_margin) + x, _dy *(sprite_height+_margin) + y, o_patch) != noone) continue;
			// create new o_patch
			with (instance_create_layer(_dx *(sprite_width +_margin) + ui_x, _dy *(sprite_height +_margin) + ui_y, "Map", o_patch)) {
				mx = other.mx + _dx;
				my = other.my + _dy;
			}
		}
	}
}