/// @desc Rect point to normalized
///
/// Returns the normalized coordinates cooresponding the the point.
///
/// The returned Vector2 is in the range 0 to 1 with values more 1 or less than zero clamped.
///
/// https://docs.unity3d.com/ScriptReference/Rect.PointToNormalized.html
///
/// @arg rectangle
/// @arg coords
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var r = argument0;
var c = argument1;

return vector(inverse_lerp(r[0], r[2], c[0]), inverse_lerp(r[1], r[3], c[1]));