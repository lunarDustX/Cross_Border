/// @description InitializeCardList
global.card_list = ds_list_create();
for (var i = 0; i < 3; i++) {
	ds_list_add(global.card_list, o_card_grass);
	ds_list_add(global.card_list, o_card_snow);
	ds_list_add(global.card_list, o_card_forest);
	ds_list_add(global.card_list, o_card_grave);
}