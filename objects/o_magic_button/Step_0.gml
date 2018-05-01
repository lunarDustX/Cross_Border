/// @description display
image_index = instance_position(mouse_x, mouse_y, id) !=noone;

if ((global.map || global.setting) && visible) {
	visible = false;	
} 

if (!global.map && !global.setting && !visible) {
	visible = true;	
}

/*
if (visible) {
	image_index = (o_player.mana >= cost);
}