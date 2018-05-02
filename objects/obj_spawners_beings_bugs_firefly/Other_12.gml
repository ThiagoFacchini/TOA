/// @description Spawn Instances Event

if (is_active) {
	
	var curr_instances_count		= array_length_1d(spawned_instances_arr)
	var new_spawned_instances_arr	= 0
	var new_instances_count			= 0
	
	// Checking if all the instancesId in the array are still 'alive'
	// re calculating the spawned_instances_arr
	for (var i = 0; i < curr_instances_count; i++) {
		if (instance_exists(spawned_instances_arr[i])) {
			new_spawned_instances_arr[new_instances_count] = spawned_instances_arr[i]
			new_instances_count++
		}
	}
	
	spawned_instances_arr	= new_spawned_instances_arr
	instances_count			= array_length_1d(spawned_instances_arr)
	
	
	if (instances_count < max_spawned_instances) {
		
		firefly_rnd_x = random_range((spawn_range_x * -1), spawn_range_x)
		firefly_rnd_y = random_range((spawn_range_y * -1), spawn_range_y)

		firefly_instance_x = x + firefly_rnd_x
		firefly_instance_y = y + firefly_rnd_y

		spawned_instances_arr[instances_count] = instance_create_layer(firefly_instance_x, firefly_instance_y, "l_characters_beings_bugs", obj_npcs_bugs_firefly_green)
	}
}
