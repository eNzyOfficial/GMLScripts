/// @desc Vector3 angle between
///
/// Returns the angle between two vectors.
///
/// @arg vector3
/// @arg vector3
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

return arccos(clamp(vector3_dot(vector3_normalize(v1), vector3_normalize(v2)), -1, 1));