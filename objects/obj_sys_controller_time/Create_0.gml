/// @description Controls game Ticks / Time

accumulated_delta_time = 0

alarm[0] = global.tick_check_rate

sunset_started_alarm = false
sunset_finished_alarm = false
sunrise_started_alarm = false
sunrise_started_alarm = false

scr_sys_ps_subscribe(pubsub_topics.minute_change, pubsub_subscriber.script, "scr_topic_minuteChange", 0, 0)
scr_sys_ps_subscribe(pubsub_topics.hour_change, pubsub_subscriber.script, "scr_topic_hourChange", 0, 0)
scr_sys_ps_subscribe(pubsub_topics.day_change, pubsub_subscriber.script, "scr_topic_dayChange", 0, 0)
scr_sys_ps_subscribe(pubsub_topics.month_change, pubsub_subscriber.script, "scr_topic_monthChange", 0, 0)
scr_sys_ps_subscribe(pubsub_topics.year_change, pubsub_subscriber.script, "scr_topic_yearChange", 0, 0)
scr_sys_ps_subscribe(pubsub_topics.season_change, pubsub_subscriber.script, "scr_topic_seasonChange", 0, 0)
scr_sys_ps_subscribe(pubsub_topics.sunset_started, pubsub_subscriber.script, "scr_topic_sunsetStarted", 0, 0)
scr_sys_ps_subscribe(pubsub_topics.sunset_finished, pubsub_subscriber.script, "scr_topic_sunsetFinished", 0, 0)
scr_sys_ps_subscribe(pubsub_topics.sunrise_started, pubsub_subscriber.script, "scr_topic_sunriseStarted", 0, 0)
scr_sys_ps_subscribe(pubsub_topics.sunrise_finished, pubsub_subscriber.script, "scr_topic_sunriseFinished", 0, 0)