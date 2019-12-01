if(obj_progression.final_step == 5 or obj_progression.final_step == 6){
	draw_sprite_part(spr_MCending, 0, 0, 64, 32, 32, 319,352);	
}
if(obj_progression.final_step == 8 or obj_progression.final_step == 9){
	draw_sprite_part(spr_MCending, 0, 128, 32, 32, 32, 319,352);	
}

if(obj_progression.final_step >= 15){
	draw_sprite_part(spr_mc35, 0, 0, 64, 16, 32, 319,352);	
}

draw_sprite_part(spr_background, 1, mumpoddrawx, mumpoddrawy, mumpodw, mumpodh, mumpodx, mumpody)

if(obj_progression.family_scene_played == true) { exit; }
//cutscenes
if(obj_progression.play_mum_scene >=2){
	draw_sprite_part(spr_mum_plain, 1, 16, 0, 16, 32, 1357, 111);
	draw_sprite_part(spr_bryn, 1, 16, 32, 16, 32, 1355, 140);
}	
if(obj_progression.play_sister_scene >=2){
	draw_sprite_part(spr_sister, 1, 16, 0, 16, 32, 1357, 111);
	draw_sprite_part(spr_bryn, 1, 16, 32, 16, 32, 1357, 140);
}	
if(obj_progression.play_dad_scene >=2){
	draw_sprite_part(spr_mum_plain, 1, 16, 144, 16, 32, 1357, 90);
	draw_sprite_part(spr_dad, 1, 20, 68, 20, 34, 1380, 90);
	draw_sprite_part(spr_sister, 1, 16, 0, 16, 32, 1357, 182);
	draw_sprite_part(spr_bryn, 1, 16, 0, 16, 32, 1378, 182);
}	
if(obj_progression.play_family_scene >=2){
	draw_sprite_part(spr_mum_suit, 1, 0, 64, 16, 32, 1366, 120);
	draw_sprite_part(spr_mc, 1, 0, 64, 16, 32, 1348, 124);
}	