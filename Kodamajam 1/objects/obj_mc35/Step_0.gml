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

//---Apply Movement
x += moveX;
y += moveY;