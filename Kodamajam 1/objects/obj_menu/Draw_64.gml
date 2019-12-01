if(menustep = 0 or menustep = 2 ){
	var c = c_black;
	draw_set_alpha(blackalpha);
	draw_rectangle_color(0, 0, global.game_width, global.game_height, c, c, c, c, false);
	draw_set_alpha(1);
}

if(menustep >= 3){
	draw_set_alpha(frostalpha);
	draw_sprite(spr_frost, 0, 0, 0)
	draw_set_alpha(1);
}