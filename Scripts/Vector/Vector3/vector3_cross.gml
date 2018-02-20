/// @desc Vector3 cross
///
/// Cross Product of two vectors.
///
/// The cross product of two vectors results in a third vector which is perpendicular to the two input vectors.
/// The result's magnitude is equal to the magnitudes of the two inputs multiplied together and then
/// multiplied by the sine of the angle between the inputs. You can determine the direction of the result vector using the "left hand rule".
///
/// https://docs.unity3d.com/ScriptReference/Vector3.Cross.html
///
/// @arg vector3
/// @arg vector3
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

return vector(v1[1] * v2[2] - v1[2] * v2[1], v1[2] * v2[0] - v1[0] * v2[2], v1[0] * v2[1] - v1[1] * v2[0]);