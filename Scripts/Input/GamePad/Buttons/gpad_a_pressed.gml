/// @description Gamepad A pressed
///
/// Returns if A button was pressed
///
/// @arg [device]
///
/// @author Your Name
/// 

var device = (argument_count > 0) ? argument[0] : 0;

return gamepad_button_check_pressed(device, gp_face1);