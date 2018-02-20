/// @description Observer unattach
///
/// Unattaches an observer to our observer list.
///
/// @arg observer_list
/// @arg observer_object
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (ds_exists(argument0, ds_type_list)) {
	var observer_index = ds_list_find_index(argument0, argument1);
	
	if (observer_index != -1) {
		ds_list_delete(argument0, observer_index);
		return true;
	}
}

return false;