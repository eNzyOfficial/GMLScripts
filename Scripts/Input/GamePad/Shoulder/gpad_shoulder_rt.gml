/// @description Gamepad right trigger is pressed
///
/// Returns if right trigger button is pressed
///
/// @arg [device]
///
/// @author Your Name
/// 

var device = (argument_count > 0) ? argument[0] : 0;

return gamepad_button_check(device, gp_shoulderrb);