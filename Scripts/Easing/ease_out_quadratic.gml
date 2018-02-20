/// @desc Quadratic easing out
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

t = t / d;
return -c * t * (t - 2) + s;