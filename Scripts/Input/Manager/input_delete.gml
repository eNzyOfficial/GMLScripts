/// @description Input delete
///
/// Deletes an input from a given player map
///
/// @arg input_map
/// @arg player_id
/// @arg input_id
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!input_exists(argument0, argument1)) return false;

var p = ds_map_find_value(argument0, argument1);

if (!ds_map_exists(p, argument2)) return false;

var a = ds_map_find_value(p, argument2);

ds_list_destroy(a);

ds_map_delete(p, argument2);

return true;