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

draw_set_alpha(1);

if(obj_progression.final_step == 5 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
		room_goto(rm_cryo)
	} else {
		fade_black_alpha += 0.02;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
	}
}

if(obj_progression.final_step == 7 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
		room_goto(rm_observation)
	} else {
		fade_black_alpha += 0.02;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
	}
}

if(fade_to_black){
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){	
		if(stage == 2){
			move_camera = true;
			music_fade_out(snd_music_alone);
			memory_tune = true
		}
		if(stage == 4){
			move_camera = false;
			obj_camera.dofollow = true;
			stage = 5;
			repeal_black = true;	
		}
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
	} else {
		fade_black_alpha += 0.1;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
	}
}	

if(repeal_black){
	if(fade_black_alpha >0){
		fade_to_black = false;
		var c = c_black
		var h = display_get_gui_height();
		var w = display_get_gui_width();
		fade_black_alpha -= 0.1;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
	} else{
		if(stage == 2){
			stage = 3;
		}
		if(stage == 5){
			stage = 6;	
		}	
		repeal_black = false;
	}
}
draw_set_alpha(1);