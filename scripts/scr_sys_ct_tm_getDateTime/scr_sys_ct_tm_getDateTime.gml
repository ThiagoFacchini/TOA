// -----------------------[ SRC_SYS_CT_TM_GETDATETIME ]----------------------------
// Convert the global.ticks into a dateTime object.
//
// EXPECTS:
// null
//
// RETURNS: 
// array:
//		pos 0 - Minutes
//		pos 1 - Hours
//		pos 2 - Day
//		pos 3 - Month
//		pos 4 - Year
//		pos 5 - Season
// ------------------------------------------------------------------------------

// @TODO - Add all possible outputs to a event logger


var year_count		= 1
var month_count		= 1
var day_count		= 1
var hour_count		= 0
var minute_count	= 0

var tick_count		= global.ticks

var season
var responseArr


// 1st - Calculates amount of years passed
if ( (tick_count / global.ticks_to_year) >= 1 ) {
	year_count = floor(tick_count / global.ticks_to_year) +1
	tick_count -= (year_count - 1) * global.ticks_to_year
}


// 2nd - Calculates amount of months passed
if ( (tick_count / global.ticks_to_month) >= 1) {
	month_count = floor(tick_count / global.ticks_to_month) +1
	tick_count -= (month_count -1) * global.ticks_to_month
}


// 3rd - Calculates amount of days passed
if ( (tick_count / global.ticks_to_day) >= 1) {
	day_count = floor(tick_count / global.ticks_to_day) +1
	tick_count -= (day_count -1) * global.ticks_to_day
}


// 4th - Calculates the hours
if ( (tick_count / global.ticks_to_hour) >= 1) {
	hour_count = floor(tick_count / global.ticks_to_hour)
	tick_count -= hour_count * global.ticks_to_hour
}


// 5th - What's left means minutes
minute_count = tick_count


// 6th - Calculates the current Season
if (month_count < 4) {
	season = seasons.spring

} else if (month_count > 3) and (month_count < 7) {
	season = seasons.summer

} else if (month_count > 6) and (month_count < 10) {
	season = seasons.fall
	
} else {
	season = seasons.winter
}


// Lastly - Building response array
responseArr[0] = minute_count
responseArr[1] = hour_count
responseArr[2] = day_count
responseArr[3] = month_count
responseArr[4] = year_count
responseArr[5] = season

return responseArr