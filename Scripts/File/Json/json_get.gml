/// @description Json get
///
/// Gets a value from a json object
///
/// @arg json_object
/// @arg ids...
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var val = argument[0];

for (var i = 1; i < argument_count; i++) {
	if (is_undefined(val)) return undefined;
	
	if (is_string(argument[i])) {
		val = ds_map_find_value(val, argument[i]);
	}
	else {
		val = ds_list_find_value(val, argument[i]);      
	}
}

return val;