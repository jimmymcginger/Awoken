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