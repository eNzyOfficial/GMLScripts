/// @description Input remove
///
/// Removes row from input map
///
/// @arg input_map
/// @arg player_id
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!input_exists(argument0, argument1)) return false;

var p = ds_map_find_value(argument0, argument1);

ds_map_destroy(p);
ds_map_destroy(argument0);

return true;