///@description convert_normal
if (sprite_index != normal_sprite) {
	sprite_index = normal_sprite;	
}

hp -= delta_hp;
atk -= delta_atk;

if (hp <= 0) {
	instance_destroy();
	show_message("convert kill.");
}



