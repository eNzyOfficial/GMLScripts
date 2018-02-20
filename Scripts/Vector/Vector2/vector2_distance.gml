/// @desc Vector2 distance
///
/// Returns the distance between a and b.
///
/// vector2_distance(a,b) is the same as vector2_magnitude(a-b).
///
/// https://docs.unity3d.com/ScriptReference/Vector2.Distance.html
///
/// @arg vector2
/// @arg vector2
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

return point_distance(v1[0], v1[1], v2[0], v2[1]);