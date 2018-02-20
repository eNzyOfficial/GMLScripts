/// @desc Vector2 square magnitude
///
/// Returns the squared length of this vector.
///
/// The magnitude of a vector v is calculated as sqrt(vector2_dot(v, v)).
/// However, the Sqrt calculation is quite complicated and takes longer to execute than the normal arithmetic operations.
/// Calculating the squared magnitude instead of using the magnitude property is much faster
/// the calculation is basically the same only without the slow Sqrt call. If you are using magnitudes simply to compare distances, 
///  then you can just as well compare squared magnitudes against the squares of distances since the comparison will give the same result.
///
/// https://docs.unity3d.com/ScriptReference/Vector2-sqrMagnitude.html
///
/// @arg vector2
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var vec = argument0;

return vec[0] * vec[0] + vec[1] * vec[1];