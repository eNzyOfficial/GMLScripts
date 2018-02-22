/// @description Draw polygon shape
///
/// Draws a basic polygonal shape using primitives
///
/// @arg x
/// @arg y
/// @arg angle
/// @arg sections
/// @arg radius
/// @arg color
/// @arg alpha
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var color = draw_get_color();
var alpha = draw_get_alpha();
var section_size = 360 / argument3;

draw_set_colour(argument5);
draw_set_alpha(argument6);

draw_primitive_begin(pr_trianglefan);
draw_vertex(argument0, argument1);

for(i = 0; i < argument3; i += 1) {
	var vert_angle = argument2 + (i * section_size);
	draw_vertex(argument0 + lengthdir_x(argument4, vert_angle), argument1 + lengthdir_y(argument4, vert_angle));
}

draw_vertex(argument0 + lengthdir_x(argument4, argument2), argument1 + lengthdir_y(argument4, argument2));
   
draw_primitive_end();

draw_set_alpha(alpha);
draw_set_color(color);