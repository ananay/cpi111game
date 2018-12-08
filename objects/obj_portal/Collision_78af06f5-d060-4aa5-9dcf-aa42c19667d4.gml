/// @description Insert description here
// You can write your code in this editor
if (self.visible == true) {
	audio_stop_sound(obj_game_controller.current_music)
	
	room_goto(room1)
	
	audio_play_sound(sfx_warp, 10, false)
	
}