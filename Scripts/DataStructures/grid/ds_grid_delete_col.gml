/// @description Grid delete column
///
/// Deletes a column from a grid
///
/// @arg grid
/// @arg column
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var grid = argument0;
var col = argument1;

var w = ds_grid_width(grid);
var h = ds_grid_height(grid);

if(row > w - 1) return(grid);

if(w > 1) {
	ds_grid_set_grid_region(grid, grid, col+1, 0, w-1, h-1, col, 0);
	ds_grid_resize(grid, w-1, h);
	
	return grid;
}
else {
	return ds_grid_create(0, ds_grid_width(grid));
}