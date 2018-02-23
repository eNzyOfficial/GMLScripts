/// @description Gamepad deadzone
///
/// Stops gamepad vibration
///
/// @arg [device]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var device = (argument_count > 0) ? argument[0] : 0;

gamepad_set_vibration(device, 0, 0);