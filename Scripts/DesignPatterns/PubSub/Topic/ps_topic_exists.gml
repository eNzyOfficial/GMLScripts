/// @description Topic exists
///
/// Checks if topic exists
///
/// @arg topic_map
/// @arg topic_name
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!ps_exists(argument0)) return false;

return ds_map_exists(argument0, argument1);
