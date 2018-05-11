///@description 
///@arg x
///@arg y

var _x = argument0;
var _y = argument1;

var _deckSize = ds_list_size(global.card_list);  
// bug check
if (_deckSize < 1) show_message("BUG: not enough card");
//
var _index = irandom(_deckSize - 1);
var _card = global.card_list[|_index];
instance_create_layer(_x, _y, "Instances", _card);	
ds_list_delete(global.card_list, _index);
		
