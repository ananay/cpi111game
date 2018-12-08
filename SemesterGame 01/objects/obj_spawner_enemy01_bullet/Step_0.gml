//to update the origin of bullets
/*
bullet_origin_x = obj_enemy01.x
bullet_origin_y = obj_enemy01.y

length = point_distance(obj_enemy01.x,obj_enemy01.y,obj_player.x,obj_player.y)
g_angle = point_direction(obj_enemy01.x,obj_enemy01.y,obj_player.x,obj_player.y) //gun angle

spawn_x = x + lengthdir_x(length, g_angle+image_angle);
spawn_y = y + lengthdir_y(length, g_angle+image_angle);

gun_angle = point_direction(obj_enemy01.x,obj_enemy01.y,obj_player.x,obj_player.y)

if(obj_enemy01.canShoot == true)
{			
	//need to finish calculating spawn_x/y
	var bullet_obj = instance_create_layer(spawn_x,spawn_y,"Instances",obj_enemy01_bullet)
	
	//bullet_obj.hspeed = obj_enemy01.velocity_x * 3
	bullet_obj.hspeed = 5
	//bullet_obj.vspeed = obj_enemy01.velocity_y * 3
	bullet_obj.vspeed = 5
	bullet_obj.image_angle = image_angle
	
	obj_enemy01.canShoot = false
	alarm[9] = room_speed / 2;
}
*/