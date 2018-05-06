/// @description Insert description here

scr_sys_ps_subscribe(pubsub_topics.sunrise_started, pubsub_subscriber.instance, ev_destroy, 0, id)
scr_sys_ps_subscribe(pubsub_topics.minute_change, pubsub_subscriber.instance, ev_other, ev_user0, id)

firefly_light =	instance_create_layer(x, y, global.day_night_light_layer_name, obj_npcs_bugs_firefly_green_light)


spritelist[0] = spr_beings_bugs_firefly_green_idle
spritelist[1] = spr_beings_bugs_firefly_green_flying


state						= being_states.idle
state_counter				= 0
state_transition_timer		= 3 // number in ticks
wandering_move_distance		= 0.5 // pixels per step

wandering_direction			= 0
wandering_moveX				= 0
wandering_moveY				= 0

//wandering_direction			= irandom_range(0,359);
image_angle					= wandering_direction - 90

//randomize()

//wandering_moveX				= lengthdir_x(wandering_move_distance, wandering_direction)
//wandering_moveY				= lengthdir_y(wandering_move_distance, wandering_direction)


spawn_pos_x = x
spawn_pos_y = y


wondering_dist = 250
angle = 300
rotspeed = 1
