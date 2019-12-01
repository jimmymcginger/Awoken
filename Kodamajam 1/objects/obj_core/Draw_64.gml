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

if(obj_progression.final_step == 12 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
		room_goto(rm_observation);
	} else {
		fade_black_alpha += 0.02;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
	}
}
if(obj_progression.final_step == 4 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
		room_goto(rm_storage)
	} else {
		fade_black_alpha += 0.02;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
	}
}


if(walkout and (obj_progression.mum_unfreeze or obj_progression.stay_unfreeze)){
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
	} else {
		fade_black_alpha += 0.04;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
	}
}	
draw_set_alpha(1);