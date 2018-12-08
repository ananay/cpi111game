///scr_draw_laser(x,y,direction)
var xx = argument[0] //x spawn value of a bullet

var yy = argument[1] //y spawn value of a bullet

var angle = argument[2]//magnitude between the laser spawn and 

var color = argument[3]

var length  = 100

//TODO obj_block needs to be changed
while(!collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),obj_block,true,true) && !collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),obj_block1,true,true))
{
	length++
}

//length is the scaling
if (collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),obj_enemy01,true,true)) {
	//start_obj.on = false;
	//start_obj.on = true;
} 

else 
{
	if(color = 0)
	{
		var draw_obj = draw_sprite_ext(spr_laser,0,xx,yy,length,1,angle,c_white,1);
	}
	if(color = 1)
	{
		var draw_obj = draw_sprite_ext(spr_laser_grn,0,xx,yy,length,1,angle,c_white,1);
	}
	if (color = 2)
	{
		var draw_obj = draw_sprite_ext(spr_laser_red,0,xx,yy,length,1,angle,c_white,1);
	}
	if (color = 3)
	{
		var draw_obj = draw_sprite_ext(spr_laser_ylw,0,xx,yy,length,1,angle,c_white,1);
	}
	//draw_obj.objID = objID;
}