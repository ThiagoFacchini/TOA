// ------------------------[ SRC_SYS_INTL_GETLANGUAGE ]--------------------------
// Return the current in game time formatted.
//
// EXPECTS:
//		array[0] - minute
//		array[1] - hour
//
// RETURNS: 
//		hh:mm - 24 hours format
// ------------------------------------------------------------------------------

var timeGiven = argument0

var label_minute
var label_hour

var formattedTime

if (timeGiven[0] < 10) {
	label_minute = "0" + string(timeGiven[0])
} else {
	label_minute = string(timeGiven[0])
}

if (timeGiven[1] < 10) {
	label_hour = "0" + string(timeGiven[1])
} else {
	label_hour = string(timeGiven[1])
}

formattedTime = label_hour + ":" + label_minute

return formattedTime
