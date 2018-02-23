/// @description Gamepad right bumper pressed
///
/// Returns if right bumper button was pressed
///
/// @arg [device]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var device = (argument_count > 0) ? argument[0] : 0;

return gamepad_button_check_pressed(device, gp_shoulderr);