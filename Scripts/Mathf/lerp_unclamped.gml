/// @desc Lerp unclamped
///
/// Linearly interpolates between a and b by t with no limit to t.
///
/// The parameter t is not clamped and a value based on a and b is supported.
/// If t is less than zero, or greater than one, then lerp_unclamped will result in a return value outside the range a to b.
///
/// Suppose parameter a = 0.33f, and b = 1.5f. If interpolator t = -0.25f then the return value is 0.0375f.
///
/// Details: The calculation (b - a) is 1.17f. This is scaled by 0.25f and a result of 0.2925f is obtained. Subtracting this from a (because the interpolant t is negative) results in 0.0375f.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.LerpUnclamped.html
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

return c + (t - c) * d;