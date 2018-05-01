/// @description attack
if (!moving(xnext, ynext, SPEED*2)) { //arrived
	change_state(PLAYER.atk_back);
	
	var enemy = global.unit_grid[# xnext div CELL_WIDTH, ynext div CELL_HEIGHT];
	if (enemy) {
		if (random(1) >= enemy.miss_rate) { // hit
		
			var _dmg = atk;
			if (random(1) < critical_rate) _dmg+=1;
			enemy.target = id;  // set player as target 
			enemy.hp -= _dmg;
		
			PlaySound(a_hurt);
			with (instance_create_layer(enemy.x+CELL_WIDTH/2, enemy.y-CELL_HEIGHT/2, "Instances", o_text)) {
				textColor = c_red;
				text = "-"+string(_dmg);
			}
			set_shake(enemy, 4, seconds_to_steps(.25));
			//set_shake(o_camera, 2, seconds_to_steps(.2));
			//create_blood(enemy.x+CELL_SIZE/2, enemy.y+CELL_SIZE/2, 8, 2);
		} else {
			// MISS	
			with (instance_create_layer(enemy.x+CELL_WIDTH/2, enemy.y-CELL_HEIGHT/2, "Instances", o_text)) {
				textColor = c_lime;
				text = "MISS";
			}
		}
	}
} else {
	image_xscale = (x == xpre) ? image_xscale : sign(xnext-x);
}
