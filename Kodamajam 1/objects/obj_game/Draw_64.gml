//Draw black square on transition
if(do_transition){
	var c = c_black
	
	if(room != spawn_room){
		black_alpha += 0.05;
		if(black_alpha >= 1) { room_goto(spawn_room) } 
	} else {
		if(black_alpha != 0 and black_alpha > 0){
			black_alpha -= 0.05;
		} 
	}		
	//Fade to black
	draw_set_alpha(black_alpha);
	draw_rectangle_color(0, 0, global.game_width, global.game_height, c, c, c, c, false);
	draw_set_alpha(1);
}	