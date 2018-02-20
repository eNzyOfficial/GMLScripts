/// @desc Vector3 clamp magnitude
///
/// Returns a copy of vector with its magnitude clamped to maxLength.
///
/// https://docs.unity3d.com/ScriptReference/Vector3.ClampMagnitude.html
///
/// @arg vector3
/// @arg max_length
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v = argument0;
var ml = argument1;

var result;

if (sqr(vector3_magnitude(v)) > mx * mx) {
	result = vector(v[0] * mx, v[1] * mx, v[2] * mx);
}
else {
	result = v;
}

return result;