/// @description Array includes
///
/// The includes() method determines whether an array includes a certain element, returning true or false as appropriate.
///
/// @arg array
/// @arg value
///
/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/includes
///
/// @author Your Name
/// 

var arr = argument0;

for (var i = 0; i < array_length_1d(arr); i++) {
	if (arr[i] == argument1) {
		return true;
	}
}

return false;