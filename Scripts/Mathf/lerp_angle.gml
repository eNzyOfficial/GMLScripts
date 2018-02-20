/// @desc Lerp angle
///
/// Same as Lerp but makes sure the values interpolate correctly when they wrap around 360 degrees.
///
/// The parameter t is clamped to the range [0, 1]. Variables a and b are assumed to be in degrees.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.LerpAngle.html
///
/// @arg current
/// @arg target
/// @arg duration
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var c = argument0;
var t = argument1;
var d = argument2;

var num = repeater(t - c, 360);

if (num > 180) {
	num -= 360;
}

return c + num * clamp(d, 0, 1);