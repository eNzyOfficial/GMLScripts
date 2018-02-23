/// @description Gamepad start is pressed
///
/// Returns if start button is pressed
///
/// @arg [device]
///
/// @author Your Name
/// 

var device = (argument_count > 0) ? argument[0] : 0;

return gamepad_button_check(device, gp_start);