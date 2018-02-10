// on bridge
var _xcell = x div CELL_SIZE;
var _ycell = y div CELL_SIZE;
if ((_xcell+1) % 7 == 0 || (_ycell+1) % 7 == 0) {
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