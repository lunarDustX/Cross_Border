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
			DoDamageTo(target);
			
			// freeze?
			if (sprite_index == s_snowman_big) {
				if (irandom(1) < 0.2) {
					var _tar = target;
					if (_tar.myIce == noone) {
						with (instance_create_layer(_tar.x+CELL_WIDTH/2, _tar.y+CELL_HEIGHT-15, "Instances", o_ice)) { // ice effect		
							parent = _tar.id;
							depth = parent.depth-1;
							parent.myIce = id;
							image_index = 1;
						}
						_tar.image_speed = 0;
					}
				}
			}
		}
		
		set_shake(target, 4, seconds_to_steps(.25));
		//set_shake(o_camera, 2, seconds_to_steps(.2));
		//create_blood(enemy.x+CELL_SIZE/2, enemy.y+CELL_SIZE/2, 8, 2);
	}
} else {
	image_xscale = (x == xpre) ? image_xscale : sign(xnext-x);
}