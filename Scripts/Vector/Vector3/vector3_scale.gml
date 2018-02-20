/// @desc Vector3 scale
///
/// Multiplies two vectors component-wise.
///
/// Every component in the result is a component of a multiplied by the same component of b.
///
/// https://docs.unity3d.com/ScriptReference/Vector3.Scale.html
///
/// @arg vector3
/// @arg vector3
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v = argument0;
var s = argument1;

return vector3_multiply(v, s);