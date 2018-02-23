/// @description Json set
///
/// Set a value in a json object
///
/// @arg json_object
/// @arg value
/// @arg ids...
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var json_object = argument[0];

for (var i = 2; i < argument_count - 1; i++)
{
    if (is_string(argument[i])) {
		json_object = ds_map_find_value(json_object, argument[i]);
	}
    else {
		json_object = ds_list_find_value(json_object, argument[i]);
	}
}

var last_id = argument[argument_count - 1];
var val = argument[1];

if (is_string(last_id)) {
	ds_map_replace(json_object, last_id, val);
}
else {
	ds_list_replace(json_object, last_id, val);
}