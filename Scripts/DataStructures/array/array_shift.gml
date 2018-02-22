/// @description Array shift
///
/// The shift() method removes the first element from an array and returns that removed element. This method changes the length of the array.
///
/// @arg array
///
/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/shift
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var arr = argument0;
var arr_new = [];

for (var i = 1; i < array_length_1d(arr); i++) {
	arr_new = array_push(arr_new, arr[i]);
}

return arr_new;