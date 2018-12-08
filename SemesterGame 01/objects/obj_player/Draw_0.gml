draw_self();
if (position_meeting(obj_player.x, obj_player.y, obj_start)) {	
	scr_draw_laser(obj_player.x,obj_player.y,gun_angle)
}


if (position_meeting(obj_player.x, obj_player.y, obj_start1)) {	
	scr_draw_laser(obj_player.x,obj_player.y,gun_angle)
}

//if (position_meeting(obj_player.x, obj_player.y, obj_end)) {	
//	scr_draw_laser(obj_player.x,obj_player.y,gun_angle)
//}


//if (position_meeting(obj_player.x, obj_player.y, obj_end1)) {	
//	scr_draw_laser(obj_player.x,obj_player.y,gun_angle)
//}