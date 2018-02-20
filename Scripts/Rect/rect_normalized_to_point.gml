/// @desc Rect normalized to point
///
/// Returns a point inside a rectangle, given normalized coordinates.
///
/// The rectangle has coordinates between zero and one for the x and y axes.
/// This function will compute the real screen coordinates and return as a Vector2.
///
/// https://docs.unity3d.com/ScriptReference/Rect.NormalizedToPoint.html
///
/// @arg rectangle
/// @arg coords
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var r = argument0;
var c = argument1;

return vector(lerp_alt(r[0], r[2], c[0]), lerp_alt(r[1], r[3], c[1]));