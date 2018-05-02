/// @description Spawner initial definitions

scr_sys_ps_subscribe(pubsub_topics.sunset_started, pubsub_subscriber.instance, ev_other, ev_user0, id)
scr_sys_ps_subscribe(pubsub_topics.sunrise_finished, pubsub_subscriber.instance, ev_other, ev_user1, id)
scr_sys_ps_subscribe(pubsub_topics.hour_change, pubsub_subscriber.instance, ev_other, ev_user2, id)

is_active				= false
max_spawned_instances	= 10
spawned_instances_arr	= 0
spawn_range_x			= 100
spawn_range_y			= 100