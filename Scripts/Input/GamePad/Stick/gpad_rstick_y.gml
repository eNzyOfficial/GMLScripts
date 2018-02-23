/// @description Gamepad right stick u axis
///
/// Returns if right stick y axis is pressed
///
/// @arg [device]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var device = (argument_count > 0) ? argument[0] : 0;

return gamepad_axis_value(device, gp_axisrv);