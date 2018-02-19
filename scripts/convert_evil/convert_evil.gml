///@description convert_normal
var _x = snap_value(x, CELL_SIZE);
var _y = snap_value(y, CELL_SIZE);
with (instance_create_depth(_x, _y, depth-1, o_smoke)) {
	parent = other.id;
	parent.image_alpha = 0;
}

if (sprite_index != evil_sprite) {
	sprite_index = evil_sprite;	
}

hp += delta_hp;
atk += delta_atk;
moves += delta_move;

if (hp <= 0) {
	instance_destroy();
	show_message("Achievement: convert kill!");
}

