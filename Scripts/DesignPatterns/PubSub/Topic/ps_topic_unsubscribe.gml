/// @description Topic unsubscribe
///
/// Unsubscribes one or all subscribers from a topic
///
/// @arg topic_map
/// @arg topic_name
/// @arg [subscriber_object_id]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!ps_exists(argument[0]) || !ps_topic_exists(argument[0], argument[1])) {
	return false;
}

var subscriber_list = ds_map_find_value(argument[0], argument[1]);

if (argument_count > 2) {
	var subscriber = ps_subscriber(subscriber_list, argument[2]);
	
	if (subscriber != noone) {
		ds_list_delete(subscriber_list, subscriber);
	}
}
else {
	ds_list_clear(subscriber_list);
}

return true;
