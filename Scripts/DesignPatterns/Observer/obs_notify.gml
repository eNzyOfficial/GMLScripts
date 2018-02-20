/// @description Observer notify
///
/// Notifies all observers in our observer list.
///
/// @arg observer_list
/// @arg [argument_array]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

for (var i = 0; i < ds_list_size(argument[0]); i++) {
	var observer = ds_list_find_value(argument[0], i);
	
	if (!instance_exists(observer[0])) {
		obs_unattach(argument[0], observer[0]);
		continue;
	}
	
	with(observer[0]) {
		script_execute(observer[1], (argument_count > 1) ? argument[1] : []);
	}
}
