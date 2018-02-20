/// @description Observer attach
///
/// Attaches an observer to our observer list.
///
/// @arg observer_list
/// @arg observer_object
/// @arg script
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (ds_exists(argument0, ds_type_list)) {
	ds_list_add(argument0, [argument1, argument2]);
	
	return true;
}

return false;