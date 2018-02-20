/// @desc Back easing in
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

t = t / d;
return c * t * t * ((os + 1) * t - os) + s;