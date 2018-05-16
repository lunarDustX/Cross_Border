/// @description 
if (keyboard_check(ord("B"))) {
	with (o_monster) {
		var _c = c_aqua;
		draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, _c, _c, _c, _c, false);	
	}
}


if (keyboard_check(ord("O"))) {
with (o_pickup) {
	draw_rectangle(bbox_left,bbox_top,bbox_right, bbox_bottom, false);		
}
}