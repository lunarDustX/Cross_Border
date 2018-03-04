/// @description 
event_inherited();

// monster info
monsterNumber = 0;

// biome info
biome = choose(BIOME.grass, BIOME.snow);

if (biome == BIOME.grass) {
	sprite_index = s_card_grass;
} else {
	sprite_index = s_card_snow;	
}

