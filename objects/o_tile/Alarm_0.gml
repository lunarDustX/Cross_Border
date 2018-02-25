/// @description
global.tileIndex++;
if (global.tileIndex < ds_list_size(global.tileList)) {
	TileAppear(global.tileIndex);
} else {
	ds_list_destroy(global.tileList);
	
	with (o_camera) { // unlock camera
		alarm[0] = seconds_to_steps(1.5); 	
	}
}
