//to update the origin of bullets

bullet_origin_x = obj_player.x
bullet_origin_y = obj_player.y

length = point_distance(x,y,bullet_origin_x,bullet_origin_y)
g_angle = point_direction(x,y,bullet_origin_x,bullet_origin_y) //gun angle

spawn_x = x + lengthdir_x(length, g_angle+image_angle);
spawn_y = y + lengthdir_y(length, g_angle+image_angle);

gun_angle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)

//show_debug_message(gun_angle)