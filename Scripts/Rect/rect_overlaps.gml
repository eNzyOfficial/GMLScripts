/// @desc Rect overlaps
///
/// Returns a if two rectangles overlap.
///
/// @arg rectangle1
/// @arg rectangle2
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var r1 = argument0;
var r2 = argument1;

return r2[2] > r1[0] && r2[0] < r1[2] && r2[3] > r1[1] && r2[1] < r1[3];