/// @description Topic clear
///
/// Clears all subscribers from a topic
///
/// @arg topic_map
/// @arg topic_name
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (ps_exists(argument0) && ps_topic_exists(argument0, argument1)) {
	ds_list_clear(argument0[? argument1]);
	
	return true;
}

return false;
