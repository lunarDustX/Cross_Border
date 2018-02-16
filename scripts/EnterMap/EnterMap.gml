// reset
instance_activate_object(o_patch);
//instance_activate_layer("Map");	
global.card_selected = noone;
with (o_card) instance_destroy();

// draw two new cards
instance_create_layer(82, 122, "Map", o_card);
instance_create_layer(136, 122, "Map", o_card);

global.map = true; 
