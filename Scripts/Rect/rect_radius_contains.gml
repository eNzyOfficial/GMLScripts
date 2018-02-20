/// @desc Rect contains
///
/// Returns true if the point is in rectangle radius
///
/// @arg rect_center
/// @arg coord
/// @arg rect_radius
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var rc = argument0;
var c = argument1;
var r = argument2;

return rect_contains(vector(
	c[0] - r,
	c[1] - r,
	c[0] + r,
	c[1] + r
), c);
