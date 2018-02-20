/// @desc Vector2 min
///
/// Returns a vector that is made from the smallest components of two vectors.
///
/// https://docs.unity3d.com/ScriptReference/Vector2.Min.html
///
/// @arg vector2
/// @arg vector2
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

return vector(min(v1[0], v2[0]), min(v1[1], v2[1]));