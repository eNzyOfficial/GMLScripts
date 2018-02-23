/// @description Gamepad right is pressed
///
/// Returns if right button is pressed
///
/// @arg [device]
///
/// @author Your Name
/// 

var device = (argument_count > 0) ? argument[0] : 0;

return gamepad_button_check(device, gp_padr);