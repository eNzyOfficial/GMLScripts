/// @description Gamepad left stick is pressed
///
/// Returns if left stick button is pressed
///
/// @arg [device]
///
/// @author Your Name
/// 

var device = (argument_count > 0) ? argument[0] : 0;

return gamepad_button_check(device, gp_stickl);