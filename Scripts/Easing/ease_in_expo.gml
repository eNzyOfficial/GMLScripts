/// @desc Expo easing in
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

if (t == 0) {
    return s;
}
else {
    return c * power(2, 10 * (t / d - 1)) + s - c * 0.001;
}