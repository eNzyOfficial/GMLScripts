/// @description Gamepad A released
///
/// Returns if A button was released
///
/// @arg [device]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var device = (argument_count > 0) ? argument[0] : 0;

return gamepad_button_check_released(device, gp_face1);