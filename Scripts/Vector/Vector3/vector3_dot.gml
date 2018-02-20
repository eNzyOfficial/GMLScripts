/// @desc Vector3 dot
///
/// Dot Product of two vectors.
///
/// The dot product is a float value equal to the magnitudes of the two 
/// vectors multiplied together and then multiplied by the cosine of the angle between them.
///
/// For normalized vectors Dot returns 1 if they point in exactly the same direction.
/// -1 if they point in completely opposite directions and zero if the vectors are perpendicular.
///
/// https://docs.unity3d.com/ScriptReference/Vector3.Dot.html
///
/// @arg vector3
/// @arg vector3
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

return v1[0] * v2[0] + v1[1] * v2[1] + v1[2] * v2[2];