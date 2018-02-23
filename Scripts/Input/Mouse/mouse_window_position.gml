/// @description Mouse window position
///
/// Returns vector of mouse window coords
///
/// @arg [view]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var view = (argument_count > 0) ? argument[0] : 0;

return [window_view_mouse_get_x(view), window_view_mouse_get_y(view)];