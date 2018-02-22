/// @description Array find index
///
/// The findIndex() method returns the index of the first element in the array that satisfies the provided testing function. Otherwise -1 is returned.
///
/// @arg array
/// @arg value
///
/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/findIndex
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var arr = argument0;

for (var i = 0; i < array_length_1d(arr); i++) {
	if (arr[i] == argument1) {
		return i;
	}
}

return -1;