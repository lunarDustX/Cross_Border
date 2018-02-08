/// @description dead
event_inherited();
//Remove from unit list and unit grid
ds_grid_set(global.unit_grid, x div CELL_SIZE, y div CELL_SIZE, noone);
var _index = ds_list_find_index(global.unit_list, id);
ds_list_delete(global.unit_list, _index);
//create_blood(x+CELL_SIZE/2, y+CELL_SIZE/2, 6, 2);



