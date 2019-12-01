if(obj_progression.final_step == 12 and !instance_exists(obj_textbox)){
	obj_player.interactable = false;
	obj_player.dont_draw = true;
	obj_player.x = 637;	
	obj_player.y = 570;	
	var inst = instance_create_layer(720, 526, "Instances", obj_mc35);
	with(inst){ sitting = true; }
	twelvecount++
	if twelvecount > maxtwelvecount{
			obj_progression.final_step = 13;
	}	
}	

if(obj_progression.final_step == 13 and !instance_exists(obj_textbox)){
	obj_player.dont_draw = true;
	with(inst){ openeyes = true; }
	create_textbox(
		["It's today. It's finally here. It doesn't feel real, like it couldn't be.",
		"I'm... scared.\nI haven't felt scared in a long time. I don't like it but it's better than what I felt before.",
		"I know I'll be so happy when it hits me but it won't until I see them breathing in front of me.",
		"Oh God, what are they going to say? What are they going to do?",
		"I haven't got time to sit here and think, I have mere hours.\nI'll sit there and be there to greet them when they awake."
		],
		[0, 0,0, 0], [-1,-1, -1, -1, -1], true, ["Bryn", "Bryn", "Bryn", "Bryn", "Bryn"], [snd_voice_mum, snd_voice_mum, snd_voice_mum, snd_voice_mum, snd_voice_mum]
	)
	obj_progression.final_step = 14;
}	
if(obj_progression.final_step == 14 and !instance_exists(obj_textbox)){
	obj_player.moveable = false
	obj_mc35.transtioning = true;
	if(obj_player.x > location1x){
		obj_player.moveX = -1*obj_player.spd;	
	} else {
		obj_player.moveX = 0;
		obj_progression.final_step = 15
	}
}	

if(obj_progression.final_step == 15){
	if(obj_player.y < location2y){
		obj_player.moveY = 1*obj_player.spd;	
	} else {
		obj_player.moveY = 0;
		obj_progression.final_step = 16;
	}
}		


if(obj_progression.final_step == 7 and !instance_exists(obj_textbox)){
	obj_player.interactable = false;
	obj_player.dont_draw = true;
	obj_player.x = 525;	
	obj_player.y = 474;	

	create_textbox(
		["Stars are stupid. They just blink. They don't do anything else.",
		"I used to find them so beautiful. I wish I could see a tree, that'd be beautiful, or some flowers.",
		"Have these stars even moved in 4 years? I don't think they have. I think they are the same. Stupid, samey stars."
		],
		[0, 0,0], [-1,-1, -1], true, ["Bryn", "Bryn", "Bryn"], [snd_voice_mc, snd_voice_mc, snd_voice_mc]
	)
	obj_progression.final_step = 8;
}	


if(obj_progression.stay_unfreeze and obj_progression.final_step == 0){
		obj_player.moveable = false;
		obj_player.transtioning = true;
		obj_player.interactable = false;
		if(obj_player.y > spot1y){
			obj_player.moveY = -1*obj_player.spd;	
		} else {
			obj_player.moveY = 0;
			obj_progression.final_step = 1;
		}	
}		
	if(obj_progression.final_step == 1){
		obj_player.moveable = false;
		obj_player.transtioning = true;
		obj_player.interactable = false;
		create_textbox(
			["I'm going to be seeing a lot of this I guess. I'm lucky it's so beautiful.\nI wonder if even the universe can get boring after you've stared at it too long?",
			"At least I've got my Tab too, and the one Mum packed I guess...\nIt's lucky because I need some music right about now. Hmm, yeah, let's put this track on!"],
			[0,0], [-1,-1], true, ["Bryn", "Bryn"], [snd_voice_mc, snd_voice_mc]
		)	
		obj_progression.final_step = 2;
	}	
	if(obj_progression.final_step == 2 and !instance_exists(obj_textbox)){
		obj_player.moveable = false;
		obj_player.transtioning = true;
		obj_player.interactable = false;
		audio_play_sound(snd_finalbeat, 1, true);
		create_textbox(
			["I hope I'm doing the right thing. Mum wouldn't think so but I am, right? Talia needs her parents. I do too!\nAlthough I'll be a grown up when I talk to them again...",
			"*Sob, sob, sob*..",
			"No! I need to snap out of that. I'm going to have to be a grown up if I'm going to do this!\nI know I can do it and then when we get there.. well everything will be okay once they get used to me.",
			"I just need to remember: if Mum was 25 years older, it'd be a struggle on this new planet. Mum and Dad said how much work there would be to do. Even if Mum halved the time with Dad... that would be even worse.",
			"Me and Talia would be orphans 12 and a half years faster! And they BOTH wouldn't be able to do all the work that much quicker too.",
			"No, I've done the right thing...\nI'm sure I have."],
			[0,0,0,0,0,0], [-1, -1, -1, -1, -1, -1], true,
			["Bryn", "Bryn", "Bryn", "Bryn", "Bryn", "Bryn"],
			[snd_voice_mc, snd_voice_mc, snd_voice_mc, snd_voice_mc, snd_voice_mc, snd_voice_mc]
		)
		obj_progression.final_step = 3;
	}	
	if(obj_progression.final_step == 3 and !instance_exists(obj_textbox)){
		obj_player.moveable = false;
		obj_player.transtioning = true;
		obj_player.interactable = false;
	}	

if(obj_progression.obs_room_done) exit;

if(window_looked_at and !instance_exists(obj_textbox)){
	obj_player.interactable = false;
	create_textbox(
		["Wow, the whole galaxy is right there! So cool!\nMum... Dad... you said this would be an adventure. Imagine if you could see this!",
		"...",
		"The computer was sort of right.. it is calming.\nThe whoooole of everything is out there, but I just can't touch it.\nWill that make things easier? Or harder?",
		"Mum or Dad would know. I wish you guys could tell me what to do."
		],
		[0, 0, 0, 0],
		[-1, -1, -1, -1],
		true,
		["Bryn", "Bryn", "Bryn", "Bryn"],
		[snd_voice_mc, snd_voice_mc, snd_voice_mc, snd_voice_mc]
	);	
	obj_progression.obs_room_done = true;
}