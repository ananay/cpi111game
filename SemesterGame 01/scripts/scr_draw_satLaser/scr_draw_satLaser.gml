///scr_draw_laser(x,y,direction)
var xx = argument[0] //x spawn value of a bullet

var yy = argument[1] //y spawn value of a bullet

var angle = argument[2] //magnitude between the laser spawn and

var objID = argument[3] // right now this is a string

var start_obj = asset_get_index("obj_start" + string(objID));
var end_obj = asset_get_index("obj_end" + string(objID));

var length  = 0


//TODO obj_block needs to be changed
while(!collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),obj_block,true,true)
		&& !collision_point(xx+lengthdir_x(length-100,angle),yy+lengthdir_y(length-100,angle),end_obj,true,true)
		&& !collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),obj_enemy01,true,true))
{
	length++;
}

if (collision_point(xx+lengthdir_x(length,angle),yy+lengthdir_y(length,angle),obj_enemy01,true,true)) {
//	draw_sprite_ext(spr_laser,0,xx,yy,0,1,angle,c_white,1);
	
	//start_obj.on = false;
	start_obj.on = false;
} else {
	var draw_obj = draw_sprite_ext(spr_laser,0,xx,yy,length,1,angle,c_white,1);
	//draw_obj.objID = objID;
}
//length is the scaling