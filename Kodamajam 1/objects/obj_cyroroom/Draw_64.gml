//Final cutscene
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

if(obj_progression.final_step == 6 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
		room_goto(rm_storage);
	} else {
		fade_black_alpha += 0.02;
		draw_set_alpha(fade_black_alpha)
		draw_rectangle_color(0, 0, w, h, c, c, c, c, false);	
	}
}
if(obj_progression.final_step == 9 and !instance_exists(obj_textbox)){
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
	}
}
draw_set_alpha(1);

//Family Cutscenes
if(fade_to_black){
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	if(fade_black_alpha = 1){
		if(obj_progression.play_mum_scene == 2){
			move_camera = true;
			music_fade_out(snd_music_alone);
			memory_tune = true
		}
		if(obj_progression.play_sister_scene == 2){
			move_camera = true;
			music_fade_out(snd_music_alone);
			memory_tune = true
		}	
		if(obj_progression.play_dad_scene == 2){
			move_camera = true;
			music_fade_out(snd_music_alone);
			memory_tune = true
		}
		if(obj_progression.play_family_scene == 2){
			move_camera = true;
			music_fade_out(snd_music_alone);
			memory_tune = true
		}
		if(obj_progression.play_mum_scene == 4){
			move_camera = false;
			obj_camera.dofollow = true;
			repeal_black = true;
			obj_progression.play_mum_scene = 5;
		}	
		if(obj_progression.play_sister_scene == 4){
			move_camera = false;
			obj_camera.dofollow = true;
			repeal_black = true;
			obj_progression.play_sister_scene = 5;
		}	
		if(obj_progression.play_dad_scene == 4){
			move_camera = false;
			obj_camera.dofollow = true;
			repeal_black = true;
			obj_progression.play_dad_scene = 5;
		}	
		if(obj_progression.play_family_scene == 4){
			move_camera = false;
			obj_camera.dofollow = true;
			repeal_black = true;
			obj_progression.play_family_scene = 5;
		}
		if(mumstep = 10){
			obj_camera.dofollow = false;
			obj_camera.x = 4000;
			obj_camera.y = 400;
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
		if(obj_progression.play_mum_scene == 2){
				obj_progression.play_mum_scene += 1;
		}
		if(obj_progression.play_sister_scene == 2){
				obj_progression.play_sister_scene+= 1;
		}
		if(obj_progression.play_dad_scene == 2){
				obj_progression.play_dad_scene+= 1;
		}
		if(obj_progression.play_family_scene == 2){
				obj_progression.play_family_scene+= 1;
		}
		if(mumstep >= 10){
				mumstep = 11;
		}
		repeal_black = false;
	}
}
draw_set_alpha(1);

if(obj_progression.first_scene_done == true) exit;
#region Opening cutscene
//fade in
if(fade_in = true){
	var c = c_black
	var h = display_get_gui_height();
	var w = display_get_gui_width();
	draw_set_alpha(blackalpha);
	blackalpha -= 0.5;
	draw_rectangle_color(0, 0, w, h, c, c, c, c, false);
}
if(blackalpha >= 0){ fade_in = false; }	


//draw white
var c = c_white
var h = display_get_gui_height();
var w = display_get_gui_width();
draw_set_alpha(whitealpha);
draw_sprite_ext(spr_frost, 0, 0, 0, 1, 1, 0, c_white, whitealpha);
draw_set_alpha(1);
//text instructions
if(scene_step = 2){
	c = c_black;
	draw_set_font(fnt_main)
	str_h = string_height(text_str)
	draw_text_color(text_x, text_y, text_str, c, c, c, c, textalpha);
}	
#endregion