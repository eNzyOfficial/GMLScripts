/// @description Target find object
///
/// Returns id of target if object found in list
///
/// @arg target_list
/// @arg object_id
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

for (var i = 0; i < ds_list_size(argument0); i++) {
	var t = ds_list_find_value(argument0, i);
	
	if (t[etargets.id] == argument1) {
		ds_list_delete(argument0, i);
		return i;
	}
}

return noone;