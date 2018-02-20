/// @desc Bounce easing in out
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

if (t < d / 2) {
    return ease_in_bounce(t * 2, 0, c, d) * 0.5 + s;
}
else {
    return ease_out_bounce(t * 2 - d, 0, c, d) * 0.5 + c * .5 + s;
}