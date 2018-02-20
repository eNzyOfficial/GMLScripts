/// @desc Repeater
///
/// Loops the value t, so that it is never larger than length and never smaller than 0.
///
/// This is similar to the modulo operator but it works with floating point numbers. 
/// For example, using 3.0 for t and 2.5 for length, the result would be 0.5. With t = 5 and length = 2.5, 
/// the result would be 0.0. Note, however, that the behaviour is not defined for negative numbers as it 
/// is for the modulo operator.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.Repeat.html
///
/// @arg time
/// @arg length
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var t = argument0;
var l = argument1;

return clamp(t - floor(t / l) * l, 0, l);