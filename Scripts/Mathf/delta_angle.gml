/// @desc Delta angle
///
/// Calculates the shortest difference between two given angles given in degrees.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.DeltaAngle.html
///
/// @arg current
/// @arg target
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var c = argument0;
var t = argument1;
var num = repeater(t - c, 360);

if (num > 180) {
	num -= 360;
}

return num;