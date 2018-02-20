/// @desc Quint easing in
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
return c * power(t, 5) + s;