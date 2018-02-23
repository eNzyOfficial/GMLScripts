/// @description Input find value
///
/// Find a value in the input map
///
/// @arg input_map
/// @arg player_id
/// @arg input_id
/// @arg [einput]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var fetch = (argument_count > 3) ? argument[3] : noone;


if (!input_exists(argument[0], argument[1])) return false;

var p = ds_map_find_value(argument[0], argument[1]);

if (!ds_map_exists(p, argument[2])) return false;

var v = ds_map_find_value(p, argument[2]);

return (fetch == noone) ? v : ds_list_find_value(v, fetch);