/// @description Make the camera follow the player
if (instance_exists(o_player)) {
	var _target_x = o_player.x;
	var _target_y = o_player.y;
} else exit;

// Move the camera
x = lerp(x, _target_x-camera_get_view_width(view_camera[0])/2, .1);
y = lerp(y, _target_y-camera_get_view_height(view_camera[0])/2, .1);
camera_set_view_pos(view_camera[0], x+random_range(-shake, shake), y+random_range(-shake, shake));

