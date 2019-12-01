if(room == rm_menu) exit;
//Follow Player
if(dofollow){
	x = clamp(x, following.x-h_border, following.x+h_border);
	y = clamp(y, following.y-v_border, following.y+v_border);
}

if(camerashake){
	if (shakedir = 1){
		y = y+shake;
		counter++
		if(counter = 3){
			shakedir = 2;
			counter = 0;
		}
	}
	if (shakedir = 2){
		y = y-shake;
		counter++
		if(counter = 3){
			shakedir = 1;
			counter = 0;
		}
	}
		
}	

//core
if(core){
	dofollow = false;
	if ((abs(x - xtarget) > 2)){
		if(x > xtarget){
			x--
		} else if (x < xtarget){
			x++	
		} 
	}	else { xset = true; }	
	if ((abs(y - ytarget) > 2)){
		if(y > ytarget){
			y--
		} else if (y < ytarget){
			y++	
		} 
	} else { yset = true; }
}	
if(yset and xset){
	obj_core.talk = true;	
	yset = false;
	xset = false;
}	