if(obj_progression.aistage >= 1 and door_open == false){
	inst = instance_create_layer(720, 600, "Transitions", obj_transition);
	with(inst){
		image_xscale = 3
		image_yscale = 1
		player_facing_before = dir.up;
		player_facing_after = dir.up;
		relevant_door = inst_36FF871B;
		change_y = true;
		walk_to = 598;
		targetRoom = rm_baggage;
		targetX = 533;
		targetY = 335;
		new_door = inst_16E977A5;
		new_walk_target = 286;
	}	
	instance_destroy(inst_62C046C3, true);
	door_open = true;
}