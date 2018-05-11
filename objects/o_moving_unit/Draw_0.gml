/// @description Custom draw

// Draw the shadow
var _shadow_scale = 1-.5/(JUMP_HEIGHT/yoffset);
var _shadow_offsetY = 30;
draw_sprite_ext(s_shadow, 0, x+CELL_WIDTH/2, y+CELL_HEIGHT/2+_shadow_offsetY, _shadow_scale, _shadow_scale, 0, c_white, 1);

draw_sprite_ext(sprite_index, image_index, x+random_range(-shake, shake)+CELL_WIDTH/2, y-yoffset+random_range(-shake, shake)+CELL_HEIGHT/2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

// Draw self
/*
patch_pos = calculate_patch_pos(x, y);
var _patch_type = global.patch_grid[# patch_pos[0], patch_pos[1]];
if (sprite_index != sprites_arr[_patch_type]) {
	sprite_index = sprites_arr[_patch_type];
}
*/


/*
// TEST : draw attributs
draw_set_font(f_wawa);
if (object_index == o_player) draw_set_color(c_orange);
draw_text(x+2, y-23, "HP:" + string(hp));
draw_text(x+2, y-15, "AT:" + string(atk));
//draw_text(x+16, y , string(x)+" "+ string(y));
draw_set_color(c_white);

