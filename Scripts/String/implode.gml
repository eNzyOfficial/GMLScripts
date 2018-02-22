/// @description Implode
///
/// Turns an array into a string
///
/// @arg array
/// @arg [glue]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var arr = argument[0];
var glue = (argument_count > 1) ? argument[1] : ",";
var str = "";

for (var i = 0; i < array_length_1d(arr); i++) {
	str += string(arr[i]);
	
	if (i < array_length_1d(arr) - 1) {
		str += string(glue);
	}
}

return str;