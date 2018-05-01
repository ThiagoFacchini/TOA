/// @description Check if should Increment the Tick Count

if (accumulated_delta_time >= global.ticks_ms) {
	accumulated_delta_time = 0
	
	var old_dateTime = scr_sys_ct_tm_getDateTime()
	
	scr_sys_ct_tm_increment()
	
	var curr_dateTime = scr_sys_ct_tm_getDateTime()
	
	// 1st - Checking for minute change event
	if (old_dateTime[0] != curr_dateTime[0]) {
		scr_sys_ps_publish(events.minute_change, curr_dateTime)
	}
	
	// 2nd - Checking for hour change event
	if (old_dateTime[1] != curr_dateTime[1]) {
		scr_sys_ps_publish(events.hour_change, curr_dateTime)
	}
	
	// 3rd - Checking for day change event
	if (old_dateTime[2] != curr_dateTime[2]) {
		scr_sys_ps_publish(events.day_change, curr_dateTime)
	}
	
	// 4th - Checking for month change event
	if (old_dateTime[3] != curr_dateTime[3]) {
		scr_sys_ps_publish(events.month_change, curr_dateTime)
	}
	
	// 5th - Checking for year change event
	if (old_dateTime[4] != curr_dateTime[4]) {
		scr_sys_ps_publish(events.year_change, curr_dateTime)
	}
	
	// 6th - Checking for season change event
	if (old_dateTime[5] != curr_dateTime[5]) {
		scr_sys_ps_publish(events.season_change, curr_dateTime)
	}
	

} else {
	accumulated_delta_time += (delta_time / 1000)
}

alarm[0] = global.tick_check_rate