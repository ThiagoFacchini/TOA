// ------------------------[ SCR_SYS_DT_DG_REMOVEROW ]----------------------------
// Remove a row from a specific grid, shrinking the grid height by one
//
// EXPECTS:
// argument0 = ds_grid to search
// argument1 = row number to be removed
//
// RETURNS: 
// array - An array containing the row numbers that match the value
// ------------------------------------------------------------------------------

// @TODO - Add all possible outputs to a event logger


var dsgrid			= argument0
var row_to_remove	= argument1
var dsgrid_width	= ds_grid_width(dsgrid)
var dsgrid_height	= ds_grid_height(dsgrid)

for (var row = (row_to_remove +1); row < dsgrid_height; row++) {
	if (row > 0) {
		for (var col = 1; col < dsgrid_width; col++) {
			ds_grid_set(dsgrid, col, (row -1), ds_grid_get(dsgrid, col, row))
		}
	}
}

if (dsgrid_height > 1) {
	ds_grid_resize( dsgrid, dsgrid_width, (dsgrid_height -1) )
}