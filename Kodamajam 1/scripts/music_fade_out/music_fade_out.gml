///@description Music_fade_out
///@arg song_to_fade_from

//fade out current song
if(audio_is_playing(argument[0])){ 
	audio_sound_gain(argument[0], 0, 540);	
}	
