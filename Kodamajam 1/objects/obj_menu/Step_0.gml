var pos = audio_sound_get_track_position(snd_mem_menu);
var len = audio_sound_length(snd_mem_menu);
if(!memories_intro_played and pos > len/2) { memories_intro_played = true; }
if(memories_intro_played and pos < len/2) { 
	audio_sound_set_track_position(snd_mem_menu, pos/2);	
}	

if(menustep >=3){
	audio_sound_gain(snd_mem_menu, 0, 3000);
	if(audio_sound_get_gain(snd_mem_menu) < 0.02){
		audio_stop_sound(snd_mem_menu);
		room_goto(rm_cryo);	
	}	
}		