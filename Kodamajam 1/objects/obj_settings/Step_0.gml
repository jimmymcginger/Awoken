//Toggle Full Screen
if keyboard_check_pressed(ord("0")){
	window_set_fullscreen(!window_get_fullscreen());
}
if keyboard_check(vk_escape){
	escape++;
	if escape > maxescape{
		game_end();
	}	
}	else { escape = 0 }