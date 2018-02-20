/// @desc Vector3 distance
///
/// Returns the distance between a and b.
///
/// vector3_distance(a,b) is the same as vector3_magnitude(a-b).
///
/// https://docs.unity3d.com/ScriptReference/Vector3.Distance.html
///
/// @arg vector3
/// @arg vector3
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

v = vector(v1[0] - v2[0], v1[1] - v2[1], v1[2] - v2[2]);
return sqrt(v[0] * v[0] + v[1] * v[1] + v[2] * v[2]);