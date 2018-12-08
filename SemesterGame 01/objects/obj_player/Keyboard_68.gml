/// @description Insert description here
// You can write your code in this editor
isMovingRight = true

//
//to help in getting a more accurate diagonal movement
if(isMovingUp || isMovingDown)
	x += movement_speed
else 
	x += round(sqrt(movement_speed * movement_speed * 2))

//x += movement_speed