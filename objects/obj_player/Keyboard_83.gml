isMovingDown = true

if(isMovingLeft || isMovingRight)
	y += movement_speed
else	
	y += round(sqrt(movement_speed * movement_speed * 2))
	
//y += movement_speed