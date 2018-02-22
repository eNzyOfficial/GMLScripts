/// @description Draw parallelogram
///
/// Draws a parallelogram shape using primitives with color, alpha and skew 
///
/// @arg x
/// @arg y
/// @arg angle
/// @arg radius
/// @arg skew_amount
/// @arg color
/// @arg alpha
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var color = draw_get_color();
var alpha = draw_get_alpha();
var section_size = 360 / 4;

draw_set_colour(argument5);
draw_set_alpha(argument6);

draw_primitive_begin(pr_trianglefan);
draw_vertex(argument0, argument1);

for(i = 0; i < 4; i += 1) {
	var vert_angle = argument2 + (i * section_size);
	var vert_radius = argument3;
	
	if (!(i & 1)) {
		vert_radius *= argument4;
	}
	
	draw_vertex(argument0 + lengthdir_x(vert_radius, vert_angle), argument1 + lengthdir_y(vert_radius, vert_angle));
}

draw_vertex(xx + lengthdir_x(radius * skew_amount, angle), yy + lengthdir_y(radius * skew_amount, angle));
   
draw_primitive_end();

draw_set_alpha(alpha);
draw_set_color(color);