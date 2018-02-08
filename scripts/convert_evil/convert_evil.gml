///@description convert_normal
if (sprite_index != evil_sprite) {
	sprite_index = evil_sprite;	
}

hp += delta_hp;
atk += delta_atk;

if (hp <= 0) {
	instance_destroy();
	show_message("convert kill.");
}

