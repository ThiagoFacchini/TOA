// ------------------------[ SRC_SYS_INTL_GETLANGUAGE ]--------------------------
// Return the current in game time formatted.
//
// EXPECTS:
//		array[0] - minute
//		array[1] - hour
//
// RETURNS: 
//		hh:mm  am | pm- 12 hours format
// ------------------------------------------------------------------------------


var timeGiven = argument0

var label_minute
var label_hour
var label_ampm

var partialHour
var formattedTime

if (timeGiven[0] < 10) {
	label_minute = "0" + string(timeGiven[0])
} else {
	label_minute = string(timeGiven[0])
}

if (timeGiven[1] > 12) {
	partialHour = timeGiven[1] - 12
	label_ampm = scr_sys_intl_get_Translation(global.intl_time_section, "pm")
} else {
	partialHour = timeGiven[1]
	label_ampm = scr_sys_intl_get_Translation(global.intl_time_section, "am")
}

if (partialHour < 10) {
	label_hour = "0" + string(partialHour)
} else {
	label_hour = string(partialHour)
}

formattedTime = label_hour + ":" + label_minute + " " + label_ampm

return formattedTime
