/// @description Gamepad vibrate
///
/// Sets gamepad vibration on left and right motors
///
/// @arg left
/// @arg right
/// @arg [device]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var device = (argument_count > 2) ? argument[2] : 0;

gamepad_set_vibration(device, argument[0], argument[1]);