if(obj_progression.final_step >= 12){
	audio_stop_sound(snd_cpu);
}	

if(obj_progression.final_step > 0) exit;
if(!obj_progression.stay_unfreeze and !obj_progression.mum_unfreeze){
	obj_game.song = 1;	
}	
audio_stop_sound(snd_cpu);