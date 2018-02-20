/// @description Topic find
///
/// Finds a topic from the topic map
///
/// @arg topic_map
/// @arg topic_name
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!ps_exists(argument0)) return false;

return ds_map_find_value(argument0, argument1);
