/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player) and obj_Player.interact{
	instance_create_depth(x+8,y-20,0,item)
	instance_destroy();
}