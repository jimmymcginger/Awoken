if(obj_progression.stay_unfreeze){
	fadeinfinal = true;	
}
if(obj_progression.final_step == 12){
	obj_stars2.visible = true;
}	

if(obj_progression.final_step >= 12){
	audio_play_sound(snd_music_memories, 1, true);
}


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