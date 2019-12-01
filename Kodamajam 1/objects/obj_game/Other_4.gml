//Player location for new room
if(spawn_room == -1) exit;
obj_player.moveable = false;
obj_player.transtioning = true;
obj_player.x = player_X;
obj_player.y = player_Y;
obj_player.facing = direction_facing;
door2.subimg = 3

with(obj_player){
	switch(facing){
		case dir.left:	y_frame = 3; break;
		case dir.right: y_frame = 2; break;
		case dir.up:	y_frame = 1; break;
		case dir.down:	y_frame = 0; break;
		case -1:		x_frame = 0; break;
	}		
}	

start_move = true;
door2.minuscounter = true;