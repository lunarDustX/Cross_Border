var _mx = global.newPatch % MAP_SIZE;
var _my = global.newPatch div MAP_SIZE;
var _x = (_mx *(PATCH_SIZE+1) +3)*CELL_SIZE - global.view_width/2;
var _y = (_my *(PATCH_SIZE+1) +3)*CELL_SIZE - global.view_height/2;
with (o_camera) {
	cameraLock = true;
	x = _x;
	y = _y;
	camera_set_view_pos(view_camera[0], _x, _y);
}