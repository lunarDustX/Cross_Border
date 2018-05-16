/// @description attack
if (!moving(xnext, ynext, SPEED*2)) { //arrived
	change_state(PLAYER.atk_back);
	
	var enemy = global.unit_grid[# xnext div CELL_WIDTH, ynext div CELL_HEIGHT];
	if (enemy) {
		if (random(1) >= enemy.miss_rate) { // hit
			
			DoDamageTo(enemy);
			enemy.target = id;  // set player as target 
			
			#region PlayHurtSound
			switch (enemy.sprite_index) {
				case s_ox:
					PlaySound(a_ox);
				break;
				case s_minotaur:
					PlaySound(a_mino);
				break;
				
				case s_bat:
					PlaySound(a_bat);
				break;
				case s_vampire:
					PlaySound(a_vampire)
				break;
				
				case s_snowman_big:
					PlaySound(a_snow_big);
				break;
				case s_snowman_small:
					PlaySound(a_snow_small);
				break;
				
				case s_zombie:
					PlaySound(a_zombie);
				break;
				case s_skeleton_hammer:
					PlaySound(a_sk_hammer);
				break;
				case s_skeleton_sword:
					PlaySound(a_sk_sword);
				break;
				
				case s_spider:
					PlaySound(a_spider);
				break;
			}
			#endregion
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
