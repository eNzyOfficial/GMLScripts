/// @desc Back easing in out
///
/// @arg elapsed_time
/// @arg start
/// @arg change
/// @arg duration
/// @arg [overshoot]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var t = argument[0];
var s = argument[1];
var c = argument[2];
var d = argument[3];
var os = (argument_count > 4) ? argument[4] : 1.70158;

os *= 1.525;
t = t / d * 2;

if (t < 1) {
	return c * 0.5 * (t * t * ((os + 1) * t - os)) + s;
}
else {
	t -= 2;
	return c * 0.5 * (t * t * ((os + 1) * t + os) + 2) + s;
}