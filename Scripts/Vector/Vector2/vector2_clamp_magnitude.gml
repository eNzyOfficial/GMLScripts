/// @desc Vector2 clamp magnitude
///
/// Returns a copy of vector with its magnitude clamped to maxLength.
///
/// https://docs.unity3d.com/ScriptReference/Vector2.ClampMagnitude.html
///
/// @arg vector2
/// @arg max_length
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v = argument0;
var ml = argument1;

var result;

if (sqr(vector2_magnitude(v)) > mx * mx) {
	result = vector(v[0] * mx, v[1] * mx);
}
else {
	result = v;
}

return result;