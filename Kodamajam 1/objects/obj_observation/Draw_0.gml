if(obj_progression.final_step == 7 or obj_progression.final_step == 8){
	draw_sprite_part(spr_MCending, 0, animframe*32, 32, 32, 32, 400, 480);
	
	animcounter++
	if animcounter > 20{
		animframe++
		animcounter = 0;
		if(animframe > 2){
			animframe = 0;
		}	
	}	
}