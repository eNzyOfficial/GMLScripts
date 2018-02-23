/// @description Mouse UI position
///
/// Returns vector of mouse ui coords
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

/// @arg [device]

var device = (argument_count > 0) ? argument[0] : 0;

return [device_mouse_x_to_gui(device), device_mouse_y_to_gui(device)];