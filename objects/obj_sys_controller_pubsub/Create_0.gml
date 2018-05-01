/// @description Registering initial pubsub subscriptions

scr_sys_ps_subscribe(events.minute_change, pubsub_subscriber.script, "scr_evt_minuteChange", 0)
scr_sys_ps_subscribe(events.hour_change, pubsub_subscriber.script, "scr_evt_hourChange", 0)
scr_sys_ps_subscribe(events.day_change, pubsub_subscriber.script, "scr_evt_dayChange", 0)
scr_sys_ps_subscribe(events.month_change, pubsub_subscriber.script, "scr_evt_monthChange", 0)
scr_sys_ps_subscribe(events.year_change, pubsub_subscriber.script, "scr_evt_yearChange", 0)
scr_sys_ps_subscribe(events.season_change, pubsub_subscriber.script, "scr_evt_seasonChange", 0)
