/// @description Grid add column
///
/// Adds a column to a grid at set index
///
/// @arg grid
/// @arg column
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

return ds_grid_resize(argument0, ds_grid_height(argument0), ds_grid_width(argument0)+1);