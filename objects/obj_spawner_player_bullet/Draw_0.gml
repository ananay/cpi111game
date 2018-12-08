//TODO have the satellite starts belong to a parent object
//draws the laser
if(playerWpn02)
{
	if (position_meeting(obj_player.x, obj_player.y, obj_start)) 
	{	
		scr_draw_laser(obj_player.bulletX,obj_player.bulletY,gun_angle,0)
	}
	if (position_meeting(obj_player.x, obj_player.y, obj_start1)) 
	{	
		scr_draw_laser(obj_player.bulletX,obj_player.bulletY,gun_angle,1)
	}
	if (position_meeting(obj_player.x, obj_player.y, obj_start2)) 
	{	
		scr_draw_laser(obj_player.bulletX,obj_player.bulletY,gun_angle,2)
	}
	if (position_meeting(obj_player.x, obj_player.y, obj_start3)) 
	{	
		scr_draw_laser(obj_player.bulletX,obj_player.bulletY,gun_angle,3)
	}
}

