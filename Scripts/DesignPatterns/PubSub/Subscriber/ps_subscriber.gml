/// @description Subscriber
///
/// Returns a subscriber from the subscriber list
///
/// @arg subscriber_list
/// @arg subscriber_object_id
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var list_size = ds_list_size(argument0);

if (list_size > 0) {
	for (var i = 0; i < list_size; i++) {
		var subscriber = ds_list_find_value(argument0, i);
	
		if (subscriber[esubscriber.id] == argument1) {
			return i;
		}
	}
}

return noone;
