/// @description Monster Falls
var _monster = monster_grid[# index, 0];
var _pos = monster_grid[# index, 1];
var _x = _pos[0]*CELL_WIDTH + px *(global.PATCH_SIZE+1)*CELL_WIDTH; 
var _y = _pos[1]*CELL_HEIGHT + py *(global.PATCH_SIZE+1)*CELL_HEIGHT;
with (instance_create_layer(_x, _y, "Instances", o_fall)) {
	objType = _monster;	
}

index++;
if (index < monsterNumber) {
	alarm[0] = irandom_range(2, 5);
} else { 
	global.card_selected = noone;
	instance_destroy();
	/*
	with (o_camera) {
		alarm[0] = seconds_to_steps(1); // unlock camera	
	}
	*/
}