// reset
instance_activate_object(o_patch);
//instance_activate_layer("Map");	
global.card_selected = noone;
with (o_card) instance_destroy();

var _size = ds_list_size(global.card_list);
if (_size < 2) show_message("not enough card");
// draw two new cards
// first card
var _index = irandom(ds_list_size(global.card_list)-1);
var _card = global.card_list[|_index];
instance_create_layer(82, 122, "Map", _card);
ds_list_delete(global.card_list, _index);

// second card
var _index = irandom(ds_list_size(global.card_list)-1);
var _card = global.card_list[|_index];
instance_create_layer(136, 122, "Map", _card);
ds_list_delete(global.card_list, _index);

// 
global.map = true; 
