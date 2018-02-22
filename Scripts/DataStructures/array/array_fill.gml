/// @description Array fill
///
/// The fill() method fills all the elements of an array from a start index to an end index with a static value.
///
/// @arg array
/// @arg value
/// @arg [start]
/// @arg [end]
///
/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/fill
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var arr = argument[0];
var s = (argument_count > 2) ? argument[2] : 0;
var e = (argument_count > 3) ? argument[3] : array_length_1d(arr);

for (var i = 0; i < array_length_1d(arr); i++) {
	if (i >= s && i <= e) {
		arr[i] = argument[1];
	}
}

return arr;