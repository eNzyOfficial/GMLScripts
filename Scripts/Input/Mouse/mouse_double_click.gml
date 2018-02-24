/// @description Mouse double click
///
/// Returns if mouse was double clicked within n microseconds
/// Must set previous_click in object
///
/// @arg mb_code
/// @arg delay
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (mouse_check_button_pressed(argument0)) {
	if (previous_click == -1) {
		previous_click = get_timer();
	}
	else if (get_timer() - previous_click < argument1) {
		previous_click = -1;
		return true;
	}
	else {
		previous_click = -1;
	}
}

if (previous_click != -1 && get_timer() - previous_click > argument1) {
	previous_click = -1;
}

return false;