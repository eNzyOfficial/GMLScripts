/// @desc Vector2 scale
///
/// Multiplies two vectors component-wise.
///
/// Every component in the result is a component of a multiplied by the same component of b.
///
/// https://docs.unity3d.com/ScriptReference/Vector2.Scale.html
///
/// @arg vector2
/// @arg vector2
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v = argument0;
var s = argument1;

return vector2_multiply(v, s);