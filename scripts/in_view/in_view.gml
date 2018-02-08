if (object_index == o_player) return false;

return true;

/*
var _view_x = camera_get_view_x(view_camera[0]);
var _view_y = camera_get_view_y(view_camera[0]);
var _view_w = camera_get_view_width(view_camera[0]);
var _view_h = camera_get_view_height(view_camera[0]);
var _padding = CELL_SIZE/2;

return point_in_rectangle(x+CELL_SIZE/2, y+CELL_SIZE/2, _view_x-_padding, _view_y-_padding, _view_x+_view_w+_padding, _view_y+_view_h+_padding);
