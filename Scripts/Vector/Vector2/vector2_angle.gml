/// @desc Vector2 angle
///
/// Returns the angle in degrees between from and to.
///
/// The angle returned is the unsigned acute angle between the two vectors.
/// This means the smaller of the two possible angles between the two vectors is used.
/// The result is never greater than 180 degrees.
///
/// https://docs.unity3d.com/ScriptReference/Vector2.Angle.html
///
/// @arg vector2
/// @arg vector2
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

return arccos(clamp(vector2_dot(vector2_normalize(v1), vector2_normalize(v2)), -1, 1)) * 57.29578;