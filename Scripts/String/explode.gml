/// @description Explode
///
/// Turns a string into an array
///
/// @arg string
/// @arg delimiter
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var delimiter = (argument_count > 1) ? argument[1] : ",";
var str = argument[0] + delimiter;
var arr = [];
var pos;
var len = string_length(delimiter);
var count = string_count(delimiter, str);

for (var i = 0; i < count; i++) {
	pos = string_pos(delimiter, str) - 1;
	arr[i] = string_copy(str, 1, pos);
	str = string_delete(str, 1, pos + len);
}

return arr;