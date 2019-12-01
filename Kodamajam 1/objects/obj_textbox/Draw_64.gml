//Draw Textbox
draw_sprite_ext(spr_textbox, 0, box_x, box_y, 0.5, 0.5, 0, c_white, 1);

//Draw Namebox
if(speech){ draw_sprite_ext(spr_namebox, 0, namebox_x, namebox_y, 0.5, 0.5, 0, c_white, 1); }

//TEXT
draw_set_font(fnt_main);
var c = text_col;

//Write Name
if(speech){ draw_text_ext_transformed_color(name_x, name_y, name, 0, 100, 0.5, 0.5, 0, c, c, c, c, 1);}

//Write Text
if(!choice_dialogue){
	if(!speech) { counter = str_len }
	if(!pause and counter < str_len){
		counter++;
		if(speech){
			if(counter mod 4 == 0){
				audio_play_sound(voice, 10, false);
			}	
		}	
		if(string_char_at(text_wrapped, counter+1) != ")"){
			switch(string_char_at(text_wrapped, counter)){
				case ",": pause = true; alarm[1] = 7; break;
				case ".":
				case "?":
				case "!": pause = true; alarm[1] = 13; break;
		
			}	
		}	
	}
	var substr = string_copy(text_wrapped, 1, counter);

	c = text_col
	draw_text_ext_transformed_color(text_x, text_y, substr, text_height, 5000000, 0.5, 0.5, 0, c, c, c, c, 1);
	
} else {
	//Draw dialogue choices
	c = text_col
	var i = 0, y_add = 0; repeat(text_array_len){
		if(choice == i){ c = choice_col; draw_text_color(box_x-0.5, text_y-4+y_add, ">", c, c, c, c, 1); } 
		else c = text_col;
		
		draw_text_ext_transformed_color(text_x, text_y+y_add, text_array[i], text_height, text_max_width, 0.5, 0.5, 0, c, c, c, c, 1);
		y_add += string_height_ext(text_array[i], text_height, text_max_width)-1; //might need to change this to make it line up
		i++
	}	
}	
if(!choice_dialogue and speech){
	if(counter == str_len){
		draw_text(358, 248, ">");	
	}	
}