/// @description Find node path
///
/// Returns a path from a to b using a list of nodes
///
/// @arg start
/// @arg finish
/// @arg nodes
/// @arg max_radius
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var nodes = argument2;

var start_node_index = argument0;
var start_node = ds_list_find_value(nodes, start_node_index);

var end_node_index = argument1;
var end_node = ds_list_find_value(nodes, end_node_index);

var max_radius = argument3;

// The set of nodes already evaluated
var closed_set = ds_list_create();

// The set of currently discovered nodes that are not evaluated yet.
// Initially, only the start node is known.
var open_set = ds_list_create();

// For each node, which node it can most efficiently be reached from.
// If a node can be reached from many nodes, cameFrom will eventually contain the
// most efficient previous step.
var came_from = ds_map_create();

// For each node, the cost of getting from the start node to that node.
var g_scores = ds_list_create();

// For each node, the total cost of getting from the start node to the goal
// by passing by that node. That value is partly known, partly heuristic.
var f_scores = ds_list_create();

var INF = 2147483647;

// Set up initial scores
for (var i = 0; i < ds_list_size(nodes); i++) {
	ds_list_add(f_scores, INF);
	ds_list_add(g_scores, INF);
}

// Begin with start node
ds_list_replace(f_scores, start_node_index, astar_heuristic_cost_estimate(start_node, end_node));
ds_list_replace(g_scores, start_node_index, 0);
ds_list_add(open_set, start_node_index);

while (ds_list_size(open_set) > 0) {
	// Current index from open set
	var current_index = astar_lowest_f_score(open_set, f_scores);
	// Current node index of open set index
	var current_node_index = ds_list_find_value(open_set, current_index);
	// Current node
	var current_node = ds_list_find_value(nodes, current_index);
		
	if (current_node_index == end_node_index) {
		var flat_path = ds_list_create();
		
		ds_list_add(flat_path, current_node_index);
		
		while(ds_map_exists(came_from, current_node_index)) {
			current_node_index = ds_map_find_value(came_from, current_node_index);
			
			ds_list_add(flat_path, current_node_index);
		}
		
		ds_list_destroy(g_scores);
		ds_list_destroy(f_scores);
		ds_list_destroy(open_set);
		ds_list_destroy(closed_set);
		ds_map_destroy(came_from);
		
		return flat_path;
	}


	ds_list_delete(open_set, current_index);
	ds_list_add(closed_set, current_node_index);

	var neighbours_indexes = astar_find_node_neighbours(current_node_index, nodes, max_radius);
		
	for (var i = 0; i < ds_list_size(neighbours_indexes); i++) {
		var neighbour_node_index = ds_list_find_value(neighbours_indexes, i);
		var neighbour_node = ds_list_find_value(nodes, neighbour_node_index);
			
		// Ignore the neighbor which is already evaluated.
		if (ds_list_find_index(closed_set, neighbour_node_index) != -1) continue;
			
		// Discover a new node			
		if (ds_list_find_index(open_set, neighbour_node_index) == -1) {
			ds_list_add(open_set, neighbour_node_index);
		}
		
		var neighbour_g_score = ds_list_find_value(g_scores, neighbour_node_index);

		var tentative_g_score = ds_list_find_value(g_scores, current_node_index)
			+ astar_heuristic_cost_estimate(current_node, neighbour_node);
				
		// This is not a better path.
		if (tentative_g_score >= neighbour_g_score) continue;

		ds_map_replace(came_from, neighbour_node_index, current_node_index);
		ds_list_replace(g_scores, neighbour_node_index, tentative_g_score);
		ds_list_replace(f_scores, neighbour_node_index, neighbour_g_score + astar_heuristic_cost_estimate(neighbour_node, end_node));
	}
}

ds_list_destroy(g_scores);
ds_list_destroy(f_scores);
ds_list_destroy(open_set);
ds_list_destroy(closed_set);
ds_map_destroy(came_from);

return noone;
