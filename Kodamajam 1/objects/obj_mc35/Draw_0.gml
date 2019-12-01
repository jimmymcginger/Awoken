//Work out direction
switch(facing){
	case dir.left:	y_frame = 3; break;
	case dir.right: y_frame = 2; break;
	case dir.up:	y_frame = 1; break;
	case dir.down:	y_frame = 0; break;
	case -1:		x_frame = 0; break;
}	

//variables for BBox offset
var xx = x-x_offset;
var yy = y-y_offset;

//Bend down overwrite
if(bend_down){
	x_frame = 4;
	y_frame = 4;
}	
if(sitting){
	x_frame = 5;
	y_frame = 4;	
}	

if(openeyes){
	x_frame = 4;
	y_frame = 4;
}	

//Draw Sprite
draw_sprite_part(spr_mc35, 0, floor(x_frame)*16, y_frame*32, 16, 32, xx, yy);

//Increment frame for animation
var anim_length = 7, anim_speed = 15;
if (x_frame + (anim_speed/60) < anim_length -1)	{ x_frame += anim_speed/60;}
else											{ x_frame = 0; }