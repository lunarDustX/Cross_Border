/// @description 
if (instance_number(o_monster) <= 0) {
	draw_sprite(sprite_index, image_index, ui_x, ui_y);
}

draw_text(10, 10, "monster: " + string(instance_number(o_monster)));