///@description dead
event_inherited();
// 1.Remove from unit grid
ds_grid_set(global.unit_grid, x div CELL_SIZE, y div CELL_SIZE, noone);

// 2.remove from active enimy list
var _index = ds_list_find_index(global.unit_list, id);
ds_list_delete(global.unit_list, _index);

// 3.blood effect
//create_blood(x+CELL_SIZE/2, y+CELL_SIZE/2, 6, 2);



