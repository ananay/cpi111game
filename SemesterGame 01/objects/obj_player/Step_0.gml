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
/*
else
{
//avoid divide by 0
	unit_x = 0
	unit_y = 0 
}*/

velocity_x = unit_x * movement_speed
velocity_y = unit_y * movement_speed



gun_angle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)


//calculate the angle ... this
//this rotates the player image
var radians = arctan2(-unit_y, unit_x)
degreesPlayerToMouse = radtodeg(radians)
//show_debug_overlay(enable)
//show_debug_message(degreesPlayerToMouse) //0-180 then -180 to 0

if((degreesPlayerToMouse >= 0.00 && degreesPlayerToMouse <= 45.00) || (degreesPlayerToMouse <= 0.00 && degreesPlayerToMouse >= -45.00))
{	
	image_index = 5
}
else if(degreesPlayerToMouse > 45.00 && degreesPlayerToMouse < 135.00)
{	
	image_index = 6
}
else if((degreesPlayerToMouse >= 135.00 && degreesPlayerToMouse < 180) || (degreesPlayerToMouse > -180.00 && degreesPlayerToMouse < -135.00))
{
	image_index = 7
}
else 
{
	image_index = 4
}
