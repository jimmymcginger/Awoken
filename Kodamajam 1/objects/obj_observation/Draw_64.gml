if(fadeinfinal){
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	fadein_alpha -= 0.1;
	draw_set_alpha(fadein_alpha)
	draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
	if(fadein_alpha <= 0){
		fadeinfinal = false;	
	}	
}

if(obj_progression.final_step == 3 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
		room_goto(rm_core);
	} else {
		fade_black_alpha += 0.02;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
		draw_set_alpha(1);
	}
}	
if(obj_progression.final_step == 8 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
		room_goto(rm_cryo);
	} else {
		fade_black_alpha += 0.02;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
		draw_set_alpha(1);
	}
}	
if(obj_progression.final_step >= 14 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
		obj_progression.final_step = 15
		room_goto(rm_cryo);
	} else {
		fade_black_alpha += 0.02;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
		draw_set_alpha(1);
	}
}	

draw_set_alpha(1);