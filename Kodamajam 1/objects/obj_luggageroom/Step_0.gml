#region Spawn new locker
if(obj_progression.locker_scene_played){
	var inst = instance_create_layer(162, 183, "Interactables", obj_interact);
	with(inst){
		inst.next_line = [0]
		inst.names = [-1];
		inst.voice = [-1];
		inst.text = [
				"Your family luggage.\nThe necessities are all there and a ton of e-books.\nBut is there enough to last you 25 years?"
		];
		inst.image_xscale = 3;
	}
}
#endregion

#region music
if(obj_progression.locker_scene_played == true) exit;
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
	["I've run out of space for more songs and games Mum, can I put some on the big Tab?",
	"Sorry Honey but it could be months, maybe years, before they get a working satellite out there and we can access the cloud again.\nIf we don't bring all the books we can you'll fall so behind!",
	"But...",
	"Don't worry you're going to be so busy you won't even want those things!\nA whole planet to explore, can you imagine?\nWe're going to be pinoneers, so we need to make sure everyone is as smart as can be!",
	"...",
	"Don't sulk now. Your happiness is the most important thing to me in the whole universe, and that includes your future happiness!\nThat means I can't let anything jeopardize your future, understand?",
	"I get it but...",
	"No buts! Now why don't you get the most out the cloud while you can and get ready for some new adventures!"],
	[0, 0, 0, 0, 0, 0, 0, 0],
	[-1, -1, -1, -1, -1, -1, -1, -1],
	true,
	["Bryn", "Mum", "Bryn","Mum", "Bryn","Mum", "Bryn","Mum"],
	[snd_voice_mc, snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc, snd_voice_mum, snd_voice_mc, snd_voice_mum],
	)
	stage = 4;	
	obj_player.moveable = false;
}

if(stage == 4 and !instance_exists(obj_textbox)){
	fade_to_black = true;
}	

if(stage == 5 and !instance_exists(obj_textbox)){
	create_textbox(["'That means I can't let anything jeopardize your future'. She wouldn't let me stay out here, not even with her.\nI'm so scared of being alone for so long but can I do that to mum?",
		"And what about Talia? She'll have 25 less years with Mum!\nCan Dad take care of us both on a new planet with Mum being so old?\nI don't know what to do!"],
		[0, 0],
		[-1, -1],
		true,
		["Bryn", "Bryn"],
		[snd_voice_mc, snd_voice_mc]
	)	
	stage = 6;
	cutscenecounter = 0;
	song_resumed = false;
}	

if(stage == 6 and !instance_exists(obj_textbox)){
	cutscenecounter++;
	if(cutscenecounter > 5){
		obj_progression.locker_scene_played = true;
		obj_player.interactable = true ;
		stage = -1;
		cutscenecounter = 0;
	};
}	