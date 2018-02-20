/// @desc Circ easing in
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
return(-c * (sqrt(1 - power(t, 2)) - 1) + s);