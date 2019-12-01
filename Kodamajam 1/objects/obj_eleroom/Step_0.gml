//remove walls and door
if(obj_player.transtioning == false and roomstep = 0){
	obj_player.moveable = false;
	startcount++
		if(startcount > maxstartcount){
		obj_door_small.dontdraw = true;
		layer_set_visible("Tile_walls", false);
		roomstep = 1
	}
}	

//move player to panel
if(roomstep = 1){
	obj_player.transtioning = true;
	if(obj_player.x < location1x){
		obj_player.moveX = 1*obj_player.spd;	
	} else {
		obj_player.moveX = 0;
		roomstep = 2
	}
}	
if(roomstep = 2){
	if(obj_player.y < location2y){
		obj_player.moveY = 1*obj_player.spd;	
	} else {
		obj_player.moveY = 0;
		roomstep = 3
	}
}	

//Panel 
if(roomstep = 3){
	obj_player.moveable = false;
	boxmade = false;
	obj_elevatorpanel.visible = true;
	floorup		= keyboard_check_pressed(ord("W"));
	floordown	= keyboard_check_pressed(ord("S"));
	var upordown = (floorup - floordown);
	elefloor += upordown;
	if(elefloor < 1) { elefloor = 1};
	if(elefloor > 10) { elefloor = 10 };
	button_y = 124-(11*(elefloor-1));
	if(keyboard_check_pressed(vk_space)){ roomstep = 4 };
}	

if(roomstep = 4){
	obj_player.moveable = false;
	if(!boxmade){
		if(elefloor = 10 or elefloor = 9 or elefloor = 6){
			switch (elefloor){
				case 10: desc = ", the AI CORE?"; break;
				case 9: desc = ", the STORAGE AREA & OBSERVATION DECK?" ;break;
				case 6: desc = ", CRYO ROOMS 13-16?"; break;
			}	
			create_textbox(
				[
					"Do you wish to travel to Floor " + string(elefloor) + desc, 
					["Yes", "No"],
				],
				[0, 0],
				[-1,[
						[change_variable, obj_eleroom, "roomstep", 6],
						[change_variable, obj_eleroom, "roomstep", 5]
					]
				],
				false,
				[-1, -1],
				[-1, -1]
			)	
			boxmade = true;
		} else {
			create_textbox(["You do not appear to have access to this floor"], [0], 
				[-1], false, [1], [-1]
			)
			roomstep = 5;
			boxmade = true;
		}	
	}
}	
//space bar buffer
if(roomstep = 5){
	obj_player.moveable = false;
	if(!instance_exists(obj_textbox)){
		roomstep = 3;	
	}	
}	
//shake and sound
if(roomstep = 6){
	var floortime = abs(elefloor - obj_game.current_floor)
	obj_player.moveable = false;
	if sixcounter < 15*floortime{
		audio_play_sound(snd_textbox, 30, false);
		obj_camera.camerashake = true;
	} else {
		obj_game.current_floor = elefloor;
		roomstep = 7;
		obj_camera.camerashake = false;
	}	
	sixcounter++
}	
//Move out of room
if(roomstep = 7){
	if(obj_player.y > location1y){
		obj_player.moveY = -1*obj_player.spd;	
	} else {
		obj_player.moveY = 0;
		roomstep = 8
	}
}	
if(roomstep = 8){
	obj_elevatorpanel.visible = false;
	if(obj_player.x > 70){
		obj_player.moveX = -1*obj_player.spd;	
	} else {
		obj_player.moveX = 0;
		roomstep = 9
	}
}	
if(roomstep = 9){
	var tr, tx, ty, nd, nwt;
	switch(obj_game.current_floor){
		case 6: tr = rm_floor1;
				tx = 744;
				ty = 249;
				nd = inst_26A5D08A;
				nwt = 270; break;
		case 9:	tr = rm_floor2;
				tx = 78;
				ty = 404;
				nd = inst_154BE1E5;
				nwt = 430; break;	
		case 10: tr = rm_core;
				tx = 78;
				ty = 404;
				nd = inst_3DE339B0;
				nwt = 430; break;	
	}	
	var inst = instance_create_layer(64,120, "Transitions", obj_transition);
	with(inst){
		player_facing_before = dir.down;
		player_facing_after = dir.down;
		relevant_door = inst_7F0A5711;
		change_y = true;
		walk_to = 140;
		targetRoom = tr;
		targetX = tx;
		targetY = ty;
		new_door = nd;
		new_walk_target = nwt;
	}	
	obj_door_small.dontdraw = false;
		layer_set_visible("Tile_walls", true);
	if(obj_player.y < 127){
		obj_player.moveY = 1*obj_player.spd;	
	} else {
		obj_player.moveY = 0;
		roomstep = 10
	}
}	
