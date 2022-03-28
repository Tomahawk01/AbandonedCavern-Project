function ds_grid_add_row(_grid){
	var grid = _grid;
	ds_grid_resize(grid, ds_grid_width(grid), ds_grid_height(grid) + 1);
	return (ds_grid_height(grid) - 1);
}