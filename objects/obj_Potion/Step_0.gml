/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player) and obj_Player.interact{
	obj_Player.hp = obj_Player.hp + 1;
	instance_destroy();
}