/// @desc Lerp
///
/// Linearly interpolates between a and b by t.
///
/// The parameter t is clamped to the range [0, 1].
///
/// When t = 0 returns a. 
/// When t = 1 return b. 
/// When t = 0.5 returns the midpoint of a and b.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.Lerp.html
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

return c + (t - c) * clamp(d, 0, 1);