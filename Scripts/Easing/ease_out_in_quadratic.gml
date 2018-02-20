/// @desc Quadratic easing in out
///
/// @arg elapsed_time
/// @arg start
/// @arg change
/// @arg duration
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var t = argument0;
var s = argument1;
var c = argument2;
var d = argument3;

t = t / d * 2;

if (t < d * 0.5) {
	return ease_in_quadratic(t * 2, s, c / 2, d);
}
else {
	return ease_out_quadratic((t * 2) - d, s + c / 2, c / 2, d);
}