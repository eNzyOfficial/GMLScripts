/// @description Clear
///
/// Clears a map of all topics
///
/// @arg topic_map
///
/// @author Your Name
/// 

if (ps_exists(argument0)) return false;

var key = ds_map_find_first(argument0);
var list_size = ds_map_size(argument0);

for (var i = 0; i < list_size; i++) {
	ps_topic_delete(argument0, key);
	
	key = ds_map_find_next(argument0, key);
}

return true;