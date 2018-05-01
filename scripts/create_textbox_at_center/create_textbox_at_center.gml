///@param text
var _text = argument0;
var _textbox = create_textbox(0, 0, 32, argument0);
_textbox.ui_x = camera_get_view_width(view_camera[0])/2 - _textbox.width/2 +50;
_textbox.ui_y = 300;

return _textbox;
