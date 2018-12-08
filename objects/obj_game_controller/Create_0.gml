globalvar playerIsAlive;
playerIsAlive = true;
globalvar playerCanShoot;
playerCanShoot = true;
globalvar playerWpn02;
playerWpn02 = false;

pause = false

A = true

//current_music = null

//And when you switch rooms, just use audio_stop_sound(current_music) and then repeat.
if(room == room0 || room == room01)
	current_music = audio_play_sound(mus_bg,10,true)
else if(room == room1)
{
	//current_music equals a different sound
	//and so on...
}