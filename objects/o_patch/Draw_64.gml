/// @description 
event_inherited();
if (patch_type != BIOME.empty) {
	var _biome_depth;
	switch (patch_depth) {
		case 1:
			_biome_depth = "I";
		break;
		case 2:
			_biome_depth = "II";
		break;
		case 3:
			_biome_depth = "III";
		break;
		case 4:
			_biome_depth = "IV";
		break;
		case 5:
			_biome_depth = "V";
		break;
	}
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(ui_x, ui_y, _biome_depth);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

