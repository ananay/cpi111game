//first step - calculate the vector between the player and the mouse
var vx = mouse_x - x; //x compenent of our vector
var vy = mouse_y - y; //y component of our vector

var magnitude = sqrt((vx*vx) + (vy*vy)) //a^2 + b^2 = c^2

if(magnitude > 0)
{
//calculate the unit vector
	unit_x = vx / magnitude
	unit_y = vy / magnitude
}

velocity_x = unit_x * movement_speed
velocity_y = unit_y * movement_speed



gun_angle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)


//calculate the angle ... this
//this rotates the player image
var radians = arctan2(-unit_y, unit_x)
degreesPlayerToMouse = radtodeg(radians)

if((degreesPlayerToMouse >= 0.00 && degreesPlayerToMouse <= 45.00) || (degreesPlayerToMouse <= 0.00 && degreesPlayerToMouse >= -45.00))
{	
	//looking right
	if(playerWpn02) //if the refractor gun is selected
		image_index = 9
	else image_index = 5
	bulletX = x + 52
	bulletY = y - 5
}
else if(degreesPlayerToMouse > 45.00 && degreesPlayerToMouse < 135.00)
{	
	//looking up
	if(playerWpn02)
		image_index = 10
	else image_index = 6
	bulletX = x + 22
	bulletY = y - 32
}
else if((degreesPlayerToMouse >= 135.00 && degreesPlayerToMouse < 180) || (degreesPlayerToMouse > -180.00 && degreesPlayerToMouse < -135.00))
{
	//looking left
	if(playerWpn02)
		image_index = 11
	else image_index = 7
	bulletX = x - 52
	bulletY = y - 5
}
else 
{
	//looking down
	if(playerWpn02)
		image_index = 8
	else image_index = 4
	bulletX = x - 22
	bulletY = y + 32
}

if(health <= 0)
{
	playerIsAlive = false;
	instance_destroy(obj_spawner_player_bullet)
	instance_destroy()
	instance_create_layer(x,y,"Instances",obj_explosion_enemy01)	
}
