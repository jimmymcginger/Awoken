//Draw button
if (roomstep >= 8) exit;
if(roomstep >= 3){
	draw_sprite(spr_button, 1, 164, button_y);
	var str = string(obj_game.current_floor);
	sprx = obj_elevatorpanel.x + 63;
	spry = obj_elevatorpanel.y + 16;
	draw_set_font(fnt_main)
	c = c_dkgray;
	draw_text_color(sprx, spry, str + "F", c, c, c, c, 1);
}	