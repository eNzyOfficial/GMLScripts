/// @desc Cubic easing in out
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

if (t < 1) {
	return c / 2 * t * t * t + s;
}
else {
	t = t - 2;
	return c / 2 * (t * t * t + 2) + s;
}