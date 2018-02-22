/// @description Grid delete row
///
/// Deletes a row from a grid
///
/// @arg grid
/// @arg row
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var grid = argument0;
var row = argument1;

var w = ds_grid_width(grid);
var h = ds_grid_height(grid);

if(row > h - 1) return(grid);

if(h > 1) {
	ds_grid_set_grid_region(grid, grid, 0, row+1, w-1, h-1, 0, row);
	ds_grid_resize(grid, w, h-1);
	
	return grid;
}
else {
	return ds_grid_create(ds_grid_width(grid), 0);
}