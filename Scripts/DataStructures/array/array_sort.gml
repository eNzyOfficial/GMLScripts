/// @description Array sort
///
/// Sorts an array in accending or descending order
///
/// @arg array
/// @arg ascending
///
/// @author Your Name
/// 

var arr = argument0;
var temp = ds_list_create();

for (var i = 0; i < array_length_1d(argument0); i++) {
	ds_list_replace(temp, i, arr[i]);
}

ds_list_sort(temp, argument1);

for (var i = 0; i < array_length_1d(argument0); i++) {
	arr[i] = ds_list_find_value(temp, i);
}

ds_list_destroy(temp);

return arr;