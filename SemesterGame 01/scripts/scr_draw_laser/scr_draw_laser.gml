///scr_draw_laser(x,y,direction)
var xx = argument[0] //x spawn value of a bullet

var yy = argument[1] //y spawn value of a bullet

var angle = argument[2] //magnitude between the laser spawn and 

var length  = 100

//show_debug_message("SHOW LASER PLS");

//TODO obj_block needs to be changed
while(!collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),obj_block,true,true))
{
	length++
}

//draw_sprite_ext(spr_laser,0,xx,yy,length,1,angle,c_white,1)
//length is the scaling
if (collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),obj_enemy01,true,true)) {
//	draw_sprite_ext(spr_laser,0,xx,yy,0,1,angle,c_white,1);
	
	//start_obj.on = false;
	start_obj.on = true;
} else {
	var draw_obj = draw_sprite_ext(spr_laser,0,xx,yy,length,1,angle,c_white,1);
	//draw_obj.objID = objID;
}