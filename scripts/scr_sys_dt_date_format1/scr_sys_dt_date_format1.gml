// ------------------------[ SRC_SYS_INTL_GETLANGUAGE ]--------------------------
// Return the current in game date formatted.
//
// EXPECTS:
//		array[0] - day
//		array[1] - month
//		array[2] - year
//
// RETURNS: 
//		day-month-yyyy
// ------------------------------------------------------------------------------

var dateGiven = argument0

var label_day
var label_month
var label_year
var formattedDate


switch (dateGiven[0] % 10) {
	case 1: 
		label_day = string(dateGiven[0]) + "st"
		break
	case 2: 
		label_day = string(dateGiven[0]) + "nd"
		break
	case 3: 
		label_day = string(dateGiven[0]) + "rd"
		break
	default:
		label_day = string(dateGiven[0]) + "th"
		break
}


switch (dateGiven[1]) {
	case 1:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "jan" )
		break
	case 2:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "feb" )
		break
	case 3:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "mar" )
		break
	case 4:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "apr" )
		break
	case 5:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "may" )
		break
	case 6:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "jun" )
		break
	case 7:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "jul" )
		break
	case 8:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "aug" )
		break
	case 9:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "sep" )
		break
	case 10:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "oct" )
		break
	case 11:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "nov" )
		break
	case 12:
		label_month = scr_sys_intl_get_Translation( global.intl_date_months_section, "dec" )
		break
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

formattedDate = label_day + " " + label_month + " " + label_year

return formattedDate
