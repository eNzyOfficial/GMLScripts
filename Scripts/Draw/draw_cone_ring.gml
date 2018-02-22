/// @description Draw ring
///
/// Draws a ring slice at a given angle either inside or outside it's radius
///
/// @arg x
/// @arg y
/// @arg angle
/// @arg fan_amount
/// @arg radius
/// @arg thickness
/// @arg colour
/// @arg alpha
/// @arg inside
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var color = draw_get_color();
var alpha = draw_get_alpha();
var len = (argument8) ? argument4-argument5 : argument4+argument5;

var start_angle = argument2 - argument3;
var end_angle = argument2 + argument3;

draw_set_colour(argument6);
draw_set_alpha(argument7);

draw_primitive_begin(pr_trianglestrip);
draw_vertex(argument0, argument1);

for(i=start_angle; i<=end_angle; i++) {
	draw_vertex(argument0 + lengthdir_x(argument4,i), argument1 + lengthdir_y(argument4,i));
    draw_vertex(argument0 + lengthdir_x(len,i), argument1 + lengthdir_y(len,i));
}

draw_primitive_end();

draw_set_alpha(alpha);
draw_set_color(color);