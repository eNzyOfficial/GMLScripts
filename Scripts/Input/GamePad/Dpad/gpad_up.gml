/// @description Gamepad up is pressed
///
/// Returns if up button is pressed
///
/// @arg [device]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var device = (argument_count > 0) ? argument[0] : 0;

return gamepad_button_check(device, gp_padu);