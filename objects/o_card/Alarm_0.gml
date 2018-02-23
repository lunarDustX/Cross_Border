/// @description Monster Falls
var _monster = monster_grid[# index, 0];
var _pos = monster_grid[# index, 1];
var _x = _pos[0]*CELL_SIZE + px *(PATCH_SIZE+1)*CELL_SIZE; 
var _y = _pos[1]*CELL_SIZE + py *(PATCH_SIZE+1)*CELL_SIZE;
with (instance_create_layer(_x, _y, "Instances", o_fall)) {
	objType = _monster;	
}

index++;
if (index < monsterNumber) {
	alarm[0] = irandom_range(2, 5);
} else { // destroy the card
	instance_destroy();	
}