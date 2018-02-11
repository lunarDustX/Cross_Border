/// @description 
global.AIGrid = mp_grid_create(0, 0, room_width/CELL_SIZE, room_height/CELL_SIZE, CELL_SIZE, CELL_SIZE);

for (var _y = 0; _y < 20; _y++) {
	for (var _x = 0; _x < 20 ; _x++) {
		if ((_x+1) % 7 == 0 || (_y+1) % 7 == 0) {
			mp_grid_add_cell(global.AIGrid, _x, _y);
		}
	}
}
