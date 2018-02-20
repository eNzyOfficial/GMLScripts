/// @desc Vector3 equals
///
/// Returns true if the given vector is exactly equal to this vector.
///
/// Due to floating point inaccuracies, this might return false for vectors which are essentially (but not exactly) equal.
///
/// https://docs.unity3d.com/ScriptReference/Vector3.Equals.html
///
/// @arg vector3
/// @arg vector3
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v1 = argument0;
var v2 = argument1;

return (v1[0] == v2[0] && v1[1] == v2[1] && v1[2] == v2[2]);