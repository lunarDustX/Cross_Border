/// @description 
var _scale = height/240 + 1.0;
draw_sprite_ext(sprite_index, image_index, 
				x + CELL_WIDTH/2, y-height+CELL_HEIGHT/2,
				_scale, _scale, 
				0, image_blend, 1);
//draw_sprite(sprite_index, image_index, x + CELL_SIZE/2, y-height+CELL_SIZE/2);