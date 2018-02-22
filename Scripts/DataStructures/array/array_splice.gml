/// @description Array splice
///
/// The splice() method changes the contents of an array by removing existing elements and/or adding new elements.
///
/// @arg array
/// @arg start_index
/// @arg [delete_count]
/// @arg elements...
///
/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var arr = argument[0];
var arr_new = [];

for (var i = 0; i < array_length_1d(arr); i++) {
	if (i == argument[1] && argument_count > 2) {
		for (var j = 3; j < argument_count; i++) {
			arr_new = array_push(arr_new, argument[j]);
		}
	}
	
	if (i >= argument[1] && i <= argument[1]+argument[2]) continue;
	
	arr_new = array_push(arr_new, argument[j]);
}

return arr_new;