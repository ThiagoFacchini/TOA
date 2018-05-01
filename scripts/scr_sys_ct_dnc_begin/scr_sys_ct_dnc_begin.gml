// ------ DAY NIGHT LIGHT CYCLE BEGIN -------
// 
// ------------------------------------------

// Get the lightIntensity for the current ingame time,
// if lightIntensity is equals to 255 (full day) then
// this whole process which includes day_night_light_cycle_begin and
// day_night_light_cycle_end scripts are completely unecessary
global.light_intensity = scr_sys_ct_dnc_getLightIntensity()


// Check if the event which called this script is type draw
// event_number check ensures that the event is only called once
if (global.light_intensity != global.max_day_light_intensity) {


	// Prevents the code to execute during ingame Day
	if (event_type == ev_draw) and (event_number == 0) {

		// Check if the surface 'light_surface' exists in the instance 'instance_light'
		// of the obj_light. If not, then create.
		if (!surface_exists( inst_obj_sys_controller_day_night_light.day_night_light_surface)) {
			inst_obj_sys_controller_day_night_light.day_night_light_surface = surface_create(view_wview[0], view_hview[0])
		}
	
	
		// Assign to the variable the id of the camera that is being
		// used to render the viewport
		var camera = view_camera[view_current]


		// Tell the system which surface we targeting to draw
		surface_set_target(inst_obj_sys_controller_day_night_light.day_night_light_surface)

	
		// User the camera definitions when drawing the surface, which
		// means the surface will be draw accordingly to the camera position
		camera_apply(camera)


		// Clearing the alpha channels accordingly to lightIntensity value
		draw_clear_alpha( make_color_rgb(global.light_intensity, global.light_intensity, global.light_intensity), 1)


		// Set the blend mode to bm_add
		// This blend mode, merge pixels from difference sprites(?!?)
		gpu_set_blendmode(bm_add);
	}
	
}
