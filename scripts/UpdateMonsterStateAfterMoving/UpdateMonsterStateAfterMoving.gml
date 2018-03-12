
var _xcell = x div CELL_WIDTH;
var _ycell = y div CELL_HEIGHT;

// on bridge 
if ((_xcell+1) % (global.PATCH_SIZE+1) == 0 || (_ycell+1) % (global.PATCH_SIZE+1) == 0) { 
	exit;	
}

var _normal = is_normal(x,y);
if (normal != _normal) {
	normal = _normal;
	if (normal) {
		convert_normal();	
	} else {
		convert_evil();	
	}
}