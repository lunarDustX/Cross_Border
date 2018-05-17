///@description CheckTileDamage

var _tile = global.tile_grid[# x div CELL_WIDTH, y div CELL_HEIGHT];
if (_tile == noone) exit;
switch (_tile.object_index) {
	case o_treeTile:
		hp--;
		with (instance_create_layer(x+CELL_WIDTH/2, y-CELL_HEIGHT/2, "Instances", o_text)) {
			textColor = c_red;
			text = "-1";
		}
		PlayHurtSound(self);
		/*
		#region Hurt Sound
		switch (sprite_index) {
			case s_chest:
				PlaySound(a_chest);
			break;
				
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
		*/
	break;
}