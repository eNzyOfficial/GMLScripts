/// @desc elastic easing out in
///
/// @arg elapsed_time
/// @arg start
/// @arg change
/// @arg duration
/// @arg period
/// @arg amplitude
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var t = argument0;
var s = argument1;
var c = argument2;
var d = argument3;
var p = argument4;
var a = argument5;

if (t < d * 0.5) {
	return ease_out_elastic(t * 2, b, c * 0.5, d, a, p)
}
else {
	return ease_in_elastic((t * 2) - d, b + c * 0.5, c * 0.5, d, a, p)
}