// --------- GET MAPPED RANGE VAL -----------
// Return a value which matches proportionally
// to the range given (out).
// EXPECTS: 
// Argument0 - The value to be mapped
// Argument1 - Minimum of the initial range
// Argument2 - Maximum of the initial range
// Argument3 - Minimum of the new range
// Argument4 - Maximum of the new range
// RETURN: Number
// ------------------------------------------

var curr_val	= argument0
var in_min		= argument1
var in_max		= argument2
var out_min		= argument3
var out_max		= argument4

return (curr_val - in_min) * (out_max - out_min) / (in_max - in_min) + out_min
