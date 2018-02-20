/// @description Topic delete
///
/// Deletes a topic from the topic map
///
/// @arg topic_map
/// @arg topic_name
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (ps_exists(argument0) && ps_topic_exists(argument0, argument1)) {
	ds_list_destroy(argument0[? argument1]);
	ds_map_delete(argument0, argument1);
	
	return true;
}

return false;
