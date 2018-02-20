/// @desc Get state
///
/// @arg states
/// @arg state_name
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (fsm_exists(argument0, argument1)) {
	return ds_map_find_value(argument0, argument1);
}

return noone;