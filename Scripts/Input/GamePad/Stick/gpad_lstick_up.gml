/// @description Gamepad left stick up
///
/// Returns if left stick up is pressed
///
/// @arg [device]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var device = (argument_count > 0) ? argument[0] : 0;

return (gamepad_axis_value(device, gp_axislv) < 0) ? true : false;