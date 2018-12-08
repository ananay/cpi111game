//borrowed from the topDown script
if(obj_player.canShoot == true)
{			
	//need to finish calculating spawn_x/y
	var bullet_obj = instance_create_layer(spawn_x,spawn_y,"Instances",obj_player_bullet)
	
	bullet_obj.hspeed = obj_player.velocity_x * 3
	bullet_obj.vspeed = obj_player.velocity_y * 3
	bullet_obj.image_angle = image_angle
	
	audio_play_sound(sfx_gun, 5, false)
	
	obj_player.canShoot = false
	alarm[9] = room_speed / 5;
}
