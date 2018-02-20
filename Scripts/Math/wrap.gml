/// @description  Wrap
///
/// Returns the value wrapped. 
///
/// The returned value will be >= min and < max.  
///	(Similar to how an angle of 360 is equivilant to an angle of 0)
///
/// @arg value
/// @arg min
/// @arg max
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var v = argument0;
var mx = argument2;
var mn = argument1;

// Difference
var df = mx - mn;

if (v >  mx) {
  v -= df * ceil((v - mx ) / df);
} 
else if (v == mx) {
  v = mn;
} 
else {
  v += df * ceil((mn - v ) / df);
}

return v;

