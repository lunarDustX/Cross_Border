///@param x
///@param y
///@param margin
///@param text

var _x = argument0;
var _y = argument1;
var _margin = argument2;
var _text = argument3;

var _textbox = instance_create_layer(_x, _y, "Instances", o_ui_textbox);
with (_textbox) {
	text = _text;
	margin = _margin;
	width = string_width(_text)+_margin*2;
	height = string_height(_text)+_margin+1;
	
	// Update the scale
	image_xscale = width/sprite_get_width(sprite_index);
	image_yscale = height/sprite_get_height(sprite_index);
}

return _textbox;
