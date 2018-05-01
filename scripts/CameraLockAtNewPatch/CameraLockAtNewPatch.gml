var _mx = global.newPatch % MAP_SIZE;
var _my = global.newPatch div MAP_SIZE;
var _x = (_mx *(global.PATCH_SIZE+1) +2.5) *CELL_WIDTH - global.view_width/2;
var _y = (_my *(global.PATCH_SIZE+1) +2.5) *CELL_HEIGHT - global.view_height/2;
with (o_camera) {
	cameraLock = true;
	x = _x;
	y = _y;
	camera_set_view_pos(view_camera[0], _x, _y);
}