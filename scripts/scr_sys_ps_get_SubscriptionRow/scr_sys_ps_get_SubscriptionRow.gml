// ----------------------[ SRC_SYS_PS_GETSUBSCRIPTIONROW ]--------------------------
// Search in the pubusub grid for a particular subscription (event + script)
//
// EXPECTS:
//		argument0 = topic 
//		argument1 = subscriber type
//		argument2 = event type
//		argument3 = event num (only for user events)
//		argument4 = instanceID ( case subscriber type = instance
//
// RETURNS: 
//		number - row number containing subscription (event + script )
// ------------------------------------------------------------------------------

// @TODO - Add all possible outputs to a event logger

var topic		= argument0
var subscriber	= argument1
var event_def	= argument2
var event_num	= argument3
var instanceId	= argument4




for (var row = 0; row < ds_grid_height(global.pubsub_grid); row++) {
	
	curr_topic		= ds_grid_get(global.pubsub_grid, pubsub_grid_map.topic, row)
	curr_subscriber	= ds_grid_get(global.pubsub_grid, pubsub_grid_map.subscriber, row)
	curr_event_def	= ds_grid_get(global.pubsub_grid, pubsub_grid_map.event_def, row)
	curr_event_num	= ds_grid_get(global.pubsub_grid, pubsub_grid_map.event_num, row)
	curr_instanceId	= ds_grid_get(global.pubsub_grid, pubsub_grid_map.instanceId, row)
	
	if ( curr_topic == topic ) and ( curr_subscriber == subscriber ) and ( curr_event_def == event_def) and ( curr_event_num == event_num ) and ( curr_instanceId == instanceId )  {
		return row
	} 
}

// Added false betwen quotes, since false is equals 
// to 0 and there's a position 0 at the grid.
return "false"