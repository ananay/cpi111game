/// @description Insert description here
// You can write your code in this editor
movement_speed = 10 //

hspd = 0
vspd = 0
length = 0

image_index = 4 //sprite image started on
image_speed = 0 //so that the player won't animate from the start

bullet_origin_x = 0
bullet_origin_y = 0

isMovingUp = false
isMovingRight = false
isMovingDown = false
isMovingLeft = false

canShoot = true

velocity_x = 0
velocity_y = 0

var gun_angle = 0



//script cribbed from the topdown game
/*
//gun input flags
can_shoot = true
semi_auto = false
auto_fire = true

//gunmount variables
gun_mount_x = 87
gun_mount_y = 52

//create a static collision box
//this means, make sure your object starts on the best animation frame
//keep track of a new left,right,top,bottom
//width and height of the box
fixed_box_width = bbox_right - bbox_left
fixed_box_height = bbox_bottom - bbox_top

//set initial coordinates
//this calculation will be repeated in step-event
fixed_box_left = x - (fixed_box_width/2)
fixed_box_right = x + (fixed_box_width/2)
fixed_box_top = y - (fixed_box_height/2)
fixed_box_bottom = y + (fixed_box_height/2)
*/

//TODO
//Need to create a collision box at the feet