/// @desc Sine easing in out
///
/// @arg elapsed_time
/// @arg start
/// @arg change
/// @arg duration
///
/// @author Your Name
/// 

var t = argument0;
var s = argument1;
var c = argument2;
var d = argument3;

return -c / 2 * (cos(pi * t / d) - 1) + s;