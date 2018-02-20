/// @desc Vector3 lerp unclamped
///
/// Linearly interpolates between two vectors.
///
/// Interpolates between the vectors a and b by the interpolant t.
/// This is most commonly used to find a point some fraction of the way along a line
/// between two endpoints (e.g. to move an object gradually between those points).
///
/// When d = 0 returns a. When d = 1 returns b. When d = 0.5 returns the point midway between a and b.
///
/// https://docs.unity3d.com/ScriptReference/Vector3.LerpUnclamped.html
///
/// @arg vector3
/// @arg vector3
/// @arg duration
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;
var d = clamp(argument2, 0, 1);

return vector(v1[0] + (v2[0] - v1[0]) * d, v1[1] + (v2[1] - v1[1]) * d, v1[2] + (v2[2] - v1[2]) * d);