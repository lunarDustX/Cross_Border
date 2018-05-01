///@param sprite
///@param x1
///@param y1
///@param x2
///@param y2

var sprite = argument0;
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;
var slice_width = sprite_get_width(sprite)/3;
var slice_height = sprite_get_height(sprite)/3;
var width = x2-x1;
var height = y2-y1;

// Top
draw_sprite_part_ext(sprite, image_index, 0, 0, slice_width, slice_height, x1, y1, 1, 1, image_blend, 1);
draw_sprite_part_ext(sprite, image_index, slice_width, 0, slice_width, slice_height, x1+slice_width, y1, (width-slice_width*2)/slice_width, 1, image_blend, 1);
draw_sprite_part_ext(sprite, image_index, slice_width*2, 0, slice_width, slice_height, x2-slice_width, y1, 1, 1, image_blend, 1);

// Middle
draw_sprite_part_ext(sprite, image_index, 0, slice_height, slice_width, slice_height, x1, y1+slice_height, 1, (height-slice_height*2)/slice_height, image_blend, 1);
draw_sprite_part_ext(sprite, image_index, slice_width, slice_height, slice_width, slice_height, x1+slice_width, y1+slice_height, (width-slice_width*2)/slice_width, (height-slice_height*2)/slice_height, image_blend, 1);
draw_sprite_part_ext(sprite, image_index, slice_width*2, slice_height, slice_width, slice_height, x2-slice_width, y1+slice_height, 1, (height-slice_height*2)/slice_height, image_blend, 1);

// Bottom
draw_sprite_part_ext(sprite, image_index, 0, slice_height*2, slice_width, slice_height*2, x1, y1+height-slice_height, 1, 1, image_blend, 1);
draw_sprite_part_ext(sprite, image_index, slice_width, slice_height*2, slice_width, slice_height, x1+slice_width, y1+height-slice_height, (width-slice_width*2)/slice_width, 1, image_blend, 1);
draw_sprite_part_ext(sprite, image_index, slice_width*2, slice_height*2, slice_width, slice_height, x2-slice_width, y2-slice_height, 1, 1, image_blend, 1);
