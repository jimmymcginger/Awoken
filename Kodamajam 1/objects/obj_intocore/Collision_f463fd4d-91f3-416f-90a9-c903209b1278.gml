if(leaving) exit;
var inst = other.id
if(inst.facing == player_facing_before){
	with(inst){
		transtioning = true;
		moveable = false;
		moveX = 0;
		moveY = 0;
		x_frame = 0;
	}
}
//Open relevant door
relevant_door.counter = true;

//Move player to desired spot
move_player = true;	