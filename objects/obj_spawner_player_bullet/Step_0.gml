//to update the origin of bullets

projectile_x = obj_player.x
projectile_y = obj_player.y

length = point_distance(x,y,projectile_x,projectile_y)
g_angle = point_direction(x,y,projectile_x,projectile_y)

spawn_x = x + lengthdir_x(length, g_angle+image_angle);
spawn_y = y + lengthdir_y(length, g_angle+image_angle);

gun_angle = point_direction(obj_player.bulletX,obj_player.bulletY,mouse_x,mouse_y)