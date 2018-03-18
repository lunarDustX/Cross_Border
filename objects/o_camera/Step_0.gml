/// @description Following Player
if (!instance_exists(o_player)) exit;
if (cameraLock) exit;
// 
var _targetX = o_player.x -global.view_width/2; //camera_get_view_width(view_camera[0])/2;
var _targetY = o_player.y -global.view_height/2;//camera_get_view_height(view_camera[0])/2;

// Move the camera

x = lerp(x, _targetX, 0.08); 
y = lerp(y, _targetY, 0.08);
camera_set_view_pos(view_camera[0], x+random_range(-shake, shake), y+random_range(-shake, shake));

