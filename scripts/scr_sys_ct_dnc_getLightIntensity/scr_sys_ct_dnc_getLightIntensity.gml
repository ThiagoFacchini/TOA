// ----- GET DAY NIGHT LIGHT INTENSITY -------
// Return a value which represents the light
// intensity for a particular point in time
// ------------------------------------------


// Retrieving the current ingame time
var gameTime	= scr_sys_ct_tm_getDateTime()
var gameMinute	= gameTime[0]
var gameHour	= gameTime[1]
var lightIntensity = 0
	

// Defining sunset & sunrise start and end hours
// Assigning local variables, for the code to be more versbose
// Values refer to ingame hours
var sunsetStart		= global.sunset_time
var sunriseStart	= global.sunrise_time
// Calculating the time where sunset & sunrise finishes
// Values refer to ingame hours
var sunsetEnd		= sunsetStart + global.sunset_length
var sunriseEnd		= sunriseStart + global.sunrise_length
	
	
// Checking if it's sunset time
if (gameHour >= sunsetStart) and (gameHour < sunsetEnd) {
		
	// Returns a value within a range that corresponds to ingame current hour
	// sunsetEnd & sunsetLength decrements by -1 because a possible 0 as result matters
	// to the light intensity.
	hourTransition = scr_sys_math_getMappedRange( gameHour, sunsetStart, (sunsetEnd -1), 0, (global.sunset_length -1))
	// Returns a value within a range that corresponds to ingame current minutes
	minuteTransition = scr_sys_math_getMappedRange( gameMinute, 0, 60 ,0 ,9)

		
	// Concatenate hour + minutes so the light transition gets smoother
	timeTransition = floor(real(string(round(hourTransition)) + string(round(minuteTransition))))
		
	// Returns a value within a range that corresponds to ingame current hour:minute
	// the length is multiplied by 10, because of the concatenation and decremented by -1 because a possible
	// 0 as result matters to the light intensity.
	lightIntensity = scr_sys_math_getMappedRange( timeTransition, 0, ((global.sunset_length * 10) - 1), global.max_day_light_intensity, global.max_night_light_intensity )
	

// Check if ingame time is between end of sunset and begining of the sunrise
// if so then apply the global.max_darknessIntensity
} else if (gameHour >= sunsetEnd) and (gameHour < 24) {
	lightIntensity = global.max_night_light_intensity


// Check if ingame time is between end of sunset and begining of the sunrise	
// if so then apply the global.max_darknessIntensity
} else if (gameHour >= 0) and (gameHour < sunriseStart) {
	lightIntensity = global.max_night_light_intensity


// Checking if it's sunrise time
} else if (gameHour >= sunriseStart) and (gameHour < sunriseEnd) {

	// Returns a value within a range that corresponds to ingame current hour
	// sunriseEnd & sunriseLength decrements by -1 because a possible 0 as result matters
	// to the light intensity.
	hourTransition = scr_sys_math_getMappedRange( gameHour, sunriseStart, (sunriseEnd -1), (global.sunrise_length -1), 0)
	// Returns a value within a range that corresponds to ingame current minutes
	minuteTransition = scr_sys_math_getMappedRange( gameMinute, 0, 60 ,9 ,0)
		
	// Concatenate hour + minutes so the light transition gets smoother
	timeTransition = floor(real(string(round(hourTransition)) + string(round(minuteTransition))))
		
		
	// Returns a value within a range that corresponds to ingame current hour:minute
	// the length is multiplied by 10, because of the concatenation and decremented by -1 because a possible
	// 0 as result matters to the light intensity.		
	lightIntensity = scr_sys_math_getMappedRange( timeTransition, 0, ((global.sunset_length * 10) - 1), global.max_day_light_intensity, global.max_night_light_intensity )
	
// Day light!
} else {
	lightIntensity = global.max_day_light_intensity
}


return lightIntensity
