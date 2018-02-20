/// @description Topic create
///
/// Creates a topic in the topic map
///
/// @arg topic_map
/// @arg topic_name
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!ps_exists(argument0)) return false;

if (!ps_topic_exists(argument0, argument1)) {
	var list = ds_list_create();
	
	ds_map_add(argument0, argument1, list);
	
	return list;
}
