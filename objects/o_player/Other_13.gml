/// @description attack
if (!moving(xnext, ynext, SPEED*2)) { //arrived
	change_state(PLAYER.atk_back);
	
	var enemy = global.unit_grid[# xnext/CELL_SIZE, ynext/CELL_SIZE];
	if (enemy) {
		//audio_play_sound(a_hurt, 5, false);
		//var _damage = att;
		//if (_is_player && irandom(4) == 4) _damage+=1;
		// set player as target 
		enemy.target = id; 
		enemy.hp -= atk;
		//var _text = instance_create_layer(enemy.x+CELL_SIZE/2, enemy.y-CELL_SIZE/2, "Instances", o_text);
		//_text.image_blend = make_color_hsv(0, 160, 255);
		//_text.text = "-"+string(_damage);
		set_shake(enemy, 1, seconds_to_steps(.25));
		//set_shake(o_camera, 2, seconds_to_steps(.2));
		//create_blood(enemy.x+CELL_SIZE/2, enemy.y+CELL_SIZE/2, 8, 2);
	}
} else {
	image_xscale = (x == xpre) ? image_xscale : sign(xnext-x);
}
