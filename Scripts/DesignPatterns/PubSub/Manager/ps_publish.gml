/// @description Publish
///
/// Publishes an event on a specific topic
///
/// @arg topic_map
/// @arg topic_name
/// @arg [argument_array]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial



if (!ps_exists(argument[0]) || !ps_topic_exists(argument[0], argument[1])) {
	return false;
}

var subscriber_list = ds_map_find_value(argument[0], argument[1]);
var list_size = ds_list_size(subscriber_list);

for (var i = 0; i < list_size; i++) {
	var subscriber = ds_list_find_value(subscriber_list, i);
	
	with (subscriber[esubscriber.id]) {
		if (script_exists(subscriber[esubscriber.script])) {			
			script_execute(subscriber[esubscriber.script], (argument_count > 2) ? argument[2] : []);
		}
	}
}

return true;
