/// @arg polygon

var xx = 0,
var yy = 0;

var a;
var b = ds_list_find_value(arugment0, ds_list_size(argument0)-1);

var c;
var k = 0;

for (var i = 0; i < ds_list_size(argument0); i++) {
	a = b;
	b = ds_list_find_value(argument0, i);
	c = a[0] * b[1] - b[0] * a[1];
	
	k += c;
    xx += (a[0] + b[0]) * c;
    yy += (a[1] + b[1]) * c;
}

k *= 3;

return vector(xx / k, yy / k);