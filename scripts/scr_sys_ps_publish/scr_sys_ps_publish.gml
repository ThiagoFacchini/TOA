// --------------------------[ SRC_SYS_PS_PUBLISH ]------------------------------
// Publish an event, executing scripts from all subscribers of the event.
//
// EXPECTS:
//		argument0 = event fired
//		argument1 = arguments from the event trigger
//
// RETURNS: 
//		null
// ------------------------------------------------------------------------------

// @TODO - Add all possible outputs to a event logger

var topic		= argument0
var topicArgs	= argument1

var response = scr_sys_dt_dg_findRows(global.pubsub_grid, pubsub_grid_map.topic, topic)

for (var row = 0; row < array_length_1d(response); row++) {

	var topic		= ds_grid_get(global.pubsub_grid, pubsub_grid_map.topic, response[row])
	var subscriber	= ds_grid_get(global.pubsub_grid, pubsub_grid_map.subscriber, response[row])
	var event		= ds_grid_get(global.pubsub_grid, pubsub_grid_map.event, response[row])
	var instanceId	= ds_grid_get(global.pubsub_grid, pubsub_grid_map.instanceId, response[row])
	
	if (subscriber == pubsub_subscriber.script) {
		var script = asset_get_index(ds_grid_get(global.pubsub_grid, pubsub_grid_map.event, response[row]))
		script_execute(script, topicArgs)

	} else {
		show_debug_message("should run an event on a particular instance id")
	}
}