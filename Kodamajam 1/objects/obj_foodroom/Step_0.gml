if(obj_progression.final_step ==4 and !instance_exists(obj_textbox)){
	obj_player.x = 560;	
	obj_player.y = 560;	
	create_textbox(
		["Hmm, that's a few months of just eating the pizza ones... and the cake ones. Will everyone be mad at me if they wake up and only the bad ones are left?",
		"Fine, I'll be good... I'll have a roast dinner one... blegh..."],
		[0, 0], [-1,-1], true, ["Bryn", "Bryn"], [snd_voice_mc, snd_voice_mc]
	)
	obj_progression.final_step = 5;
}	

if(obj_progression.final_step == 6 and !instance_exists(obj_textbox)){
	obj_player.x = 560;	
	obj_player.y = 560;	
	create_textbox(
		["Two and half years of eating this slop. I don't know if I can eat any more.",
		"No, I'm hungry. Stupid brown toothpaste! Stupid! Disgusting! AWFUL!"
		],
		[0, 0], [-1,-1], true, ["Bryn", "Bryn"], [snd_voice_mc, snd_voice_mc]
	)
	obj_progression.final_step = 7;
}	


if (obj_progression.food_room_done == true) exit;
#region music change
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
		audio_sound_set_track_position(snd_music_memories, pos/2);	
	}	
}	
	
if(memory_tune and audio_is_playing(snd_music_alone) and audio_sound_get_gain(snd_music_alone) >= 0){
	audio_pause_sound(snd_music_alone);	
}	
if(!song_resumed and memory_started){
	if(stage == 5){
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


if(paste_looked_at and foodlookedat){
	if(stage == 0 and !instance_exists(obj_textbox)){
	obj_player.interactable = false;
	create_textbox(
		[
			"All this paste. It's bringing something back..."
		],
		[0],
		[-1],
		true,
		["Bryn"],
		[snd_voice_mc]
	)
	stage = 1
	}
	if(stage == 1 and !instance_exists(obj_textbox)){
		obj_player.moveable = false;
		fade_to_black = true;
		stage = 2
	}	
	if(move_camera){
		obj_camera.dofollow = false;
		obj_camera.x = 1589
		obj_camera.y = 188
		repeal_black = true;
		move_camera = false;
}	
	if(stage == 3 and !instance_exists(obj_textbox)){
	create_textbox(
	["So we've all got one, right?",
	"Yup!",
	"Sure do!",
	"What flavours?",
	"Roast beef dinner.",
	"Pepperoni Pizza!",
	"I got lasagne, honey. What did you pick?",
	"... Chocolate fudge cake!",
	"Hey, you said no puddings!",
	"Not fair!",
	"Honey haha, you big meanie!",
	"Well you all need to see what the meals will be like!\nI'll have the chicken chow mein after this, okay?",
	"Are we all ready?\n3.. 2.. 1..",
	"Eww it really is like brown toothpaste!",
	"*Gulp* It's strange!",
	"...",
	"So what did we think?",
	"Well... ha... it was an experience. It's not unpleasant!",
	"Mine was kinda like Pizza. Like when you swallowed it, you got the taste alright.",
	"Bryn?",
	"Yeah... it was okay. Wasn't gross or anything. Just a bit weird.",
	"Well just you wait! In a few months, to us, we'll be growing our own food.\nIt's going to be such a great experience for us all!"],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1],
	true,
	["Dad", "Bryn", "Talia","Dad", "Bryn","Talia", "Mum","Dad",
	"Bryn", "Talia", "Mum", "Dad", "Dad", "Bryn", "Talia", "All", 
	"Dad", "Mum", "Talia", "Dad", "Bryn", "Dad"
	],
	[snd_voice_dad, snd_voice_mc, snd_voice_sis, snd_voice_dad, snd_voice_mc, snd_voice_sis,
	snd_voice_mum, snd_voice_dad, snd_voice_mc, snd_voice_sis, snd_voice_mum, snd_voice_dad, snd_voice_dad,
	snd_voice_mc, snd_voice_sis, snd_voice_mc, snd_voice_dad, snd_voice_mum, snd_voice_sis, snd_voice_dad,
	snd_voice_mc, snd_voice_dad],
	)
	stage = 4;	
	obj_player.moveable = false;
	}

	if(stage == 4 and !instance_exists(obj_textbox)){
		fade_to_black = true;
	}	

	if(stage == 5 and !instance_exists(obj_textbox)){
		create_textbox(["I guess this stuff is okay. But how long until it drives me crazy?\nWhat about Mum? I'm not sure she liked it anymore than I did.\nWhat should I do?"],
			[0],
			[-1],
			true,
			["Bryn"],
			[snd_voice_mc]
		)	
		stage = 6;
		cutscenecounter = 0;
		song_resumed = false;
	}	

	if(stage == 6 and !instance_exists(obj_textbox)){
		cutscenecounter++;
		if(cutscenecounter > 5){
			obj_progression.food_room_done = true;
			obj_player.interactable = true;
			stage = -1;
			cutscenecounter = 0;
		};
	}	
}	