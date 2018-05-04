/// @description Insert description here
// You can write your code in this editor

firefly_light =	instance_create_layer(x, y, "l_weather_day_night_light", obj_npcs_bugs_firefly_green_light)

scr_sys_ps_subscribe(pubsub_topics.sunrise_finished, pubsub_subscriber.instance, ev_destroy, 0, id)

spawn_pos_x = x
spawn_pos_y = y

wondering_dist = 250
angle = 300
rotspeed = 1
