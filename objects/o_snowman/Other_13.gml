/// @description attack
if (!moving(xnext, ynext, SPEED*2)) { // arrived
	change_state(SNOWMAN.atk_back);
	if (target) {
		var _m = random(1);
		if (_m < target.miss_rate) {
			// MISS	
			with (instance_create_layer(target.x+CELL_WIDTH/2, target.y-CELL_HEIGHT/2, "Instances", o_text)) {
				textColor = c_lime;
				text = "MISS";
			}
		} else {
			// HIT
			PlaySound(a_hurt);
			target.hp -= atk;
			with (instance_create_layer(target.x+CELL_WIDTH/2, target.y-CELL_HEIGHT/2, "Instances", o_text)) {
				textColor = c_red;
				text = "-" + string(other.atk);
			}
		}
		
		set_shake(target, 4, seconds_to_steps(.25));
		//set_shake(o_camera, 2, seconds_to_steps(.2));
		//create_blood(enemy.x+CELL_SIZE/2, enemy.y+CELL_SIZE/2, 8, 2);
	}
} else {
	image_xscale = (x == xpre) ? image_xscale : sign(xnext-x);
}