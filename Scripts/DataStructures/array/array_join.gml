/// @description Array join
///
/// The join() method joins all elements of an array (or an array-like object) into a string and returns this string.
///
/// @arg array
/// @arg [separator]
///
/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var arr = argument[0];
var separator = (argument_count > 1) ? argument[1] : ",";
var str = "";

for (var i = 0; i < array_length_1d(arr); i++) {
	str += string(arr[i]);
	
	if (i < array_length_1d(arr)-1) {
		str += string(separator);
	}
}

return str;