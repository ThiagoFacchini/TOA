// -------------------------[ SCR_SYS_DT_DG_FINDROW ]----------------------------
// Search for a value in a specific row from a specific ds_grid
//
// EXPECTS:
// argument0 = ds_grid to search
// argument1 = column on the grid to search
// argument2 = value to search
//
// RETURNS: 
// array - An array containing the row numbers that match the value
// ------------------------------------------------------------------------------

// @TODO - Add all possible outputs to a event logger

var dsGrid			= argument0
var columnToSearch	= argument1 
var valueToFind		= argument2

var dsGrid_height	= ds_grid_height(dsGrid)
var dsGrid_width	= ds_grid_width(dsGrid)

var rowCounter		= 0
var rowsFound		= 0

if (columnToSearch < dsGrid_width) {
	
	for (var row = 0; row < dsGrid_height; row++) {
		
		var curr_val = ds_grid_get(dsGrid, columnToSearch, row)
		
		if (curr_val == valueToFind) {
			rowsFound[rowCounter] = row
			rowCounter++
		}
	}
	
	return rowsFound

} else {
	return rowsFound
}

