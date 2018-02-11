for (var _dy = -1; _dy <= 1; _dy++) {
	for (var _dx = -1; _dx <= 1; _dx++) {
		if (_dx * _dy != 0) continue; // 1.diagonal
		if (_dx == 0 && _dy == 0) continue; // 2.self
		if (global.patch_grid[# mx+_dx, my+_dy] == noone) { 
			if (place_meeting((mx+_dx) *sprite_width +80, (my+_dy) *sprite_height +80, o_patch)) continue;
			with (instance_create_layer((mx+_dx) *sprite_width +80, (my+_dy) *sprite_height +80, "Instances", o_patch)) {
				mx = other.mx + _dx;
				my = other.my + _dy;
			}
		}
	}
}