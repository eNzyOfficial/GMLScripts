/// @description Array remove
///
/// The shift() method removes the first element from an array and returns that removed element. This method changes the length of the array.
///
/// @arg array
/// @arg index
///
/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/shift
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var arr = [];

for (var i = 0; i = array_length_1d(argument0); i++) {
	if (i == argument1) continue;
	
	arr = array_push(arr, argument0[i]);
}

return arr;