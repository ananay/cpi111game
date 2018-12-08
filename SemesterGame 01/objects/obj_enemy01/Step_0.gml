if(enemy01_health <= 0)
{
	instance_destroy()
	instance_create_layer(x,y,"Instances",obj_explosion_enemy01)
	instance_create_layer(x,y,"Instances",obj_wpns01_drop)
	instance_create_layer(x,y+6,"Instances",obj_enemy01_carcass)
}

var c_x_vel
var c_y_vel
if(obj_start.on)
{
	if(satX < x)
	{
		c_x_vel = -xVelocity
	}
	else 
	{
		c_x_vel = xVelocity
	}

	if(satY < y)
	{
		c_y_vel = -yVelocity
	}
	else 
	{
		c_y_vel = yVelocity
	}
}
else if(obj_start1.on)
{
	if(satX2 < x)
	{
		c_x_vel = -xVelocity
	}
	else 
	{
		c_x_vel = xVelocity
	}

	if(satY2 < y)
	{
		c_y_vel = -yVelocity
	}
	else 
	{
		c_y_vel = yVelocity
	}
}
else if(!obj_start.on && !obj_start1.on)
{
	if(obj_player.x < x)
	{
		c_x_vel = -xVelocity
	}
	else 
	{
		c_x_vel = xVelocity
	}

	if(obj_player.y < y)
	{
		c_y_vel = -yVelocity
	}
	else 
	{
		c_y_vel = yVelocity
	}
}

//want to check if it's colliding or not
x+=c_x_vel
y+=c_y_vel

/*
bullet_origin_x = x
bullet_origin_y = y

length = point_distance(x,y,bullet_origin_x,bullet_origin_y)
g_angle = point_direction(x,y,bullet_origin_x,bullet_origin_y) //gun angle

spawn_x = x + lengthdir_x(length, g_angle+image_angle);
spawn_y = y + lengthdir_y(length, g_angle+image_angle);

gun_angle = point_direction(x,y,obj_player.x,obj_player.y)

if(canShoot == true)
{			
	//need to finish calculating spawn_x/y
	var bullet_obj = instance_create_layer(spawn_x,spawn_y,"Instances",obj_enemy01_bullet)
	
	bullet_obj.hspeed = xVelocity * 3
	bullet_obj.vspeed = yVelocity * 3
	bullet_obj.image_angle = image_angle
	
	canShoot = false
	alarm[9] = room_speed / 2;
}
*/
if(canShoot)
{
var bullet = instance_create_layer(x, y, "Instances", obj_enemy01_bullet); // Create a bullet and store its ID in the variable "bullet". We need its ID b/c we want to do a few more things with it.
with (bullet)
{
   direction = point_direction(x, y, obj_player.x, obj_player.y); // Give the bullet a direction
   speed = 10;
}
canShoot = false
alarm[9] = room_speed; // Reset this alarm so the enemy will shoot after 5 more seconds. This will loop.
}