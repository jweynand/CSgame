/// @description Insert description here
// You can write your code in this editor

x = x + hmovement;
y = y + vmovement;


if place_meeting(x,y,obj_Enemy){
	with (obj_Enemy.id) {
		instance_destroy();
	}
	
	instance_destroy();
}