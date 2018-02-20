/// @desc Expo easing in out
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

if (t == 0) return s;
if (t == d) return s + c;

t = t / d * 2;

if t < 1 {
	return c / 2 * power(2, 10 * (t - 1)) + s - c * 0.0005;
}
else {
	t = t - 1
	return c / 2 * 1.0005 * (-power(2, -10 * t) + 2) + s;
}