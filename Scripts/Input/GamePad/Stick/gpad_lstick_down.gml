/// @description Gamepad left stick down
///
/// Returns if left stick down is pressed
///
/// @arg [device]
///
/// @author Your Name
/// 

var device = (argument_count > 0) ? argument[0] : 0;

return (gamepad_axis_value(device, gp_axislv) > 0) ? true : false;