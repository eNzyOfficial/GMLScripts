/// @description Subscribe
///
/// Subscribes to a particular topic
///
/// @arg topic_map
/// @arg topic_name
/// @arg subscriber_object_id
/// @arg script
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial



if (!ps_exists(argument0)) return false;

var subscriber_list = (!ps_topic_exists(argument0, argument1)) ? 
		ps_topic_create(argument0, argument1) : 
		ps_topic_find(argument0, argument1);

if (!ps_subscriber_exists(subscriber_list, argument2)) {
	ds_list_add(subscriber_list, [argument2, argument3]);
}

return true;
