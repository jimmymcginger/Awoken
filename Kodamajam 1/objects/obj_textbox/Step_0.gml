//increment page or delete textbox
if(keyboard_check_pressed(vk_space)){
	if(!choice_dialogue and counter < str_len){ counter = str_len; }
	else if(page < array_length_1d(text) -1){
		
		//Do scripts
		event_perform(ev_other, ev_user1);
		
		var line = next_line[page];
		if(choice_dialogue) line = line[choice];
		
		if(line == 0) page++
		else if(line == -1) {
			instance_destroy();
			obj_player.moveable = true;
			if(!speech){
				audio_play_sound(snd_textbox_close, 20, false);	
			}
			exit;
		}
		else page = line;
		if(!speech){
			audio_play_sound(snd_textbox, 20, false);
		}	
		event_perform(ev_other, ev_user2);
	} else { 
		event_perform(ev_other, ev_user1);
		obj_player.moveable = true;
		if(!speech){
				audio_play_sound(snd_textbox_close, 20, false);	
			}
		instance_destroy();
	}
}	

if(choice_dialogue){
	choice += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
	
	if(choice > text_array_len-1) choice = 0;
	if(choice < 0) choice = text_array_len-1;
}	