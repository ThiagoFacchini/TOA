/// @description Insert description here
// You can write your code in this editor
scr_sys_ps_unsubscribe(pubsub_topics.sunrise_finished, pubsub_subscriber.instance, ev_destroy, 0, id)

instance_destroy(id)
instance_destroy(firefly_light)

