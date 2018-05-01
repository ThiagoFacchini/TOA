/// @description Start the light system

// Get the layer where lights will be rendered
day_night_light_layer = layer_get_id("l_weather_day_night_light")

// @TODO
show_debug_message("view_wview is " + string(view_wview[0]))
show_debug_message("view_hview is " + string(view_hview[0]))

day_night_light_surface = surface_create(view_wview[0], view_hview[0])


// layer_script_begin assigns a script to the layer 
// which is called before the layer is rendered
layer_script_begin(day_night_light_layer, scr_sys_ct_dnc_begin)

// layer_script_end assigns a script to the layer
// which called after the layer is rendered
layer_script_end(day_night_light_layer, scr_sys_ct_dnc_end)
