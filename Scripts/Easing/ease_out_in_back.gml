/// @desc Back easing out in
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

if (t < d * 0.5) {
    return ease_out_back(t * 2, s, c * 0.5, d, os);
}
else {
    return ease_out_back((t * 2) - d, s + c * 0.5, c * 0.5, d, os);
}