//-------MOVEMENT
//---Update Input
input_left	= keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up	= keyboard_check(ord("W"));
input_down	= keyboard_check(ord("S"));

//---Reset Move Variables
if(!transtioning){
	moveX = 0;
	moveY = 0;
}

//---Intended Movement
if(moveable){
	moveY = (input_down - input_up) * spd;
	if(moveY == 0){ moveX = (input_right - input_left) * spd; }
}

//---Get Direction player is Facing (transitions)
if(moveX != 0){
	switch(sign(moveX)){
		case 1:  facing = dir.right; break;
		case -1: facing = dir.left; break;
	}	
} else if(moveY != 0){
	switch(sign(moveY)){
		case 1:  facing = dir.down; break;
		case -1: facing = dir.up; break;
	}	
} else {
	facing = -1;	
}	

//-------COLLISION CHECKS
if(!transtioning){
	//Horizontal
	if(moveX != 0){
		if(place_meeting(x+moveX, y, obj_collision)){
			repeat(abs(moveX)){
				if(!place_meeting(x+sign(moveX), y, obj_collision)) { x += sign(moveX); }
				else { break; }
			}
			moveX = 0;
		}	
	}	

	//Vertical
	if(moveY != 0){
		if(place_meeting(x, y+moveY, obj_collision)){
			repeat(abs(moveY)){
				if(!place_meeting(x, y+sign(moveY), obj_collision)) { y += sign(moveY); }
				else { break; }
			}
			moveY = 0;
		}	
	}	
}

//---Apply Movement
x += moveX;
y += moveY;

//Generate texboxes	
switch(facing){
	case dir.left:	minus_x = 0; 
					plus_x = radius;
					minus_y = 0;	
					plus_y = radius*2;
					break;
	case dir.right: minus_x = radius; 
					plus_x = 0;
					minus_y = 0;	
					plus_y = radius*2;
					break;
	case dir.up:	minus_x = radius; 
					plus_x = radius;
					minus_y = 0;	
					plus_y = radius;
					break;
	case dir.down:	minus_x = radius; 
					plus_x = radius;
					minus_y = radius;	
					plus_y = 0;
					break;
}	

if(interactable){
	if(keyboard_check_pressed(vk_space)){
		if(active_textbox == noone){
			var inst = collision_rectangle(x-plus_x, y-plus_y, x+minus_x, y+minus_y, obj_interact, false, true);
	
			if(inst != noone){
				with(inst){ 
					var tbox = create_textbox(text, next_line, scripts, speech, names, voice);
				}	
				active_textbox = tbox;
			}	
		} else {
			if(!instance_exists(active_textbox)){
				active_textbox = noone;	
			}	
		}	
	}	
}