/// @desc Bounce easing out
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

t = t / d
if (t < 1 / 2.75) {
	return c * (7.5625 * t * t) + s;
}
else if t < 2 / 2.75 {
	t -= (1.5 / 2.75);
	return c * (7.5625 * t * t + 0.75) + s;
}
else if t < 2.5 / 2.75 {
	t -= (2.25 / 2.75);
	return c * (7.5625 * t * t + 0.9375) + s;
}
else {
	t -= (2.625 / 2.75);
	return c * (7.5625 * t * t + 0.984375) + s;
}