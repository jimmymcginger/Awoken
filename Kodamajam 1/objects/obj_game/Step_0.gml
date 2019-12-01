//Music
var mp1 = audio_sound_get_track_position(snd_music_alone)
if(!music_playing and song == 1 and intro_played == false){ //first play (might work for coming out of core room)
	audio_play_sound(snd_music_alone, 1, true);
	music_playing = true
	alarm[0] = alone_length;
} else if(song = 1 and intro_played and mp1 < alone_length/2){
	audio_sound_set_track_position(snd_music_alone, alone_length/2);
} 

if(!start_move) exit;
//Move player on room start
if (x_change){
	if (obj_player.x > walk2+2 or obj_player.x < walk2-2){
		if(obj_player.x > walk2){
			obj_player.moveX = -1*obj_player.spd;
		} else if (obj_player.x < walk2){
			obj_player.moveX = 1*obj_player.spd;
		}	
	} else {
		obj_player.moveX = 0;
		do_transition = false;
		obj_player.transtioning = false;
		obj_player.moveable = true;
		start_move = false;
		spawn_room = -1;
	}	
} else if (y_change){
	if (obj_player.y > walk2+2 or obj_player.y < walk2-2){
		if(obj_player.y > walk2){
			obj_player.moveY = -1*obj_player.spd;	 
		} else if (obj_player.y < walk2){
			obj_player.moveY = 1*obj_player.spd;	
		}  	
	} else {
		obj_player.moveY = 0;	
		do_transition = false;
		obj_player.transtioning = false;
		obj_player.moveable = true;
		start_move = false;
		spawn_room = -1;
	}	
} 