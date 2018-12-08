/*
if(playerCanShoot && playerWpn02 == false)
{
	var bullet_obj = instance_create_layer(spawn_x,spawn_y,"Instances",obj_player_bullet)
	
	bullet_obj.hspeed = obj_player.velocity_x * 3
	bullet_obj.vspeed = obj_player.velocity_y * 3
	bullet_obj.image_angle = image_angle //
	
	audio_play_sound(sfx_gun, 3, false) //change this
	
	playerCanShoot = false
	alarm[9] = room_speed / 5 //controls the weapon rate of fire
}
*/

if(playerCanShoot && playerWpn02 == false)
{
	var bullet = instance_create_layer(obj_player.bulletX, obj_player.bulletY, "Instances", obj_player_bullet); // Create a bullet and store its ID in the variable "bullet". We need its ID b/c we want to do a few more things with it.
	with (bullet)
	{
	   direction = point_direction(obj_player.bulletX, obj_player.bulletY, mouse_x, mouse_y); // Give the bullet a direction
	   speed = 28;
	}
	audio_play_sound(sfx_gun,10,false)
	playerCanShoot = false
	alarm[9] = room_speed / 5;
}