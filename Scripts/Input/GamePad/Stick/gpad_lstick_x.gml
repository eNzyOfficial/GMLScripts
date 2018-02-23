/// @description Gamepad left stick x axis
///
/// Returns if x axis is pressed
///
/// @arg [device]
///
/// @author Your Name
/// 

var device = (argument_count > 0) ? argument[0] : 0;

return gamepad_axis_value(device, gp_axislh);