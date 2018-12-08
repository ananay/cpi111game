if(pause)
{
	draw_set_color(c_black)
	draw_set_alpha(0.70) //30% transparency
	draw_rectangle(0,0,1440,810,false)
	draw_set_alpha(1)
	draw_sprite(spr_pause_text, 0, 0, 0)
}