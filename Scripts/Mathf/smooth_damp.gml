/// @desc Smooth damp
///
/// Gradually changes a value towards a desired goal over time.
///
/// The value is smoothed by some spring-damper like function, which will never overshoot.
/// The function can be used to smooth any kind of value, positions, colors, scalars.
///
/// https://docs.unity3d.com/ScriptReference/Mathf.SmoothDamp.html
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

var num = 2 / st;
var num2 = num * dt;
var num3 = 1 / (1 + num2 + 0.48 * num2 * num2 + 0.235 * num2 * num2 * num2);
var num4 = c - t;
var num5 = t;
var num6 = ms * st;

num4 = clamp(num4, -num6, num6);
t = c - num4;

var num7 = (cv + num * num4) * dt;
cv = (cv - num * num7) * num3;

var num8 = t + (num4 + num7) * num3;

if (num5 - c > 0 == num8 > num5) {
    num8 = num5;
    cv = (num8 - num5) / dt;
}

return num8;