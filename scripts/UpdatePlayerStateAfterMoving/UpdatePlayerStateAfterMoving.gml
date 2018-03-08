// update Grid
global.unit_grid[# xpre div CELL_WIDTH, ypre div CELL_HEIGHT] = noone;
global.unit_grid[# x div CELL_WIDTH, y div CELL_HEIGHT] = id;

yoffset = 0;
xpre = x;
ypre = y;

var _pn = calculate_patch_number(x, y);
if (_pn != patch_number) {
	patch_number = _pn;
	if (ds_list_size(global.unit_list) > 0) { // active monster exists
		SpawnNewMonsterAtPatch(_pn);
	}
} 