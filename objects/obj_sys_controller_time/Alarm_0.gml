/// @description Check if should Increment the Tick Count

if (accumulated_delta_time >= global.ticks_ms) {
	accumulated_delta_time = 0
	
	var old_dateTime = scr_sys_ct_tm_get_DateTime()
	
	scr_sys_ct_tm_increment()
	
	var curr_dateTime = scr_sys_ct_tm_get_DateTime()
	
	// Checking for minute change event
	if (old_dateTime[0] != curr_dateTime[0]) {
		scr_sys_ps_publish(pubsub_topics.minute_change, curr_dateTime)
	}
	
	// Checking for hour change event
	if (old_dateTime[1] != curr_dateTime[1]) {
		scr_sys_ps_publish(pubsub_topics.hour_change, curr_dateTime)
	}
	
	// Checking for day change event
	if (old_dateTime[2] != curr_dateTime[2]) {
		scr_sys_ps_publish(pubsub_topics.day_change, curr_dateTime)
	}
	
	// Checking for month change event
	if (old_dateTime[3] != curr_dateTime[3]) {
		scr_sys_ps_publish(pubsub_topics.month_change, curr_dateTime)
	}
	
	// Checking for year change event
	if (old_dateTime[4] != curr_dateTime[4]) {
		scr_sys_ps_publish(pubsub_topics.year_change, curr_dateTime)
	}
	
	// Checking for season change event
	if (old_dateTime[5] != curr_dateTime[5]) {
		scr_sys_ps_publish(pubsub_topics.season_change, curr_dateTime)
	}
	
	// Checking for sunset start event
	if (curr_dateTime[1] == global.sunset_time) {
		scr_sys_ps_publish(pubsub_topics.sunset_started, curr_dateTime)
	}
	
	// Checking for sunset finish event
	if (curr_dateTime[1] == (global.sunset_time + global.sunset_length)) {
		scr_sys_ps_publish(pubsub_topics.sunset_finished, curr_dateTime)
	}
	
	// Checking for sunrise start event
	if (curr_dateTime[1] == global.sunrise_time) {
		scr_sys_ps_publish(pubsub_topics.sunrise_started, curr_dateTime)
	}
	
	// Checking for sunrise finish event
	if (curr_dateTime[1] == (global.sunrise_time + global.sunrise_length)) {
		scr_sys_ps_publish(pubsub_topics.sunrise_finished, curr_dateTime)
	}
	

} else {
	accumulated_delta_time += (delta_time / 1000)
}

alarm[0] = global.tick_check_rate