if(obj_progression.final_step >=4){
	draw_sprite_part(spr_background, 0, 96, 256, 16, 16, 527, 480);	
	draw_sprite_part(spr_background, 0, 96, 272, 16, 15, 527, 464);	
	draw_sprite_part(spr_background, 0, 144, 272, 16, 16, 527, 276);
	draw_sprite_part(spr_background, 0, 128, 272, 16, 16, 544, 592);
}	
if(obj_progression.final_step >=6){
	draw_sprite_part(spr_background, 0, 144, 272, 16, 15, 526, 608);	
	draw_sprite_part(spr_background, 0, 144, 256, 16, 16, 511, 511);
	draw_sprite_part(spr_background, 0, 95, 288, 16, 16, 592, 495);
}

if(obj_progression.food_room_done == true) { exit; }
//cutscenes
if(stage >=2){
	draw_sprite_part(spr_mum_plain, 1, 0, 0, 16, 32, 1575, 131);
	draw_sprite_part(spr_dad, 1, 0, 0, 19, 32, 1552, 131);
	draw_sprite_part(spr_sister, 1, 0, 56, 16, 32, 1558, 160);
	draw_sprite_part(spr_bryn, 1, 0, 32, 16, 32, 1575, 160);
}	