// ------------------------[ SRC_SYS_INTL_GETLANGUAGE ]--------------------------
// Return the current in game date formatted.
//
// EXPECTS:
//		array[0] - day
//		array[1] - month
//		array[2] - year
//
// RETURNS: 
//		dd/mm/yyyy
// ------------------------------------------------------------------------------

var dateGiven = argument0

var label_day
var label_month
var label_year
var formattedDate


if (dateGiven[0] < 10) {
	label_day = "0" + string(dateGiven[0])
} else {
	label_day = string(dateGiven[0])
}

if (dateGiven[1] < 10) {
	label_month = "0" + string(dateGiven[1])
} else {
	label_month = string(dateGiven[1])
}

if (dateGiven[2] < 10) {
	label_year = "000" + string(dateGiven[2])
} else if (dateGiven[2] < 100) {
	label_year = "00" + string(dateGiven[2])
} else if (dateGiven[2] < 1000) {
	label_year = "0" + string(dateGiven[2])
} else {
	label_year = string(dateGiven[2])
}	

formattedDate = label_day + "/" + label_month + "/" + label_year

return formattedDate
