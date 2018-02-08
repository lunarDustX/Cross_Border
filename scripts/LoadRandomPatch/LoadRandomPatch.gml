///@description LoadRandomPatch
///@arg patchType
var _patch_type = argument0;

var _index;
switch (_patch_type) {
	case PATCH_TYPE.grass:
		_index = irandom(ds_list_size(global.grass_templates_list)-1);
		show_message("index: " + string(_index));
		return ds_list_find_value(global.grass_templates_list, _index);
	break;
	
	case PATCH_TYPE.snow:
		//
	break;
}