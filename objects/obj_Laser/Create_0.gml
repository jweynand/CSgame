/// @description Insert description here
// You can write your code in this editor
hmovement = 0;
vmovement = 0;

// Flying
if obj_Player.aim = "left"{
	hmovement = -12
	sprite_index = spr_LaserL;
}
if obj_Player.aim = "right"{
	hmovement = 12
	sprite_index = spr_LaserR;
}
if obj_Player.aim =  "down"{
	vmovement = 12;
	sprite_index = spr_LaserD;
}
if obj_Player.aim =  "up"{
	vmovement = -12;
	sprite_index = spr_LaserU;
}