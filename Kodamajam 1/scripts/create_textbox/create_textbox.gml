///@description Create Textbox
///@arg Text
///@arg Nextline
///@arg scripts
///@arg speech 
///@arg speakers
///@arg voice

var tbox = instance_create_layer(0, 0, "Text", obj_textbox);

with(tbox){
	text = argument[0];
	next_line = argument[1];
	scripts = argument[2];
	speech = argument[3];
	speakers = argument[4];
	pass_voices = argument[5];
	

var len = array_length_1d(text);
var i = 0; repeat(len){
	names[i] = speakers[i];
	voices[i] = pass_voices[i];
	i++;
}	
			
	event_perform(ev_other, ev_user2);
	
//Play sound on creation
if(!speech){
	audio_play_sound(snd_textbox, 20, false);
}
}	
return (tbox)