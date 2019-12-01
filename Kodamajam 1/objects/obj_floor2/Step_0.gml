if(obj_progression.aistage >= 1){
	if(instance_exists(obj_interact)){
		instance_destroy(obj_interact);
	}	
	if(!transition_made){
		var inst = instance_create_layer(665, 466, "Transitions", obj_transition);
		with(inst){
			player_facing_before = dir.up;
			player_facing_after = dir.up;
			relevant_door = inst_62BC62;

			change_y = true;
			walk_to = 473;

			targetRoom = rm_storage;
			targetX = 536;
			targetY = 688;

			new_door = inst_1EE0B170;
			new_walk_target = 616;
			image_xscale = 2;
		}	
			
		var inst2 = instance_create_layer(1172, 466, "Transitions", obj_transition);
		with(inst2){
			player_facing_before = dir.up;
			player_facing_after = dir.up;
			relevant_door = inst_5D6DDE53;

			change_y = true;
			walk_to = 473;

			targetRoom = rm_observation;
			targetX = 536;
			targetY = 688;

			new_door = inst_2693D82A;
			new_walk_target = 616;
			image_xscale = 2;	
		}	
		transition_made = true;	
	}	
}	