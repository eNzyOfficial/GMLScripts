/// @description Target object type
///
/// Target specific object type
///
/// @arg target_list
/// @arg radius
/// @arg object_type
/// @arg [return_list]
/// @arg [angle]
/// @arg [fan_amount]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var return_list = (argument_count > 3) ? argument[3] : false;
var priorities = ds_priority_create();
var size = ds_list_size(argument[0]);
var angle = (argument_count > 4) ? argument[4] : pointer_null;
var fan_amount = (argument_count > 5) ? argument[5] : pointer_null;

if (!size) {
	return noone;
}

for (var i = 0; i < size; i++) {
	var target = ds_list_find_value(argument[0], i);
	var obj = target[etarget.id];
	
	var distance = point_distance(x, y, obj.x, obj.y);
		
	if (distance <= argument[1] && target[etarget.object_type] == object_get_name(argument[2])) {
		if (angle != pointer_null && fan_amount != pointer_null) {
			var a = point_direction(x, y, obj.x, obj.y);
			
			if (a > angle-fan_amount && a < angle+fan_amount) {
				ds_priority_add(priorities, i, target[etarget.id]);
			}
		}
		else {
			ds_priority_add(priorities, i, target[etarget.id]);
		}
	}
}

if (!ds_priority_size(priorities)) {
	return noone;
}

if (return_list) {
	return priorities;
}

var target_index = ds_priority_find_min(priorities);

ds_priority_destroy(priorities);

return target_index;