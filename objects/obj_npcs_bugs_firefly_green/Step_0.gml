/// @description Insert description here


if (state == being_states.idle) {
	
	if (state_counter >= state_transition_timer) {
		var changeState = choose(0,1)
		switch (changeState) {
			case 0: 
				state			= being_states.wandering
				sprite_index	= spritelist[being_states.wandering]
				break;
			case 1:
				state_counter	= 0;
				break;
		}
	}

} else if (state == being_states.wandering) {
	
	x += wandering_moveX
	y += wandering_moveY
	
	if (state_counter >= state_transition_timer) {
		var changeState = choose(0,1)
		
		switch (changeState) {
			case 0: 
				state			= being_states.idle
				sprite_index	= spritelist[being_states.idle]
				break;
				
			case 1:
				wandering_direction			= irandom_range(0,359);
				image_angle					= wandering_direction - 90
				randomize()

				wandering_moveX				= lengthdir_x(wandering_move_distance, wandering_direction)
				wandering_moveY				= lengthdir_y(wandering_move_distance, wandering_direction)
				
				state_counter	= 0;
				break;
		}
	}
}

//angle -= 0.1
//angle = angle mod 360

//if (angle > 360) {
//	angle -= 360
//}

//x = spawn_pos_x + lengthdir_x(wondering_dist, angle)
//y = spawn_pos_y + lengthdir_y(wondering_dist, angle)

//image_angle = angle - 180