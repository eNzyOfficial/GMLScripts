/// @desc Vector2 signed angle
///
/// Returns the signed angle in degrees between from and to.
///
/// The angle returned is the signed acute clockwise angle between the two vectors.
/// This means the smaller of the two possible angles between the two vectors is used.
/// The result is never greater than 180 degrees or smaller than -180 degrees.
///
/// https://docs.unity3d.com/ScriptReference/Vector2.SignedAngle.html
///
/// @arg vector2
/// @arg vector2
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

var normalized = vector2_normalize(v1);
var normalized2 = vector2_normalize(v2);

var num = arccos(clamp(vector2_dot(normalized, normalized2), -1, 1)) * 57.29578;
var num2 = sign(normalized[0] * normalized2[1] - normalized[1] * normalized2[0]);
return num * num2;