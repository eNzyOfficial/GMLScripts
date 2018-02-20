/// @arg polygon

var b = ds_list_find_value(arugment0, ds_list_size(argument0)-1);

var xa, ya;

var xb = b[0];
var yb = b[1];

var perimeter = 0;

for (var i = 0; i < ds_list_size(argument0); i++) {
	xa = xb;
    ya = yb;
	
	b = ds_list_find_value(argument0, i);
	
	xb = b[0];
    yb = b[1];
	
    xa -= xb;
    ya -= yb;
	
	perimeter += sqrt(xa * xa + ya * ya);
}

return perimeter;