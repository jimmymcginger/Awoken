if(obj_progression.name_known == true){
	#region Own Pod
	if(instance_exists(inst_768316E4)){ 
		var newx = inst_768316E4.x;
		var newy = inst_768316E4.y
		instance_destroy(inst_768316E4, true);
		var inst = instance_create_layer(newx, newy, "Interactables", obj_interact);
		inst.next_line = [0, 0]
		inst.names = [-1,-1];
		inst.voice = [-1, -1];
		inst.text = [
				"Your Cryopod. \nIt's clearly broken. You wonder what happened?", 
				"The name plate reads 'Bryn Briar'.",
		]
		inst.image_xscale = 1.5;
		inst.image_yscale = 4.05;
	}	
	#endregion
	#region Sister Pod
	if(instance_exists(inst_3D339355)){ 
		var newx = inst_3D339355.x;
		var newy = inst_3D339355.y;
		instance_destroy(inst_3D339355, true);
		sister_pod2 = instance_create_layer(newx, newy, "Interactables", obj_interact);
		sister_pod2.next_line = [0, 0];
		sister_pod2.names = [-1,-1];
		sister_pod2.voice = [-1, -1];
		sister_pod2.text = ["A cryopod with a young girl in it. \nThe name plate reads 'Talia Briar'.", "You remember now. \nThis is your sister!" ]
		sister_pod2.scripts =[-1,[change_variable, obj_progression, "sister_pod", true],];		
		sister_pod2.image_xscale = 1.5;
		sister_pod2.image_yscale = 4.05;
	}	
	if(instance_exists(sister_pod2) and obj_progression.sister_scene_played == true){
		var newx = sister_pod2.x;
		var newy = sister_pod2.y;
		instance_destroy(sister_pod2, true);
		var inst = instance_create_layer(newx, newy, "Interactables", obj_interact);
		inst.next_line = [0, 0];
		inst.names = [-1,-1];
		inst.voice = [-1, -1];
		inst.text = ["It's Talia's pod. \nThe name plate reads 'Talia Briar'.", "You're beyond grateful that it wasn't her pod that malfunctioned." ]
		inst.image_xscale = 1.5;
		inst.image_yscale = 4.05;	
	}	
	#endregion
	#region Mum Pod
	if(instance_exists(inst_64986C81)){ 
		var newx = inst_64986C81.x;
		var newy = inst_64986C81.y;
		instance_destroy(inst_64986C81, true);
		mum_pod2 = instance_create_layer(newx, newy, "Interactables", obj_interact);
		mum_pod2.next_line = [0, 0];
		mum_pod2.names = [-1,-1];
		mum_pod2.voice = [-1, -1];
		mum_pod2.text = ["A cryopod with a grown-up woman in it. \nThe name plate reads 'Rose Briar'.", "You remember now. \nThis is Mum!" ]
		mum_pod2.scripts =[-1,[change_variable, obj_progression, "mum_pod", true]];		
		mum_pod2.image_xscale = 1.5;
		mum_pod2.image_yscale = 4.05;
	}	
	if(instance_exists(mum_pod2) and obj_progression.mum_scene_played == true){
		var newx = mum_pod2.x;
		var newy = mum_pod2.y;
		instance_destroy(mum_pod2, true);
		var inst = instance_create_layer(newx, newy, "Interactables", obj_interact);
		inst.next_line = [0, 0];
		inst.names = [-1,-1];
		inst.voice = [-1, -1];
		inst.text = ["It's Mum's pod. \nThe name plate reads 'Rose Briar'.", "She loves you and wants nothing but the happiness of her family."]
		inst.image_xscale = 1.5;
		inst.image_yscale = 4.05;	
	}	
	#endregion
	#region Dad pod
	if(instance_exists(inst_76633E09)){ 
		var newx = inst_76633E09.x;
		var newy = inst_76633E09.y;
		instance_destroy(inst_76633E09, true);
		dad_pod2 = instance_create_layer(newx, newy, "Interactables", obj_interact);
		dad_pod2.next_line = [0, 0];
		dad_pod2.names = [-1,-1];
		dad_pod2.voice = [-1, -1];
		dad_pod2.text = ["A cryopod with a grown-up man in it. \nThe name plate reads 'Troy Briar'.", "You remember now. \nThis is Dad!"]
		dad_pod2.scripts =[-1,[change_variable, obj_progression, "dad_pod", true],];		
		dad_pod2.image_xscale = 1.5;
		dad_pod2.image_yscale = 4.05;
	}	
	if(obj_progression.dad_scene_played){
		if(instance_exists(dad_pod2) and obj_progression.dad_scene_played == true){
			var newx = dad_pod2.x;
			var newy = dad_pod2.y;
			instance_destroy(dad_pod2, true);
			var inst = instance_create_layer(newx, newy, "Interactables", obj_interact);
			inst.next_line = [0, 0];
			inst.names = [-1,-1];
			inst.voice = [-1, -1];
			inst.text = ["It's Dad's pod. \nThe name plate reads 'Troy Briar'.", "You know he just wanted what was best for you."]
			inst.image_xscale = 1.5;
			inst.image_yscale = 4.05;	
		}	
	}
	#endregion
}
#region self unfreeze
if(obj_progression.final_step == 5){
	obj_player.x = 334;
	obj_player.y = 417;
	obj_player.dont_draw = true;
	create_textbox(
		["Hey Mum.. Dad.. Talia. It's been a year now! Well that's what Mr. Computer said today.",
		"I'm already taller. I hope you recognise me but I won't blame you if you don't right away.",
		"I really miss you guys. Mister Computer can answer questions but he can't really *talk* to you.\nIt's weird.",
		"I'm so excited to see you all again. I guess it'll be sad when you all find out... but I'll just be happy you're awake again.",
		"I'm just going to stay here for a while longer I think..."],
		[0,0,0,0,0], [-1,-1,-1,-1,-1], true, 
		["Bryn","Bryn","Bryn","Bryn","Bryn"],
		[snd_voice_mc,snd_voice_mc,snd_voice_mc,snd_voice_mc,snd_voice_mc]
	)
	obj_progression.final_step = 6;
}	
if(obj_progression.final_step == 8){
	obj_player.x = 334;
	obj_player.y = 417;
	obj_player.dont_draw = true;
	create_textbox(
		["*Sob* H-Hey Guys, I just feel r-really alone today. So I'm just going to hang out here, okay?",
		"I just r-really miss you. I have to wait 20 more years, how am-m I going to make it?",
		"You're all that's keeping me strong. I can't wait to tell you all that."],
		[0,0,0], [-1,-1,-1], true, 
		["Bryn","Bryn","Bryn"],
		[snd_voice_mc,snd_voice_mc,snd_voice_mc]
	)
	obj_progression.final_step = 9;
}	
if(obj_progression.final_step == 15){
	obj_player.x = 334;
	obj_player.y = 417;
	obj_player.dont_draw = true;
	create_textbox(
		["Any second now...\nAny... second... now...",
		"Oh God, the light changed. It's happening...\nI m-must be strong..."],
		[0,0], [-1,-1], true, 
		["Bryn","Bryn","Bryn"],
		[snd_voice_mum,snd_voice_mum,snd_voice_mum]
	)
	obj_progression.final_step = 16;
}

if(obj_progression.final_step == 16 and !instance_exists(obj_textbox)){
	obj_camera.dofollow = false;
	obj_camera.x = 5300;
	obj_camera.y = 350;
	audio_play_sound(snd_pod, 100, false);
	audio_play_sound(snd_bugsplat, 99, true);
	create_textbox(
		["Hello! You're here, you're finally here!",
		"Who-?",
		"It's me. It's Bryn. I have a lot to explain. I've been here alone for so long I don't know where to start.",
		"But first believe me, please, when I say I am so, *so* sorry."],
		[0,0,0,0], [-1,-1,-1,-1], true, ["Bryn", "Family", "Bryn", "Bryn"],
		[snd_voice_mum, snd_voice_dad,snd_voice_mum, snd_voice_mum]
	)
	obj_progression.final_step = 17;
}
if(obj_progression.final_step ==17 and !instance_exists(obj_textbox)){
		audio_sound_gain(snd_bugsplat, 0, 4000);
		obj_progression.final_step = 18;
	}	
	if(obj_progression.final_step == 18){
		if(audio_sound_get_gain(snd_bugsplat) == 0){
			game_restart();	
		}
	}	
if(obj_progression.final_step ==17){
	if(audio_is_playing(snd_bugsplat)){
		var posb = audio_sound_get_track_position(snd_bugsplat);
		var lenb = audio_sound_length(snd_bugsplat);
		if(!memories_intro_played and posb > lenb/2) { memories_intro_played = true; }
		if(memories_intro_played and posb < lenb/2) { 
			audio_sound_set_track_position(snd_bugsplat, posb/2);	
		}
	}		
}	




#endregion
#region mum unfreeze
if(obj_progression.mum_unfreeze){
	//move player to mum
	if(mumstep = 1 and obj_game.spawn_room = -1){
		obj_player.moveable = false;
		obj_player.transtioning = true;
		if(obj_player.x > spot1x){
			obj_player.moveX = -1*obj_player.spd;	
		} else {
			obj_player.moveX = 0;
			mumstep = 2
		}
	}	
	if(mumstep = 2){
		if(obj_player.y < spot2y){
			obj_player.moveY = 1*obj_player.spd;	
		} else {
			obj_player.moveY = 0;
			mumstep = 3
		}
	}	
	if(mumstep = 3){
		if(obj_player.x > spot3x){
			obj_player.moveX = -1*obj_player.spd;	
		} else {
			obj_player.moveX = 0;
			mumstep = 4
		}
	}	
	
	if(mumstep = 4){
		create_textbox(
			["I think it's opening.\nMum..."],
			[0],
			[-1],
			true,
			["Bryn"],
			[snd_voice_mc]
		)
		mumstep = 5;		
	}	
	if(mumstep = 5 and !instance_exists(obj_textbox)){
		obj_player.moveable = false;
		mumpoddrawx = 208;
		mumpoddrawy = 180;
		mumpodw = 28;
		mumpodh = 85;
		mumpodx = 281;
		mumpody = 335;
		audio_play_sound(snd_pod, 100, false);
		
		instance_create_layer(313, 397, "Instances", obj_mum);
		obj_mum.moveable = false;
		obj_mum.transtioning = true;
		mumstep = 6;
	}	
	
	if(mumstep >= 5){
		//music change
		if(!endofgame){
			memory_tune = false;
			audio_play_sound(snd_bugsplat, 10, true);
			endofgame = true;
		}
		if(audio_is_playing(snd_bugsplat)){
			var posb = audio_sound_get_track_position(snd_bugsplat);
			var lenb = audio_sound_length(snd_bugsplat);
			if(!memories_intro_played and posb > lenb/2) { memories_intro_played = true; }
			if(memories_intro_played and posb < lenb/2) { 
				audio_sound_set_track_position(snd_bugsplat, posb/2);	
			}	
		}	
	}
	
	if(mumstep == 6 and !instance_exists(obj_textbox)){
		create_textbox(
			["...", 
			"H-Honey? Are we there? How did you get out of your pod so quick?",
			"No Mum. *sob, sob sob*",
			"Darling, what's wrong? What's going on?",
			"Mum, I'm so sorry. I'm so sorry!"],
			[0, 0, 0 ,0, 0],
			[-1, -1, -1, -1, -1],
			true,
			["Mum", "Mum", "Bryn", "Mum", "Bryn"],
			[snd_voice_mum, snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc]
		)
		mumstep = 7;
	}
	if(mumstep = 7 and !instance_exists(obj_textbox)){
		obj_player.moveable = false;
		if(obj_mum.x < spot3x-14){
			obj_mum.moveX = 1*obj_mum.spd;	
		} else {
			obj_mum.moveX = 0;
			mumstep = 8;
		}
	}	
	if(mumstep = 8 and !instance_exists(obj_textbox)){
		obj_mum.bend_down = true;
		mumstep = 9;
	}	
	
	if(mumstep == 9 and !instance_exists(obj_textbox)){
		create_textbox(
			[ "Tell me what happened, Bryn. Tell me what's going on."],
			[0],
			[-1],
			true,
			["Mum"],
			[snd_voice_mum]
		)
		mumstep = 10;
	}	
	if(mumstep == 10 and !instance_exists(obj_textbox)){
		create_textbox(
			[ "..."],
			[0],
			[-1],
			true,
			["Bryn"],
			[snd_voice_mc]
		)
		fade_to_black = true;
	}	
	if(mumstep == 11 and !instance_exists(obj_textbox)){
		create_textbox(
			[ 
				"No.. no! Nooo!\nI don't believe this. It's supposed to be safe! They said it was safe!",
				"25 years! You can't stay out here-",
				"No Mum!",
				"Listen darling, please listen. I can't let you sacrifice 25 years of your life.\nGet in the pod, I'll talk to the computer, I'll sort this out. Just get in the pod, okay?",
				"Mum I'm so sorry!",
				"Don't you dare be sorry. You've done nothing wrong. I love you. I love you so much. And your dad and your sister.\nEverything's going to be fine. Just get in the pod okay?",
				"*sob, sob, sob*",
				"Please darling? Please?",
				"O-Okay Mum but...",
				"No buts. Not now. I'll see you soon okay?",
				"Okay..."
			],
			[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
			[-1, -1, -1, -1, -1, -1, -1, -1, -1, -1 ,-1],
			true,
			["Mum","Mum", "Bryn", "Mum", "Bryn", "Mum", "Bryn", "Mum", "Bryn", "Mum", "Bryn"],
			[snd_voice_mum, snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc, snd_voice_mum, 
			snd_voice_mc, snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc]
		)
		mumstep = 12;
	}
	if(mumstep = 12 and !instance_exists(obj_textbox)){
		audio_play_sound(snd_pod, 1000, false);
		mumstep = 13;
	}	
	if(mumstep = 13){
		audio_sound_gain(snd_bugsplat, 0, 4000);
		mumstep = 14;
	}	
	
	
	if(mumstep == 14){
		if(audio_sound_get_gain(snd_bugsplat) == 0){
			game_restart();	
		}	
	}	
}
#endregion

#region Jarkov Pods
if(obj_progression.family_scene_played == true){
	if(instance_exists(inst_1F2AD6B0)){ 
		var newx = inst_1F2AD6B0.x;
		var newy = inst_1F2AD6B0.y
		instance_destroy(inst_1F2AD6B0, true);
		var inst = instance_create_layer(newx, newy, "Interactables", obj_interact);
		inst.next_line = [0, 0]
		inst.names = [-1,-1];
		inst.voice = [-1, -1];
		inst.text = [
				"A cryopod with a girl your age in it. \nThe name plate reads 'Mascha Jarkov'.", 
				"You can't wait to play with her and her siblings once you get to the new planet."
		]
		inst.image_xscale = 1.5;
		inst.image_yscale = 4.05;
	}	
	if(instance_exists(inst_2F40CD47)){ 
		var newx = inst_2F40CD47.x;
		var newy = inst_2F40CD47.y
		instance_destroy(inst_2F40CD47, true);
		var inst = instance_create_layer(newx, newy, "Interactables", obj_interact);
		inst.next_line = [0, 0]
		inst.names = [-1,-1];
		inst.voice = [-1, -1];
		inst.text = [
				"A cryopod with a boy your age in it. \nThe name plate reads 'Dima Jarkov'.", 
				"You can't wait to play with him and his siblings once you get to the new planet."
		]
		inst.image_xscale = 1.5;
		inst.image_yscale = 4.05;
	}	
	if(instance_exists(inst_215CE98)){ 
		var newx = inst_215CE98.x;
		var newy = inst_215CE98.y
		instance_destroy(inst_215CE98, true);
		var inst = instance_create_layer(newx, newy, "Interactables", obj_interact);
		inst.next_line = [0, 0]
		inst.names = [-1,-1];
		inst.voice = [-1, -1];
		inst.text = [
				"A cryopod with a girl your age in it. \nThe name plate reads 'Yuka Jarkov'.", 
				"You can't wait to play with her and her siblings once you get to the new planet."
		]
		inst.image_xscale = 1.5;
		inst.image_yscale = 4.05;
	}		
}
#endregion

#region Draw  MC Pod
if(scene_step < 3){
	draw_podx = 57;
	draw_pody = 224;
} else {
	obj_podclosed.spr = spr_brokenpod;
	draw_podx = 0;
	draw_pody = 0;
	obj_podclosed.bpod_y = obj_podclosed.y-1;
	obj_podclosed.bpod_x = obj_podclosed.x-5;
}	
if(obj_progression.first_scene_done){
	obj_podclosed.spr = spr_brokenpod;
	draw_podx = 0;
	draw_pody = 0;
	obj_podclosed.bpod_y = obj_podclosed.y-1;
	obj_podclosed.bpod_x = obj_podclosed.x-5;
}
#endregion

#region Open door
if(obj_progression.family_scene_played == true and door_open == false){
	inst = instance_create_layer(767, 177, "Transitions", obj_transition);
	with(inst){
		image_xscale = 1.25
		image_yscale = 0.5
		player_facing_before = dir.up
		player_facing_after = dir.up;
		relevant_door = inst_6B76572;
		change_y = true;
		walk_to = 168;
		targetRoom = rm_floor1;
		targetX = 713
		targetY = 750
		new_door = inst_64F97BF3;
		new_walk_target = 710;
	}	
	instance_destroy(inst_3A8D4476, true);
	door_open = true;
}
#endregion

#region music
if(obj_progression.family_scene_played == true) exit;
//music change
if(memory_tune and audio_sound_get_gain(snd_music_alone) < 0.2 and !memory_started){
	audio_play_sound(snd_music_memories, 1, true);
	audio_sound_gain(snd_music_memories, 0, 0);
	audio_sound_gain(snd_music_memories, 1, 480);
	memory_started = true;
}
if(audio_is_playing(snd_music_memories)){
	var pos = audio_sound_get_track_position(snd_music_memories);
	var len = audio_sound_length(snd_music_memories);
	if(!memories_intro_played and pos > len/2) { memories_intro_played = true; }
	if(memories_intro_played and pos < len/2) { 
		audio_sound_set_track_position(snd_music_memories, len/2);	
	}	
}	
	
if(memory_tune and audio_is_playing(snd_music_alone) and audio_sound_get_gain(snd_music_alone) >= 0){
	audio_pause_sound(snd_music_alone);	
}	
if(!song_resumed and memory_started){
	var op = obj_progression;
	if(op.play_dad_scene == 5 or op.play_mum_scene == 5 or op.play_sister_scene == 5 or op.play_family_scene == 5){
		music_fade_out(snd_music_memories);
		memory_started = false;
		memory_tune = false;
		audio_resume_sound(snd_music_alone);
		audio_sound_gain(snd_music_alone, 0, 0);
		audio_sound_gain(snd_music_alone, 1, 480);
		song_resumed = true
	}	
}
if(!memory_tune and audio_is_playing(snd_music_alone) and audio_sound_get_gain(snd_music_alone) >= 0){
	audio_pause_sound(snd_music_memories);	
}
#endregion 

#region family Cutscene
if(obj_progression.play_family_scene == 0 and obj_progression.mum_scene_played and obj_progression.dad_scene_played and obj_progression.sister_scene_played and !instance_exists(obj_textbox)){
	obj_player.interactable = false;
	create_textbox(
		["My family - I remember everything now.",
		"We came here together...\nMum told me what to do...\nShe told me..."], 
		[0, 0],
		[-1, [change_variable, obj_progression, "play_family_scene", 1]],
		true,
		["Bryn", "Bryn"],
		[snd_voice_mc, snd_voice_mc]
		)
}
if(obj_progression.play_family_scene == 1 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	fade_to_black = true;
	obj_progression.play_family_scene = 2
}	
if(obj_progression.play_family_scene == 3 and !instance_exists(obj_textbox)){
	obj_player.interactable = false;
	create_textbox(
	["We don't have much time darling. Dad's getting your sister ready.\nWe'd better do the same for you.",
	"Okay Mum.",
	"You remember what you need to do if anything happens.",
	"You said nothing will happen though...",
	"I know dear and it won't. But just tell me anyway, okay?",
	"I wake you up.",
	"And how do you do that?",
	"Ermm... the computer.",
	"C'mon honey, where is the computer?",
	"The top floor.",
	"Okay we're running out of time. Just remember to get out and wave your sleeve in front of the door.\nIt has a computer chip in it, remember? Then go straight to the top floor and get them to wake me up.\nPromise you understand?",
	"I promise Mum.",
	"Okay, let's get you inside.\nRemember I love you okay?\nI love you and everything is going to be better when we wake up."],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1],
	true,
	["Mum", "Bryn", "Mum", "Bryn", "Mum", "Bryn", "Mum", "Bryn","Mum", "Bryn", "Mum", "Bryn", "Mum"],
	[snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc,snd_voice_mum, snd_voice_mc,snd_voice_mum, snd_voice_mc,snd_voice_mum, snd_voice_mc,snd_voice_mum, snd_voice_mc,snd_voice_mum]
	)
	obj_progression.play_family_scene = 4;	
	obj_player.moveable = false;
}
if(obj_progression.play_family_scene == 4 and !instance_exists(obj_textbox)){
	fade_to_black = true;
}	
if(obj_progression.play_family_scene == 5 and !instance_exists(obj_textbox)){
	create_textbox(["The computer! It's a bit scary to go out there on my own but I'll do it mum!"],
		[0],
		[-1],
		true,
		["Bryn"],
		[snd_voice_mc]
	)	
	obj_progression.play_family_scene = 6;
	cutscenecounter = 0;
	song_resumed = false;
}	

if(obj_progression.play_family_scene == 6 and !instance_exists(obj_textbox)){
	cutscenecounter++;
	if(cutscenecounter > 5 ){
		obj_player.interactable = true 
		obj_progression.play_family_scene = -1;
		obj_progression.family_scene_played = true;
		cutscenecounter = 0;
	};
}


#endregion

#region Dad Cutscene
if(obj_progression.dad_pod and !obj_progression.dad_scene_played and !instance_exists(obj_textbox)){
	obj_player.interactable = false;
	create_textbox(
		["Dad..."], 
		[0],
		[[change_variable, obj_progression, "play_dad_scene", 1]],
		true,
		["Bryn"],
		[snd_voice_mc]
		)
	obj_progression.dad_pod	= false;
}
if(obj_progression.play_dad_scene == 1 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	fade_to_black = true;
	obj_progression.play_dad_scene = 2
}	
if(obj_progression.play_dad_scene == 3 and !instance_exists(obj_textbox)){
	obj_player.interactable = false;
	create_textbox(
	["Leaving the planet... I just don't know.", 
	"But what other choice is there? There's nothing left here anymore.\nToo many people, too much tension.",
	"I guess... and I suppose it'll be even worse when the girls are older.",
	"Exactly, so what do you say?",
	"Well - wait can the girls hear us?",
	"Nah, they're watching TV.",
	"Well this company seems a little.. cheap, y'know?\nI've never even heard of them.",
	"Hmmm, I think the government subsidizes some of it?",
	"Still, it's a bit worrying.",
	"It's really all we can afford.",
	"...",
	"...",
	"Okay, I guess I have to think long term.",
	"Very long term! 30 years frozen kinda long term! Ha ha!",
	"Ha!",
	"So we're doing it?",
	"...Sure. For the girls and their futures.\nI can't let anything get in the way of that."],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1],
	true,
	["Mum", "Dad", "Mum", "Dad", "Mum", "Dad", "Mum", "Dad","Mum", "Dad", "Mum", "Dad", "Mum", "Dad", "Mum", "Dad", "Mum"],
	[snd_voice_mum, snd_voice_dad, snd_voice_mum, snd_voice_dad,snd_voice_mum, snd_voice_dad,snd_voice_mum, snd_voice_dad,snd_voice_mum, snd_voice_dad,snd_voice_mum, snd_voice_dad,snd_voice_mum, snd_voice_dad,snd_voice_mum, snd_voice_dad, snd_voice_mum]
	)
	obj_progression.play_dad_scene = 4;	
	obj_player.moveable = false;
}
if(obj_progression.play_dad_scene == 4 and !instance_exists(obj_textbox)){
	fade_to_black = true;
}	
if(obj_progression.play_dad_scene == 5 and !instance_exists(obj_textbox)){
	create_textbox(["I was listening dad. I think I understand though."],
		[0],
		[-1],
		true,
		["Bryn"],
		[snd_voice_mc]
	)	
	obj_progression.play_dad_scene = 6;
	cutscenecounter = 0;
	song_resumed = false;
}	

if(obj_progression.play_dad_scene == 6 and !instance_exists(obj_textbox)){
	cutscenecounter++;
	if(cutscenecounter > 5 ){	
		obj_progression.dad_scene_played = true;
		obj_player.interactable = true 
		obj_progression.play_dad_scene = -1;
		cutscenecounter = 0;
	};
}


#endregion

#region sister cutscene
if(obj_progression.sister_pod and !obj_progression.sister_scene_played and !instance_exists(obj_textbox)){
	obj_player.interactable = false;
	create_textbox(
		["Talia..."], 
		[0],
		[[change_variable, obj_progression, "play_sister_scene", 1]],
		true,
		["Bryn"],
		[snd_voice_mc]
		)
	obj_progression.sister_pod	= false;
}
if(obj_progression.play_sister_scene == 1 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	fade_to_black = true;
	obj_progression.play_sister_scene = 2
}	
if(obj_progression.play_sister_scene == 3 and !instance_exists(obj_textbox)){
	obj_player.interactable = false;
	create_textbox(
	["Can't we play outside?", 
	"Not anymore. You know what Mum and Dad said about this apartment building.\nIt's dangerous.",
	"But it was dangerous when we lived in the old house too! But you could protect me because you're so big and strong and smart!",
	"That was like - little kid dangerous. Getting lost and stuff like that. Here it's *really* dangerous.\nWe'll just have to play inside now.",
	"...",
	"C'mon, this is fun right?",
	"I guess... but you gotta keep playing with me!",
	"I'm your big sister, I'll always play with you!"],
	[0, 0, 0, 0, 0, 0, 0, 0,],
	[-1, -1, -1, -1, -1, -1, -1, -1],
	true,
	["Talia", "Bryn", "Talia", "Bryn","Talia", "Bryn","Talia", "Bryn"],
	[snd_voice_sis, snd_voice_mc, snd_voice_sis, snd_voice_mc, snd_voice_sis, snd_voice_mc, snd_voice_sis, snd_voice_mc]
	)
	obj_progression.play_sister_scene = 4;	
	obj_player.moveable = false;
}
if(obj_progression.play_sister_scene == 4 and !instance_exists(obj_textbox)){
	fade_to_black = true;
}	
if(obj_progression.play_sister_scene == 5 and !instance_exists(obj_textbox)){
	create_textbox(["How could I forget Talia? I'm glad she's safe and sound in there."],
		[0],
		[-1],
		true,
		["Bryn"],
		[snd_voice_mc]
	)	
	obj_progression.play_sister_scene = 6;
	cutscenecounter = 0;
	song_resumed = false;
}	

if(obj_progression.play_sister_scene == 6 and !instance_exists(obj_textbox)){
	cutscenecounter++;
	if(cutscenecounter > 5 ){
		obj_progression.sister_scene_played = true;
		obj_player.interactable = true 
		obj_progression.play_sister_scene = -1;
		cutscenecounter = 0;
	};
}

#endregion

#region mum cutscene
if(obj_progression.mum_pod and !obj_progression.mum_scene_played and !instance_exists(obj_textbox) ){
	obj_player.interactable = false;
	create_textbox(
		["Mum..."], 
		[0],
		[[change_variable, obj_progression, "play_mum_scene", 1]],
		true,
		["Bryn"],
		[snd_voice_mc]
		)
	obj_progression.mum_pod	= false;
}		
if(obj_progression.play_mum_scene == 1 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	fade_to_black = true;
	obj_progression.play_mum_scene = 2
}	

if(move_camera){
	obj_camera.dofollow = false;
	obj_camera.x = 1360
	obj_camera.y = 110
	repeal_black = true;
	move_camera = false;
}	

if(obj_progression.play_mum_scene == 3 and !instance_exists(obj_textbox)){
	create_textbox(
	["Oh honey, were you crying again?", "...", 
	"I know moving is scary but think about how much better it will be.\nYou'll be able to play out with your sister again!\nAnd explore a whole new world!",
	"*Sob* But what about my friends at school?",
	"Well, that is a little sad dear but you'll make so many new friends.\nI think there will be lots of kids your age coming along.",
	"Oh... but it's scary being frozen!\n*Sob, sob*",
	"Well, I think we're all a little nervous about that but there's nothing to be scared about!\nIt's really safe and it's just like a big, long sleep.\nYou'll be a like a princess in a fairy tale!",
	"... If you're sure mum.",
	"I am darling!\nSo we're not going to cry anymore?",
	"... okay.",
	"Wanna cuddle?",
	"Uh-huh.",
	"Come here!"],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1],
	true,
	["Mum", "Bryn", "Mum", "Bryn","Mum", "Bryn","Mum", "Bryn","Mum", "Bryn","Mum", "Bryn", "Mum"],
	[snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc, snd_voice_mum],
	)
	obj_progression.play_mum_scene = 4;	
	obj_player.moveable = false;
}

if(obj_progression.play_mum_scene == 4 and !instance_exists(obj_textbox)){
	fade_to_black = true;
}	

if(obj_progression.play_mum_scene == 5 and !instance_exists(obj_textbox)){
	create_textbox(["Mum... You'd know what to do.\nI'd be so much less scared if you could just tell me."],
		[0],
		[-1],
		true,
		["Bryn"],
		[snd_voice_mc]
	)	
	obj_progression.play_mum_scene = 6;
	cutscenecounter = 0;
	song_resumed = false;
}	

if(obj_progression.play_mum_scene = 6 and !instance_exists(obj_textbox)){
	cutscenecounter++;
	if(cutscenecounter > 5){
		obj_progression.mum_scene_played = true;
		obj_player.interactable = true ;
		obj_progression.play_mum_scene = -1;
		cutscenecounter = 0;
	};
}	

#endregion

#region First cutscene
if(obj_progression.first_scene_done == true) exit;

if(scene_step < 4){ obj_player.moveable = false; }
if(scene_step = 0){ //first textbox
	obj_player.moveable = false
	obj_player.dont_draw = true
	create_textbox(
		["(Where am I? \nI'm scared.)",
		"(It's so cold! \nAm I going to freeze in here?)",
		"(Wait, I can push this wall! \nI have to get out!)",],
		[0, 0, 0],
		[-1, -1, [change_variable, obj_cyroroom, "scene_step", 2]],
		true,
		["???","???","???"],
		[snd_voice_mc, snd_voice_mc, snd_voice_mc]
	)
	scene_step = 1;
}	

//Heartbeat
if(scene_step < 3){
	if(heartcount < maxheartcount) { heartcount++ };
	if(heartcount >= maxheartcount){
		audio_play_sound(snd_heartbeat, 20, false);	
		heartcount = 0;
	}	
}

#region text movement	
if(scene_step == 2){
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	var s = text_speed;
	var len = string_length(text_str);
	var texth = str_h;
	textcounter++
	if(textcounter > maxtextcounter and textalpha == 0){
		if(text_x > 0 and text_x < w-len){
			textx_movement = choose(1, -1)*s;
		} else if (text_x <= 0){
			textx_movement = 1*s;
		} else if (text_x >= w-len){
			textx_movement = -1*s;	
		}	
		if(text_y > 0 and text_y < h-texth){
			texty_movement = choose(1, -1)*s;
		} else if (text_y <= 0){
			texty_movement = 1*s;
		} else if (text_y >= h-texth){
			texty_movement = -1*s;	
		}	
		textcounter = 0;
	}
	if(textalpha == 0){
		text_x += textx_movement;
		text_y += texty_movement;
	}
	if(text_x <= 0){
			text_x = 100
		} else if (text_x >= w-len){
			textalpha = 0;
			text_x = 200
		}	
		if (text_y <= 0){
			textalpha = 0;
			text_y = 100
		} else if (text_y >= h-texth){
			textalpha = 0;
			text_y = 200;
		}	
	
	if(textalpha >= 0.9){ //text visibility
		decrease_text_alpha = true;
		increase_text_alpha = false;
	} else if(textalpha <= 0){
		alphacounter++
		decrease_text_alpha = false;
	}	
	if(alphacounter == 50){
		increase_text_alpha = true;	
		alphacounter = 0;
	}
	if(increase_text_alpha == true){
		textalpha += 0.005;
	} else if(decrease_text_alpha = true){
		textalpha -= 0.01;
	}
	spacecount++;
	if(keyboard_check_pressed(vk_space) and spacecount >= 20){
		whitealpha -= 0.05;	
		maxheartcount -= 3.5;
		spacecount = 0;
	}	
	if(whitealpha <= 0){
		obj_player.dont_draw = false;
		obj_game.song = 1;
		audio_play_sound(snd_pod, 50, false);
		scene_step = 3;
	}	
}	
#endregion	

if(scene_step = 3){
	counter++
	if(counter == 20){
		scene_step = 4;	
	}	
}	

if(scene_step = 4){
	create_textbox(
		["*Pant*... \n*Pant*... \n(I'm okay!)\n(Phew... I thought I was going to die!)",
		"(But... I can't remember anything...)\n(Why can't I remember anything?)",
		"(Maybe I'll find something if I look around? I need to remember!)"],
		[0, 0, 0],
		[-1, -1, -1],
		true,
		["???","???","???"],
		[snd_voice_mc, snd_voice_mc, snd_voice_mc]
	)
	scene_step = 5;
}	

#endregion

