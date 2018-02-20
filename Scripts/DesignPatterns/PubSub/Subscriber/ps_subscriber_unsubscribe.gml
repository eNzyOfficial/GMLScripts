/// @description Subscriber unsubscribe
///
/// Unsubscribes a subscriber from one or all of the topics
///
/// @arg topic_map
/// @arg subscriber_object_id
/// @arg [topic_name]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!ps_exists(argument[0])) return false;

if (argument_count > 2) {
	if (!ps_topic_exists(argument[0], argument[1])) return false;
	
	ps_topic_unsubscribe(argument[0], argument[2], argument[1]);
}
else {
	var key = ds_map_find_first(argument[0]);
	var list_size = ds_map_size(argument[0]);
	
	for (var i = 0; i < list_size; i++) {
		ps_topic_unsubscribe(argument[0], key, argument[1]);
		key = ds_map_find_next(argument[0], key);
	}
}

return true;
