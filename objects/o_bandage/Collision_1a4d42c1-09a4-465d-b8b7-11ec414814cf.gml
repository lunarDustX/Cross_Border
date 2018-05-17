/// @description zombie special
if (!canpick) exit;
if (other.sprite_index != s_zombie) exit;


if (other.state == ZOMBIE.wait or other.state == ZOMBIE.action) {
	if (!in_same_cell(self, other)) exit;
	
	// PICK UP
	instance_destroy(); // destroy the heart
	other.hp++;
	with (instance_create_layer(other.x+CELL_WIDTH/2, other.y-CELL_HEIGHT/2, "Instances", o_text)) {
		//image_blend = make_color_hsv(150, 160, 255);
		textColor = c_lime;
		text = "+1";
	}
	// sound
	PlaySound(a_hp);
}




