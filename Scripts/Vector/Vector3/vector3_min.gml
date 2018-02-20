/// @desc Vector3 min
///
/// Returns a vector that is made from the smallest components of two vectors.
///
/// https://docs.unity3d.com/ScriptReference/Vector3.Min.html
///
/// @arg vector3
/// @arg vector3
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

return vector(min(v1[0], v2[0]), min(v1[1], v2[1]), min(v1[2], v2[2]));