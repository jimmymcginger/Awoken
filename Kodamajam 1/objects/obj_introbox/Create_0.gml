//Box size/location varibales
box_width = sprite_get_width(spr_textbox);
box_height = sprite_get_height(spr_textbox);

name_height = sprite_get_height(spr_namebox);

box_x = (global.game_width - box_width/2) * 0.5;
box_y = (global.game_height*0.98) - box_height/2;

namebox_x = box_x;
namebox_y = box_y - name_height/2;

//Text box or speech
speech = false;

//Typewriter
counter = 0;
voice = -1;
voices = -1;
pause = false;

//Main text
x_text_buffer = 8;
y_text_buffer = 3.5;
text_x = box_x + x_text_buffer;
text_y = box_y + y_text_buffer;
text[0] = "";
page = 0;
text_col = c_white;
text_height = 16;
text_max_width = box_width - x_text_buffer - 16;

//Name
name = ""
name_x = text_x
// if you want it centre: name_x = namebox_x + (namebox_x/3.5); but remember to centre align
name_y = namebox_y+(name_height/8-0.5);

//choice variables
choice = 0;
choice_col = c_yellow;
pass_voices = -1;
choice_dialogue = false;