/// @description Insert description here
// You can write your code in this editor

x = x + hmovement;
y = y + vmovement;


if place_meeting(x,y,obj_Enemy){
	obj_Enemy.enemyHp --;
	instance_destroy();
}