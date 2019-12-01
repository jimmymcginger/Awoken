if(obj_progression.final_step > 0){
	fadeinfinal = true;
}
if(obj_progression.final_step > 0){
	fadeinfinal = true;
}
if(obj_progression.final_step >= 9){
	audio_stop_sound(snd_finalbeat);
	audio_play_sound(snd_cpu, 1, true);
}

if(obj_progression.final_step > 0) exit;
obj_game.song = 0;
obj_game.music_playing = false;
obj_game.intro_played = false;
if(audio_is_playing(snd_music_alone)){
	audio_stop_sound(snd_music_alone);
}
audio_play_sound(snd_cpu, 1, true);