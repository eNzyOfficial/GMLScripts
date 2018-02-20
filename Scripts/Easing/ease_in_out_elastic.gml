/// @desc elastic easing in out
///
/// @arg elapsed_time
/// @arg start
/// @arg change
/// @arg duration
/// @arg [period]
/// @arg [amplitude]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var t = argument[0];
var s = argument[1];
var c = argument[2];
var d = argument[3];
var p = (argument_count > 4 && argument[4] != 0) ? argument[4] : d * (0.3 * 1.5);
var a = (argument_count > 5) ? argument[5] : 0;

if (t == 0) return s;

t = t / d * 2;

if (t == 2) return s + c;

var os;

if (a < abs(c))  { 
    a = c; 
    os = p * 0.25; 
}
else {
    os = p / (2 * pi) * arcsin(c / a);
}

t -= 1;

if t < 1 {
    return -0.5 * (a * power(2, 10 * t) * sin((t * d - os) * (2 * pi) / p)) + s;
}
else {
    return a * power(2, -10 * t) * sin((t * d - os) * (2 * pi) / p ) * 0.5 + c + s;
}