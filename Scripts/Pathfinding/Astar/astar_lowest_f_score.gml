/// @description Lowest F score
///
/// Returns the lowest f score in open_set
///
/// @arg open_set
/// @arg f_scores
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var lowest = 999999999999999, best_node = -1;
var f_score, ind;

for (var i = 0; i < ds_list_size(argument0); i++) {
	ind = ds_list_find_value(argument0, i);
	f_score = ds_list_find_value(argument1, ind);
		
	if (f_score < lowest) {
		lowest = f_score;
		best_node = i;
	}
}

return best_node;
