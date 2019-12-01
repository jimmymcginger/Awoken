draw_self();
if(obj_progression.final_step >=3 and obj_progression.final_step <=9){
	animcounter++
	if animcounter > 20{
		animframe++
		animcounter = 0;
		if(animframe > 3){
			animframe = 0;
		}	
	}	
	draw_sprite_part(spr_MCending, 0, animframe*32, 0, 32, 32, 1055, 112);
}

if(obj_progression.final_step >=9){
	draw_sprite_part(spr_MCending, 0, hairanim*32, 64, 32, 32, 1327, 95);
}