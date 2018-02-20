/// @desc Execute state
///
/// @arg states
/// @arg state_name
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var state_script = fsm_state(argument0, argument1);

if(script_exists(state_script)) {
	script_execute(state_script);
	return true;
}

return false;
