/// @description Global Time Variables


// -----------------------------------------[ TIME CONTROL ]-----------------------------------------

global.ticks						= 1055				// Initial ticks value
global.ticks_ms						= 10				// How many milliseconds a tick represent
global.tick_check_rate				= 1					// How often (gameLoops) the time controller should run

global.ticks_to_year				= 518400			// How many ticks represent a year
global.ticks_to_month				= 43200				// How many ticks represent a month
global.ticks_to_day					= 1440				// How many ticks represent a day
global.ticks_to_hour				= 60				// How many tucks represent a hour


// -------------------------------------[ DAY / NIGHT CONTROLS ]-------------------------------------

global.sunset_time					= 17				// Defines what time sunset should start
global.sunset_length				= 3					// Defines how long for the sunset finishes
global.sunrise_time					= 4					// Defines what time sunrise should start
global.sunrise_length				= 3					// Defines how long for the sunrise finishes

global.max_night_light_intensity	= 20				// Defines how dark the night will be
global.max_day_light_intensity		= 255				// Defines how bright the day will be
global.light_intensity				= 0					// The current light intensity


enum seasons {
	spring,
	summer,
	fall,
	winter
}
