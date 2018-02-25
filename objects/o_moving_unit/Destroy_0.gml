///@description dead
event_inherited();
// 1.Remove from unit grid
ds_grid_set(global.unit_grid, x div CELL_WIDTH, y div CELL_HEIGHT, noone);

// 2.remove from active enimy list
var _index = ds_list_find_index(global.unit_list, id);
ds_list_delete(global.unit_list, _index);
//show_message(string(ds_list_size(global.unit_list)));

// 3.blood effect
//create_blood(x+CELL_SIZE/2, y+CELL_SIZE/2, 6, 2);



