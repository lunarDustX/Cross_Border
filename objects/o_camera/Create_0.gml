/// @description
shake = 0;

if (instance_exists(o_player)) {
	x = o_player.x-camera_get_view_width(view_camera[0])/2;
	y = o_player.y-camera_get_view_height(view_camera[0])/2;
}