//Resize Grid
var dgrid = ds_depth_grid;
var inst_num = instance_number(obj_depthobject);
ds_grid_resize(dgrid, 2, inst_num);

//Add Instance Info to Grid
var yy = 0; with(obj_depthobject){
	dgrid[# 0, yy] = id;
	dgrid[# 1, yy] = y;
	yy++;
}	

//Sort grid in ascending order
ds_grid_sort(dgrid, 1, true);

//Loop through the gird and draw all the instances
var inst;
yy = 0; repeat(inst_num){
	//pull out an ID
	inst = dgrid[# 0, yy];
	//Get instance to draw itself
	with(inst){
		event_perform(ev_draw, 0);
	}	
	yy++
}	