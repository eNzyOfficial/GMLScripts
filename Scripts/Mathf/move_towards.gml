/// @desc Move towards
///
/// Moves a value current towards target.
///
/// This is essentially the same as Mathf.Lerp but instead the function will ensure that the speed never exceeds maxDelta.
/// Negative values of maxDelta pushes the value away from target.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.MoveTowards.html
///
/// @arg current
/// @arg target
/// @arg max_delta
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var c = argument0;
var t = argument1;
var md = argument2;

var result;
if (abs(t - c) <= md) {
	result = t;
}
else {
	result = c + sign(t - c) * md;
}

return result;