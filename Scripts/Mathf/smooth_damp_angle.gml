/// @desc Smooth damp
///
/// Gradually changes an angle given in degrees towards a desired goal angle over time.
///
/// The value is smoothed by some spring-damper like function.
/// The function can be used to smooth any kind of value, positions, colors, scalars. 
/// The most common use is for smoothing a follow camera.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.SmoothDampAngle.html
///
/// @arg current
/// @arg target
/// @arg current_velocity
/// @arg smooth_time
/// @arg [max_speed]
/// @arg [delta_time]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var c = argument[0];
var t = argument[1];
var cv = argument[2];
var st = max(0.0001, argument[3]);
var ms = (argument_count > 4) ? argument[4] : 2147483647;
var dt = (argument_count > 5) ? argument[5] : delta_time;

target = c + delta_angle(c, t);

return smooth_damp(c, t, cv, st, ms, dt);