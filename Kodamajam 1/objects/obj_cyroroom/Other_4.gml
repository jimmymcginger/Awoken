if(obj_progression.final_step > 0){
	audio_sound_gain(snd_mem_menu, 1, 0);
	fadeinfinal = true;	
}

if(obj_progression.mum_unfreeze){
	audio_sound_gain(snd_mem_menu, 1, 0);
	fadeinfinal = true;	
}

if(scene_step >= 3){
	obj_game.song = 1;
}	

if(scene_step = 0 and !obj_progression.family_scene_played){
	fade_in = true;	
}	

endofgame = false;