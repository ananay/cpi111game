if(playerIsAlive)
{
	follow = obj_player;
	x += (xTo - x)/10; //change 25 to maybe something larger
	y += (yTo - y)/10;
}
else follow = noone;


if (follow != noone) //if there's nothing to follow
{
	xTo = follow.x;
	yTo = follow.y;
}

var viewmat = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,viewmat);
