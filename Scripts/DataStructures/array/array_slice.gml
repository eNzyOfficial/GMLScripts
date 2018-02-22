/// @description Array slice
///
/// The slice() method returns a shallow copy of a portion of an array into a new array object 
/// selected from begin to end (end not included). The original array will not be modified.
///
/// @arg array
/// @arg start_index
/// @arg [slice_count]
///
/// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var count = (argument_count > 2) ? argument[1] : array_length_1d(argument[0])-argument[1];

return array_splice(argument[0], argument[1], count);