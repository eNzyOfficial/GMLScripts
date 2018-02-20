/// @desc Vector2 normalize
///
/// Makes this vector have a magnitude of 1.
///
/// When normalized, a vector keeps the same direction but its length is 1.0.
///
/// https://docs.unity3d.com/ScriptReference/Vector2.Normalize.html
///
/// @arg vector2
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var magnitude = vector2_magnitude(argument0);

if (magnitude > 0) {
	return vector(argument0[0] / magnitude, argument[1] / magnitude);
}
else {
	return vector2_zero();
}