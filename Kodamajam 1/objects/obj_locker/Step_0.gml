if(stage == 1){
	if(instance_exists(inst_4E9CF4E4)){
		instance_destroy(inst_4E9CF4E4);	
	}	
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
			stage = 2;
		}	
}	

if(stage == 2 and !instance_exists(obj_textbox)){
	create_textbox(
		[
			"Let's see... Clothes - but you have to wear the suit on the ship..\nWashing stuff..\nBlankets..",
			"Oh! My Tab Mini.\nThat's right I put my three favourite songs on it, one game and a few pictures too.\nIt's a shame the storage on it is so small since I'm sure you can't access the cloud here.",
			"Theres Mum's Tab XL! Trust mum to stuff it full of books..."
		],
		[0, 0, 0],
		[-1, -1, [change_variable, obj_luggageroom, "stage", 1]],
		true,
		["Bryn", "Bryn", "Bryn"],
		[snd_voice_mc, snd_voice_mc, snd_voice_mc]
	)
	stage = 3;
}	