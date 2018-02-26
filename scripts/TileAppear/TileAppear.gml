///@arg index
var _index = argument0;
var _tile = global.tileList[|_index];

/* in order version
with (_tile) {
	y -= BIGNUM;
	targetY = y-TILE_UP_DIS;	
	alarm[0] = seconds_to_steps(random_range(0.09,0.11));
}
*/

with (_tile) {
	y -= BIGNUM;
	targetY = y-TILE_UP_DIS;	
	alarm[0] = seconds_to_steps(random_range(0.03,0.05));
}

ds_list_delete(global.tileList, _index);