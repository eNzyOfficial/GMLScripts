/// @description Gamepad deadzone
///
/// Sets gamepad deadzone
///
/// @arg deadzone
/// @arg [device]
///
/// @author Your Name
/// 

var device = (argument_count > 1) ? argument[1] : 0;

gamepad_set_axis_deadzone(device, argument[0]);