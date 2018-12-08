/// @description Insert description here
// You can write your code in this editor
if(obj_start.on && obj_start1.on && obj_start2.on && obj_start3.on)
{
	self.visible = true;
}
else if(!obj_start.on || !obj_start1.on || !obj_start2.on || !obj_start3.on)
{
	self.visible = false;
}
