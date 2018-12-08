/// @description Insert description here
// You can write your code in this editor
show_debug_message("OK");
if (position_meeting(obj_player.x, obj_player.y, obj_start1)) {
	show_debug_message("DRAW SAT LASER PLS");
	obj_start1.on = true;
	scr_draw_satLaser(obj_start1.x, obj_start1.y, laser_angle, 1);
}