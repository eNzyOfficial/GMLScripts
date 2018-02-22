/// @description Target remove
///
/// Removes target from list
///
/// @arg targets
/// @arg object_id
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var target_index = tar_find_object(argument0, argument1);

if (target_index != noone) {
		ds_list_delete(argument0, target_index);
		return true;
}

return false;