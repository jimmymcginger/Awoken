//Opening
scene_step = 0;
fade_in = false;
blackalpha = 1;
whitealpha = 0.9;
textalpha = 0.9;
decrease_text_alpha = false;	
increase_text_alpha = false;
alphacounter = 0;
text_str = "Press SPACEBAR to push your way out!";
str_h = 0;
text_x = 100;
text_y = 200;
textx_movement = 0;
texty_movement = 0;
textcounter = 31;
maxtextcounter = 30;
text_speed = 2;

maxheartcount = 80
heartcount = maxheartcount

spacecount = 0;
counter = 0;

//Pods
instance_create_layer(281, 432, "Instances", obj_podclosed);
draw_podx = 271;
draw_pody = 431;
sister_pod2 = -1;
mum_pod2 = -1;
mumpoddrawx = 57;
mumpoddrawy = 133;
mumpodw = 22;
mumpodh = 79;
mumpodx = 281;
mumpody = 341;

//Door
door_open = false

//cutscenes
fade_to_black = false;
fade_black_alpha = 0;
repeal_black = 0;
move_camera = false;
cutscenecounter = 0;
memory_tune = false;
memory_started = false;
song_resumed = false;
memories_intro_played = false;

if(obj_progression.family_scene_played){
	obj_progression.first_scene_done = true;
}

//final cutscene
spot1x = 352;
spot1y = 195;
spot2x = 352;
spot2y = 400;
spot3x = 350;
spot3y = 400;
mumstep = 1;
endofgame = false;
fadein_alpha= 1;
fadeinfinal = false;