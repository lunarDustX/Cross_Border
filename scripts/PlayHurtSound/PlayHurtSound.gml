///@description 
///@arg someone
var _someone = argument0;

switch (_someone.sprite_index) {
	case s_player_idle:
		PlaySound(a_player_hurt);
	break;
	
	case s_chest:
		PlaySound(a_chest);
	break;
			
	case s_ghost:
		PlaySound(a_ghost);
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