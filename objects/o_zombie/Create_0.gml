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
monsterName = "zombie-?";
monsterID = ID_ZOMBIE;

hp = 2;
atk = 1;

normal_loots = [o_heart];
evil_loots = [];

bad_tile_arr = [VOID, EMPTY, RIVER];
target_arr = [o_player];

// Convert
normal_sprite = s_zombie;
evil_sprite = choose(s_skeleton_axe, s_skeleton_hammer, s_skeleton_sword);

switch (evil_sprite) {
	case s_skeleton_axe:
		delta_hp = 0;
		delta_atk = 1;
		delta_moves = 1;
	break;
	
	case s_skeleton_hammer:
		delta_hp = -1;
		delta_atk = 1;
		delta_moves = 1;
	break;
	
	case s_skeleton_sword:
		delta_hp = 0;
		delta_atk = 2;
		delta_moves = 0;
	break;
}

normal_arr[BIOME.grass] = false;
normal_arr[BIOME.snow] = false;
normal_arr[BIOME.desert] = false;
normal_arr[BIOME.forest] = false;
normal_arr[BIOME.grave] = true;

normal = true;
UpdateMonsterState();