///@description convert_normal
PlaySound(a_convert);

var _x = snap_value(x, CELL_WIDTH);
var _y = snap_value(y, CELL_HEIGHT);
// smoke effect
with (instance_create_depth(_x, _y, depth-1, o_smoke)) {
	parent = other.id;
	parent.image_alpha = 0;
}

// sprite
if (sprite_index != evil_sprite) {
	sprite_index = evil_sprite;	
}

// data
hp += delta_hp;
atk += delta_atk;
moves = 0;
//moves += delta_move;

if (hp <= 0) {
	instance_destroy();
	if (global.achievement_convertkill == false) {
		global.achievement_convertkill = true;
		with (instance_create_layer(0, 0, "Instances", o_hintBox)) {
			text = "Achievement: convert kill!";
		}
	}
	//show_message(string(ds_list_size(global.unit_list)));
}

