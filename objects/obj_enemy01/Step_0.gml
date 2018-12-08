if(enemy01_health <= 0)
{
	//play exploding sound
	instance_destroy()
	instance_create_layer(x,y,"Instances",obj_explosion_enemy01)
	instance_create_layer(x,y,"Instances",obj_wpns01_drop)
	instance_create_layer(x,y+6,"Instances",obj_enemy01_carcass)
}



//Enemy Movemet
if(obj_start.on)
{
	mp_potential_step(satX,satY,eVelocity,false)
	enemyAngle = point_direction(x, y, satX,satY);
}
else if(obj_start1.on)
{
	mp_potential_step(satX2,satY2,eVelocity, false)
	enemyAngle = point_direction(x, y, satX2,satY2);
}
else if(obj_start2.on)
{
	mp_potential_step(satX3,satY3,eVelocity,false)
	enemyAngle = point_direction(x, y, satX3,satY3);
}
else if(obj_start3.on)
{
	mp_potential_step(satX4,satY4,eVelocity,false)
	enemyAngle = point_direction(x, y, satX4,satY4);
}
else if(!obj_start.on && !obj_start1.on && !obj_start2.on && !obj_start3.on && playerIsAlive)
{
	if(distance_to_object(obj_player) >= 98 && distance_to_object(obj_player) <= 880 )
	{
		mp_potential_step(obj_player.x,obj_player.y, eVelocity, false)
	}
	else
	{
		
	}
	enemyAngle = point_direction(x, y, obj_player.x,obj_player.y);
}




if((enemyAngle >= 0.00 && enemyAngle <= 45.00) || (enemyAngle <= 0.00 && enemyAngle >= -45.00))
{	
	//looking right
	image_index = 1
}
else if(enemyAngle > 45.00 && enemyAngle < 135.00)
{	
	//looking up
	image_index = 2
}
else if((enemyAngle >= 135.00 && enemyAngle < 180) || (enemyAngle > -180.00 && enemyAngle < -135.00))
{
	//looking left
	image_index = 3
}
else 
{
	image_index = 0;
}



if(canShoot && playerIsAlive && distance_to_object(obj_player <=880))
{
	
	var bulletx = x;
	var bullety = y;
	if(image_index == 1) //right
	{
		bulletx = x + 38;
		bullety = y - 2;
	}
	else if(image_index == 2) //up
	{
		bulletx = x + 10;
		bullety = y - 30;
	}
	else if(image_index == 3) //left
	{
		bulletx = x -39;
		bullety = y -2;
	}
	//else if(image_index == 0) //down
	else
	{
		bulletx = x - 18;
		bullety = y + 16;
	}

	var bullet = instance_create_layer(bulletx, bullety, "Instances", obj_enemy01_bullet);
	with (bullet)
	{
	   direction = point_direction(x, y, obj_player.x, obj_player.y); // Give the bullet a direction
	   //enemyAngle = direction; //enemy direction in degrees
	   speed = 24;
	}
	canShoot = false
	alarm[9] = room_speed ; // Reset this alarm so the enemy will shoot after 5 more seconds. This will loop.
}

