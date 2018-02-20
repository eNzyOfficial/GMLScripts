/// @desc Vector3 signed angle
///
/// Returns the signed angle in degrees between from and to.
///
/// The smaller of the two possible angles between the two vectors is returned, therefore the result will never be greater than 180 degrees or smaller than -180 degrees.
/// If you imagine the from and to vectors as lines on a piece of paper,
/// both originating from the same point, then the axis vector would point up out of the paper.
/// The measured angle between the two vectors would be positive in a clockwise direction and negative in an anti-clockwise direction.
///
/// https://docs.unity3d.com/ScriptReference/Vector3.SignedAngle.html
///
/// @arg vector3
/// @arg vector3
/// @arg axis
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;
var a = argument1;

var normalized = vector3_normalize(v1);
var normalized2 = vector3_normalize(v2);

var num = arccos(clamp(vector3_dot(normalized, normalized2), -1, 1)) * 57.29578;
var num2 = sign(vector3_dot(a, vector3_cross(normalized, normalized2)));

return num * num2;