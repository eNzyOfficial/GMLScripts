/// @description Input insert
///
/// Adds keybind to input row in map
///
/// @arg input_map
/// @arg player_id
/// @arg input_id
/// @arg keyboard_value
/// @arg gamepad_value
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!input_exists(argument0, argument1)) return false;

var p = ds_map_find_value(argument0, argument1);

if (!ds_map_exists(p, argument2)) {
	var temp = ds_list_create();
	
	ds_list_add(temp, argument3, argument4);

	ds_map_add_list(p, argument2, temp);
	
	return true;
}

return false;
