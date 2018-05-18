/// @description 
draw_sprite(s_gameover, 0, 0, y);

if (y == 0) {
	draw_set_color(c_black);
	//draw_text(150, 160, "Map Discovered : " + string(global.maps_discovered) + "/9");	
	//draw_text(150, 260, "Total Kills: " + string(global.kills));
	
	draw_text_transformed(180, 320, "Map Discovered : " + string(global.maps_discovered) + "/9", 1, 1, 18);	
	draw_text_transformed(195, 390, "Total Kills: " + string(global.kills), 1, 1, 18);
	draw_set_color(c_white);
}