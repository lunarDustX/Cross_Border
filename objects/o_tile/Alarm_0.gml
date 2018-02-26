/// @description
/* in order
global.tileIndex++;
if (global.tileIndex < ds_list_size(global.tileList)) {
	TileAppear(global.tileIndex);
} else {
	ds_list_destroy(global.tileList);
	
	with (o_camera) { // unlock camera
		alarm[0] = seconds_to_steps(1.5); 	
	}
}
*/

var _size = ds_list_size(global.tileList);
if (_size > 0) {
	var _index = irandom(_size -1);
	TileAppear(_index);
} else {
	ds_list_destroy(global.tileList);
	
	with (o_camera) { // unlock camera
		alarm[0] = seconds_to_steps(2.0); 	
	}
}
