///@arg sx
///@arg sy
///@arg fx
///@arg fy

var _sx = argument0;
var _sy = argument1;
var _fx = argument2;
var _fy = argument3;

if !mp_grid_path(global.AIGrid, path, _sx, _sy, _fx, _fy, false) {
	show_debug_message("ERROR: No path"); 
	return false;
} else {
	xnext = snap_value(path_get_point_x(path,1), CELL_SIZE);
	ynext = snap_value(path_get_point_y(path,1), CELL_SIZE);
	return true;
	//show_message(string(_px) + " "+ string(_py));
}
