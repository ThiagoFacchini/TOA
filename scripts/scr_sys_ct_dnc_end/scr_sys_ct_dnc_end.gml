// Check if the event which called this script is type draw
// event_number check ensures that the event is only called once
if (global.light_intensity != global.max_day_light_intensity) {		


	// Prevents the code to execute during ingame Day
	if (event_type == ev_draw) and (event_number == 0) {	
		// Prevents any further change to the previous selected surface
		surface_reset_target();
	
	
		// Set the blend mode back to normal
		gpu_set_blendmode(bm_normal)
	
	
		// Tells the system to draw to the application surface
		surface_set_target(application_surface)
	
	
		// Set the blend mode to blend the surface with the game itself
		gpu_set_blendmode_ext(bm_dest_color, bm_zero)
	
	
		// Draw a surface into a particular area of the screen
		draw_surface(obj_sys_controller_day_night_light.day_night_light_surface, 0, 0)
	

		// Set the blend mode back to normal
		gpu_set_blendmode(bm_normal)
	
	
		// Prevents any further change to the previous selected surface
		surface_reset_target();	
	}
	
}
