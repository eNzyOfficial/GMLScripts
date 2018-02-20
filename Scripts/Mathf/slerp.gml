/// @desc Slerp
///
/// @arg start
/// @arg end
/// @arg amount
/// @arg smoother
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var s = argument0;
var e = argument1;
var a = argument2;
var sm = argument3;

var sa;

if (sm) {
    sa = (a * a * a) * (a * ((6 * a) - 15) + 10);
}
else {
    sa = (a * a) * (3 - (2 * a));
}

return (s * sa) + (e * (1 - sa));