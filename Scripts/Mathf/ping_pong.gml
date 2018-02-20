/// @desc Repeater
///
/// Loops the value t, so that it is never larger than length and never smaller than 0.
///
/// PingPongs the value t, so that it is never larger than length and never smaller than 0.
///
/// The returned value will move back and forth between 0 and length.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.PingPong.html
///
/// @arg time
/// @arg length
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var t = argument0;
var l = argument1;

t = repeater(t, l * 2);
return length - abs(t - l);