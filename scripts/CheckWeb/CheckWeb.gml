///@description CheckWeb

var _web = instance_position(x+CELL_WIDTH/2, y+CELL_HEIGHT/2, o_web);
if (_web != noone) {
	webbed = true;
	myWeb = _web;
	image_speed = 0;
	
	_web.depth = depth-1;
}