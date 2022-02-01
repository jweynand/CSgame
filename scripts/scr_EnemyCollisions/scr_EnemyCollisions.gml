// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerDamaged(damage){
	if not invincible{
		hp = hp - damage;
		sprite_index = spr_PlayerDamaged;
		invincible = true;
	}
}

function PlayerDefeated(){
	room_restart();	
}