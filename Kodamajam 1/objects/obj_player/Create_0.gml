//Movement
moveable = true;
spd = 2;
moveX = 0;
moveY = 0;

//Walking Animation
x_frame = 0;
y_frame = 2;

//Transitions
transtioning = false;
facing = 0;


//Bbox offset
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

//Textbox creation
active_textbox = noone;

radius = 12;
minus_x = 0;
minus_y = 0;
plus_x = 0;
plus_y = 0;

//cutscene
dont_draw = false;
interactable = true;