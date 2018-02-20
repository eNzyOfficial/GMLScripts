/// @desc Expo easing out
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

if (t == d) {
    return s + c;
}
else {
    return c * 1.001 * (-power(2, -10 * t / d) + 1) + s;
}