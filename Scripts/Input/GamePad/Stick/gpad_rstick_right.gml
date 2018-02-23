/// @description Gamepad right stick right
///
/// Returns if right stick right is pressed
///
/// @arg [device]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var device = (argument_count > 0) ? argument[0] : 0;

return (gamepad_axis_value(device, gp_axisrh) > 0) ? true : false;