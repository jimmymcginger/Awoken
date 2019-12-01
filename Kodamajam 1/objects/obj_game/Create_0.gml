//Go to next room
if (room == rm0) { room_goto_next(); }

//Set GUI to same size as game window
global.game_width = 480;
global.game_height = 270;

display_set_gui_size(global.game_width, global.game_height);

//TRANSITIONS
//Transition Directions
enum dir {
	right = 0,
	up = 90,
	left = 180,
	down = 270,
}

//Pre transition variables
do_transition = false;
black_alpha = 0;
spawn_room = -1;

//Room change variables
direction_facing = -1;
player_X = -1;
player_Y = -1;
door2 = -1;
x_change = -1;
y_change = -1;
walk2 = -1;
start_move = -1;

intro_played = false;
song = -1;
music_playing = false;
alone_length = audio_sound_length(snd_music_alone);

//Floor
current_floor = 6;