/// @description Start the light system

// Get the layer where lights will be rendered
day_night_light_layer_id = layer_get_id(global.day_night_light_layer_name)

// Subscribing to day night topics
scr_sys_ps_subscribe(pubsub_topics.sunset_started, pubsub_subscriber.script, "scr_sys_ct_dnc_activate", 0, 0)
scr_sys_ps_subscribe(pubsub_topics.sunrise_finished, pubsub_subscriber.script, "src_sys_ct_dnc_deactivate", 0, 0)


// @TODO
show_debug_message("view_wview is " + string(view_wview[0]))
show_debug_message("view_hview is " + string(view_hview[0]))

day_night_light_surface = surface_create(view_wview[0], view_hview[0])


// layer_script_begin assigns a script to the layer 
// which is called before the layer is rendered
layer_script_begin(day_night_light_layer_id, scr_sys_ct_dnc_layer_begin)

// layer_script_end assigns a script to the layer
// which called after the layer is rendered
layer_script_end(day_night_light_layer_id, scr_sys_ct_dnc_layer_end)
