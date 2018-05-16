/// @description
image_speed = 0;

xCell = -1;
yCell = -1;
if (object_index != o_bridgeTile) { // add floor
	with (instance_create_depth(x, y+CELL_HEIGHT, depth+1, o_floor)) {
		parent = other.id;	
	}
}

xCell = x div CELL_WIDTH;

if (object_index == o_bridgeTile || object_index == o_flowerTile) {
	yCell = y div CELL_HEIGHT; 	
} else {
	yCell = (y-TILE_UP_DIS-BIGNUM) div CELL_HEIGHT; 	
}
global.tile_grid[# xCell, yCell] = id;
targetY = y;

uh = false;
