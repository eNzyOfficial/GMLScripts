/// @desc Rect contains
///
/// Returns true if the x and y components of point is a point inside this rectangle.
/// If allowInverse is present and true, the width and height of the Rect are allowed to take negative values
/// (ie, the min value is greater than the max), and the test will still work.
///
/// https://docs.unity3d.com/ScriptReference/Rect.Contains.html
///
/// @arg rectangle
/// @arg coords
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var r = argument0;
var c = argument1;

return point_in_rectangle(c[0], c[1], r[0], r[1], r[2], r[3]);