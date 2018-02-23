/// @description Input update
///
/// Updates keybinding in input row from map
///
/// @arg input_map
/// @arg player_id
/// @arg input_id
/// @arg einput
/// @arg value
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!input_exists(argument0, argument1)) return false;

var p = ds_map_find_value(argument0, argument1);

if (!ds_map_exists(p, argument2)) return false;

var v = ds_map_find_value(p, argument2);

ds_list_replace(v, argument3, argument4);

return true;