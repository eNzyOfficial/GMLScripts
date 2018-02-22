/// @description Draw pie slice
///
/// Draws a pie slice at a given angle
///
/// @arg x
/// @arg y
/// @arg angle
/// @arg degrees
/// @arg colour
/// @arg radius
/// @arg alpha
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var color = draw_get_color();
var alpha = draw_get_alpha();

draw_set_colour(argument4);
draw_set_alpha(argument6);

draw_primitive_begin(pr_trianglefan);
draw_vertex(argument0, argument1);

for(i=argument2; i<=argument2+argument3; i++) {
    draw_vertex(argument0 + lengthdir_x(argument5, i), argument1 + lengthdir_y(argument5, i));
}

draw_primitive_end();

draw_set_alpha(alpha);
draw_set_color(color);