/// @desc Smooth step
///
/// Interpolates between min and max with smoothing at the limits.
///
/// This function interpolates between min and max in a similar way to Lerp.
/// However, the interpolation will gradually speed up from the start and slow down toward the end.
/// This is useful for creating natural-looking animation, fading and other transitions.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.SmoothStep.html
///
/// @arg current
/// @arg target
/// @arg duration
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var c = argument0;
var t = argument1;
var d = argument2;

d = clamp(t, 0, 1);
d = -2 * d * d * d + 3 * d * d;

return t * d + c * (1 - d);