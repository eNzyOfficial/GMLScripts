/// @desc Vector3 max
///
/// Returns a vector that is made from the largest components of two vectors.
///
/// https://docs.unity3d.com/ScriptReference/Vector3.Max.html
///
/// @arg vector3
/// @arg vector3
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

return vector(max(v1[0], v2[0]), max(v1[1], v2[1]), max(v1[2], v2[2]));