/// @desc Move towards angle
///
/// Same as move_towards but makes sure the values interpolate correctly when they wrap around 360 degrees.
///
/// Variables current and target are assumed to be in degrees.
/// For optimization reasons, negative values of maxDelta are not supported and may cause oscillation.
/// To push current away from a target angle, add 180 to that angle instead.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.MoveTowardsAngle.html
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

var num = delta_angle(c, t);
var result;

if (-md  < num && num < md) {
	result = t;
}
else {
	t = c + num;
	result = move_towards(c, t, md);
}
return result;