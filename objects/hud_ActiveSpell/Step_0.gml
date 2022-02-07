/// @description Insert description here
// You can write your code in this editor

teleport(obj_Player.x,obj_Player.y - 70);

if obj_Player.switchSpell{
	if obj_Player.activeSpell == "Fireball"{
		sprite_index = spr_Fireball;
	}
	else if obj_Player.activeSpell == "Laser" {
		sprite_index  = spr_LaserR;
	}
	else if obj_Player.activeSpell == "Ice" {
		sprite_index  = spr_Ice;
	}
}