/// @description Insert description here
// You can write your code in this editor
draw_text((room_width / 2) - 50, 25, "Leaderboard");
if (lbStatus == 0) {
	draw_text(room_width / 2, room_height / 2, "Loading..");	
} else if (lbStatus == 1) {
	draw_text(15/100 * (room_width), 90, "Rank");
	draw_text(40/100 * (room_width), 90, "Name");
	draw_text(75/100 * (room_width), 90, "Score");
	
	for (var i = 0; i < ds_list_size(lbData); i++) {
		
		var arr = ds_list_find_value(lbData, i);
		var lb_rank = ds_map_find_value(arr, "rank");
		var lb_name = ds_map_find_value(arr, "name");
		var lb_score = ds_map_find_value(arr, "score");
		
		draw_set_colour(c_white);
		draw_text(15/100 * (room_width), 100 + (50 * (i+1)), lb_rank);
		draw_text(40/100 * (room_width), 100 + (50 * (i+1)), lb_name);
		draw_text(75/100 * (room_width), 100 + (50 * (i+1)), lb_score);
	
	}	
}