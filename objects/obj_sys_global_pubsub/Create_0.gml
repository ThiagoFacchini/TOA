/// @description Global Pub Sub Variables

// Pubsub Grid
// Col1 = Topic
// Col2 = Subscription Type ( script, instance )
// Col3 = Event to run
// Col4 = Instance Id ( case subscription type = instance )

global.pubsub_grid_cols = 5


global.pubsub_grid = ds_grid_create(global.pubsub_grid_cols, 1)

// Preventing any event to subscribe at row 0 since 
// there's no way to ged rid of this row
ds_grid_set(global.pubsub_grid, 0, 0, "99999")
ds_grid_set(global.pubsub_grid, 1, 0, "99999")

enum pubsub_topics {
	minute_change,
	hour_change,
	day_change,
	month_change,
	year_change,
	season_change
}


enum pubsub_grid_map {
	topic,
	subscriber,
	event_def,
	event_num,
	instanceId
}

enum pubsub_subscriber {
	script,
	instance
}