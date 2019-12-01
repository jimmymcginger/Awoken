//Move player to desire location
if(!move_player) exit;


//reset movement variables
obj_player.moveX = 0;
obj_player.moveY = 0;

if(relevant_door.subimg == 3){
	if (obj_player.y > walk_to+2 or obj_player.y < walk_to-2){
		if(obj_player.y > walk_to){
			obj_player.moveY = -1*obj_player.spd;	 
		} else if (obj_player.y < walk_to){
			obj_player.moveY = 1*obj_player.spd;	
		}  	
	} else {
		relevant_door.minuscounter = true;
		obj_player.moveY = 0;	
		move_player = false;
		obj_camera.core = true;
	}
}		