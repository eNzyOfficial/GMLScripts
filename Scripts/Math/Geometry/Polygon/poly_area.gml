/// @arg polygon

var a;
var b = ds_list_find_value(arugment0, ds_list_size(argument0)-1);
var area = 0;

for (var i = 0; i < ds_list_size(argument0); i++) {
	a = b;
	b = ds_list_find_value(argument0, i);
	
	area += a[1] * b[0] - a[0] * b[1];	
}

return area * 0.5;