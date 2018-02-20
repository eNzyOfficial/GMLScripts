/// @desc Expo easing out in
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

if (t < d * 0.5) {
    return ease_out_expo(t * 2, s, c * 0.5, d);
}
else {
    return ease_in_expo((t * 2) - d, s + c * 0.5, c * 0.5, d);
}