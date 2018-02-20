/// @desc Vector2 move towards
///
/// Moves a point current in a straight line towards a target point.
///
/// The value returned by this function is a point maxDistanceDelta units closer to a target/ point along a line between current and target.
/// If the target is closer than maxDistanceDelta/ then the returned value will be equal to target
/// (ie, the movement will not overshoot the target). Negative values of maxDistanceDelta can be used to push the point away from the target.
///
/// https://docs.unity3d.com/ScriptReference/Vector2.MoveTowards.html
///
/// @arg current
/// @arg target
/// @arg max_distance_delta
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var c = argument0;
var t = argument1;
var mdd = argument2;

var a = vector2_subtract(c, t);
var magnitude = vector2_magnitude(a);

var result;

if (magnitude <= mdd || magnitude == 0) {
	result = t;
}
else {
	var a = vector2_add(c, a);
	result = vector(a[0] / magnitude * mdd, a[1] / magnitude * mdd);
}

return result;