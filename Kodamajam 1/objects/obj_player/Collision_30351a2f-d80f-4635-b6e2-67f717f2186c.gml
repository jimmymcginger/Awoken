var inst = other.id
if(facing == inst.player_facing_before){
	transtioning = true;
	moveable = false;
	moveX = 0;
	moveY = 0;
	x_frame = 0;

	//PRE TRANSITION ANMATION
	//Open relevant door
	if(inst.relevant_door != -1){
		inst.relevant_door.counter = true;
	}	

	//Move player to desired spot
	if(inst.walk_to != -1){
		inst.move_player = true;	
	}	

	//PASS OFF VARIABLES FOR TRANSITION
	with(obj_game){
		door2				= inst.new_door;
		x_change			= inst.change_x
		y_change			= inst.change_y;
		walk2				= inst.new_walk_target;
		player_X			= inst.targetX;
		player_Y			= inst.targetY;
		direction_facing	= inst.player_facing_after;
		spawn_room			= inst.targetRoom;
	}	
}