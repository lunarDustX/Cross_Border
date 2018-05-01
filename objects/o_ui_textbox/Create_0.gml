event_inherited();

depth = -1000;
margin = 8;
text = "This is a textbox \nwith some dialogue.";
width = string_width(text)+margin;
height = string_height(text)+margin;
spd = .5;
text_visible = "";
index = 0;
button = noone;
button_action = noone;

// Update the scale
image_xscale = width/sprite_get_width(sprite_index);
image_yscale = height/sprite_get_height(sprite_index);
