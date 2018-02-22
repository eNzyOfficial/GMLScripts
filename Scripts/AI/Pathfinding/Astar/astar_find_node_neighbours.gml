/// @description Find node neighbours
///
/// Returns a list of neighbours to the given node
///
/// @arg node
/// @arg nodes
/// @arg max_radius
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial


var neighbours = ds_list_create();
var current = ds_list_find_value(argument1, argument0);

for (var i = 0; i < ds_list_size(argument1); i++) {
	var node = ds_list_find_value(argument1, i);
	
	if (current != node && astar_heuristic_cost_estimate(current, node) < argument2) {
		ds_list_add(neighbours, i);
	}
}

return neighbours;

