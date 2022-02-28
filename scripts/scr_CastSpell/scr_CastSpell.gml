// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function castSpell(spell){
	if spell == "Fireball" {
		instance_create_depth(x,y,0,obj_Fireball);
	}
	if spell == "Laser"{
		instance_create_depth(x,y,0,obj_Laser);
	}
	if spell == "Ice"{
		instance_create_depth(x,y,0,obj_Ice);
	}
}