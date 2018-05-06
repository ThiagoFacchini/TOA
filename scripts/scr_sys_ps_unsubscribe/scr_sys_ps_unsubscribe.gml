// ------------------------[ SRC_SYS_PS_UNSUBSCRIBE ]----------------------------
// Remove a subscription (event +script) from the pubsub grid.
//
// EXPECTS:
//		argument0 = topic 
//		argument1 = subscriber type
//		argument2 = event type
//		argument3 = event num (only for user events)
//		argument4 = instanceID ( case subscriber type = instance )
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

var subscriptionRow = scr_sys_ps_get_SubscriptionRow(topic, subscriber, event_def, event_num, instanceId)

if (subscriptionRow != "false") {
	
	var isUnsubscribed = scr_sys_dt_dg_removeRow(global.pubsub_grid, subscriptionRow)

	if (isUnsubscribed) {
		return true
	} else {
		return false
	}
	
} else {
	return false
}
