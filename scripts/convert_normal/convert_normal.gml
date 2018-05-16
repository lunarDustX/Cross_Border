///@description convert_normal
PlaySound(a_convert);

var _x = snap_value(x, CELL_WIDTH);
var _y = snap_value(y, CELL_HEIGHT);
with (instance_create_depth(_x, _y, depth-1, o_smoke)) {
	parent = other.id;	
	parent.image_alpha = 0;
}

if (sprite_index != normal_sprite) {
	sprite_index = normal_sprite;	
}

hp -= delta_hp;
atk -= delta_atk;
critical_rate -= delta_critical;

if (hp <= 0) {
	instance_destroy();
	next_unit();
	if (global.achievement_convertkill == false) {
		global.achievement_convertkill = true;
		
		with (create_textbox_at_center("新成就：转换击杀！")) {
			alarm[0] = seconds_to_steps(1.0);	
		}
	}
} else {
	next_unit();
	change_state(CREATURE.wait);	
}



	



