// ------------------------[ SRC_SYS_PS_UNSUBSCRIBE ]----------------------------
// Add a subscription (event +script) from the pubsub grid.
//
// EXPECTS:
//		argument0 = topic 
//		argument1 = subscriber type
//		argument2 = event type
//		argument3 = event num (only for user events)
//		argument4 = instanceID ( case subscriber type = instance
//
// RETURNS: 
//		boolean
// ------------------------------------------------------------------------------

// @TODO - Add all possible outputs to a event logger

var topic		= argument0
var subscriber	= argument1
var event_def	= argument2
var event_num	= argument3
var instanceId	= argument4


var isSubscribed = scr_sys_ps_getSubscriptionRow(topic, subscriber, event_def, event_num, instanceId)


if (isSubscribed == "false") {
	
	var gridCols  = global.pubsub_grid_cols
	var gridRows = ds_grid_height(global.pubsub_grid)
	
	ds_grid_resize(global.pubsub_grid, gridCols, (gridRows+1))
	
	ds_grid_set(global.pubsub_grid, pubsub_grid_map.topic, gridRows, topic)
	ds_grid_set(global.pubsub_grid, pubsub_grid_map.subscriber, gridRows, subscriber)
	ds_grid_set(global.pubsub_grid, pubsub_grid_map.event_def, gridRows, event_def)
	ds_grid_set(global.pubsub_grid, pubsub_grid_map.event_num, gridRows, event_num)
	ds_grid_set(global.pubsub_grid, pubsub_grid_map.instanceId, gridRows, instanceId)
	
	show_debug_message("Subscribed: " + string(topic) + " - " + string(subscriber) + " - " + string(event_def) + " - " + string(event_num) + " - " + string(instanceId))

	return true
	
} else {
	return false
}
