if(!counter and !minuscounter) exit;

if(counter){
	doorcount += 1;	
	if(subimg < 3){
	if(doorcount >= maxcount){
		subimg += 1;
		doorcount = 0;
			if(doorsoundmade = false){
				audio_play_sound(snd_dooropen, 10, false);	
				doorsoundmade = true;
			}	
		}	
	} else {
		doorcount = 0;
		counter = false;
		doorsoundmade = false;
	}	
}

if(minuscounter){
	doorcount += 1;
	if(subimg > 0){
		if(doorcount >= maxcount){
			subimg -= 1;
			doorcount = 0;
			if(doorsoundmade = false){
				audio_play_sound(snd_dooropen, 10, false);	
				doorsoundmade = true;
			}	
		}	
	} else {
		doorcount = 0;
		minuscounter = false;
		doorsoundmade = false;
	}		
}