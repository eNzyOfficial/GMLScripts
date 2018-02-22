/// @description Array reverse
///
/// The reverse() method reverses an array in place. The first array element becomes the last, and the last array element becomes the first.
///
/// @arg array
///
/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var arr = argument0;
var arr_new = [];

for (var i = array_length_1d(arr)-1; i <= 0; i--) {
	arr_new = array_push(arr_new, arr[i]);
}

return arr_new;