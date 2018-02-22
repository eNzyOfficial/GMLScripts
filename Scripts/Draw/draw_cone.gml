/// @description Draw cone
///
/// Draws a cone shape using primitives with color and alpha
///
/// @arg x
/// @arg y
/// @arg angle
/// @arg fan_amount
/// @arg radius
/// @arg color
/// @arg alpha
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var alpha = draw_get_alpha();
var color = draw_get_color();

draw_set_color(argument5);
draw_set_alpha(argument6);

var start_angle = argument2 - argument3;
var end_angle = argument2 + argument3+1;

draw_primitive_begin(pr_trianglefan);
draw_vertex(argument0, argument1);

for (var i = start_angle; i < end_angle; i++) {
    draw_vertex(argument0 + lengthdir_x(argument4, i), argument1 + lengthdir_y(argument4, i));
}

draw_primitive_end();

draw_set_alpha(alpha);
draw_set_color(color);
