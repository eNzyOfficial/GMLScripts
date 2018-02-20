/// @desc Vector3 reflect
///
/// Reflects a vector off the plane defined by a normal.
///
/// The a vector defines a plane (a plane's normal is the vector that is perpendicular to its surface).
/// the b vector is treated as a directional arrow coming in to the plane.
/// The returned value is a vector of equal magnitude to b but with its direction reflected.
///
/// https://docs.unity3d.com/ScriptReference/Vector3.Reflect.html
///
/// @arg vector3
/// @arg vector3
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

var dot = -2 * vector3_dot(v1, v2);
return vector3_add(vector(v1[0] * dot, v1[1] * dot, v1[2] * dot), v2);