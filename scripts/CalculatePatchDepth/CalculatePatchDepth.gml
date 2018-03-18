///@description CalculatePatchDepth
for (var _dy = -1; _dy <= 1; _dy++) {
	for (var _dx = -1; _dx <= 1; _dx++) {
		if (_dx * _dy != 0) continue; // 1.diagonal
		if (_dx == 0 && _dy == 0) continue; // 2.self
		if (mx+_dx < 0 || mx+_dx > MAP_SIZE-1) continue; // 3.out of border
		if (my+_dy < 0 || my+_dy > MAP_SIZE-1) continue;
		if (global.patch_grid[# mx+_dx, my+_dy] != noone) {
			var _patch = global.patch_grid[# mx+_dx, my+_dy];
			if (patch_type == _patch.patch_type) {
				patch_depth = max(patch_depth, _patch.patch_depth+1);
			}
		} 
	}
}