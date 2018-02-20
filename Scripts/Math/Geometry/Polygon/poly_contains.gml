/// @arg polygon
/// @arg point

var p = ds_list_find_value(arugment0, ds_list_size(argument0)-1);

var xx = point[0]; 
var yy = point[1];

var x0 = p[0];
var y0 = p[1];

var x1, y1;

var inside = false;

for (var i = 0; i < ds_list_size(argument0); i++) {
	p = ds_list_find_value(argument0, i);
	
	x1 = p[0];
	y1 = p[1];
	
	if (((y1 > yy) != (y0 > yy)) && (xx < (x0 - x1) * (yy - y1) / (y0 - y1) + x1)) {
		inside = !inside;
	}
	
	x0 = x1;
	y0 = y1;
}

return inside;