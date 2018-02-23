/// @description Gamepad left stick right
///
/// Returns if left stick right is pressed
///
/// @arg [device]
///
/// @author Your Name
/// 

var device = (argument_count > 0) ? argument[0] : 0;

return (gamepad_axis_value(device, gp_axislh) > 0) ? true : false;