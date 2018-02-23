/// @description attack
if (!moving(xnext, ynext, SPEED*2)) { //arrived
	change_state(PLAYER.atk_back);
	
	var enemy = global.unit_grid[# xnext/CELL_SIZE, ynext/CELL_SIZE];
	if (enemy) {
		//audio_play_sound(a_hurt, 5, false);
		audio_emitter_pitch(global.audio_em, random_range(0.8, 1.2));
		audio_play_sound_on(global.audio_em, a_hurt, false, 5);
		
		var _dmg = atk;
		if (irandom(4) == 4) _dmg+=1;
		enemy.target = id;  // set player as target 
		enemy.hp -= _dmg;
		
		with (instance_create_layer(enemy.x+CELL_SIZE/2, enemy.y-CELL_SIZE/2, "Instances", o_text)) {
			//image_blend = make_color_hsv(0, 160, 255);
			textColor = c_red;
			text = "-"+string(_dmg);
		}
		set_shake(enemy, 1, seconds_to_steps(.25));
		//set_shake(o_camera, 2, seconds_to_steps(.2));
		//create_blood(enemy.x+CELL_SIZE/2, enemy.y+CELL_SIZE/2, 8, 2);
	}
} else {
	image_xscale = (x == xpre) ? image_xscale : sign(xnext-x);
}
