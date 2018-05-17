/// @description 
draw_sprite(s_gameover, 0, 0, y);

if (y == 0) {
	draw_text(550, 160, "Map Discovered : " + string(global.maps_discovered) + "/9");	
	draw_text(550, 260, "Total Kills: " + string(global.kills));
}