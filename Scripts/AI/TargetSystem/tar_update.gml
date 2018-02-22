/// @description Target add object
///
/// Add an object to our target list
///
/// @arg targets
/// @arg object_id
/// @args [attributes...]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var target_index = tar_find_object(argument0, argument1);

if (target_index == noone) return false;

var target = [
	argument[1],
	object_get_name(argument[1].object_index)
];

for (var i = 2; i < argument_count; i++) {
	target = array_push(target, argument[i]);
}


ds_list_replace(argument[0], target_index, target);

return true;