/// @description 
if (keyboard_check(ord("L"))) {
	draw_set_alpha(0.2);
	mp_grid_draw(global.AIGrid);
	draw_set_alpha(1);
}