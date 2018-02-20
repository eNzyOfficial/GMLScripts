/// @desc Linear easing
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

return c * t / d + s;