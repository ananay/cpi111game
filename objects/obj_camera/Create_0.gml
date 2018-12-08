x = obj_player.x;
y = obj_player.y;

camera = camera_create();

var viewmat = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var projmat = matrix_build_projection_ortho(1440,810,1,10000);
camera_set_view_mat(camera,viewmat);
camera_set_proj_mat(camera,projmat);

view_camera[0] = camera;
//if playerIsAlive
follow = obj_player;

xTo = x;
yTo = y;
