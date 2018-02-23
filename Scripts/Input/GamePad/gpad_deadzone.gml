/// @description Gamepad deadzone
///
/// Sets gamepad deadzone
///
/// @arg deadzone
/// @arg [device]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var device = (argument_count > 1) ? argument[1] : 0;

gamepad_set_axis_deadzone(device, argument[0]);