/// @description attack
if (!moving(xnext, ynext, SPEED*2)) { // arrived
	change_state(ZOMBIE.atk_back);
	if (target) {
		audio_emitter_pitch(global.audio_em, random_range(0.8, 1.2));
		audio_play_sound_on(global.audio_em, a_hurt, false, 5);

		target.hp -= atk;
		with (instance_create_layer(target.x+CELL_WIDTH/2, target.y-CELL_HEIGHT/2, "Instances", o_text)) {
			textColor = c_red;
			text = "-" + string(other.atk);
		}
		
		set_shake(target, 4, seconds_to_steps(.25));
		//set_shake(o_camera, 2, seconds_to_steps(.2));
		//create_blood(enemy.x+CELL_SIZE/2, enemy.y+CELL_SIZE/2, 8, 2);
	}
} else {
	image_xscale = (x == xpre) ? image_xscale : sign(xnext-x)*(-1);
}