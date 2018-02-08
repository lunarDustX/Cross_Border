/// @description Custom draw

/*
// Draw the shadow
var _shadow_scale = 1-.5/(JUMP_HEIGHT/yoffset);
draw_sprite_ext(s_shadow, 0, x+CELL_SIZE/2, y+CELL_SIZE/2, _shadow_scale, _shadow_scale, 0, c_white, 1);
*/

// Draw self
/*
patch_pos = calculate_patch_pos(x, y);
var _patch_type = global.patch_grid[# patch_pos[0], patch_pos[1]];
if (sprite_index != sprites_arr[_patch_type]) {
	sprite_index = sprites_arr[_patch_type];
}
*/

draw_sprite_ext(sprite_index, image_index, x+random_range(-shake, shake)+CELL_SIZE/2, y-yoffset+random_range(-shake, shake)+CELL_SIZE/2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

// TEST : draw attributs
draw_set_font(f_test);
if (object_index == o_player) draw_set_color(c_orange);
draw_text(x+2, y-23, "HP:" + string(hp));
draw_text(x+2, y-15, "AT:" + string(atk));
draw_set_color(c_white);

