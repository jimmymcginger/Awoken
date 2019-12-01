if(menustep = 0){
	draw_sprite(spr_logo, 0, 0, 0);
	if(counter <120){
		counter++;
	}
	if (counter >= 100){
		blackalpha += 0.01;
	}			
}	
if(menustep == 0 and blackalpha == 1){
	menustep = 1;	
}
if(menustep = 1 and !instance_exists(obj_introbox)){
	menustep = 2;
	create_menubox(["Welcome to Awoken -A Vignette-\nUse WASD to move and spacebar to select options and interact with objects. The '0' key will make the game fullscreen and holding escape will exit the game.",
	"This game is a short narrative adventure, created by JimmyMcGinger (James McGrath) and November_152 (B. Kamenskiy) for Kodamajam 01. The theme of which was 'An Isolated World'.\nWe hope you enjoy what we have made and thank you for playing!"],
	[0,0 ,0], [-1, -1, -1], false, [-1, -1, -1], [-1, -1, -1]);
	
}	

if(menustep = 2 and !instance_exists(obj_introbox)){
	draw_sprite(spr_menu, 0, 0, 0);	
	if(blackalpha > 0){
		blackalpha-= 0.01;
	} else { menustep = 3 }
}	

if(menustep == 3){
	draw_sprite(spr_menu, 0, 0, 0);	
	if(frostalpha < 1){
		frostalpha += 0.01;	
	}	
}	