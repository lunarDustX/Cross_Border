/// @description 
for (var j = -1; j <= 1; j++) {
	for (var i = -1; i <= 1; i++) {
		if (i*j == 0) {
			if (i==0 && j==0) continue;
			var _xCell = parentTile.xCell+i;
			var _yCell = parentTile.yCell+j;
			if (global.tile_grid[# _xCell, _yCell]) {
				with (global.tile_grid[# _xCell, _yCell]) {
					instance_change(o_lavaTile, true);	
				}
			}
		}
	}
}
