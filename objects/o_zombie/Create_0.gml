/// @description 
// Inherit the parent event
event_inherited();

enum ZOMBIE {
	wait,
	action,
	move,
	attack,
	atk_back,
}

// Attributes
monsterName = "zomleton";
monsterID = ID_ZOMBIE;

hp = 3;
atk = 1;

bad_tiles_arr = [];
targets_arr = [o_player];

// Convert
normal_sprite = s_zombie;
evil_sprite = choose(s_skeleton_hammer, s_skeleton_sword);
//evil_sprite = choose(s_skeleton_axe, s_skeleton_hammer, s_skeleton_sword);

switch (evil_sprite) {
	/*
	case s_skeleton_axe:
		delta_hp = -2;
		delta_atk = 1;
		delta_moves = 1;
	break;
	*/
	
	case s_skeleton_hammer:
		delta_hp = -2;
		delta_atk = 1;
		delta_moves = 1;
		delta_critical = 0;
	break;
	
	case s_skeleton_sword:
		delta_hp = -1;
		delta_atk = 0;
		delta_moves = 1;
		delta_critical = 0.5;
	break;
}

normal_arr[BIOME.grave] = true;

normal_arr[BIOME.grass] = false;
normal_arr[BIOME.snow] = false;
normal_arr[BIOME.desert] = false;
normal_arr[BIOME.forest] = false;

normal = true;
UpdateMonsterStateAfterMoving();