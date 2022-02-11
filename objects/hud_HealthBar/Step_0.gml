/// @description Insert description here
// You can write your code in this editor

// Assemble the word to access the right sprite
if obj_Player.hp < 10 {playerHealth = "spr_hp0" + string(obj_Player.hp);}
else{playerHealth = "spr_hp" + string(obj_Player.hp);}

// Change Sprite to correct amount of health

show_debug_message(playerHealth);
sprite_index = string(playerHealth);