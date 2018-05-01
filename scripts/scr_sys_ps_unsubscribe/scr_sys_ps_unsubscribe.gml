// ------------------------[ SRC_SYS_PS_UNSUBSCRIBE ]----------------------------
// Remove a subscription (event +script) from the pubsub grid.
//
// EXPECTS:
//		argument0 = topic 
//		argument1 = subscriber type
//		argument2 = event / function
//		argument3 = instanceID ( case subscriber type = instance
//
// RETURNS: 
//		boolean
// ------------------------------------------------------------------------------

// @TODO - Add all possible outputs to a event logger

var topic		= argument0
var subscriber	= argument1
var event		= argument2
var instanceId	= argument3

var subscriptionRow = scr_sys_ps_getSubscriptionRow(topic, subscriber, event, instanceId)

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
