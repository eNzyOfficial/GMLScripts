/// @desc Lerp inverse
///
/// Calculates the linear parameter t that produces the interpolant value within the range [a, b].
///
/// https://docs.unity3d.com/ScriptReference/Mathf.InverseLerp.html
///
/// @arg current
/// @arg target
/// @arg value
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var c = argument0;
var t = argument1;
var v = argument2;

var result;

if (c != t) {
	result = clamp((v - c) / (t - c), 0, 1);
}
else {
	result = 0;
}

return result;