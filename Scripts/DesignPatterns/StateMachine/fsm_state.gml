/// @desc Get state
///
/// @arg states
/// @arg state_name
///
/// @author Your Name
/// 

if (fsm_exists(argument0, argument1)) {
	return ds_map_find_value(argument0, argument1);
}

return noone;